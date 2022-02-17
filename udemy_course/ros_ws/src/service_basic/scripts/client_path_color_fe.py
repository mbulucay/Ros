#!/usr/bin/python3
from turtle import width
import rospy
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose
from turtlesim.srv import SetPen

is_out = bool
is_out_prev = bool
def foo_clbk(pose:Pose):
    global is_out
    is_out = pose.x < 2 or pose.x > 8 or pose.y < 2 or pose.y > 8


rospy.init_node("color_n_py")

pub = rospy.Publisher("turtle1/cmd_vel", data_class=Twist, queue_size=10)
sub = rospy.Subscriber("turtle1/pose", data_class=Pose, queue_size=10, callback=foo_clbk)
ser = rospy.ServiceProxy("turtle1/set_pen", service_class= SetPen)
rospy.wait_for_service("turtle1/set_pen")

vel = Twist()
vel.linear.x = 1
r = rospy.Rate(10)

while not rospy.is_shutdown():

    if(is_out):
        vel.angular.z = 0.6
    else:
        vel.angular.z = 0
    if(is_out == 0 and is_out_prev == 1):
        ser.call(r = 0, g = 0, b = 0, width = 5, off = 0)
    elif (is_out == 1 and is_out_prev == 0):
        ser.call(r = 255, g = 255, b = 255, width = 10, off = 0)

    is_out_prev = is_out
    pub.publish(vel)
    r.sleep()

