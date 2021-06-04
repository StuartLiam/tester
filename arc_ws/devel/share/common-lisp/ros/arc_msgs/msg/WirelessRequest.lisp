; Auto-generated. Do not edit!


(cl:in-package arc_msgs-msg)


;//! \htmlinclude WirelessRequest.msg.html

(cl:defclass <WirelessRequest> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sender_location
    :reader sender_location
    :initarg :sender_location
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (request_type
    :reader request_type
    :initarg :request_type
    :type cl:fixnum
    :initform 0)
   (task
    :reader task
    :initarg :task
    :type arc_msgs-msg:TaskRequest
    :initform (cl:make-instance 'arc_msgs-msg:TaskRequest)))
)

(cl:defclass WirelessRequest (<WirelessRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WirelessRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WirelessRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arc_msgs-msg:<WirelessRequest> is deprecated: use arc_msgs-msg:WirelessRequest instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WirelessRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-msg:header-val is deprecated.  Use arc_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sender_location-val :lambda-list '(m))
(cl:defmethod sender_location-val ((m <WirelessRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-msg:sender_location-val is deprecated.  Use arc_msgs-msg:sender_location instead.")
  (sender_location m))

(cl:ensure-generic-function 'request_type-val :lambda-list '(m))
(cl:defmethod request_type-val ((m <WirelessRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-msg:request_type-val is deprecated.  Use arc_msgs-msg:request_type instead.")
  (request_type m))

(cl:ensure-generic-function 'task-val :lambda-list '(m))
(cl:defmethod task-val ((m <WirelessRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-msg:task-val is deprecated.  Use arc_msgs-msg:task instead.")
  (task m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WirelessRequest>)))
    "Constants for message type '<WirelessRequest>"
  '((:TYPE_TASK . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WirelessRequest)))
    "Constants for message type 'WirelessRequest"
  '((:TYPE_TASK . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WirelessRequest>) ostream)
  "Serializes a message object of type '<WirelessRequest>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sender_location) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'request_type)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'task) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WirelessRequest>) istream)
  "Deserializes a message object of type '<WirelessRequest>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sender_location) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'request_type)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'task) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WirelessRequest>)))
  "Returns string type for a message object of type '<WirelessRequest>"
  "arc_msgs/WirelessRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WirelessRequest)))
  "Returns string type for a message object of type 'WirelessRequest"
  "arc_msgs/WirelessRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WirelessRequest>)))
  "Returns md5sum for a message object of type '<WirelessRequest>"
  "0218c54dd4c00c08f6909a40927063ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WirelessRequest)))
  "Returns md5sum for a message object of type 'WirelessRequest"
  "0218c54dd4c00c08f6909a40927063ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WirelessRequest>)))
  "Returns full string definition for message of type '<WirelessRequest>"
  (cl:format cl:nil "#Pertaining to information about this SPECIFIC message, not the wireless request itself.~%std_msgs/Header header~%~%#Where is the robot who sent this announcement? This is in /map coordinate frame.~%geometry_msgs/Pose sender_location~%~%#The type of Request. Default is (0), a Task Request.~%uint8 request_type~%uint8 TYPE_TASK=0~%~%#the task that is being requested. This is checked if request_type=TYPE_TASK~%arc_msgs/TaskRequest task~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: arc_msgs/TaskRequest~%#A task is a small piece of behaviour defined in ARC, prompting a robot to do some specific piece of work.~%~%#Unique id created for this task instance. ~%#All requests and responses about this instance must have the same task_id, otherwise robot will think it’s a different task.~%uint32 task_id~%~%time created #The time that this task instance was created.~%~%#The name of the task to perform~%string task_name~%~%#Configuration parameters for this task. ~%dynamic_reconfigure/Config parameters~%~%#The intend of the request. some task requests are requesting to complete a task.~%#Another request may be asking to cancel the execution of a task.~%uint8 request_type~%~%#Request types~%uint8 TYPE_COMPLETION=0   #Requesting robot to complete the task.~%uint8 TYPE_CANCELLATION=1 #Requesting robot to cancel the task.~%~%================================================================================~%MSG: dynamic_reconfigure/Config~%BoolParameter[] bools~%IntParameter[] ints~%StrParameter[] strs~%DoubleParameter[] doubles~%GroupState[] groups~%~%================================================================================~%MSG: dynamic_reconfigure/BoolParameter~%string name~%bool value~%~%================================================================================~%MSG: dynamic_reconfigure/IntParameter~%string name~%int32 value~%~%================================================================================~%MSG: dynamic_reconfigure/StrParameter~%string name~%string value~%~%================================================================================~%MSG: dynamic_reconfigure/DoubleParameter~%string name~%float64 value~%~%================================================================================~%MSG: dynamic_reconfigure/GroupState~%string name~%bool state~%int32 id~%int32 parent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WirelessRequest)))
  "Returns full string definition for message of type 'WirelessRequest"
  (cl:format cl:nil "#Pertaining to information about this SPECIFIC message, not the wireless request itself.~%std_msgs/Header header~%~%#Where is the robot who sent this announcement? This is in /map coordinate frame.~%geometry_msgs/Pose sender_location~%~%#The type of Request. Default is (0), a Task Request.~%uint8 request_type~%uint8 TYPE_TASK=0~%~%#the task that is being requested. This is checked if request_type=TYPE_TASK~%arc_msgs/TaskRequest task~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: arc_msgs/TaskRequest~%#A task is a small piece of behaviour defined in ARC, prompting a robot to do some specific piece of work.~%~%#Unique id created for this task instance. ~%#All requests and responses about this instance must have the same task_id, otherwise robot will think it’s a different task.~%uint32 task_id~%~%time created #The time that this task instance was created.~%~%#The name of the task to perform~%string task_name~%~%#Configuration parameters for this task. ~%dynamic_reconfigure/Config parameters~%~%#The intend of the request. some task requests are requesting to complete a task.~%#Another request may be asking to cancel the execution of a task.~%uint8 request_type~%~%#Request types~%uint8 TYPE_COMPLETION=0   #Requesting robot to complete the task.~%uint8 TYPE_CANCELLATION=1 #Requesting robot to cancel the task.~%~%================================================================================~%MSG: dynamic_reconfigure/Config~%BoolParameter[] bools~%IntParameter[] ints~%StrParameter[] strs~%DoubleParameter[] doubles~%GroupState[] groups~%~%================================================================================~%MSG: dynamic_reconfigure/BoolParameter~%string name~%bool value~%~%================================================================================~%MSG: dynamic_reconfigure/IntParameter~%string name~%int32 value~%~%================================================================================~%MSG: dynamic_reconfigure/StrParameter~%string name~%string value~%~%================================================================================~%MSG: dynamic_reconfigure/DoubleParameter~%string name~%float64 value~%~%================================================================================~%MSG: dynamic_reconfigure/GroupState~%string name~%bool state~%int32 id~%int32 parent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WirelessRequest>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sender_location))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'task))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WirelessRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'WirelessRequest
    (cl:cons ':header (header msg))
    (cl:cons ':sender_location (sender_location msg))
    (cl:cons ':request_type (request_type msg))
    (cl:cons ':task (task msg))
))
