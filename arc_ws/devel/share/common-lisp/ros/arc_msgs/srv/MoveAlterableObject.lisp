; Auto-generated. Do not edit!


(cl:in-package arc_msgs-srv)


;//! \htmlinclude MoveAlterableObject-request.msg.html

(cl:defclass <MoveAlterableObject-request> (roslisp-msg-protocol:ros-message)
  ((fiducial_return
    :reader fiducial_return
    :initarg :fiducial_return
    :type cl:integer
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D)))
)

(cl:defclass MoveAlterableObject-request (<MoveAlterableObject-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveAlterableObject-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveAlterableObject-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arc_msgs-srv:<MoveAlterableObject-request> is deprecated: use arc_msgs-srv:MoveAlterableObject-request instead.")))

(cl:ensure-generic-function 'fiducial_return-val :lambda-list '(m))
(cl:defmethod fiducial_return-val ((m <MoveAlterableObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-srv:fiducial_return-val is deprecated.  Use arc_msgs-srv:fiducial_return instead.")
  (fiducial_return m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <MoveAlterableObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-srv:name-val is deprecated.  Use arc_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <MoveAlterableObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-srv:pose-val is deprecated.  Use arc_msgs-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveAlterableObject-request>) ostream)
  "Serializes a message object of type '<MoveAlterableObject-request>"
  (cl:let* ((signed (cl:slot-value msg 'fiducial_return)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveAlterableObject-request>) istream)
  "Deserializes a message object of type '<MoveAlterableObject-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fiducial_return) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveAlterableObject-request>)))
  "Returns string type for a service object of type '<MoveAlterableObject-request>"
  "arc_msgs/MoveAlterableObjectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveAlterableObject-request)))
  "Returns string type for a service object of type 'MoveAlterableObject-request"
  "arc_msgs/MoveAlterableObjectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveAlterableObject-request>)))
  "Returns md5sum for a message object of type '<MoveAlterableObject-request>"
  "7081b645962fcb4bfe66c7f0df8a9786")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveAlterableObject-request)))
  "Returns md5sum for a message object of type 'MoveAlterableObject-request"
  "7081b645962fcb4bfe66c7f0df8a9786")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveAlterableObject-request>)))
  "Returns full string definition for message of type '<MoveAlterableObject-request>"
  (cl:format cl:nil "~%~%~%int32 fiducial_return~%~%string name~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveAlterableObject-request)))
  "Returns full string definition for message of type 'MoveAlterableObject-request"
  (cl:format cl:nil "~%~%~%int32 fiducial_return~%~%string name~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveAlterableObject-request>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveAlterableObject-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveAlterableObject-request
    (cl:cons ':fiducial_return (fiducial_return msg))
    (cl:cons ':name (name msg))
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude MoveAlterableObject-response.msg.html

(cl:defclass <MoveAlterableObject-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MoveAlterableObject-response (<MoveAlterableObject-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveAlterableObject-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveAlterableObject-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arc_msgs-srv:<MoveAlterableObject-response> is deprecated: use arc_msgs-srv:MoveAlterableObject-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveAlterableObject-response>) ostream)
  "Serializes a message object of type '<MoveAlterableObject-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveAlterableObject-response>) istream)
  "Deserializes a message object of type '<MoveAlterableObject-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveAlterableObject-response>)))
  "Returns string type for a service object of type '<MoveAlterableObject-response>"
  "arc_msgs/MoveAlterableObjectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveAlterableObject-response)))
  "Returns string type for a service object of type 'MoveAlterableObject-response"
  "arc_msgs/MoveAlterableObjectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveAlterableObject-response>)))
  "Returns md5sum for a message object of type '<MoveAlterableObject-response>"
  "7081b645962fcb4bfe66c7f0df8a9786")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveAlterableObject-response)))
  "Returns md5sum for a message object of type 'MoveAlterableObject-response"
  "7081b645962fcb4bfe66c7f0df8a9786")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveAlterableObject-response>)))
  "Returns full string definition for message of type '<MoveAlterableObject-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveAlterableObject-response)))
  "Returns full string definition for message of type 'MoveAlterableObject-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveAlterableObject-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveAlterableObject-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveAlterableObject-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveAlterableObject)))
  'MoveAlterableObject-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveAlterableObject)))
  'MoveAlterableObject-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveAlterableObject)))
  "Returns string type for a service object of type '<MoveAlterableObject>"
  "arc_msgs/MoveAlterableObject")