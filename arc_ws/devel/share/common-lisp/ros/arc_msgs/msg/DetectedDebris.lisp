; Auto-generated. Do not edit!


(cl:in-package arc_msgs-msg)


;//! \htmlinclude DetectedDebris.msg.html

(cl:defclass <DetectedDebris> (roslisp-msg-protocol:ros-message)
  ((debris
    :reader debris
    :initarg :debris
    :type (cl:vector arc_msgs-msg:Debris)
   :initform (cl:make-array 0 :element-type 'arc_msgs-msg:Debris :initial-element (cl:make-instance 'arc_msgs-msg:Debris))))
)

(cl:defclass DetectedDebris (<DetectedDebris>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectedDebris>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectedDebris)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arc_msgs-msg:<DetectedDebris> is deprecated: use arc_msgs-msg:DetectedDebris instead.")))

(cl:ensure-generic-function 'debris-val :lambda-list '(m))
(cl:defmethod debris-val ((m <DetectedDebris>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-msg:debris-val is deprecated.  Use arc_msgs-msg:debris instead.")
  (debris m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectedDebris>) ostream)
  "Serializes a message object of type '<DetectedDebris>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'debris))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'debris))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectedDebris>) istream)
  "Deserializes a message object of type '<DetectedDebris>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'debris) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'debris)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'arc_msgs-msg:Debris))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectedDebris>)))
  "Returns string type for a message object of type '<DetectedDebris>"
  "arc_msgs/DetectedDebris")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectedDebris)))
  "Returns string type for a message object of type 'DetectedDebris"
  "arc_msgs/DetectedDebris")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectedDebris>)))
  "Returns md5sum for a message object of type '<DetectedDebris>"
  "67aa68765d8aaa6b92b6631ba36e4492")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectedDebris)))
  "Returns md5sum for a message object of type 'DetectedDebris"
  "67aa68765d8aaa6b92b6631ba36e4492")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectedDebris>)))
  "Returns full string definition for message of type '<DetectedDebris>"
  (cl:format cl:nil "arc_msgs/Debris[] debris 		#list of the debris~%~%~%================================================================================~%MSG: arc_msgs/Debris~%int32 debris_id			#the id of debris object, ie it's fiducial return.~%geometry_msgs/Pose 	pose	#location of the degree relative to robot~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectedDebris)))
  "Returns full string definition for message of type 'DetectedDebris"
  (cl:format cl:nil "arc_msgs/Debris[] debris 		#list of the debris~%~%~%================================================================================~%MSG: arc_msgs/Debris~%int32 debris_id			#the id of debris object, ie it's fiducial return.~%geometry_msgs/Pose 	pose	#location of the degree relative to robot~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectedDebris>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'debris) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectedDebris>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectedDebris
    (cl:cons ':debris (debris msg))
))
