#!/usr/bin/python3
import rospy
from std_msgs.msg import String

def foo_clbk (message):
    rospy.loginfo("taken : %s", message)

rospy.init_node("sub_n")
rospy.Subscriber("top_name_1", data_class=String, queue_size=10, callback=foo_clbk)
rospy.spin()








