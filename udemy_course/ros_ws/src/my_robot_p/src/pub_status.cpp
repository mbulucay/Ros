#include "ros/ros.h"
#include "msgsrv_basic_p/RobotStatus.h"
#include <fstream>
#include <sstream>


int main(int argc, char** argv){

    ros::init(argc, argv, "asd");
    ros::NodeHandle nh;
    ros::Publisher _publisher = nh.advertise<msgsrv_basic_p::RobotStatus>("robot_status_t", 10);
    ros::Rate r(1);
 
	// std::vector<std::vector<std::string>> content;
	// std::vector<std::string> row;
    msgsrv_basic_p::RobotStatus RStatus;

    std::fstream file;
    std::string line, word;

    file.open("/home/mbulucay/Desktop/ros/udemy_course/ros_ws/src/my_robot_p/data/rpm_locn_data.csv");
	// if(file.is_open())
	// {
	// 	while(getline(file, line))
	// 	{
	// 		row.clear();
 
	// 		std::stringstream str(line);
 
	// 		while(getline(str, word, ','))
	// 			row.push_back(word);
	// 		content.push_back(row);
	// 	}
	// }else
    //     std::cout<<"Could not open the file\n";

    // for(std::vector<std::string> v: content){
    //     for(std::string s: v){
    //         std::cout << s ;
    //     }
    //     std::cout << std::endl;
    // }

    while ( ros::ok() && !file.eof()){

        getline(file, line);
        std::stringstream str(line);


        getline(str, word, ',');
        RStatus.motor1_rpm = std::stoi(word);

        getline(str, word, ',');
        RStatus.motor2_rpm = std::stoi(word);

        getline(str, word, ',');
        RStatus.motor3_rpm = std::stoi(word);

        getline(str, word, ',');
        RStatus.motor4_rpm = std::stoi(word);

        getline(str, word, ',');
        RStatus.location.x = stof(word);

        getline(str, word, ',');
        RStatus.location.y = stof(word);

        getline(str, word, ',');
        RStatus.location.z = stof(word);

        _publisher.publish(RStatus);

        ROS_INFO_STREAM(
            RStatus.motor1_rpm << "," << 
            RStatus.motor2_rpm << "," << 
            RStatus.motor3_rpm << "," << 
            RStatus.motor4_rpm << "\n" << 
            RStatus.location.x << "," <<
            RStatus.location.y << "," << 
            RStatus.location.z
        );

        r.sleep();
    }

 
    return 0;
}