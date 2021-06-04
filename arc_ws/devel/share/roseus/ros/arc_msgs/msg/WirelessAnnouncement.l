;; Auto-generated. Do not edit!


(when (boundp 'arc_msgs::WirelessAnnouncement)
  (if (not (find-package "ARC_MSGS"))
    (make-package "ARC_MSGS"))
  (shadow 'WirelessAnnouncement (find-package "ARC_MSGS")))
(unless (find-package "ARC_MSGS::WIRELESSANNOUNCEMENT")
  (make-package "ARC_MSGS::WIRELESSANNOUNCEMENT"))

(in-package "ROS")
;;//! \htmlinclude WirelessAnnouncement.msg.html
(if (not (find-package "DYNAMIC_RECONFIGURE"))
  (ros::roseus-add-msgs "dynamic_reconfigure"))
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass arc_msgs::WirelessAnnouncement
  :super ros::object
  :slots (_header _sender_location _announcement ))

(defmethod arc_msgs::WirelessAnnouncement
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sender_location __sender_location) (instance geometry_msgs::Pose :init))
    ((:announcement __announcement) (instance dynamic_reconfigure::Config :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _sender_location __sender_location)
   (setq _announcement __announcement)
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
  (:announcement
   (&rest __announcement)
   (if (keywordp (car __announcement))
       (send* _announcement __announcement)
     (progn
       (if __announcement (setq _announcement (car __announcement)))
       _announcement)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose _sender_location
    (send _sender_location :serialization-length)
    ;; dynamic_reconfigure/Config _announcement
    (send _announcement :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose _sender_location
       (send _sender_location :serialize s)
     ;; dynamic_reconfigure/Config _announcement
       (send _announcement :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose _sender_location
     (send _sender_location :deserialize buf ptr-) (incf ptr- (send _sender_location :serialization-length))
   ;; dynamic_reconfigure/Config _announcement
     (send _announcement :deserialize buf ptr-) (incf ptr- (send _announcement :serialization-length))
   ;;
   self)
  )

(setf (get arc_msgs::WirelessAnnouncement :md5sum-) "38616ea982e90535028043ae1eb63a11")
(setf (get arc_msgs::WirelessAnnouncement :datatype-) "arc_msgs/WirelessAnnouncement")
(setf (get arc_msgs::WirelessAnnouncement :definition-)
      "std_msgs/Header header

#Where is the robot who sent this announcement? This is in /map coordinate frame.
geometry_msgs/Pose sender_location

#content of the announcement. The information to broadcast.
dynamic_reconfigure/Config announcement

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

================================================================================
MSG: dynamic_reconfigure/Config
BoolParameter[] bools
IntParameter[] ints
StrParameter[] strs
DoubleParameter[] doubles
GroupState[] groups

================================================================================
MSG: dynamic_reconfigure/BoolParameter
string name
bool value

================================================================================
MSG: dynamic_reconfigure/IntParameter
string name
int32 value

================================================================================
MSG: dynamic_reconfigure/StrParameter
string name
string value

================================================================================
MSG: dynamic_reconfigure/DoubleParameter
string name
float64 value

================================================================================
MSG: dynamic_reconfigure/GroupState
string name
bool state
int32 id
int32 parent

")



(provide :arc_msgs/WirelessAnnouncement "38616ea982e90535028043ae1eb63a11")


