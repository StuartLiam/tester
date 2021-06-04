; Auto-generated. Do not edit!


(cl:in-package arc_msgs-msg)


;//! \htmlinclude DetectedVictim.msg.html

(cl:defclass <DetectedVictim> (roslisp-msg-protocol:ros-message)
  ((victim_id
    :reader victim_id
    :initarg :victim_id
    :type cl:integer
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass DetectedVictim (<DetectedVictim>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectedVictim>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectedVictim)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arc_msgs-msg:<DetectedVictim> is deprecated: use arc_msgs-msg:DetectedVictim instead.")))

(cl:ensure-generic-function 'victim_id-val :lambda-list '(m))
(cl:defmethod victim_id-val ((m <DetectedVictim>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-msg:victim_id-val is deprecated.  Use arc_msgs-msg:victim_id instead.")
  (victim_id m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <DetectedVictim>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-msg:status-val is deprecated.  Use arc_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <DetectedVictim>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-msg:pose-val is deprecated.  Use arc_msgs-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectedVictim>) ostream)
  "Serializes a message object of type '<DetectedVictim>"
  (cl:let* ((signed (cl:slot-value msg 'victim_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectedVictim>) istream)
  "Deserializes a message object of type '<DetectedVictim>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'victim_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectedVictim>)))
  "Returns string type for a message object of type '<DetectedVictim>"
  "arc_msgs/DetectedVictim")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectedVictim)))
  "Returns string type for a message object of type 'DetectedVictim"
  "arc_msgs/DetectedVictim")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectedVictim>)))
  "Returns md5sum for a message object of type '<DetectedVictim>"
  "79d1ca6c9691b59aed30d016f730fa45")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectedVictim)))
  "Returns md5sum for a message object of type 'DetectedVictim"
  "79d1ca6c9691b59aed30d016f730fa45")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectedVictim>)))
  "Returns full string definition for message of type '<DetectedVictim>"
  (cl:format cl:nil "#This is the detection info of a victim in arc. There is no transform info/ie we assume this detection takes place from a current robots perspective (ie base_link)~%int32 victim_id		#id of the robot~%int32 status		#postiive, negative, unkown, or uncertain~%geometry_msgs/Pose pose	#Position of the detected robot.~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectedVictim)))
  "Returns full string definition for message of type 'DetectedVictim"
  (cl:format cl:nil "#This is the detection info of a victim in arc. There is no transform info/ie we assume this detection takes place from a current robots perspective (ie base_link)~%int32 victim_id		#id of the robot~%int32 status		#postiive, negative, unkown, or uncertain~%geometry_msgs/Pose pose	#Position of the detected robot.~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectedVictim>))
  (cl:+ 0
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectedVictim>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectedVictim
    (cl:cons ':victim_id (victim_id msg))
    (cl:cons ':status (status msg))
    (cl:cons ':pose (pose msg))
))
