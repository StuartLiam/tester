;; Auto-generated. Do not edit!


(when (boundp 'arc_msgs::DetectedDebris)
  (if (not (find-package "ARC_MSGS"))
    (make-package "ARC_MSGS"))
  (shadow 'DetectedDebris (find-package "ARC_MSGS")))
(unless (find-package "ARC_MSGS::DETECTEDDEBRIS")
  (make-package "ARC_MSGS::DETECTEDDEBRIS"))

(in-package "ROS")
;;//! \htmlinclude DetectedDebris.msg.html


(defclass arc_msgs::DetectedDebris
  :super ros::object
  :slots (_debris ))

(defmethod arc_msgs::DetectedDebris
  (:init
   (&key
    ((:debris __debris) (let (r) (dotimes (i 0) (push (instance arc_msgs::Debris :init) r)) r))
    )
   (send-super :init)
   (setq _debris __debris)
   self)
  (:debris
   (&rest __debris)
   (if (keywordp (car __debris))
       (send* _debris __debris)
     (progn
       (if __debris (setq _debris (car __debris)))
       _debris)))
  (:serialization-length
   ()
   (+
    ;; arc_msgs/Debris[] _debris
    (apply #'+ (send-all _debris :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; arc_msgs/Debris[] _debris
     (write-long (length _debris) s)
     (dolist (elem _debris)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; arc_msgs/Debris[] _debris
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _debris (let (r) (dotimes (i n) (push (instance arc_msgs::Debris :init) r)) r))
     (dolist (elem- _debris)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get arc_msgs::DetectedDebris :md5sum-) "67aa68765d8aaa6b92b6631ba36e4492")
(setf (get arc_msgs::DetectedDebris :datatype-) "arc_msgs/DetectedDebris")
(setf (get arc_msgs::DetectedDebris :definition-)
      "arc_msgs/Debris[] debris 		#list of the debris


================================================================================
MSG: arc_msgs/Debris
int32 debris_id			#the id of debris object, ie it's fiducial return.
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



(provide :arc_msgs/DetectedDebris "67aa68765d8aaa6b92b6631ba36e4492")


