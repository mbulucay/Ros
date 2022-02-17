#include"ros/ros.h"

int main(int argc, char **argv){


	ros::init(argc, argv, "hello_log_n");
	ros::NodeHandle n;
	ros::Rate Hz_10(10);

	while(ros::ok()){
		ROS_INFO_STREAM("Hello World C++");	
		Hz_10.sleep();
	}
	return 0;
}
