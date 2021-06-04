;; Auto-generated. Do not edit!


(when (boundp 'arc_msgs::TaskRequest)
  (if (not (find-package "ARC_MSGS"))
    (make-package "ARC_MSGS"))
  (shadow 'TaskRequest (find-package "ARC_MSGS")))
(unless (find-package "ARC_MSGS::TASKREQUEST")
  (make-package "ARC_MSGS::TASKREQUEST"))

(in-package "ROS")
;;//! \htmlinclude TaskRequest.msg.html
(if (not (find-package "DYNAMIC_RECONFIGURE"))
  (ros::roseus-add-msgs "dynamic_reconfigure"))


(intern "*TYPE_COMPLETION*" (find-package "ARC_MSGS::TASKREQUEST"))
(shadow '*TYPE_COMPLETION* (find-package "ARC_MSGS::TASKREQUEST"))
(defconstant arc_msgs::TaskRequest::*TYPE_COMPLETION* 0)
(intern "*TYPE_CANCELLATION*" (find-package "ARC_MSGS::TASKREQUEST"))
(shadow '*TYPE_CANCELLATION* (find-package "ARC_MSGS::TASKREQUEST"))
(defconstant arc_msgs::TaskRequest::*TYPE_CANCELLATION* 1)
(defclass arc_msgs::TaskRequest
  :super ros::object
  :slots (_task_id _created _task_name _parameters _request_type ))

(defmethod arc_msgs::TaskRequest
  (:init
   (&key
    ((:task_id __task_id) 0)
    ((:created __created) (instance ros::time :init))
    ((:task_name __task_name) "")
    ((:parameters __parameters) (instance dynamic_reconfigure::Config :init))
    ((:request_type __request_type) 0)
    )
   (send-super :init)
   (setq _task_id (round __task_id))
   (setq _created __created)
   (setq _task_name (string __task_name))
   (setq _parameters __parameters)
   (setq _request_type (round __request_type))
   self)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:created
   (&optional __created)
   (if __created (setq _created __created)) _created)
  (:task_name
   (&optional __task_name)
   (if __task_name (setq _task_name __task_name)) _task_name)
  (:parameters
   (&rest __parameters)
   (if (keywordp (car __parameters))
       (send* _parameters __parameters)
     (progn
       (if __parameters (setq _parameters (car __parameters)))
       _parameters)))
  (:request_type
   (&optional __request_type)
   (if __request_type (setq _request_type __request_type)) _request_type)
  (:serialization-length
   ()
   (+
    ;; uint32 _task_id
    4
    ;; time _created
    8
    ;; string _task_name
    4 (length _task_name)
    ;; dynamic_reconfigure/Config _parameters
    (send _parameters :serialization-length)
    ;; uint8 _request_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _task_id
       (write-long _task_id s)
     ;; time _created
       (write-long (send _created :sec) s) (write-long (send _created :nsec) s)
     ;; string _task_name
       (write-long (length _task_name) s) (princ _task_name s)
     ;; dynamic_reconfigure/Config _parameters
       (send _parameters :serialize s)
     ;; uint8 _request_type
       (write-byte _request_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _task_id
     (setq _task_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _created
     (send _created :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _created :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _task_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _task_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; dynamic_reconfigure/Config _parameters
     (send _parameters :deserialize buf ptr-) (incf ptr- (send _parameters :serialization-length))
   ;; uint8 _request_type
     (setq _request_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get arc_msgs::TaskRequest :md5sum-) "918300d9f5eb2af46b00af6c1c427533")
(setf (get arc_msgs::TaskRequest :datatype-) "arc_msgs/TaskRequest")
(setf (get arc_msgs::TaskRequest :definition-)
      "#A task is a small piece of behaviour defined in ARC, prompting a robot to do some specific piece of work.

#Unique id created for this task instance. 
#All requests and responses about this instance must have the same task_id, otherwise robot will think it’s a different task.
uint32 task_id

time created #The time that this task instance was created.

#The name of the task to perform
string task_name

#Configuration parameters for this task. 
dynamic_reconfigure/Config parameters

#The intend of the request. some task requests are requesting to complete a task.
#Another request may be asking to cancel the execution of a task.
uint8 request_type

#Request types
uint8 TYPE_COMPLETION=0   #Requesting robot to complete the task.
uint8 TYPE_CANCELLATION=1 #Requesting robot to cancel the task.

================================================================================
MSG: dynamic_reconfigure/Config
BoolParameter[] bools
IntParameter[] ints
StrParameter[] strs
DoubleParameter[] doubles
GroupState[] groups

================================================================================
MSG: dynamic_reconfigure/BoolParameter
string name
bool value

================================================================================
MSG: dynamic_reconfigure/IntParameter
string name
int32 value

================================================================================
MSG: dynamic_reconfigure/StrParameter
string name
string value

================================================================================
MSG: dynamic_reconfigure/DoubleParameter
string name
float64 value

================================================================================
MSG: dynamic_reconfigure/GroupState
string name
bool state
int32 id
int32 parent

")



(provide :arc_msgs/TaskRequest "918300d9f5eb2af46b00af6c1c427533")


