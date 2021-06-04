; Auto-generated. Do not edit!


(cl:in-package arc_msgs-srv)


;//! \htmlinclude QuerryRole-request.msg.html

(cl:defclass <QuerryRole-request> (roslisp-msg-protocol:ros-message)
  ((bot_type
    :reader bot_type
    :initarg :bot_type
    :type cl:integer
    :initform 0))
)

(cl:defclass QuerryRole-request (<QuerryRole-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QuerryRole-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QuerryRole-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arc_msgs-srv:<QuerryRole-request> is deprecated: use arc_msgs-srv:QuerryRole-request instead.")))

(cl:ensure-generic-function 'bot_type-val :lambda-list '(m))
(cl:defmethod bot_type-val ((m <QuerryRole-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-srv:bot_type-val is deprecated.  Use arc_msgs-srv:bot_type instead.")
  (bot_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QuerryRole-request>) ostream)
  "Serializes a message object of type '<QuerryRole-request>"
  (cl:let* ((signed (cl:slot-value msg 'bot_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QuerryRole-request>) istream)
  "Deserializes a message object of type '<QuerryRole-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bot_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QuerryRole-request>)))
  "Returns string type for a service object of type '<QuerryRole-request>"
  "arc_msgs/QuerryRoleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuerryRole-request)))
  "Returns string type for a service object of type 'QuerryRole-request"
  "arc_msgs/QuerryRoleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QuerryRole-request>)))
  "Returns md5sum for a message object of type '<QuerryRole-request>"
  "d7615da21ebfea9eb2a1d406fa324a4c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QuerryRole-request)))
  "Returns md5sum for a message object of type 'QuerryRole-request"
  "d7615da21ebfea9eb2a1d406fa324a4c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QuerryRole-request>)))
  "Returns full string definition for message of type '<QuerryRole-request>"
  (cl:format cl:nil "int32 bot_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QuerryRole-request)))
  "Returns full string definition for message of type 'QuerryRole-request"
  (cl:format cl:nil "int32 bot_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QuerryRole-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QuerryRole-request>))
  "Converts a ROS message object to a list"
  (cl:list 'QuerryRole-request
    (cl:cons ':bot_type (bot_type msg))
))
;//! \htmlinclude QuerryRole-response.msg.html

(cl:defclass <QuerryRole-response> (roslisp-msg-protocol:ros-message)
  ((app
    :reader app
    :initarg :app
    :type cl:float
    :initform 0.0))
)

(cl:defclass QuerryRole-response (<QuerryRole-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QuerryRole-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QuerryRole-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arc_msgs-srv:<QuerryRole-response> is deprecated: use arc_msgs-srv:QuerryRole-response instead.")))

(cl:ensure-generic-function 'app-val :lambda-list '(m))
(cl:defmethod app-val ((m <QuerryRole-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-srv:app-val is deprecated.  Use arc_msgs-srv:app instead.")
  (app m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QuerryRole-response>) ostream)
  "Serializes a message object of type '<QuerryRole-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'app))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QuerryRole-response>) istream)
  "Deserializes a message object of type '<QuerryRole-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'app) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QuerryRole-response>)))
  "Returns string type for a service object of type '<QuerryRole-response>"
  "arc_msgs/QuerryRoleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuerryRole-response)))
  "Returns string type for a service object of type 'QuerryRole-response"
  "arc_msgs/QuerryRoleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QuerryRole-response>)))
  "Returns md5sum for a message object of type '<QuerryRole-response>"
  "d7615da21ebfea9eb2a1d406fa324a4c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QuerryRole-response)))
  "Returns md5sum for a message object of type 'QuerryRole-response"
  "d7615da21ebfea9eb2a1d406fa324a4c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QuerryRole-response>)))
  "Returns full string definition for message of type '<QuerryRole-response>"
  (cl:format cl:nil "float32 app~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QuerryRole-response)))
  "Returns full string definition for message of type 'QuerryRole-response"
  (cl:format cl:nil "float32 app~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QuerryRole-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QuerryRole-response>))
  "Converts a ROS message object to a list"
  (cl:list 'QuerryRole-response
    (cl:cons ':app (app msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'QuerryRole)))
  'QuerryRole-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'QuerryRole)))
  'QuerryRole-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuerryRole)))
  "Returns string type for a service object of type '<QuerryRole>"
  "arc_msgs/QuerryRole")