;; Auto-generated. Do not edit!


(when (boundp 'arc_msgs::WirelessResponse)
  (if (not (find-package "ARC_MSGS"))
    (make-package "ARC_MSGS"))
  (shadow 'WirelessResponse (find-package "ARC_MSGS")))
(unless (find-package "ARC_MSGS::WIRELESSRESPONSE")
  (make-package "ARC_MSGS::WIRELESSRESPONSE"))

(in-package "ROS")
;;//! \htmlinclude WirelessResponse.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass arc_msgs::WirelessResponse
  :super ros::object
  :slots (_header _sender_location ))

(defmethod arc_msgs::WirelessResponse
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sender_location __sender_location) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _sender_location __sender_location)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sender_location
   (&rest __sender_location)
   (if (keywordp (car __sender_location))
       (send* _sender_location __sender_location)
     (progn
       (if __sender_location (setq _sender_location (car __sender_location)))
       _sender_location)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose _sender_location
    (send _sender_location :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose _sender_location
       (send _sender_location :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose _sender_location
     (send _sender_location :deserialize buf ptr-) (incf ptr- (send _sender_location :serialization-length))
   ;;
   self)
  )

(setf (get arc_msgs::WirelessResponse :md5sum-) "79379e06566b18a346ddf015a49930d6")
(setf (get arc_msgs::WirelessResponse :datatype-) "arc_msgs/WirelessResponse")
(setf (get arc_msgs::WirelessResponse :definition-)
      "std_msgs/Header header

#Where is the robot who sent this announcement? This is in /map coordinate frame.
geometry_msgs/Pose sender_location

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

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



(provide :arc_msgs/WirelessResponse "79379e06566b18a346ddf015a49930d6")


