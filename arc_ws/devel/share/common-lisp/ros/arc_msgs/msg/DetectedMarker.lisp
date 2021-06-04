; Auto-generated. Do not edit!


(cl:in-package arc_msgs-msg)


;//! \htmlinclude DetectedMarker.msg.html

(cl:defclass <DetectedMarker> (roslisp-msg-protocol:ros-message)
  ((marker_id
    :reader marker_id
    :initarg :marker_id
    :type cl:integer
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass DetectedMarker (<DetectedMarker>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectedMarker>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectedMarker)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arc_msgs-msg:<DetectedMarker> is deprecated: use arc_msgs-msg:DetectedMarker instead.")))

(cl:ensure-generic-function 'marker_id-val :lambda-list '(m))
(cl:defmethod marker_id-val ((m <DetectedMarker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-msg:marker_id-val is deprecated.  Use arc_msgs-msg:marker_id instead.")
  (marker_id m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <DetectedMarker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-msg:pose-val is deprecated.  Use arc_msgs-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectedMarker>) ostream)
  "Serializes a message object of type '<DetectedMarker>"
  (cl:let* ((signed (cl:slot-value msg 'marker_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectedMarker>) istream)
  "Deserializes a message object of type '<DetectedMarker>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'marker_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectedMarker>)))
  "Returns string type for a message object of type '<DetectedMarker>"
  "arc_msgs/DetectedMarker")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectedMarker)))
  "Returns string type for a message object of type 'DetectedMarker"
  "arc_msgs/DetectedMarker")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectedMarker>)))
  "Returns md5sum for a message object of type '<DetectedMarker>"
  "b56884f7ca9a3304eebe37fb29b352fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectedMarker)))
  "Returns md5sum for a message object of type 'DetectedMarker"
  "b56884f7ca9a3304eebe37fb29b352fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectedMarker>)))
  "Returns full string definition for message of type '<DetectedMarker>"
  (cl:format cl:nil "#This is the detection info of a victim in arc. There is no transform info/ie we assume this detection takes place from a current robots perspective (ie base_link)~%int32 marker_id		#id of the robot~%geometry_msgs/Pose pose	#Position of the detected marker;~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectedMarker)))
  "Returns full string definition for message of type 'DetectedMarker"
  (cl:format cl:nil "#This is the detection info of a victim in arc. There is no transform info/ie we assume this detection takes place from a current robots perspective (ie base_link)~%int32 marker_id		#id of the robot~%geometry_msgs/Pose pose	#Position of the detected marker;~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectedMarker>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectedMarker>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectedMarker
    (cl:cons ':marker_id (marker_id msg))
    (cl:cons ':pose (pose msg))
))
