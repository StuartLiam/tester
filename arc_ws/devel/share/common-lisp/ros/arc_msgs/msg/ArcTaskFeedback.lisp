; Auto-generated. Do not edit!


(cl:in-package arc_msgs-msg)


;//! \htmlinclude ArcTaskFeedback.msg.html

(cl:defclass <ArcTaskFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ArcTaskFeedback (<ArcTaskFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArcTaskFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArcTaskFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arc_msgs-msg:<ArcTaskFeedback> is deprecated: use arc_msgs-msg:ArcTaskFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArcTaskFeedback>) ostream)
  "Serializes a message object of type '<ArcTaskFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArcTaskFeedback>) istream)
  "Deserializes a message object of type '<ArcTaskFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArcTaskFeedback>)))
  "Returns string type for a message object of type '<ArcTaskFeedback>"
  "arc_msgs/ArcTaskFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArcTaskFeedback)))
  "Returns string type for a message object of type 'ArcTaskFeedback"
  "arc_msgs/ArcTaskFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArcTaskFeedback>)))
  "Returns md5sum for a message object of type '<ArcTaskFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArcTaskFeedback)))
  "Returns md5sum for a message object of type 'ArcTaskFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArcTaskFeedback>)))
  "Returns full string definition for message of type '<ArcTaskFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#no feedback message yet~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArcTaskFeedback)))
  "Returns full string definition for message of type 'ArcTaskFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#no feedback message yet~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArcTaskFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArcTaskFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'ArcTaskFeedback
))
