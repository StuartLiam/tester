; Auto-generated. Do not edit!


(cl:in-package arc_msgs-srv)


;//! \htmlinclude ToggleList-request.msg.html

(cl:defclass <ToggleList-request> (roslisp-msg-protocol:ros-message)
  ((random_wander
    :reader random_wander
    :initarg :random_wander
    :type cl:boolean
    :initform cl:nil)
   (move_to_goal
    :reader move_to_goal
    :initarg :move_to_goal
    :type cl:boolean
    :initform cl:nil)
   (clean_debris
    :reader clean_debris
    :initarg :clean_debris
    :type cl:boolean
    :initform cl:nil)
   (detect_debris
    :reader detect_debris
    :initarg :detect_debris
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ToggleList-request (<ToggleList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ToggleList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ToggleList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arc_msgs-srv:<ToggleList-request> is deprecated: use arc_msgs-srv:ToggleList-request instead.")))

(cl:ensure-generic-function 'random_wander-val :lambda-list '(m))
(cl:defmethod random_wander-val ((m <ToggleList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-srv:random_wander-val is deprecated.  Use arc_msgs-srv:random_wander instead.")
  (random_wander m))

(cl:ensure-generic-function 'move_to_goal-val :lambda-list '(m))
(cl:defmethod move_to_goal-val ((m <ToggleList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-srv:move_to_goal-val is deprecated.  Use arc_msgs-srv:move_to_goal instead.")
  (move_to_goal m))

(cl:ensure-generic-function 'clean_debris-val :lambda-list '(m))
(cl:defmethod clean_debris-val ((m <ToggleList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-srv:clean_debris-val is deprecated.  Use arc_msgs-srv:clean_debris instead.")
  (clean_debris m))

(cl:ensure-generic-function 'detect_debris-val :lambda-list '(m))
(cl:defmethod detect_debris-val ((m <ToggleList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-srv:detect_debris-val is deprecated.  Use arc_msgs-srv:detect_debris instead.")
  (detect_debris m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ToggleList-request>) ostream)
  "Serializes a message object of type '<ToggleList-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'random_wander) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'move_to_goal) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'clean_debris) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'detect_debris) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ToggleList-request>) istream)
  "Deserializes a message object of type '<ToggleList-request>"
    (cl:setf (cl:slot-value msg 'random_wander) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'move_to_goal) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'clean_debris) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'detect_debris) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ToggleList-request>)))
  "Returns string type for a service object of type '<ToggleList-request>"
  "arc_msgs/ToggleListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToggleList-request)))
  "Returns string type for a service object of type 'ToggleList-request"
  "arc_msgs/ToggleListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ToggleList-request>)))
  "Returns md5sum for a message object of type '<ToggleList-request>"
  "fc98542f37cff10cf2b272c02d421986")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ToggleList-request)))
  "Returns md5sum for a message object of type 'ToggleList-request"
  "fc98542f37cff10cf2b272c02d421986")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ToggleList-request>)))
  "Returns full string definition for message of type '<ToggleList-request>"
  (cl:format cl:nil "bool random_wander~%bool move_to_goal~%bool clean_debris~%bool detect_debris~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ToggleList-request)))
  "Returns full string definition for message of type 'ToggleList-request"
  (cl:format cl:nil "bool random_wander~%bool move_to_goal~%bool clean_debris~%bool detect_debris~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ToggleList-request>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ToggleList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ToggleList-request
    (cl:cons ':random_wander (random_wander msg))
    (cl:cons ':move_to_goal (move_to_goal msg))
    (cl:cons ':clean_debris (clean_debris msg))
    (cl:cons ':detect_debris (detect_debris msg))
))
;//! \htmlinclude ToggleList-response.msg.html

(cl:defclass <ToggleList-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ToggleList-response (<ToggleList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ToggleList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ToggleList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arc_msgs-srv:<ToggleList-response> is deprecated: use arc_msgs-srv:ToggleList-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ToggleList-response>) ostream)
  "Serializes a message object of type '<ToggleList-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ToggleList-response>) istream)
  "Deserializes a message object of type '<ToggleList-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ToggleList-response>)))
  "Returns string type for a service object of type '<ToggleList-response>"
  "arc_msgs/ToggleListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToggleList-response)))
  "Returns string type for a service object of type 'ToggleList-response"
  "arc_msgs/ToggleListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ToggleList-response>)))
  "Returns md5sum for a message object of type '<ToggleList-response>"
  "fc98542f37cff10cf2b272c02d421986")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ToggleList-response)))
  "Returns md5sum for a message object of type 'ToggleList-response"
  "fc98542f37cff10cf2b272c02d421986")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ToggleList-response>)))
  "Returns full string definition for message of type '<ToggleList-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ToggleList-response)))
  "Returns full string definition for message of type 'ToggleList-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ToggleList-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ToggleList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ToggleList-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ToggleList)))
  'ToggleList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ToggleList)))
  'ToggleList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToggleList)))
  "Returns string type for a service object of type '<ToggleList>"
  "arc_msgs/ToggleList")