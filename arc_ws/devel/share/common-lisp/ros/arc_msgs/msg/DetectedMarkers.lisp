; Auto-generated. Do not edit!


(cl:in-package arc_msgs-msg)


;//! \htmlinclude DetectedMarkers.msg.html

(cl:defclass <DetectedMarkers> (roslisp-msg-protocol:ros-message)
  ((markers
    :reader markers
    :initarg :markers
    :type (cl:vector arc_msgs-msg:DetectedMarker)
   :initform (cl:make-array 0 :element-type 'arc_msgs-msg:DetectedMarker :initial-element (cl:make-instance 'arc_msgs-msg:DetectedMarker))))
)

(cl:defclass DetectedMarkers (<DetectedMarkers>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectedMarkers>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectedMarkers)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arc_msgs-msg:<DetectedMarkers> is deprecated: use arc_msgs-msg:DetectedMarkers instead.")))

(cl:ensure-generic-function 'markers-val :lambda-list '(m))
(cl:defmethod markers-val ((m <DetectedMarkers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-msg:markers-val is deprecated.  Use arc_msgs-msg:markers instead.")
  (markers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectedMarkers>) ostream)
  "Serializes a message object of type '<DetectedMarkers>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'markers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'markers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectedMarkers>) istream)
  "Deserializes a message object of type '<DetectedMarkers>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'markers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'markers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'arc_msgs-msg:DetectedMarker))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectedMarkers>)))
  "Returns string type for a message object of type '<DetectedMarkers>"
  "arc_msgs/DetectedMarkers")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectedMarkers)))
  "Returns string type for a message object of type 'DetectedMarkers"
  "arc_msgs/DetectedMarkers")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectedMarkers>)))
  "Returns md5sum for a message object of type '<DetectedMarkers>"
  "0016a179141dd29143b5b72df26d91b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectedMarkers)))
  "Returns md5sum for a message object of type 'DetectedMarkers"
  "0016a179141dd29143b5b72df26d91b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectedMarkers>)))
  "Returns full string definition for message of type '<DetectedMarkers>"
  (cl:format cl:nil "arc_msgs/DetectedMarker[] markers		#list of the markers detected~%~%================================================================================~%MSG: arc_msgs/DetectedMarker~%#This is the detection info of a victim in arc. There is no transform info/ie we assume this detection takes place from a current robots perspective (ie base_link)~%int32 marker_id		#id of the robot~%geometry_msgs/Pose pose	#Position of the detected marker;~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectedMarkers)))
  "Returns full string definition for message of type 'DetectedMarkers"
  (cl:format cl:nil "arc_msgs/DetectedMarker[] markers		#list of the markers detected~%~%================================================================================~%MSG: arc_msgs/DetectedMarker~%#This is the detection info of a victim in arc. There is no transform info/ie we assume this detection takes place from a current robots perspective (ie base_link)~%int32 marker_id		#id of the robot~%geometry_msgs/Pose pose	#Position of the detected marker;~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectedMarkers>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'markers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectedMarkers>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectedMarkers
    (cl:cons ':markers (markers msg))
))
