# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "arc_msgs: 19 messages, 8 services")

set(MSG_I_FLAGS "-Iarc_msgs:/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg;-Iarc_msgs:/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Idynamic_reconfigure:/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(arc_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionResult.msg" NAME_WE)
add_custom_target(_arc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arc_msgs" "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionResult.msg" "arc_msgs/ArcTaskResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/Task.srv" NAME_WE)
add_custom_target(_arc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arc_msgs" "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/Task.srv" ""
)

get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskAction.msg" NAME_WE)
add_custom_target(_arc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arc_msgs" "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskAction.msg" "arc_msgs/ArcTaskFeedback:std_msgs/Header:arc_msgs/ArcTaskActionFeedback:dynamic_reconfigure/IntParameter:arc_msgs/ArcTaskGoal:dynamic_reconfigure/BoolParameter:dynamic_reconfigure/GroupState:arc_msgs/ArcTaskActionResult:arc_msgs/ArcTaskResult:dynamic_reconfigure/DoubleParameter:arc_msgs/ArcTaskActionGoal:dynamic_reconfigure/StrParameter:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:dynamic_reconfigure/Config"
)

get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedDebris.msg" NAME_WE)
add_custom_target(_arc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arc_msgs" "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedDebris.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point:arc_msgs/Debris"
)

get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/TaskRequest.msg" NAME_WE)
add_custom_target(_arc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arc_msgs" "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/TaskRequest.msg" "dynamic_reconfigure/Config:dynamic_reconfigure/IntParameter:dynamic_reconfigure/BoolParameter:dynamic_reconfigure/GroupState:dynamic_reconfigure/DoubleParameter:dynamic_reconfigure/StrParameter"
)

get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/ToggleList.srv" NAME_WE)
add_custom_target(_arc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arc_msgs" "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/ToggleList.srv" ""
)

get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictims.msg" NAME_WE)
add_custom_target(_arc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arc_msgs" "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictims.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:arc_msgs/DetectedVictim:geometry_msgs/Point"
)

get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessAnnouncement.msg" NAME_WE)
add_custom_target(_arc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arc_msgs" "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessAnnouncement.msg" "dynamic_reconfigure/Config:geometry_msgs/Quaternion:dynamic_reconfigure/BoolParameter:geometry_msgs/Point:dynamic_reconfigure/GroupState:dynamic_reconfigure/DoubleParameter:dynamic_reconfigure/IntParameter:dynamic_reconfigure/StrParameter:geometry_msgs/Pose:std_msgs/Header"
)

get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/DropMarker.srv" NAME_WE)
add_custom_target(_arc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arc_msgs" "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/DropMarker.srv" ""
)

get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobots.msg" NAME_WE)
add_custom_target(_arc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arc_msgs" "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobots.msg" "geometry_msgs/Quaternion:arc_msgs/DetectedRobot:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictim.msg" NAME_WE)
add_custom_target(_arc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arc_msgs" "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictim.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskResult.msg" NAME_WE)
add_custom_target(_arc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arc_msgs" "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskResult.msg" ""
)

get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/QuerryTask.srv" NAME_WE)
add_custom_target(_arc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arc_msgs" "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/QuerryTask.srv" ""
)

get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarker.msg" NAME_WE)
add_custom_target(_arc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arc_msgs" "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarker.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskGoal.msg" NAME_WE)
add_custom_target(_arc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arc_msgs" "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskGoal.msg" "dynamic_reconfigure/Config:dynamic_reconfigure/IntParameter:dynamic_reconfigure/BoolParameter:dynamic_reconfigure/GroupState:dynamic_reconfigure/DoubleParameter:dynamic_reconfigure/StrParameter"
)

get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/QuerryRole.srv" NAME_WE)
add_custom_target(_arc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arc_msgs" "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/QuerryRole.srv" ""
)

get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/ToggleSchema.srv" NAME_WE)
add_custom_target(_arc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arc_msgs" "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/ToggleSchema.srv" "dynamic_reconfigure/BoolParameter"
)

get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarkers.msg" NAME_WE)
add_custom_target(_arc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arc_msgs" "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarkers.msg" "arc_msgs/DetectedMarker:geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/Debris.msg" NAME_WE)
add_custom_target(_arc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arc_msgs" "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/Debris.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessRequest.msg" NAME_WE)
add_custom_target(_arc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arc_msgs" "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessRequest.msg" "dynamic_reconfigure/Config:geometry_msgs/Quaternion:dynamic_reconfigure/BoolParameter:geometry_msgs/Point:dynamic_reconfigure/GroupState:dynamic_reconfigure/DoubleParameter:dynamic_reconfigure/IntParameter:dynamic_reconfigure/StrParameter:arc_msgs/TaskRequest:geometry_msgs/Pose:std_msgs/Header"
)

get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionFeedback.msg" NAME_WE)
add_custom_target(_arc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arc_msgs" "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionFeedback.msg" "arc_msgs/ArcTaskFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessResponse.msg" NAME_WE)
add_custom_target(_arc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arc_msgs" "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessResponse.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionGoal.msg" NAME_WE)
add_custom_target(_arc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arc_msgs" "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionGoal.msg" "std_msgs/Header:dynamic_reconfigure/IntParameter:arc_msgs/ArcTaskGoal:dynamic_reconfigure/BoolParameter:dynamic_reconfigure/GroupState:dynamic_reconfigure/DoubleParameter:dynamic_reconfigure/StrParameter:actionlib_msgs/GoalID:dynamic_reconfigure/Config"
)

get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobot.msg" NAME_WE)
add_custom_target(_arc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arc_msgs" "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobot.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/NavigationRequest.srv" NAME_WE)
add_custom_target(_arc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arc_msgs" "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/NavigationRequest.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskFeedback.msg" NAME_WE)
add_custom_target(_arc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arc_msgs" "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskFeedback.msg" ""
)

get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/MoveAlterableObject.srv" NAME_WE)
add_custom_target(_arc_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arc_msgs" "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/MoveAlterableObject.srv" "geometry_msgs/Pose2D"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arc_msgs
)
_generate_msg_cpp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictims.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictim.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arc_msgs
)
_generate_msg_cpp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arc_msgs
)
_generate_msg_cpp(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/IntParameter.msg;/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskGoal.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/GroupState.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/DoubleParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/StrParameter.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/Config.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arc_msgs
)
_generate_msg_cpp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobot.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arc_msgs
)
_generate_msg_cpp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessRequest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/Config.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/GroupState.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/DoubleParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/IntParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/StrParameter.msg;/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/TaskRequest.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arc_msgs
)
_generate_msg_cpp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarkers.msg"
  "${MSG_I_FLAGS}"
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarker.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arc_msgs
)
_generate_msg_cpp(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/Config.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/IntParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/GroupState.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/DoubleParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/StrParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arc_msgs
)
_generate_msg_cpp(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arc_msgs
)
_generate_msg_cpp(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionFeedback.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/IntParameter.msg;/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskGoal.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/GroupState.msg;/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionResult.msg;/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskResult.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/DoubleParameter.msg;/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionGoal.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/StrParameter.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/Config.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arc_msgs
)
_generate_msg_cpp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessAnnouncement.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/Config.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/GroupState.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/DoubleParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/IntParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/StrParameter.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arc_msgs
)
_generate_msg_cpp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/Debris.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arc_msgs
)
_generate_msg_cpp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictim.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arc_msgs
)
_generate_msg_cpp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedDebris.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/Debris.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arc_msgs
)
_generate_msg_cpp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/TaskRequest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/Config.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/IntParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/GroupState.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/DoubleParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/StrParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arc_msgs
)
_generate_msg_cpp(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arc_msgs
)
_generate_msg_cpp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arc_msgs
)
_generate_msg_cpp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobots.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobot.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arc_msgs
)
_generate_msg_cpp(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arc_msgs
)

### Generating Services
_generate_srv_cpp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/ToggleList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arc_msgs
)
_generate_srv_cpp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/Task.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arc_msgs
)
_generate_srv_cpp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/MoveAlterableObject.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arc_msgs
)
_generate_srv_cpp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/NavigationRequest.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arc_msgs
)
_generate_srv_cpp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/ToggleSchema.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arc_msgs
)
_generate_srv_cpp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/DropMarker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arc_msgs
)
_generate_srv_cpp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/QuerryRole.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arc_msgs
)
_generate_srv_cpp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/QuerryTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arc_msgs
)

### Generating Module File
_generate_module_cpp(arc_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arc_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(arc_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(arc_msgs_generate_messages arc_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionResult.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_cpp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/Task.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_cpp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskAction.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_cpp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedDebris.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_cpp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/TaskRequest.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_cpp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/ToggleList.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_cpp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictims.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_cpp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessAnnouncement.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_cpp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/DropMarker.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_cpp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobots.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_cpp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictim.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_cpp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskResult.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_cpp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/QuerryTask.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_cpp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarker.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_cpp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskGoal.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_cpp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/QuerryRole.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_cpp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/ToggleSchema.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_cpp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarkers.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_cpp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/Debris.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_cpp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessRequest.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_cpp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionFeedback.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_cpp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessResponse.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_cpp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionGoal.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_cpp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobot.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_cpp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/NavigationRequest.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_cpp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskFeedback.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_cpp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/MoveAlterableObject.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_cpp _arc_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arc_msgs_gencpp)
add_dependencies(arc_msgs_gencpp arc_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arc_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arc_msgs
)
_generate_msg_eus(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictims.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictim.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arc_msgs
)
_generate_msg_eus(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arc_msgs
)
_generate_msg_eus(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/IntParameter.msg;/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskGoal.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/GroupState.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/DoubleParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/StrParameter.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/Config.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arc_msgs
)
_generate_msg_eus(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobot.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arc_msgs
)
_generate_msg_eus(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessRequest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/Config.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/GroupState.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/DoubleParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/IntParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/StrParameter.msg;/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/TaskRequest.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arc_msgs
)
_generate_msg_eus(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarkers.msg"
  "${MSG_I_FLAGS}"
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarker.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arc_msgs
)
_generate_msg_eus(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/Config.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/IntParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/GroupState.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/DoubleParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/StrParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arc_msgs
)
_generate_msg_eus(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arc_msgs
)
_generate_msg_eus(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionFeedback.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/IntParameter.msg;/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskGoal.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/GroupState.msg;/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionResult.msg;/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskResult.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/DoubleParameter.msg;/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionGoal.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/StrParameter.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/Config.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arc_msgs
)
_generate_msg_eus(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessAnnouncement.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/Config.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/GroupState.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/DoubleParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/IntParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/StrParameter.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arc_msgs
)
_generate_msg_eus(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/Debris.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arc_msgs
)
_generate_msg_eus(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictim.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arc_msgs
)
_generate_msg_eus(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedDebris.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/Debris.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arc_msgs
)
_generate_msg_eus(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/TaskRequest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/Config.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/IntParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/GroupState.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/DoubleParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/StrParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arc_msgs
)
_generate_msg_eus(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arc_msgs
)
_generate_msg_eus(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arc_msgs
)
_generate_msg_eus(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobots.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobot.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arc_msgs
)
_generate_msg_eus(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arc_msgs
)

### Generating Services
_generate_srv_eus(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/ToggleList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arc_msgs
)
_generate_srv_eus(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/Task.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arc_msgs
)
_generate_srv_eus(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/MoveAlterableObject.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arc_msgs
)
_generate_srv_eus(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/NavigationRequest.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arc_msgs
)
_generate_srv_eus(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/ToggleSchema.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arc_msgs
)
_generate_srv_eus(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/DropMarker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arc_msgs
)
_generate_srv_eus(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/QuerryRole.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arc_msgs
)
_generate_srv_eus(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/QuerryTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arc_msgs
)

### Generating Module File
_generate_module_eus(arc_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arc_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(arc_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(arc_msgs_generate_messages arc_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionResult.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_eus _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/Task.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_eus _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskAction.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_eus _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedDebris.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_eus _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/TaskRequest.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_eus _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/ToggleList.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_eus _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictims.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_eus _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessAnnouncement.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_eus _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/DropMarker.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_eus _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobots.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_eus _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictim.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_eus _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskResult.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_eus _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/QuerryTask.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_eus _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarker.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_eus _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskGoal.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_eus _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/QuerryRole.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_eus _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/ToggleSchema.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_eus _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarkers.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_eus _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/Debris.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_eus _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessRequest.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_eus _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionFeedback.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_eus _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessResponse.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_eus _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionGoal.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_eus _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobot.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_eus _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/NavigationRequest.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_eus _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskFeedback.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_eus _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/MoveAlterableObject.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_eus _arc_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arc_msgs_geneus)
add_dependencies(arc_msgs_geneus arc_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arc_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arc_msgs
)
_generate_msg_lisp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictims.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictim.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arc_msgs
)
_generate_msg_lisp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arc_msgs
)
_generate_msg_lisp(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/IntParameter.msg;/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskGoal.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/GroupState.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/DoubleParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/StrParameter.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/Config.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arc_msgs
)
_generate_msg_lisp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobot.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arc_msgs
)
_generate_msg_lisp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessRequest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/Config.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/GroupState.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/DoubleParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/IntParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/StrParameter.msg;/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/TaskRequest.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arc_msgs
)
_generate_msg_lisp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarkers.msg"
  "${MSG_I_FLAGS}"
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarker.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arc_msgs
)
_generate_msg_lisp(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/Config.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/IntParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/GroupState.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/DoubleParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/StrParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arc_msgs
)
_generate_msg_lisp(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arc_msgs
)
_generate_msg_lisp(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionFeedback.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/IntParameter.msg;/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskGoal.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/GroupState.msg;/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionResult.msg;/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskResult.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/DoubleParameter.msg;/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionGoal.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/StrParameter.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/Config.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arc_msgs
)
_generate_msg_lisp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessAnnouncement.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/Config.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/GroupState.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/DoubleParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/IntParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/StrParameter.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arc_msgs
)
_generate_msg_lisp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/Debris.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arc_msgs
)
_generate_msg_lisp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictim.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arc_msgs
)
_generate_msg_lisp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedDebris.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/Debris.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arc_msgs
)
_generate_msg_lisp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/TaskRequest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/Config.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/IntParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/GroupState.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/DoubleParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/StrParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arc_msgs
)
_generate_msg_lisp(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arc_msgs
)
_generate_msg_lisp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arc_msgs
)
_generate_msg_lisp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobots.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobot.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arc_msgs
)
_generate_msg_lisp(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arc_msgs
)

### Generating Services
_generate_srv_lisp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/ToggleList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arc_msgs
)
_generate_srv_lisp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/Task.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arc_msgs
)
_generate_srv_lisp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/MoveAlterableObject.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arc_msgs
)
_generate_srv_lisp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/NavigationRequest.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arc_msgs
)
_generate_srv_lisp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/ToggleSchema.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arc_msgs
)
_generate_srv_lisp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/DropMarker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arc_msgs
)
_generate_srv_lisp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/QuerryRole.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arc_msgs
)
_generate_srv_lisp(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/QuerryTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arc_msgs
)

### Generating Module File
_generate_module_lisp(arc_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arc_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(arc_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(arc_msgs_generate_messages arc_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionResult.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_lisp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/Task.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_lisp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskAction.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_lisp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedDebris.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_lisp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/TaskRequest.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_lisp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/ToggleList.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_lisp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictims.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_lisp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessAnnouncement.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_lisp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/DropMarker.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_lisp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobots.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_lisp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictim.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_lisp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskResult.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_lisp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/QuerryTask.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_lisp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarker.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_lisp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskGoal.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_lisp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/QuerryRole.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_lisp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/ToggleSchema.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_lisp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarkers.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_lisp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/Debris.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_lisp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessRequest.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_lisp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionFeedback.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_lisp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessResponse.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_lisp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionGoal.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_lisp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobot.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_lisp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/NavigationRequest.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_lisp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskFeedback.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_lisp _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/MoveAlterableObject.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_lisp _arc_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arc_msgs_genlisp)
add_dependencies(arc_msgs_genlisp arc_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arc_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arc_msgs
)
_generate_msg_nodejs(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictims.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictim.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arc_msgs
)
_generate_msg_nodejs(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arc_msgs
)
_generate_msg_nodejs(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/IntParameter.msg;/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskGoal.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/GroupState.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/DoubleParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/StrParameter.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/Config.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arc_msgs
)
_generate_msg_nodejs(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobot.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arc_msgs
)
_generate_msg_nodejs(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessRequest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/Config.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/GroupState.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/DoubleParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/IntParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/StrParameter.msg;/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/TaskRequest.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arc_msgs
)
_generate_msg_nodejs(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarkers.msg"
  "${MSG_I_FLAGS}"
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarker.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arc_msgs
)
_generate_msg_nodejs(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/Config.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/IntParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/GroupState.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/DoubleParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/StrParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arc_msgs
)
_generate_msg_nodejs(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arc_msgs
)
_generate_msg_nodejs(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionFeedback.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/IntParameter.msg;/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskGoal.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/GroupState.msg;/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionResult.msg;/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskResult.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/DoubleParameter.msg;/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionGoal.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/StrParameter.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/Config.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arc_msgs
)
_generate_msg_nodejs(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessAnnouncement.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/Config.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/GroupState.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/DoubleParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/IntParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/StrParameter.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arc_msgs
)
_generate_msg_nodejs(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/Debris.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arc_msgs
)
_generate_msg_nodejs(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictim.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arc_msgs
)
_generate_msg_nodejs(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedDebris.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/Debris.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arc_msgs
)
_generate_msg_nodejs(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/TaskRequest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/Config.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/IntParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/GroupState.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/DoubleParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/StrParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arc_msgs
)
_generate_msg_nodejs(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arc_msgs
)
_generate_msg_nodejs(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arc_msgs
)
_generate_msg_nodejs(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobots.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobot.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arc_msgs
)
_generate_msg_nodejs(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arc_msgs
)

### Generating Services
_generate_srv_nodejs(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/ToggleList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arc_msgs
)
_generate_srv_nodejs(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/Task.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arc_msgs
)
_generate_srv_nodejs(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/MoveAlterableObject.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arc_msgs
)
_generate_srv_nodejs(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/NavigationRequest.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arc_msgs
)
_generate_srv_nodejs(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/ToggleSchema.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arc_msgs
)
_generate_srv_nodejs(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/DropMarker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arc_msgs
)
_generate_srv_nodejs(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/QuerryRole.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arc_msgs
)
_generate_srv_nodejs(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/QuerryTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arc_msgs
)

### Generating Module File
_generate_module_nodejs(arc_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arc_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(arc_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(arc_msgs_generate_messages arc_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionResult.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_nodejs _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/Task.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_nodejs _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskAction.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_nodejs _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedDebris.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_nodejs _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/TaskRequest.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_nodejs _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/ToggleList.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_nodejs _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictims.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_nodejs _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessAnnouncement.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_nodejs _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/DropMarker.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_nodejs _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobots.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_nodejs _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictim.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_nodejs _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskResult.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_nodejs _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/QuerryTask.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_nodejs _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarker.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_nodejs _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskGoal.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_nodejs _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/QuerryRole.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_nodejs _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/ToggleSchema.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_nodejs _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarkers.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_nodejs _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/Debris.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_nodejs _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessRequest.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_nodejs _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionFeedback.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_nodejs _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessResponse.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_nodejs _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionGoal.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_nodejs _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobot.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_nodejs _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/NavigationRequest.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_nodejs _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskFeedback.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_nodejs _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/MoveAlterableObject.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_nodejs _arc_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arc_msgs_gennodejs)
add_dependencies(arc_msgs_gennodejs arc_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arc_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs
)
_generate_msg_py(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictims.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictim.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs
)
_generate_msg_py(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs
)
_generate_msg_py(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/IntParameter.msg;/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskGoal.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/GroupState.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/DoubleParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/StrParameter.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/Config.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs
)
_generate_msg_py(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobot.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs
)
_generate_msg_py(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessRequest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/Config.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/GroupState.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/DoubleParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/IntParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/StrParameter.msg;/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/TaskRequest.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs
)
_generate_msg_py(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarkers.msg"
  "${MSG_I_FLAGS}"
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarker.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs
)
_generate_msg_py(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/Config.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/IntParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/GroupState.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/DoubleParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/StrParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs
)
_generate_msg_py(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs
)
_generate_msg_py(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionFeedback.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/IntParameter.msg;/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskGoal.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/GroupState.msg;/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionResult.msg;/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskResult.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/DoubleParameter.msg;/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionGoal.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/StrParameter.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/Config.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs
)
_generate_msg_py(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessAnnouncement.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/Config.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/GroupState.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/DoubleParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/IntParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/StrParameter.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs
)
_generate_msg_py(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/Debris.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs
)
_generate_msg_py(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictim.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs
)
_generate_msg_py(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedDebris.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/Debris.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs
)
_generate_msg_py(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/TaskRequest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/Config.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/IntParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/GroupState.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/DoubleParameter.msg;/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/StrParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs
)
_generate_msg_py(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs
)
_generate_msg_py(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs
)
_generate_msg_py(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobots.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobot.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs
)
_generate_msg_py(arc_msgs
  "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs
)

### Generating Services
_generate_srv_py(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/ToggleList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs
)
_generate_srv_py(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/Task.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs
)
_generate_srv_py(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/MoveAlterableObject.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs
)
_generate_srv_py(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/NavigationRequest.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs
)
_generate_srv_py(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/ToggleSchema.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg/BoolParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs
)
_generate_srv_py(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/DropMarker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs
)
_generate_srv_py(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/QuerryRole.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs
)
_generate_srv_py(arc_msgs
  "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/QuerryTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs
)

### Generating Module File
_generate_module_py(arc_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(arc_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(arc_msgs_generate_messages arc_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionResult.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_py _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/Task.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_py _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskAction.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_py _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedDebris.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_py _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/TaskRequest.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_py _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/ToggleList.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_py _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictims.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_py _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessAnnouncement.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_py _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/DropMarker.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_py _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobots.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_py _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictim.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_py _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskResult.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_py _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/QuerryTask.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_py _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarker.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_py _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskGoal.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_py _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/QuerryRole.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_py _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/ToggleSchema.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_py _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarkers.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_py _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/Debris.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_py _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessRequest.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_py _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionFeedback.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_py _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessResponse.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_py _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionGoal.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_py _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobot.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_py _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/NavigationRequest.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_py _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskFeedback.msg" NAME_WE)
add_dependencies(arc_msgs_generate_messages_py _arc_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/MoveAlterableObject.srv" NAME_WE)
add_dependencies(arc_msgs_generate_messages_py _arc_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arc_msgs_genpy)
add_dependencies(arc_msgs_genpy arc_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arc_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arc_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arc_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(arc_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(arc_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(arc_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET dynamic_reconfigure_generate_messages_cpp)
  add_dependencies(arc_msgs_generate_messages_cpp dynamic_reconfigure_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arc_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arc_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(arc_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(arc_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(arc_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET dynamic_reconfigure_generate_messages_eus)
  add_dependencies(arc_msgs_generate_messages_eus dynamic_reconfigure_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arc_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arc_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(arc_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(arc_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(arc_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET dynamic_reconfigure_generate_messages_lisp)
  add_dependencies(arc_msgs_generate_messages_lisp dynamic_reconfigure_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arc_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arc_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(arc_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(arc_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(arc_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET dynamic_reconfigure_generate_messages_nodejs)
  add_dependencies(arc_msgs_generate_messages_nodejs dynamic_reconfigure_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arc_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(arc_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(arc_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(arc_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET dynamic_reconfigure_generate_messages_py)
  add_dependencies(arc_msgs_generate_messages_py dynamic_reconfigure_generate_messages_py)
endif()
