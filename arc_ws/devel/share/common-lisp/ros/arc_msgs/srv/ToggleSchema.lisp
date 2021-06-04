; Auto-generated. Do not edit!


(cl:in-package arc_msgs-srv)


;//! \htmlinclude ToggleSchema-request.msg.html

(cl:defclass <ToggleSchema-request> (roslisp-msg-protocol:ros-message)
  ((schema
    :reader schema
    :initarg :schema
    :type (cl:vector dynamic_reconfigure-msg:BoolParameter)
   :initform (cl:make-array 0 :element-type 'dynamic_reconfigure-msg:BoolParameter :initial-element (cl:make-instance 'dynamic_reconfigure-msg:BoolParameter))))
)

(cl:defclass ToggleSchema-request (<ToggleSchema-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ToggleSchema-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ToggleSchema-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arc_msgs-srv:<ToggleSchema-request> is deprecated: use arc_msgs-srv:ToggleSchema-request instead.")))

(cl:ensure-generic-function 'schema-val :lambda-list '(m))
(cl:defmethod schema-val ((m <ToggleSchema-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-srv:schema-val is deprecated.  Use arc_msgs-srv:schema instead.")
  (schema m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ToggleSchema-request>) ostream)
  "Serializes a message object of type '<ToggleSchema-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'schema))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'schema))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ToggleSchema-request>) istream)
  "Deserializes a message object of type '<ToggleSchema-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'schema) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'schema)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dynamic_reconfigure-msg:BoolParameter))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ToggleSchema-request>)))
  "Returns string type for a service object of type '<ToggleSchema-request>"
  "arc_msgs/ToggleSchemaRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToggleSchema-request)))
  "Returns string type for a service object of type 'ToggleSchema-request"
  "arc_msgs/ToggleSchemaRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ToggleSchema-request>)))
  "Returns md5sum for a message object of type '<ToggleSchema-request>"
  "8ef993123e0d3a927ec9795e9c47782f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ToggleSchema-request)))
  "Returns md5sum for a message object of type 'ToggleSchema-request"
  "8ef993123e0d3a927ec9795e9c47782f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ToggleSchema-request>)))
  "Returns full string definition for message of type '<ToggleSchema-request>"
  (cl:format cl:nil "~%dynamic_reconfigure/BoolParameter[] schema~%~%================================================================================~%MSG: dynamic_reconfigure/BoolParameter~%string name~%bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ToggleSchema-request)))
  "Returns full string definition for message of type 'ToggleSchema-request"
  (cl:format cl:nil "~%dynamic_reconfigure/BoolParameter[] schema~%~%================================================================================~%MSG: dynamic_reconfigure/BoolParameter~%string name~%bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ToggleSchema-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'schema) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ToggleSchema-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ToggleSchema-request
    (cl:cons ':schema (schema msg))
))
;//! \htmlinclude ToggleSchema-response.msg.html

(cl:defclass <ToggleSchema-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ToggleSchema-response (<ToggleSchema-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ToggleSchema-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ToggleSchema-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arc_msgs-srv:<ToggleSchema-response> is deprecated: use arc_msgs-srv:ToggleSchema-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ToggleSchema-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-srv:result-val is deprecated.  Use arc_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ToggleSchema-response>) ostream)
  "Serializes a message object of type '<ToggleSchema-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ToggleSchema-response>) istream)
  "Deserializes a message object of type '<ToggleSchema-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ToggleSchema-response>)))
  "Returns string type for a service object of type '<ToggleSchema-response>"
  "arc_msgs/ToggleSchemaResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToggleSchema-response)))
  "Returns string type for a service object of type 'ToggleSchema-response"
  "arc_msgs/ToggleSchemaResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ToggleSchema-response>)))
  "Returns md5sum for a message object of type '<ToggleSchema-response>"
  "8ef993123e0d3a927ec9795e9c47782f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ToggleSchema-response)))
  "Returns md5sum for a message object of type 'ToggleSchema-response"
  "8ef993123e0d3a927ec9795e9c47782f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ToggleSchema-response>)))
  "Returns full string definition for message of type '<ToggleSchema-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ToggleSchema-response)))
  "Returns full string definition for message of type 'ToggleSchema-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ToggleSchema-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ToggleSchema-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ToggleSchema-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ToggleSchema)))
  'ToggleSchema-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ToggleSchema)))
  'ToggleSchema-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToggleSchema)))
  "Returns string type for a service object of type '<ToggleSchema>"
  "arc_msgs/ToggleSchema")