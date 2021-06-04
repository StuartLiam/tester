;; Auto-generated. Do not edit!


(when (boundp 'arc_msgs::DetectedMarkers)
  (if (not (find-package "ARC_MSGS"))
    (make-package "ARC_MSGS"))
  (shadow 'DetectedMarkers (find-package "ARC_MSGS")))
(unless (find-package "ARC_MSGS::DETECTEDMARKERS")
  (make-package "ARC_MSGS::DETECTEDMARKERS"))

(in-package "ROS")
;;//! \htmlinclude DetectedMarkers.msg.html


(defclass arc_msgs::DetectedMarkers
  :super ros::object
  :slots (_markers ))

(defmethod arc_msgs::DetectedMarkers
  (:init
   (&key
    ((:markers __markers) (let (r) (dotimes (i 0) (push (instance arc_msgs::DetectedMarker :init) r)) r))
    )
   (send-super :init)
   (setq _markers __markers)
   self)
  (:markers
   (&rest __markers)
   (if (keywordp (car __markers))
       (send* _markers __markers)
     (progn
       (if __markers (setq _markers (car __markers)))
       _markers)))
  (:serialization-length
   ()
   (+
    ;; arc_msgs/DetectedMarker[] _markers
    (apply #'+ (send-all _markers :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; arc_msgs/DetectedMarker[] _markers
     (write-long (length _markers) s)
     (dolist (elem _markers)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; arc_msgs/DetectedMarker[] _markers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _markers (let (r) (dotimes (i n) (push (instance arc_msgs::DetectedMarker :init) r)) r))
     (dolist (elem- _markers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get arc_msgs::DetectedMarkers :md5sum-) "0016a179141dd29143b5b72df26d91b1")
(setf (get arc_msgs::DetectedMarkers :datatype-) "arc_msgs/DetectedMarkers")
(setf (get arc_msgs::DetectedMarkers :definition-)
      "arc_msgs/DetectedMarker[] markers		#list of the markers detected

================================================================================
MSG: arc_msgs/DetectedMarker
#This is the detection info of a victim in arc. There is no transform info/ie we assume this detection takes place from a current robots perspective (ie base_link)
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



(provide :arc_msgs/DetectedMarkers "0016a179141dd29143b5b72df26d91b1")


