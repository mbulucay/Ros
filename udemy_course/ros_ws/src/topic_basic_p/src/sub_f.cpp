#include "ros/ros.h"
#include "std_msgs/String.h"

void foo_clbk(const std_msgs::String message){
    ROS_INFO_STREAM("taken " << message.data);
} 

int main(int argc, char** argv){

    ros::init(argc, argv, "sub_c_n");
    ros::NodeHandle nh;

    ros::Subscriber subscriber = nh.subscribe<std_msgs::String>("top_name_1",10, foo_clbk);
    
    ros::spin();

    return 0;
}