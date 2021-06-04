; Auto-generated. Do not edit!


(cl:in-package arc_msgs-srv)


;//! \htmlinclude Task-request.msg.html

(cl:defclass <Task-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Task-request (<Task-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Task-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Task-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arc_msgs-srv:<Task-request> is deprecated: use arc_msgs-srv:Task-request instead.")))

(cl:ensure-generic-function 'task_type-val :lambda-list '(m))
(cl:defmethod task_type-val ((m <Task-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-srv:task_type-val is deprecated.  Use arc_msgs-srv:task_type instead.")
  (task_type m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <Task-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-srv:priority-val is deprecated.  Use arc_msgs-srv:priority instead.")
  (priority m))

(cl:ensure-generic-function 'bot_x-val :lambda-list '(m))
(cl:defmethod bot_x-val ((m <Task-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-srv:bot_x-val is deprecated.  Use arc_msgs-srv:bot_x instead.")
  (bot_x m))

(cl:ensure-generic-function 'bot_y-val :lambda-list '(m))
(cl:defmethod bot_y-val ((m <Task-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-srv:bot_y-val is deprecated.  Use arc_msgs-srv:bot_y instead.")
  (bot_y m))

(cl:ensure-generic-function 'loc_x-val :lambda-list '(m))
(cl:defmethod loc_x-val ((m <Task-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-srv:loc_x-val is deprecated.  Use arc_msgs-srv:loc_x instead.")
  (loc_x m))

(cl:ensure-generic-function 'loc_y-val :lambda-list '(m))
(cl:defmethod loc_y-val ((m <Task-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-srv:loc_y-val is deprecated.  Use arc_msgs-srv:loc_y instead.")
  (loc_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Task-request>) ostream)
  "Serializes a message object of type '<Task-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Task-request>) istream)
  "Deserializes a message object of type '<Task-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Task-request>)))
  "Returns string type for a service object of type '<Task-request>"
  "arc_msgs/TaskRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Task-request)))
  "Returns string type for a service object of type 'Task-request"
  "arc_msgs/TaskRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Task-request>)))
  "Returns md5sum for a message object of type '<Task-request>"
  "b4cba0104ef3e5618ceceb1e9c5f477f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Task-request)))
  "Returns md5sum for a message object of type 'Task-request"
  "b4cba0104ef3e5618ceceb1e9c5f477f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Task-request>)))
  "Returns full string definition for message of type '<Task-request>"
  (cl:format cl:nil "int32 task_type~%int32 priority~%float64 bot_x~%float64 bot_y~%float64 loc_x~%float64 loc_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Task-request)))
  "Returns full string definition for message of type 'Task-request"
  (cl:format cl:nil "int32 task_type~%int32 priority~%float64 bot_x~%float64 bot_y~%float64 loc_x~%float64 loc_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Task-request>))
  (cl:+ 0
     4
     4
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Task-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Task-request
    (cl:cons ':task_type (task_type msg))
    (cl:cons ':priority (priority msg))
    (cl:cons ':bot_x (bot_x msg))
    (cl:cons ':bot_y (bot_y msg))
    (cl:cons ':loc_x (loc_x msg))
    (cl:cons ':loc_y (loc_y msg))
))
;//! \htmlinclude Task-response.msg.html

(cl:defclass <Task-response> (roslisp-msg-protocol:ros-message)
  ((accepted
    :reader accepted
    :initarg :accepted
    :type cl:integer
    :initform 0))
)

(cl:defclass Task-response (<Task-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Task-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Task-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arc_msgs-srv:<Task-response> is deprecated: use arc_msgs-srv:Task-response instead.")))

(cl:ensure-generic-function 'accepted-val :lambda-list '(m))
(cl:defmethod accepted-val ((m <Task-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-srv:accepted-val is deprecated.  Use arc_msgs-srv:accepted instead.")
  (accepted m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Task-response>) ostream)
  "Serializes a message object of type '<Task-response>"
  (cl:let* ((signed (cl:slot-value msg 'accepted)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Task-response>) istream)
  "Deserializes a message object of type '<Task-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'accepted) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Task-response>)))
  "Returns string type for a service object of type '<Task-response>"
  "arc_msgs/TaskResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Task-response)))
  "Returns string type for a service object of type 'Task-response"
  "arc_msgs/TaskResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Task-response>)))
  "Returns md5sum for a message object of type '<Task-response>"
  "b4cba0104ef3e5618ceceb1e9c5f477f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Task-response)))
  "Returns md5sum for a message object of type 'Task-response"
  "b4cba0104ef3e5618ceceb1e9c5f477f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Task-response>)))
  "Returns full string definition for message of type '<Task-response>"
  (cl:format cl:nil "int32 accepted~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Task-response)))
  "Returns full string definition for message of type 'Task-response"
  (cl:format cl:nil "int32 accepted~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Task-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Task-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Task-response
    (cl:cons ':accepted (accepted msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Task)))
  'Task-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Task)))
  'Task-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Task)))
  "Returns string type for a service object of type '<Task>"
  "arc_msgs/Task")