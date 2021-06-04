; Auto-generated. Do not edit!


(cl:in-package arc_msgs-srv)


;//! \htmlinclude QuerryTask-request.msg.html

(cl:defclass <QuerryTask-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass QuerryTask-request (<QuerryTask-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QuerryTask-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QuerryTask-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arc_msgs-srv:<QuerryTask-request> is deprecated: use arc_msgs-srv:QuerryTask-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QuerryTask-request>) ostream)
  "Serializes a message object of type '<QuerryTask-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QuerryTask-request>) istream)
  "Deserializes a message object of type '<QuerryTask-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QuerryTask-request>)))
  "Returns string type for a service object of type '<QuerryTask-request>"
  "arc_msgs/QuerryTaskRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuerryTask-request)))
  "Returns string type for a service object of type 'QuerryTask-request"
  "arc_msgs/QuerryTaskRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QuerryTask-request>)))
  "Returns md5sum for a message object of type '<QuerryTask-request>"
  "0367c6c74ded11b47d7fe0ed3f0c4dab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QuerryTask-request)))
  "Returns md5sum for a message object of type 'QuerryTask-request"
  "0367c6c74ded11b47d7fe0ed3f0c4dab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QuerryTask-request>)))
  "Returns full string definition for message of type '<QuerryTask-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QuerryTask-request)))
  "Returns full string definition for message of type 'QuerryTask-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QuerryTask-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QuerryTask-request>))
  "Converts a ROS message object to a list"
  (cl:list 'QuerryTask-request
))
;//! \htmlinclude QuerryTask-response.msg.html

(cl:defclass <QuerryTask-response> (roslisp-msg-protocol:ros-message)
  ((task_type
    :reader task_type
    :initarg :task_type
    :type cl:integer
    :initform 0)
   (priority
    :reader priority
    :initarg :priority
    :type cl:integer
    :initform 0)
   (bot_x
    :reader bot_x
    :initarg :bot_x
    :type cl:float
    :initform 0.0)
   (bot_y
    :reader bot_y
    :initarg :bot_y
    :type cl:float
    :initform 0.0)
   (loc_x
    :reader loc_x
    :initarg :loc_x
    :type cl:float
    :initform 0.0)
   (loc_y
    :reader loc_y
    :initarg :loc_y
    :type cl:float
    :initform 0.0))
)

(cl:defclass QuerryTask-response (<QuerryTask-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QuerryTask-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QuerryTask-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arc_msgs-srv:<QuerryTask-response> is deprecated: use arc_msgs-srv:QuerryTask-response instead.")))

(cl:ensure-generic-function 'task_type-val :lambda-list '(m))
(cl:defmethod task_type-val ((m <QuerryTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-srv:task_type-val is deprecated.  Use arc_msgs-srv:task_type instead.")
  (task_type m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <QuerryTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-srv:priority-val is deprecated.  Use arc_msgs-srv:priority instead.")
  (priority m))

(cl:ensure-generic-function 'bot_x-val :lambda-list '(m))
(cl:defmethod bot_x-val ((m <QuerryTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-srv:bot_x-val is deprecated.  Use arc_msgs-srv:bot_x instead.")
  (bot_x m))

(cl:ensure-generic-function 'bot_y-val :lambda-list '(m))
(cl:defmethod bot_y-val ((m <QuerryTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-srv:bot_y-val is deprecated.  Use arc_msgs-srv:bot_y instead.")
  (bot_y m))

(cl:ensure-generic-function 'loc_x-val :lambda-list '(m))
(cl:defmethod loc_x-val ((m <QuerryTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-srv:loc_x-val is deprecated.  Use arc_msgs-srv:loc_x instead.")
  (loc_x m))

(cl:ensure-generic-function 'loc_y-val :lambda-list '(m))
(cl:defmethod loc_y-val ((m <QuerryTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-srv:loc_y-val is deprecated.  Use arc_msgs-srv:loc_y instead.")
  (loc_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QuerryTask-response>) ostream)
  "Serializes a message object of type '<QuerryTask-response>"
  (cl:let* ((signed (cl:slot-value msg 'task_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'priority)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'bot_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'bot_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'loc_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'loc_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QuerryTask-response>) istream)
  "Deserializes a message object of type '<QuerryTask-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'priority) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bot_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bot_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'loc_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'loc_y) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QuerryTask-response>)))
  "Returns string type for a service object of type '<QuerryTask-response>"
  "arc_msgs/QuerryTaskResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuerryTask-response)))
  "Returns string type for a service object of type 'QuerryTask-response"
  "arc_msgs/QuerryTaskResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QuerryTask-response>)))
  "Returns md5sum for a message object of type '<QuerryTask-response>"
  "0367c6c74ded11b47d7fe0ed3f0c4dab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QuerryTask-response)))
  "Returns md5sum for a message object of type 'QuerryTask-response"
  "0367c6c74ded11b47d7fe0ed3f0c4dab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QuerryTask-response>)))
  "Returns full string definition for message of type '<QuerryTask-response>"
  (cl:format cl:nil "int32 task_type~%int32 priority~%float64 bot_x~%float64 bot_y~%float64 loc_x~%float64 loc_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QuerryTask-response)))
  "Returns full string definition for message of type 'QuerryTask-response"
  (cl:format cl:nil "int32 task_type~%int32 priority~%float64 bot_x~%float64 bot_y~%float64 loc_x~%float64 loc_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QuerryTask-response>))
  (cl:+ 0
     4
     4
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QuerryTask-response>))
  "Converts a ROS message object to a list"
  (cl:list 'QuerryTask-response
    (cl:cons ':task_type (task_type msg))
    (cl:cons ':priority (priority msg))
    (cl:cons ':bot_x (bot_x msg))
    (cl:cons ':bot_y (bot_y msg))
    (cl:cons ':loc_x (loc_x msg))
    (cl:cons ':loc_y (loc_y msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'QuerryTask)))
  'QuerryTask-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'QuerryTask)))
  'QuerryTask-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuerryTask)))
  "Returns string type for a service object of type '<QuerryTask>"
  "arc_msgs/QuerryTask")