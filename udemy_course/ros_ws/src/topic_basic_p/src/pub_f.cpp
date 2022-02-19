#include "ros/ros.h"
#include "std_msgs/String.h"

int main(int argc, char **argv){
    
    ros::init(argc,argv,"Pub_cpp_n");
    ros::NodeHandle nh;

    ros::Publisher publisher = nh.advertise<std_msgs::String>("top_name_1", 10);
    std_msgs::String topic_1;
    topic_1.data = "First topic 1 message";
    ros::Rate Hz(10);

    while(ros::ok()){
        publisher.publish<std_msgs::String>(topic_1);
        ROS_INFO_STREAM(topic_1.data);
        Hz.sleep();
    }

    return 0;
}