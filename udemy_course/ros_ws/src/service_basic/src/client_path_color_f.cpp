#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include "turtlesim/Pose.h"
#include "turtlesim/SetPen.h"

bool is_outside;
bool is_outside_prev;

void foo_clbk(const turtlesim::Pose pose){
    is_outside = (pose.x < 2) || (pose.x > 8) || (pose.y < 2) || (pose.y > 8);
}

int main(int argc, char** argv){
    
    
    ros::init(argc, argv, "color_n");
    ros::NodeHandle nh;

    ros::Publisher _publisher = nh.advertise<geometry_msgs::Twist>("turtle1/cmd_vel", 10);
    ros::Subscriber _subscriber = nh.subscribe<turtlesim::Pose>("turtle1/pose", 10, foo_clbk);
    ros::ServiceClient _client = nh.serviceClient<turtlesim::SetPen>("turtle1/set_pen");
    _client.waitForExistence();
    
    
    ros::Rate r(20);

    geometry_msgs::Twist vel_v;
    vel_v.linear.x = 1;

    turtlesim::SetPen in, out;
    out.request.r = 0;
    out.request.g = 0;
    out.request.b = 0;
    out.request.width = 10;
    out.request.off = 0;
    in.request.r = 255;
    in.request.g = 255;
    in.request.b = 255;
    in.request.width = 5;
    in.request.off = 0;

    while(ros::ok()){

        if(is_outside){
            vel_v.angular.z = 0.5;
            vel_v.linear.x = 0.4;
        }else{
            vel_v.angular.z = 0;
            vel_v.linear.x = 10;
        }
        // service topic gibi her zaman publish edilmiyor sadece ihtiyac aninda 
        if(is_outside_prev == 0 && is_outside == 1){
            _client.call(out);
        }else if(is_outside_prev == 1 && is_outside == 0){
            _client.call(in);
        }
        is_outside_prev = is_outside;

        _publisher.publish<geometry_msgs::Twist>(vel_v);
        r.sleep();
        ros::spinOnce();
    }
    
    return 0;
}