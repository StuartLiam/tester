; Auto-generated. Do not edit!


(cl:in-package arc_msgs-srv)


;//! \htmlinclude DropMarker-request.msg.html

(cl:defclass <DropMarker-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DropMarker-request (<DropMarker-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DropMarker-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DropMarker-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arc_msgs-srv:<DropMarker-request> is deprecated: use arc_msgs-srv:DropMarker-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DropMarker-request>) ostream)
  "Serializes a message object of type '<DropMarker-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DropMarker-request>) istream)
  "Deserializes a message object of type '<DropMarker-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DropMarker-request>)))
  "Returns string type for a service object of type '<DropMarker-request>"
  "arc_msgs/DropMarkerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DropMarker-request)))
  "Returns string type for a service object of type 'DropMarker-request"
  "arc_msgs/DropMarkerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DropMarker-request>)))
  "Returns md5sum for a message object of type '<DropMarker-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DropMarker-request)))
  "Returns md5sum for a message object of type 'DropMarker-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DropMarker-request>)))
  "Returns full string definition for message of type '<DropMarker-request>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DropMarker-request)))
  "Returns full string definition for message of type 'DropMarker-request"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DropMarker-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DropMarker-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DropMarker-request
))
;//! \htmlinclude DropMarker-response.msg.html

(cl:defclass <DropMarker-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DropMarker-response (<DropMarker-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DropMarker-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DropMarker-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arc_msgs-srv:<DropMarker-response> is deprecated: use arc_msgs-srv:DropMarker-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DropMarker-response>) ostream)
  "Serializes a message object of type '<DropMarker-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DropMarker-response>) istream)
  "Deserializes a message object of type '<DropMarker-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DropMarker-response>)))
  "Returns string type for a service object of type '<DropMarker-response>"
  "arc_msgs/DropMarkerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DropMarker-response)))
  "Returns string type for a service object of type 'DropMarker-response"
  "arc_msgs/DropMarkerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DropMarker-response>)))
  "Returns md5sum for a message object of type '<DropMarker-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DropMarker-response)))
  "Returns md5sum for a message object of type 'DropMarker-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DropMarker-response>)))
  "Returns full string definition for message of type '<DropMarker-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DropMarker-response)))
  "Returns full string definition for message of type 'DropMarker-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DropMarker-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DropMarker-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DropMarker-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DropMarker)))
  'DropMarker-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DropMarker)))
  'DropMarker-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DropMarker)))
  "Returns string type for a service object of type '<DropMarker>"
  "arc_msgs/DropMarker")