; Auto-generated. Do not edit!


(cl:in-package arc_msgs-msg)


;//! \htmlinclude TaskRequest.msg.html

(cl:defclass <TaskRequest> (roslisp-msg-protocol:ros-message)
  ((task_id
    :reader task_id
    :initarg :task_id
    :type cl:integer
    :initform 0)
   (created
    :reader created
    :initarg :created
    :type cl:real
    :initform 0)
   (task_name
    :reader task_name
    :initarg :task_name
    :type cl:string
    :initform "")
   (parameters
    :reader parameters
    :initarg :parameters
    :type dynamic_reconfigure-msg:Config
    :initform (cl:make-instance 'dynamic_reconfigure-msg:Config))
   (request_type
    :reader request_type
    :initarg :request_type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TaskRequest (<TaskRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arc_msgs-msg:<TaskRequest> is deprecated: use arc_msgs-msg:TaskRequest instead.")))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <TaskRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-msg:task_id-val is deprecated.  Use arc_msgs-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'created-val :lambda-list '(m))
(cl:defmethod created-val ((m <TaskRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-msg:created-val is deprecated.  Use arc_msgs-msg:created instead.")
  (created m))

(cl:ensure-generic-function 'task_name-val :lambda-list '(m))
(cl:defmethod task_name-val ((m <TaskRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-msg:task_name-val is deprecated.  Use arc_msgs-msg:task_name instead.")
  (task_name m))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <TaskRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-msg:parameters-val is deprecated.  Use arc_msgs-msg:parameters instead.")
  (parameters m))

(cl:ensure-generic-function 'request_type-val :lambda-list '(m))
(cl:defmethod request_type-val ((m <TaskRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-msg:request_type-val is deprecated.  Use arc_msgs-msg:request_type instead.")
  (request_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TaskRequest>)))
    "Constants for message type '<TaskRequest>"
  '((:TYPE_COMPLETION . 0)
    (:TYPE_CANCELLATION . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TaskRequest)))
    "Constants for message type 'TaskRequest"
  '((:TYPE_COMPLETION . 0)
    (:TYPE_CANCELLATION . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskRequest>) ostream)
  "Serializes a message object of type '<TaskRequest>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_id)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'created)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'created) (cl:floor (cl:slot-value msg 'created)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'task_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'task_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parameters) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'request_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskRequest>) istream)
  "Deserializes a message object of type '<TaskRequest>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'created) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'task_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parameters) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'request_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskRequest>)))
  "Returns string type for a message object of type '<TaskRequest>"
  "arc_msgs/TaskRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskRequest)))
  "Returns string type for a message object of type 'TaskRequest"
  "arc_msgs/TaskRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskRequest>)))
  "Returns md5sum for a message object of type '<TaskRequest>"
  "918300d9f5eb2af46b00af6c1c427533")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskRequest)))
  "Returns md5sum for a message object of type 'TaskRequest"
  "918300d9f5eb2af46b00af6c1c427533")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskRequest>)))
  "Returns full string definition for message of type '<TaskRequest>"
  (cl:format cl:nil "#A task is a small piece of behaviour defined in ARC, prompting a robot to do some specific piece of work.~%~%#Unique id created for this task instance. ~%#All requests and responses about this instance must have the same task_id, otherwise robot will think it’s a different task.~%uint32 task_id~%~%time created #The time that this task instance was created.~%~%#The name of the task to perform~%string task_name~%~%#Configuration parameters for this task. ~%dynamic_reconfigure/Config parameters~%~%#The intend of the request. some task requests are requesting to complete a task.~%#Another request may be asking to cancel the execution of a task.~%uint8 request_type~%~%#Request types~%uint8 TYPE_COMPLETION=0   #Requesting robot to complete the task.~%uint8 TYPE_CANCELLATION=1 #Requesting robot to cancel the task.~%~%================================================================================~%MSG: dynamic_reconfigure/Config~%BoolParameter[] bools~%IntParameter[] ints~%StrParameter[] strs~%DoubleParameter[] doubles~%GroupState[] groups~%~%================================================================================~%MSG: dynamic_reconfigure/BoolParameter~%string name~%bool value~%~%================================================================================~%MSG: dynamic_reconfigure/IntParameter~%string name~%int32 value~%~%================================================================================~%MSG: dynamic_reconfigure/StrParameter~%string name~%string value~%~%================================================================================~%MSG: dynamic_reconfigure/DoubleParameter~%string name~%float64 value~%~%================================================================================~%MSG: dynamic_reconfigure/GroupState~%string name~%bool state~%int32 id~%int32 parent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskRequest)))
  "Returns full string definition for message of type 'TaskRequest"
  (cl:format cl:nil "#A task is a small piece of behaviour defined in ARC, prompting a robot to do some specific piece of work.~%~%#Unique id created for this task instance. ~%#All requests and responses about this instance must have the same task_id, otherwise robot will think it’s a different task.~%uint32 task_id~%~%time created #The time that this task instance was created.~%~%#The name of the task to perform~%string task_name~%~%#Configuration parameters for this task. ~%dynamic_reconfigure/Config parameters~%~%#The intend of the request. some task requests are requesting to complete a task.~%#Another request may be asking to cancel the execution of a task.~%uint8 request_type~%~%#Request types~%uint8 TYPE_COMPLETION=0   #Requesting robot to complete the task.~%uint8 TYPE_CANCELLATION=1 #Requesting robot to cancel the task.~%~%================================================================================~%MSG: dynamic_reconfigure/Config~%BoolParameter[] bools~%IntParameter[] ints~%StrParameter[] strs~%DoubleParameter[] doubles~%GroupState[] groups~%~%================================================================================~%MSG: dynamic_reconfigure/BoolParameter~%string name~%bool value~%~%================================================================================~%MSG: dynamic_reconfigure/IntParameter~%string name~%int32 value~%~%================================================================================~%MSG: dynamic_reconfigure/StrParameter~%string name~%string value~%~%================================================================================~%MSG: dynamic_reconfigure/DoubleParameter~%string name~%float64 value~%~%================================================================================~%MSG: dynamic_reconfigure/GroupState~%string name~%bool state~%int32 id~%int32 parent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskRequest>))
  (cl:+ 0
     4
     8
     4 (cl:length (cl:slot-value msg 'task_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parameters))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskRequest
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':created (created msg))
    (cl:cons ':task_name (task_name msg))
    (cl:cons ':parameters (parameters msg))
    (cl:cons ':request_type (request_type msg))
))
