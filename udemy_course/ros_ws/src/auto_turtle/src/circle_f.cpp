#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include "turtlesim/Pose.h"

bool is_outside;

void foo_clbk(const turtlesim::Pose pose){
    is_outside = (pose.x < 2) || (pose.x > 8) || (pose.y < 2) || (pose.y > 8);
}

int main(int argc, char** argv){
    
    
    ros::init(argc, argv, "circle_n");
    ros::NodeHandle nh;

    ros::Publisher _publisher = nh.advertise<geometry_msgs::Twist>("turtle1/cmd_vel", 10);
    ros::Subscriber _subscriber = nh.subscribe<turtlesim::Pose>("turtle1/pose", 10, foo_clbk);
    ros::Rate r(20);

    geometry_msgs::Twist vel_v;
    vel_v.linear.x = 1;

    while(ros::ok()){

        if(is_outside){
            vel_v.angular.z = 0.7;
        }else{
            vel_v.angular.z = 0;
        }
        _publisher.publish<geometry_msgs::Twist>(vel_v);
        r.sleep();
        ros::spinOnce();
    }
    
    return 0;
}