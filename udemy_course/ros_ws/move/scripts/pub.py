from turtle import pu
import rospy
from std_msgs.msg import Float32


rospy.init_node("move_n")
pub = rospy.Publisher("/wamv/thrusters/left_thrust_angle", data_class=Float32, queue_size=10)

_hz = rospy.Rate(10)

while not rospy.is_shutdown():

    ch = input()
    
    # if(ch == "a"):
        # pub.publish()

    _hz.sleep()








