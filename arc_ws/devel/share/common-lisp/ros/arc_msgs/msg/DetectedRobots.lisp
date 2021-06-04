; Auto-generated. Do not edit!


(cl:in-package arc_msgs-msg)


;//! \htmlinclude DetectedRobots.msg.html

(cl:defclass <DetectedRobots> (roslisp-msg-protocol:ros-message)
  ((robots
    :reader robots
    :initarg :robots
    :type (cl:vector arc_msgs-msg:DetectedRobot)
   :initform (cl:make-array 0 :element-type 'arc_msgs-msg:DetectedRobot :initial-element (cl:make-instance 'arc_msgs-msg:DetectedRobot))))
)

(cl:defclass DetectedRobots (<DetectedRobots>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectedRobots>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectedRobots)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arc_msgs-msg:<DetectedRobots> is deprecated: use arc_msgs-msg:DetectedRobots instead.")))

(cl:ensure-generic-function 'robots-val :lambda-list '(m))
(cl:defmethod robots-val ((m <DetectedRobots>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-msg:robots-val is deprecated.  Use arc_msgs-msg:robots instead.")
  (robots m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectedRobots>) ostream)
  "Serializes a message object of type '<DetectedRobots>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robots))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'robots))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectedRobots>) istream)
  "Deserializes a message object of type '<DetectedRobots>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'robots) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robots)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'arc_msgs-msg:DetectedRobot))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectedRobots>)))
  "Returns string type for a message object of type '<DetectedRobots>"
  "arc_msgs/DetectedRobots")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectedRobots)))
  "Returns string type for a message object of type 'DetectedRobots"
  "arc_msgs/DetectedRobots")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectedRobots>)))
  "Returns md5sum for a message object of type '<DetectedRobots>"
  "620e76eebd9864092c079930b5b956dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectedRobots)))
  "Returns md5sum for a message object of type 'DetectedRobots"
  "620e76eebd9864092c079930b5b956dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectedRobots>)))
  "Returns full string definition for message of type '<DetectedRobots>"
  (cl:format cl:nil "arc_msgs/DetectedRobot[] robots		#list of the robots detected~%~%================================================================================~%MSG: arc_msgs/DetectedRobot~%#This is the detection info of a robot in arc. There is no transform info/ie we assume this detection takes place from a current robots perspective (ie base_link)~%int32 robot_id		#id of the robot~%geometry_msgs/Pose pose	#Position of the detected robot.~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectedRobots)))
  "Returns full string definition for message of type 'DetectedRobots"
  (cl:format cl:nil "arc_msgs/DetectedRobot[] robots		#list of the robots detected~%~%================================================================================~%MSG: arc_msgs/DetectedRobot~%#This is the detection info of a robot in arc. There is no transform info/ie we assume this detection takes place from a current robots perspective (ie base_link)~%int32 robot_id		#id of the robot~%geometry_msgs/Pose pose	#Position of the detected robot.~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectedRobots>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robots) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectedRobots>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectedRobots
    (cl:cons ':robots (robots msg))
))
