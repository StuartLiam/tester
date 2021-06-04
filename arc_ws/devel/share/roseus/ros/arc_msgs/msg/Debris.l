;; Auto-generated. Do not edit!


(when (boundp 'arc_msgs::Debris)
  (if (not (find-package "ARC_MSGS"))
    (make-package "ARC_MSGS"))
  (shadow 'Debris (find-package "ARC_MSGS")))
(unless (find-package "ARC_MSGS::DEBRIS")
  (make-package "ARC_MSGS::DEBRIS"))

(in-package "ROS")
;;//! \htmlinclude Debris.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass arc_msgs::Debris
  :super ros::object
  :slots (_debris_id _pose ))

(defmethod arc_msgs::Debris
  (:init
   (&key
    ((:debris_id __debris_id) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _debris_id (round __debris_id))
   (setq _pose __pose)
   self)
  (:debris_id
   (&optional __debris_id)
   (if __debris_id (setq _debris_id __debris_id)) _debris_id)
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
    ;; int32 _debris_id
    4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _debris_id
       (write-long _debris_id s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _debris_id
     (setq _debris_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get arc_msgs::Debris :md5sum-) "f040e1095812e2271757012504128718")
(setf (get arc_msgs::Debris :datatype-) "arc_msgs/Debris")
(setf (get arc_msgs::Debris :definition-)
      "int32 debris_id			#the id of debris object, ie it's fiducial return.
geometry_msgs/Pose 	pose	#location of the degree relative to robot

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



(provide :arc_msgs/Debris "f040e1095812e2271757012504128718")


