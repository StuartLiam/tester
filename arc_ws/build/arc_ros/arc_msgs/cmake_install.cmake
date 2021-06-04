# Install script for directory: /home/mute/workspace/arc_ws/src/arc_ros/arc_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/mute/workspace/arc_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arc_msgs/msg" TYPE FILE FILES
    "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobot.msg"
    "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedRobots.msg"
    "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictim.msg"
    "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedVictims.msg"
    "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarkers.msg"
    "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedDebris.msg"
    "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/DetectedMarker.msg"
    "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/Debris.msg"
    "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessResponse.msg"
    "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessAnnouncement.msg"
    "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/WirelessRequest.msg"
    "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg/TaskRequest.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arc_msgs/srv" TYPE FILE FILES
    "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/NavigationRequest.srv"
    "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/ToggleSchema.srv"
    "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/MoveAlterableObject.srv"
    "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/DropMarker.srv"
    "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/QuerryRole.srv"
    "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/QuerryTask.srv"
    "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/Task.srv"
    "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/srv/ToggleList.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arc_msgs/action" TYPE FILE FILES "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/action/ArcTask.action")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arc_msgs/msg" TYPE FILE FILES
    "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskAction.msg"
    "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionGoal.msg"
    "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionResult.msg"
    "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskActionFeedback.msg"
    "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskGoal.msg"
    "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskResult.msg"
    "/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg/ArcTaskFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arc_msgs/cmake" TYPE FILE FILES "/home/mute/workspace/arc_ws/build/arc_ros/arc_msgs/catkin_generated/installspace/arc_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/mute/workspace/arc_ws/devel/include/arc_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/mute/workspace/arc_ws/devel/share/roseus/ros/arc_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/mute/workspace/arc_ws/devel/share/common-lisp/ros/arc_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/mute/workspace/arc_ws/devel/share/gennodejs/ros/arc_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/mute/workspace/arc_ws/devel/lib/python2.7/dist-packages/arc_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/mute/workspace/arc_ws/devel/lib/python2.7/dist-packages/arc_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/mute/workspace/arc_ws/build/arc_ros/arc_msgs/catkin_generated/installspace/arc_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arc_msgs/cmake" TYPE FILE FILES "/home/mute/workspace/arc_ws/build/arc_ros/arc_msgs/catkin_generated/installspace/arc_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arc_msgs/cmake" TYPE FILE FILES
    "/home/mute/workspace/arc_ws/build/arc_ros/arc_msgs/catkin_generated/installspace/arc_msgsConfig.cmake"
    "/home/mute/workspace/arc_ws/build/arc_ros/arc_msgs/catkin_generated/installspace/arc_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arc_msgs" TYPE FILE FILES "/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/package.xml")
endif()

