;; Auto-generated. Do not edit!


(when (boundp 'arc_msgs::DetectedRobot)
  (if (not (find-package "ARC_MSGS"))
    (make-package "ARC_MSGS"))
  (shadow 'DetectedRobot (find-package "ARC_MSGS")))
(unless (find-package "ARC_MSGS::DETECTEDROBOT")
  (make-package "ARC_MSGS::DETECTEDROBOT"))

(in-package "ROS")
;;//! \htmlinclude DetectedRobot.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass arc_msgs::DetectedRobot
  :super ros::object
  :slots (_robot_id _pose ))

(defmethod arc_msgs::DetectedRobot
  (:init
   (&key
    ((:robot_id __robot_id) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _robot_id (round __robot_id))
   (setq _pose __pose)
   self)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; int32 _robot_id
    4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _robot_id
       (write-long _robot_id s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _robot_id
     (setq _robot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get arc_msgs::DetectedRobot :md5sum-) "59c166113b8b8f6d0d5b4e68848f28c1")
(setf (get arc_msgs::DetectedRobot :datatype-) "arc_msgs/DetectedRobot")
(setf (get arc_msgs::DetectedRobot :definition-)
      "#This is the detection info of a robot in arc. There is no transform info/ie we assume this detection takes place from a current robots perspective (ie base_link)
int32 robot_id		#id of the robot
geometry_msgs/Pose pose	#Position of the detected robot.

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :arc_msgs/DetectedRobot "59c166113b8b8f6d0d5b4e68848f28c1")


