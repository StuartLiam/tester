;; Auto-generated. Do not edit!


(when (boundp 'arc_msgs::DetectedMarker)
  (if (not (find-package "ARC_MSGS"))
    (make-package "ARC_MSGS"))
  (shadow 'DetectedMarker (find-package "ARC_MSGS")))
(unless (find-package "ARC_MSGS::DETECTEDMARKER")
  (make-package "ARC_MSGS::DETECTEDMARKER"))

(in-package "ROS")
;;//! \htmlinclude DetectedMarker.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass arc_msgs::DetectedMarker
  :super ros::object
  :slots (_marker_id _pose ))

(defmethod arc_msgs::DetectedMarker
  (:init
   (&key
    ((:marker_id __marker_id) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _marker_id (round __marker_id))
   (setq _pose __pose)
   self)
  (:marker_id
   (&optional __marker_id)
   (if __marker_id (setq _marker_id __marker_id)) _marker_id)
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
    ;; int32 _marker_id
    4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _marker_id
       (write-long _marker_id s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _marker_id
     (setq _marker_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get arc_msgs::DetectedMarker :md5sum-) "b56884f7ca9a3304eebe37fb29b352fb")
(setf (get arc_msgs::DetectedMarker :datatype-) "arc_msgs/DetectedMarker")
(setf (get arc_msgs::DetectedMarker :definition-)
      "#This is the detection info of a victim in arc. There is no transform info/ie we assume this detection takes place from a current robots perspective (ie base_link)
int32 marker_id		#id of the robot
geometry_msgs/Pose pose	#Position of the detected marker;

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



(provide :arc_msgs/DetectedMarker "b56884f7ca9a3304eebe37fb29b352fb")


