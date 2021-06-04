;; Auto-generated. Do not edit!


(when (boundp 'arc_msgs::DetectedVictim)
  (if (not (find-package "ARC_MSGS"))
    (make-package "ARC_MSGS"))
  (shadow 'DetectedVictim (find-package "ARC_MSGS")))
(unless (find-package "ARC_MSGS::DETECTEDVICTIM")
  (make-package "ARC_MSGS::DETECTEDVICTIM"))

(in-package "ROS")
;;//! \htmlinclude DetectedVictim.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass arc_msgs::DetectedVictim
  :super ros::object
  :slots (_victim_id _status _pose ))

(defmethod arc_msgs::DetectedVictim
  (:init
   (&key
    ((:victim_id __victim_id) 0)
    ((:status __status) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _victim_id (round __victim_id))
   (setq _status (round __status))
   (setq _pose __pose)
   self)
  (:victim_id
   (&optional __victim_id)
   (if __victim_id (setq _victim_id __victim_id)) _victim_id)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
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
    ;; int32 _victim_id
    4
    ;; int32 _status
    4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _victim_id
       (write-long _victim_id s)
     ;; int32 _status
       (write-long _status s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _victim_id
     (setq _victim_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get arc_msgs::DetectedVictim :md5sum-) "79d1ca6c9691b59aed30d016f730fa45")
(setf (get arc_msgs::DetectedVictim :datatype-) "arc_msgs/DetectedVictim")
(setf (get arc_msgs::DetectedVictim :definition-)
      "#This is the detection info of a victim in arc. There is no transform info/ie we assume this detection takes place from a current robots perspective (ie base_link)
int32 victim_id		#id of the robot
int32 status		#postiive, negative, unkown, or uncertain
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



(provide :arc_msgs/DetectedVictim "79d1ca6c9691b59aed30d016f730fa45")


