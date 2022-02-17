#!/usr/bin/python3
import rospy

rospy.init_node("freq_node")
Hz_10 = rospy.Rate(10)

while not rospy.is_shutdown():
    rospy.loginfo("Hello from python")
    Hz_10.sleep()
