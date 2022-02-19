#include "ros/ros.h"
#include "msgsrv_basic_p/WarningStatus.h"


bool foo_clb(msgsrv_basic_p::WarningStatus::Request& request, 
    msgsrv_basic_p::WarningStatus::Response& response){
    
    if(request.warn){
        ROS_INFO_STREAM("Warning status");
        response.resp.data = "Warning detected by server";

    }else{
        ROS_INFO_STREAM("Normal Status");
        response.resp.data = "Flow is Normal";
    }
    return true;
}

int main(int argc, char** argv){

    ros::init(argc, argv, "server_n");
    ros::NodeHandle nh;

    ros::ServiceServer server = nh.advertiseService("robot_status_srv", foo_clb);

    ros::spin();
    

    return 0;
}