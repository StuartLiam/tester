; Auto-generated. Do not edit!


(cl:in-package arc_msgs-msg)


;//! \htmlinclude DetectedVictims.msg.html

(cl:defclass <DetectedVictims> (roslisp-msg-protocol:ros-message)
  ((victims
    :reader victims
    :initarg :victims
    :type (cl:vector arc_msgs-msg:DetectedVictim)
   :initform (cl:make-array 0 :element-type 'arc_msgs-msg:DetectedVictim :initial-element (cl:make-instance 'arc_msgs-msg:DetectedVictim))))
)

(cl:defclass DetectedVictims (<DetectedVictims>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectedVictims>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectedVictims)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arc_msgs-msg:<DetectedVictims> is deprecated: use arc_msgs-msg:DetectedVictims instead.")))

(cl:ensure-generic-function 'victims-val :lambda-list '(m))
(cl:defmethod victims-val ((m <DetectedVictims>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-msg:victims-val is deprecated.  Use arc_msgs-msg:victims instead.")
  (victims m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectedVictims>) ostream)
  "Serializes a message object of type '<DetectedVictims>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'victims))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'victims))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectedVictims>) istream)
  "Deserializes a message object of type '<DetectedVictims>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'victims) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'victims)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'arc_msgs-msg:DetectedVictim))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectedVictims>)))
  "Returns string type for a message object of type '<DetectedVictims>"
  "arc_msgs/DetectedVictims")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectedVictims)))
  "Returns string type for a message object of type 'DetectedVictims"
  "arc_msgs/DetectedVictims")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectedVictims>)))
  "Returns md5sum for a message object of type '<DetectedVictims>"
  "a82d7fbb7e64cf7614858422a3604178")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectedVictims)))
  "Returns md5sum for a message object of type 'DetectedVictims"
  "a82d7fbb7e64cf7614858422a3604178")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectedVictims>)))
  "Returns full string definition for message of type '<DetectedVictims>"
  (cl:format cl:nil "arc_msgs/DetectedVictim[] victims		#list of the victims detected~%~%================================================================================~%MSG: arc_msgs/DetectedVictim~%#This is the detection info of a victim in arc. There is no transform info/ie we assume this detection takes place from a current robots perspective (ie base_link)~%int32 victim_id		#id of the robot~%int32 status		#postiive, negative, unkown, or uncertain~%geometry_msgs/Pose pose	#Position of the detected robot.~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectedVictims)))
  "Returns full string definition for message of type 'DetectedVictims"
  (cl:format cl:nil "arc_msgs/DetectedVictim[] victims		#list of the victims detected~%~%================================================================================~%MSG: arc_msgs/DetectedVictim~%#This is the detection info of a victim in arc. There is no transform info/ie we assume this detection takes place from a current robots perspective (ie base_link)~%int32 victim_id		#id of the robot~%int32 status		#postiive, negative, unkown, or uncertain~%geometry_msgs/Pose pose	#Position of the detected robot.~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectedVictims>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'victims) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectedVictims>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectedVictims
    (cl:cons ':victims (victims msg))
))
