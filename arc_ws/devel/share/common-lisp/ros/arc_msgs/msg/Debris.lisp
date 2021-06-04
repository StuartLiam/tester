; Auto-generated. Do not edit!


(cl:in-package arc_msgs-msg)


;//! \htmlinclude Debris.msg.html

(cl:defclass <Debris> (roslisp-msg-protocol:ros-message)
  ((debris_id
    :reader debris_id
    :initarg :debris_id
    :type cl:integer
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass Debris (<Debris>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Debris>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Debris)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arc_msgs-msg:<Debris> is deprecated: use arc_msgs-msg:Debris instead.")))

(cl:ensure-generic-function 'debris_id-val :lambda-list '(m))
(cl:defmethod debris_id-val ((m <Debris>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-msg:debris_id-val is deprecated.  Use arc_msgs-msg:debris_id instead.")
  (debris_id m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <Debris>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-msg:pose-val is deprecated.  Use arc_msgs-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Debris>) ostream)
  "Serializes a message object of type '<Debris>"
  (cl:let* ((signed (cl:slot-value msg 'debris_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Debris>) istream)
  "Deserializes a message object of type '<Debris>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'debris_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Debris>)))
  "Returns string type for a message object of type '<Debris>"
  "arc_msgs/Debris")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Debris)))
  "Returns string type for a message object of type 'Debris"
  "arc_msgs/Debris")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Debris>)))
  "Returns md5sum for a message object of type '<Debris>"
  "f040e1095812e2271757012504128718")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Debris)))
  "Returns md5sum for a message object of type 'Debris"
  "f040e1095812e2271757012504128718")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Debris>)))
  "Returns full string definition for message of type '<Debris>"
  (cl:format cl:nil "int32 debris_id			#the id of debris object, ie it's fiducial return.~%geometry_msgs/Pose 	pose	#location of the degree relative to robot~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Debris)))
  "Returns full string definition for message of type 'Debris"
  (cl:format cl:nil "int32 debris_id			#the id of debris object, ie it's fiducial return.~%geometry_msgs/Pose 	pose	#location of the degree relative to robot~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Debris>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Debris>))
  "Converts a ROS message object to a list"
  (cl:list 'Debris
    (cl:cons ':debris_id (debris_id msg))
    (cl:cons ':pose (pose msg))
))
