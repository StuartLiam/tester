; Auto-generated. Do not edit!


(cl:in-package arc_msgs-srv)


;//! \htmlinclude NavigationRequest-request.msg.html

(cl:defclass <NavigationRequest-request> (roslisp-msg-protocol:ros-message)
  ((priority
    :reader priority
    :initarg :priority
    :type cl:integer
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass NavigationRequest-request (<NavigationRequest-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigationRequest-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigationRequest-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arc_msgs-srv:<NavigationRequest-request> is deprecated: use arc_msgs-srv:NavigationRequest-request instead.")))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <NavigationRequest-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-srv:priority-val is deprecated.  Use arc_msgs-srv:priority instead.")
  (priority m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <NavigationRequest-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-srv:pose-val is deprecated.  Use arc_msgs-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigationRequest-request>) ostream)
  "Serializes a message object of type '<NavigationRequest-request>"
  (cl:let* ((signed (cl:slot-value msg 'priority)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigationRequest-request>) istream)
  "Deserializes a message object of type '<NavigationRequest-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'priority) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigationRequest-request>)))
  "Returns string type for a service object of type '<NavigationRequest-request>"
  "arc_msgs/NavigationRequestRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigationRequest-request)))
  "Returns string type for a service object of type 'NavigationRequest-request"
  "arc_msgs/NavigationRequestRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigationRequest-request>)))
  "Returns md5sum for a message object of type '<NavigationRequest-request>"
  "0990ba5feaa158a7030cc5a892af2ba7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigationRequest-request)))
  "Returns md5sum for a message object of type 'NavigationRequest-request"
  "0990ba5feaa158a7030cc5a892af2ba7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigationRequest-request>)))
  "Returns full string definition for message of type '<NavigationRequest-request>"
  (cl:format cl:nil "int32 priority~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigationRequest-request)))
  "Returns full string definition for message of type 'NavigationRequest-request"
  (cl:format cl:nil "int32 priority~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigationRequest-request>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigationRequest-request>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigationRequest-request
    (cl:cons ':priority (priority msg))
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude NavigationRequest-response.msg.html

(cl:defclass <NavigationRequest-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass NavigationRequest-response (<NavigationRequest-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigationRequest-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigationRequest-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arc_msgs-srv:<NavigationRequest-response> is deprecated: use arc_msgs-srv:NavigationRequest-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <NavigationRequest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-srv:result-val is deprecated.  Use arc_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigationRequest-response>) ostream)
  "Serializes a message object of type '<NavigationRequest-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigationRequest-response>) istream)
  "Deserializes a message object of type '<NavigationRequest-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigationRequest-response>)))
  "Returns string type for a service object of type '<NavigationRequest-response>"
  "arc_msgs/NavigationRequestResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigationRequest-response)))
  "Returns string type for a service object of type 'NavigationRequest-response"
  "arc_msgs/NavigationRequestResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigationRequest-response>)))
  "Returns md5sum for a message object of type '<NavigationRequest-response>"
  "0990ba5feaa158a7030cc5a892af2ba7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigationRequest-response)))
  "Returns md5sum for a message object of type 'NavigationRequest-response"
  "0990ba5feaa158a7030cc5a892af2ba7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigationRequest-response>)))
  "Returns full string definition for message of type '<NavigationRequest-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigationRequest-response)))
  "Returns full string definition for message of type 'NavigationRequest-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigationRequest-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigationRequest-response>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigationRequest-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'NavigationRequest)))
  'NavigationRequest-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'NavigationRequest)))
  'NavigationRequest-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigationRequest)))
  "Returns string type for a service object of type '<NavigationRequest>"
  "arc_msgs/NavigationRequest")