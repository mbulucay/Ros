# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "msgsrv_basic_p: 1 messages, 1 services")

set(MSG_I_FLAGS "-Imsgsrv_basic_p:/home/mbulucay/Desktop/ros/udemy_course/ros_ws/src/msgsrv_basic_p/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(msgsrv_basic_p_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mbulucay/Desktop/ros/udemy_course/ros_ws/src/msgsrv_basic_p/msg/RobotStatus.msg" NAME_WE)
add_custom_target(_msgsrv_basic_p_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "msgsrv_basic_p" "/home/mbulucay/Desktop/ros/udemy_course/ros_ws/src/msgsrv_basic_p/msg/RobotStatus.msg" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/mbulucay/Desktop/ros/udemy_course/ros_ws/src/msgsrv_basic_p/srv/WarningStatus.srv" NAME_WE)
add_custom_target(_msgsrv_basic_p_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "msgsrv_basic_p" "/home/mbulucay/Desktop/ros/udemy_course/ros_ws/src/msgsrv_basic_p/srv/WarningStatus.srv" "std_msgs/String"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(msgsrv_basic_p
  "/home/mbulucay/Desktop/ros/udemy_course/ros_ws/src/msgsrv_basic_p/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgsrv_basic_p
)

### Generating Services
_generate_srv_cpp(msgsrv_basic_p
  "/home/mbulucay/Desktop/ros/udemy_course/ros_ws/src/msgsrv_basic_p/srv/WarningStatus.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgsrv_basic_p
)

### Generating Module File
_generate_module_cpp(msgsrv_basic_p
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgsrv_basic_p
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(msgsrv_basic_p_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(msgsrv_basic_p_generate_messages msgsrv_basic_p_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mbulucay/Desktop/ros/udemy_course/ros_ws/src/msgsrv_basic_p/msg/RobotStatus.msg" NAME_WE)
add_dependencies(msgsrv_basic_p_generate_messages_cpp _msgsrv_basic_p_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mbulucay/Desktop/ros/udemy_course/ros_ws/src/msgsrv_basic_p/srv/WarningStatus.srv" NAME_WE)
add_dependencies(msgsrv_basic_p_generate_messages_cpp _msgsrv_basic_p_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(msgsrv_basic_p_gencpp)
add_dependencies(msgsrv_basic_p_gencpp msgsrv_basic_p_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS msgsrv_basic_p_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(msgsrv_basic_p
  "/home/mbulucay/Desktop/ros/udemy_course/ros_ws/src/msgsrv_basic_p/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgsrv_basic_p
)

### Generating Services
_generate_srv_eus(msgsrv_basic_p
  "/home/mbulucay/Desktop/ros/udemy_course/ros_ws/src/msgsrv_basic_p/srv/WarningStatus.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgsrv_basic_p
)

### Generating Module File
_generate_module_eus(msgsrv_basic_p
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgsrv_basic_p
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(msgsrv_basic_p_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(msgsrv_basic_p_generate_messages msgsrv_basic_p_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mbulucay/Desktop/ros/udemy_course/ros_ws/src/msgsrv_basic_p/msg/RobotStatus.msg" NAME_WE)
add_dependencies(msgsrv_basic_p_generate_messages_eus _msgsrv_basic_p_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mbulucay/Desktop/ros/udemy_course/ros_ws/src/msgsrv_basic_p/srv/WarningStatus.srv" NAME_WE)
add_dependencies(msgsrv_basic_p_generate_messages_eus _msgsrv_basic_p_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(msgsrv_basic_p_geneus)
add_dependencies(msgsrv_basic_p_geneus msgsrv_basic_p_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS msgsrv_basic_p_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(msgsrv_basic_p
  "/home/mbulucay/Desktop/ros/udemy_course/ros_ws/src/msgsrv_basic_p/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgsrv_basic_p
)

### Generating Services
_generate_srv_lisp(msgsrv_basic_p
  "/home/mbulucay/Desktop/ros/udemy_course/ros_ws/src/msgsrv_basic_p/srv/WarningStatus.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgsrv_basic_p
)

### Generating Module File
_generate_module_lisp(msgsrv_basic_p
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgsrv_basic_p
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(msgsrv_basic_p_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(msgsrv_basic_p_generate_messages msgsrv_basic_p_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mbulucay/Desktop/ros/udemy_course/ros_ws/src/msgsrv_basic_p/msg/RobotStatus.msg" NAME_WE)
add_dependencies(msgsrv_basic_p_generate_messages_lisp _msgsrv_basic_p_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mbulucay/Desktop/ros/udemy_course/ros_ws/src/msgsrv_basic_p/srv/WarningStatus.srv" NAME_WE)
add_dependencies(msgsrv_basic_p_generate_messages_lisp _msgsrv_basic_p_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(msgsrv_basic_p_genlisp)
add_dependencies(msgsrv_basic_p_genlisp msgsrv_basic_p_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS msgsrv_basic_p_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(msgsrv_basic_p
  "/home/mbulucay/Desktop/ros/udemy_course/ros_ws/src/msgsrv_basic_p/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgsrv_basic_p
)

### Generating Services
_generate_srv_nodejs(msgsrv_basic_p
  "/home/mbulucay/Desktop/ros/udemy_course/ros_ws/src/msgsrv_basic_p/srv/WarningStatus.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgsrv_basic_p
)

### Generating Module File
_generate_module_nodejs(msgsrv_basic_p
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgsrv_basic_p
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(msgsrv_basic_p_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(msgsrv_basic_p_generate_messages msgsrv_basic_p_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mbulucay/Desktop/ros/udemy_course/ros_ws/src/msgsrv_basic_p/msg/RobotStatus.msg" NAME_WE)
add_dependencies(msgsrv_basic_p_generate_messages_nodejs _msgsrv_basic_p_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mbulucay/Desktop/ros/udemy_course/ros_ws/src/msgsrv_basic_p/srv/WarningStatus.srv" NAME_WE)
add_dependencies(msgsrv_basic_p_generate_messages_nodejs _msgsrv_basic_p_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(msgsrv_basic_p_gennodejs)
add_dependencies(msgsrv_basic_p_gennodejs msgsrv_basic_p_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS msgsrv_basic_p_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(msgsrv_basic_p
  "/home/mbulucay/Desktop/ros/udemy_course/ros_ws/src/msgsrv_basic_p/msg/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgsrv_basic_p
)

### Generating Services
_generate_srv_py(msgsrv_basic_p
  "/home/mbulucay/Desktop/ros/udemy_course/ros_ws/src/msgsrv_basic_p/srv/WarningStatus.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgsrv_basic_p
)

### Generating Module File
_generate_module_py(msgsrv_basic_p
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgsrv_basic_p
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(msgsrv_basic_p_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(msgsrv_basic_p_generate_messages msgsrv_basic_p_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mbulucay/Desktop/ros/udemy_course/ros_ws/src/msgsrv_basic_p/msg/RobotStatus.msg" NAME_WE)
add_dependencies(msgsrv_basic_p_generate_messages_py _msgsrv_basic_p_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mbulucay/Desktop/ros/udemy_course/ros_ws/src/msgsrv_basic_p/srv/WarningStatus.srv" NAME_WE)
add_dependencies(msgsrv_basic_p_generate_messages_py _msgsrv_basic_p_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(msgsrv_basic_p_genpy)
add_dependencies(msgsrv_basic_p_genpy msgsrv_basic_p_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS msgsrv_basic_p_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgsrv_basic_p)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgsrv_basic_p
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(msgsrv_basic_p_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(msgsrv_basic_p_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgsrv_basic_p)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgsrv_basic_p
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(msgsrv_basic_p_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(msgsrv_basic_p_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgsrv_basic_p)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgsrv_basic_p
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(msgsrv_basic_p_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(msgsrv_basic_p_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgsrv_basic_p)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgsrv_basic_p
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(msgsrv_basic_p_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(msgsrv_basic_p_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgsrv_basic_p)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgsrv_basic_p\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgsrv_basic_p
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(msgsrv_basic_p_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(msgsrv_basic_p_generate_messages_py std_msgs_generate_messages_py)
endif()
