; Auto-generated. Do not edit!


(cl:in-package arc_msgs-msg)


;//! \htmlinclude WirelessResponse.msg.html

(cl:defclass <WirelessResponse> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sender_location
    :reader sender_location
    :initarg :sender_location
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass WirelessResponse (<WirelessResponse>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WirelessResponse>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WirelessResponse)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arc_msgs-msg:<WirelessResponse> is deprecated: use arc_msgs-msg:WirelessResponse instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WirelessResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-msg:header-val is deprecated.  Use arc_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sender_location-val :lambda-list '(m))
(cl:defmethod sender_location-val ((m <WirelessResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-msg:sender_location-val is deprecated.  Use arc_msgs-msg:sender_location instead.")
  (sender_location m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WirelessResponse>) ostream)
  "Serializes a message object of type '<WirelessResponse>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sender_location) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WirelessResponse>) istream)
  "Deserializes a message object of type '<WirelessResponse>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sender_location) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WirelessResponse>)))
  "Returns string type for a message object of type '<WirelessResponse>"
  "arc_msgs/WirelessResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WirelessResponse)))
  "Returns string type for a message object of type 'WirelessResponse"
  "arc_msgs/WirelessResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WirelessResponse>)))
  "Returns md5sum for a message object of type '<WirelessResponse>"
  "79379e06566b18a346ddf015a49930d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WirelessResponse)))
  "Returns md5sum for a message object of type 'WirelessResponse"
  "79379e06566b18a346ddf015a49930d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WirelessResponse>)))
  "Returns full string definition for message of type '<WirelessResponse>"
  (cl:format cl:nil "std_msgs/Header header~%~%#Where is the robot who sent this announcement? This is in /map coordinate frame.~%geometry_msgs/Pose sender_location~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WirelessResponse)))
  "Returns full string definition for message of type 'WirelessResponse"
  (cl:format cl:nil "std_msgs/Header header~%~%#Where is the robot who sent this announcement? This is in /map coordinate frame.~%geometry_msgs/Pose sender_location~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WirelessResponse>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sender_location))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WirelessResponse>))
  "Converts a ROS message object to a list"
  (cl:list 'WirelessResponse
    (cl:cons ':header (header msg))
    (cl:cons ':sender_location (sender_location msg))
))
