#!/usr/bin/python3
import rospy
from std_msgs.msg import String

rospy.init_node("pub_n")
publisher = rospy.Publisher("top_name_1", data_class = String, queue_size = 10)
msg = String("Neler neler oluyor")
r = rospy.Rate(10)

while not rospy.is_shutdown():
    publisher.publish(msg)
    rospy.loginfo(msg)
    r.sleep()
