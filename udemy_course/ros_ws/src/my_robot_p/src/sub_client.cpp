#include "ros/ros.h"
#include "msgsrv_basic_p/RobotStatus.h"
#include "msgsrv_basic_p/WarningStatus.h"

#define TRESH 1900

bool warning = false, 
    warning_prev = false;;
void foo_clbk(msgsrv_basic_p::RobotStatus robotStatus){

    if(robotStatus.motor1_rpm > TRESH || robotStatus.motor2_rpm > TRESH ||  
        robotStatus.motor3_rpm > TRESH || robotStatus.motor3_rpm > TRESH){
            warning = true;
    }else
        warning = false;
    ROS_INFO_STREAM(warning);
}

int main(int argc, char** argv){

    ros::init(argc, argv, "sub_clt_n");

    ros::NodeHandle nh;
    ros::Subscriber _subscriber = nh.subscribe<msgsrv_basic_p::RobotStatus>("robot_status_t", 10, foo_clbk);
    ros::ServiceClient _client = nh.serviceClient<msgsrv_basic_p::WarningStatus>("robot_status_srv");
    _client.waitForExistence();

    
    msgsrv_basic_p::WarningStatus ws;
    
    while (ros::ok()){

        if (warning == true && warning_prev == false){
            ROS_INFO_STREAM("Sending server to warning");
            ws.request.warn = true;
            _client.call(ws);
            ROS_INFO_STREAM(ws.response.resp);

        }
        else if(warning == false && warning_prev == true){
            ROS_INFO_STREAM("Sending Normal Status");
            ws.request.warn = false;
            _client.call(ws);
            ROS_INFO_STREAM(ws.response.resp.data);

        }

        warning_prev = warning;
        ros::spinOnce();
    }

    return 0;
}