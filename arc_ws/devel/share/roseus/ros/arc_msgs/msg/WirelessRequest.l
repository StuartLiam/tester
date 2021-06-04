;; Auto-generated. Do not edit!


(when (boundp 'arc_msgs::WirelessRequest)
  (if (not (find-package "ARC_MSGS"))
    (make-package "ARC_MSGS"))
  (shadow 'WirelessRequest (find-package "ARC_MSGS")))
(unless (find-package "ARC_MSGS::WIRELESSREQUEST")
  (make-package "ARC_MSGS::WIRELESSREQUEST"))

(in-package "ROS")
;;//! \htmlinclude WirelessRequest.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*TYPE_TASK*" (find-package "ARC_MSGS::WIRELESSREQUEST"))
(shadow '*TYPE_TASK* (find-package "ARC_MSGS::WIRELESSREQUEST"))
(defconstant arc_msgs::WirelessRequest::*TYPE_TASK* 0)
(defclass arc_msgs::WirelessRequest
  :super ros::object
  :slots (_header _sender_location _request_type _task ))

(defmethod arc_msgs::WirelessRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sender_location __sender_location) (instance geometry_msgs::Pose :init))
    ((:request_type __request_type) 0)
    ((:task __task) (instance arc_msgs::TaskRequest :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _sender_location __sender_location)
   (setq _request_type (round __request_type))
   (setq _task __task)
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
  (:request_type
   (&optional __request_type)
   (if __request_type (setq _request_type __request_type)) _request_type)
  (:task
   (&rest __task)
   (if (keywordp (car __task))
       (send* _task __task)
     (progn
       (if __task (setq _task (car __task)))
       _task)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose _sender_location
    (send _sender_location :serialization-length)
    ;; uint8 _request_type
    1
    ;; arc_msgs/TaskRequest _task
    (send _task :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose _sender_location
       (send _sender_location :serialize s)
     ;; uint8 _request_type
       (write-byte _request_type s)
     ;; arc_msgs/TaskRequest _task
       (send _task :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose _sender_location
     (send _sender_location :deserialize buf ptr-) (incf ptr- (send _sender_location :serialization-length))
   ;; uint8 _request_type
     (setq _request_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; arc_msgs/TaskRequest _task
     (send _task :deserialize buf ptr-) (incf ptr- (send _task :serialization-length))
   ;;
   self)
  )

(setf (get arc_msgs::WirelessRequest :md5sum-) "0218c54dd4c00c08f6909a40927063ed")
(setf (get arc_msgs::WirelessRequest :datatype-) "arc_msgs/WirelessRequest")
(setf (get arc_msgs::WirelessRequest :definition-)
      "#Pertaining to information about this SPECIFIC message, not the wireless request itself.
std_msgs/Header header

#Where is the robot who sent this announcement? This is in /map coordinate frame.
geometry_msgs/Pose sender_location

#The type of Request. Default is (0), a Task Request.
uint8 request_type
uint8 TYPE_TASK=0

#the task that is being requested. This is checked if request_type=TYPE_TASK
arc_msgs/TaskRequest task

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
MSG: arc_msgs/TaskRequest
#A task is a small piece of behaviour defined in ARC, prompting a robot to do some specific piece of work.

#Unique id created for this task instance. 
#All requests and responses about this instance must have the same task_id, otherwise robot will think it’s a different task.
uint32 task_id

time created #The time that this task instance was created.

#The name of the task to perform
string task_name

#Configuration parameters for this task. 
dynamic_reconfigure/Config parameters

#The intend of the request. some task requests are requesting to complete a task.
#Another request may be asking to cancel the execution of a task.
uint8 request_type

#Request types
uint8 TYPE_COMPLETION=0   #Requesting robot to complete the task.
uint8 TYPE_CANCELLATION=1 #Requesting robot to cancel the task.

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



(provide :arc_msgs/WirelessRequest "0218c54dd4c00c08f6909a40927063ed")


