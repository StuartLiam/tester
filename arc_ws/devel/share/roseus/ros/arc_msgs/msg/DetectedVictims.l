;; Auto-generated. Do not edit!


(when (boundp 'arc_msgs::DetectedVictims)
  (if (not (find-package "ARC_MSGS"))
    (make-package "ARC_MSGS"))
  (shadow 'DetectedVictims (find-package "ARC_MSGS")))
(unless (find-package "ARC_MSGS::DETECTEDVICTIMS")
  (make-package "ARC_MSGS::DETECTEDVICTIMS"))

(in-package "ROS")
;;//! \htmlinclude DetectedVictims.msg.html


(defclass arc_msgs::DetectedVictims
  :super ros::object
  :slots (_victims ))

(defmethod arc_msgs::DetectedVictims
  (:init
   (&key
    ((:victims __victims) (let (r) (dotimes (i 0) (push (instance arc_msgs::DetectedVictim :init) r)) r))
    )
   (send-super :init)
   (setq _victims __victims)
   self)
  (:victims
   (&rest __victims)
   (if (keywordp (car __victims))
       (send* _victims __victims)
     (progn
       (if __victims (setq _victims (car __victims)))
       _victims)))
  (:serialization-length
   ()
   (+
    ;; arc_msgs/DetectedVictim[] _victims
    (apply #'+ (send-all _victims :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; arc_msgs/DetectedVictim[] _victims
     (write-long (length _victims) s)
     (dolist (elem _victims)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; arc_msgs/DetectedVictim[] _victims
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _victims (let (r) (dotimes (i n) (push (instance arc_msgs::DetectedVictim :init) r)) r))
     (dolist (elem- _victims)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get arc_msgs::DetectedVictims :md5sum-) "a82d7fbb7e64cf7614858422a3604178")
(setf (get arc_msgs::DetectedVictims :datatype-) "arc_msgs/DetectedVictims")
(setf (get arc_msgs::DetectedVictims :definition-)
      "arc_msgs/DetectedVictim[] victims		#list of the victims detected

================================================================================
MSG: arc_msgs/DetectedVictim
#This is the detection info of a victim in arc. There is no transform info/ie we assume this detection takes place from a current robots perspective (ie base_link)
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



(provide :arc_msgs/DetectedVictims "a82d7fbb7e64cf7614858422a3604178")


