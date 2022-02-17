#!/usr/bin/python3
from random import random,uniform
import time
import rospy
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose

is_out = bool

def foo_clbk(pose:Pose):
    global is_out
    is_out = pose.x < 2 or pose.x > 8 or pose.y < 2 or pose.y > 8

rospy.init_node("circle_n_py")
publisher = rospy.Publisher("turtle1/cmd_vel", data_class=Twist, queue_size=10)
subscriber = rospy.Subscriber("turtle1/pose", data_class=Pose, queue_size=10, callback=foo_clbk)

t = Twist()
t.linear.x = 1

r = rospy.Rate(10)

while not rospy.is_shutdown():
    # t.angular.z = uniform(-1, 1)
    if(is_out):
        t.angular.z = 0.6
    else:
        t.angular.z = 0
    
    publisher.publish(t)
    r.sleep()
