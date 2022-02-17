roslaunch bb_8_teleop keyboard_teleop.launch

Topics:

ROS handles almost all its communications through topics. 
Even more complex communication systems, such as services or actions, rely, at the end, on topics.
 That's why they are so important! Through ROS topics, 
you will, for instance, be able to communicate with your robot in order to make it move, to read your robot's sensor readings, and more.

roslaunch publisher_example move.launch
roslaunch publisher_example stop.launch



Services:

ROS also provides services. Services allow you to code a specific functionality for your robot, and then provide for anyone to call it. 
For instance, you could create a service that makes your robot move for a specific period of time, and then stop.

roslaunch service_demo service_launch.launch
rosservice call /service_demo "{}"


Actions:

ROS also provides actions. Actions are similar to services, in the sense that they also allow you to code a functionality for your robot, 
and then provide it so that anyone can call it. 

The main difference between actions and services is that when you call a service, 
the robot has to wait until the service has ended before doing something else. 
On the other hand, when you call an action, your robot can still keep doing something else while performing the action.

roslaunch action_demo action_launch.launch
roslaunch action_demo_client client_launch.launch


Debug:
rosrun rviz rviz