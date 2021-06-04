; Auto-generated. Do not edit!


(cl:in-package arc_msgs-msg)


;//! \htmlinclude ArcTaskAction.msg.html

(cl:defclass <ArcTaskAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type arc_msgs-msg:ArcTaskActionGoal
    :initform (cl:make-instance 'arc_msgs-msg:ArcTaskActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type arc_msgs-msg:ArcTaskActionResult
    :initform (cl:make-instance 'arc_msgs-msg:ArcTaskActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type arc_msgs-msg:ArcTaskActionFeedback
    :initform (cl:make-instance 'arc_msgs-msg:ArcTaskActionFeedback)))
)

(cl:defclass ArcTaskAction (<ArcTaskAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArcTaskAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArcTaskAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arc_msgs-msg:<ArcTaskAction> is deprecated: use arc_msgs-msg:ArcTaskAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <ArcTaskAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-msg:action_goal-val is deprecated.  Use arc_msgs-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <ArcTaskAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-msg:action_result-val is deprecated.  Use arc_msgs-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <ArcTaskAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arc_msgs-msg:action_feedback-val is deprecated.  Use arc_msgs-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArcTaskAction>) ostream)
  "Serializes a message object of type '<ArcTaskAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArcTaskAction>) istream)
  "Deserializes a message object of type '<ArcTaskAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArcTaskAction>)))
  "Returns string type for a message object of type '<ArcTaskAction>"
  "arc_msgs/ArcTaskAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArcTaskAction)))
  "Returns string type for a message object of type 'ArcTaskAction"
  "arc_msgs/ArcTaskAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArcTaskAction>)))
  "Returns md5sum for a message object of type '<ArcTaskAction>"
  "49452b4241bfa0f518631642b87604b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArcTaskAction)))
  "Returns md5sum for a message object of type 'ArcTaskAction"
  "49452b4241bfa0f518631642b87604b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArcTaskAction>)))
  "Returns full string definition for message of type '<ArcTaskAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%ArcTaskActionGoal action_goal~%ArcTaskActionResult action_result~%ArcTaskActionFeedback action_feedback~%~%================================================================================~%MSG: arc_msgs/ArcTaskActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%ArcTaskGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: arc_msgs/ArcTaskGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#Any task being done by the Task Handler will have the form of this action. This is essentially the TaskRequest.msg except trimmed down to only include parameters. the TaskHandler doesn't care about a tasks id and status, just the task to be done and the info regarding it.~%~%#Goal parameters. Specified at runtime. If you are trying to pass complex data to a task (list of points/etc), you will have to encode it as a string, or however you'd like.~%int32 task_id~%dynamic_reconfigure/Config parameters~%~%================================================================================~%MSG: dynamic_reconfigure/Config~%BoolParameter[] bools~%IntParameter[] ints~%StrParameter[] strs~%DoubleParameter[] doubles~%GroupState[] groups~%~%================================================================================~%MSG: dynamic_reconfigure/BoolParameter~%string name~%bool value~%~%================================================================================~%MSG: dynamic_reconfigure/IntParameter~%string name~%int32 value~%~%================================================================================~%MSG: dynamic_reconfigure/StrParameter~%string name~%string value~%~%================================================================================~%MSG: dynamic_reconfigure/DoubleParameter~%string name~%float64 value~%~%================================================================================~%MSG: dynamic_reconfigure/GroupState~%string name~%bool state~%int32 id~%int32 parent~%~%================================================================================~%MSG: arc_msgs/ArcTaskActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%ArcTaskResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: arc_msgs/ArcTaskResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%bool completed		#Whether or not the task was completed.~%int32 task_id #we need to know the id when tasks is returning, since multiple instances of the same task type may return to same callback in task handler. If we don't know the tasks id, we won't be sure what instance it is, and the callback only receives Result info, which doesn't include the task_id outlined for this actions goal.~%string final_state 	#Since tasks are based on a state machine, this can contain the final state that was reached upon completion/termination.~%~%================================================================================~%MSG: arc_msgs/ArcTaskActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%ArcTaskFeedback feedback~%~%================================================================================~%MSG: arc_msgs/ArcTaskFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#no feedback message yet~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArcTaskAction)))
  "Returns full string definition for message of type 'ArcTaskAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%ArcTaskActionGoal action_goal~%ArcTaskActionResult action_result~%ArcTaskActionFeedback action_feedback~%~%================================================================================~%MSG: arc_msgs/ArcTaskActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%ArcTaskGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: arc_msgs/ArcTaskGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#Any task being done by the Task Handler will have the form of this action. This is essentially the TaskRequest.msg except trimmed down to only include parameters. the TaskHandler doesn't care about a tasks id and status, just the task to be done and the info regarding it.~%~%#Goal parameters. Specified at runtime. If you are trying to pass complex data to a task (list of points/etc), you will have to encode it as a string, or however you'd like.~%int32 task_id~%dynamic_reconfigure/Config parameters~%~%================================================================================~%MSG: dynamic_reconfigure/Config~%BoolParameter[] bools~%IntParameter[] ints~%StrParameter[] strs~%DoubleParameter[] doubles~%GroupState[] groups~%~%================================================================================~%MSG: dynamic_reconfigure/BoolParameter~%string name~%bool value~%~%================================================================================~%MSG: dynamic_reconfigure/IntParameter~%string name~%int32 value~%~%================================================================================~%MSG: dynamic_reconfigure/StrParameter~%string name~%string value~%~%================================================================================~%MSG: dynamic_reconfigure/DoubleParameter~%string name~%float64 value~%~%================================================================================~%MSG: dynamic_reconfigure/GroupState~%string name~%bool state~%int32 id~%int32 parent~%~%================================================================================~%MSG: arc_msgs/ArcTaskActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%ArcTaskResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: arc_msgs/ArcTaskResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%bool completed		#Whether or not the task was completed.~%int32 task_id #we need to know the id when tasks is returning, since multiple instances of the same task type may return to same callback in task handler. If we don't know the tasks id, we won't be sure what instance it is, and the callback only receives Result info, which doesn't include the task_id outlined for this actions goal.~%string final_state 	#Since tasks are based on a state machine, this can contain the final state that was reached upon completion/termination.~%~%================================================================================~%MSG: arc_msgs/ArcTaskActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%ArcTaskFeedback feedback~%~%================================================================================~%MSG: arc_msgs/ArcTaskFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#no feedback message yet~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArcTaskAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArcTaskAction>))
  "Converts a ROS message object to a list"
  (cl:list 'ArcTaskAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))