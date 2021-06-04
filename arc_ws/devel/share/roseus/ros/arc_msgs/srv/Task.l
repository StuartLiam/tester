;; Auto-generated. Do not edit!


(when (boundp 'arc_msgs::Task)
  (if (not (find-package "ARC_MSGS"))
    (make-package "ARC_MSGS"))
  (shadow 'Task (find-package "ARC_MSGS")))
(unless (find-package "ARC_MSGS::TASK")
  (make-package "ARC_MSGS::TASK"))
(unless (find-package "ARC_MSGS::TASKREQUEST")
  (make-package "ARC_MSGS::TASKREQUEST"))
(unless (find-package "ARC_MSGS::TASKRESPONSE")
  (make-package "ARC_MSGS::TASKRESPONSE"))

(in-package "ROS")





(defclass arc_msgs::TaskRequest
  :super ros::object
  :slots (_task_type _priority _bot_x _bot_y _loc_x _loc_y ))

(defmethod arc_msgs::TaskRequest
  (:init
   (&key
    ((:task_type __task_type) 0)
    ((:priority __priority) 0)
    ((:bot_x __bot_x) 0.0)
    ((:bot_y __bot_y) 0.0)
    ((:loc_x __loc_x) 0.0)
    ((:loc_y __loc_y) 0.0)
    )
   (send-super :init)
   (setq _task_type (round __task_type))
   (setq _priority (round __priority))
   (setq _bot_x (float __bot_x))
   (setq _bot_y (float __bot_y))
   (setq _loc_x (float __loc_x))
   (setq _loc_y (float __loc_y))
   self)
  (:task_type
   (&optional __task_type)
   (if __task_type (setq _task_type __task_type)) _task_type)
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:bot_x
   (&optional __bot_x)
   (if __bot_x (setq _bot_x __bot_x)) _bot_x)
  (:bot_y
   (&optional __bot_y)
   (if __bot_y (setq _bot_y __bot_y)) _bot_y)
  (:loc_x
   (&optional __loc_x)
   (if __loc_x (setq _loc_x __loc_x)) _loc_x)
  (:loc_y
   (&optional __loc_y)
   (if __loc_y (setq _loc_y __loc_y)) _loc_y)
  (:serialization-length
   ()
   (+
    ;; int32 _task_type
    4
    ;; int32 _priority
    4
    ;; float64 _bot_x
    8
    ;; float64 _bot_y
    8
    ;; float64 _loc_x
    8
    ;; float64 _loc_y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _task_type
       (write-long _task_type s)
     ;; int32 _priority
       (write-long _priority s)
     ;; float64 _bot_x
       (sys::poke _bot_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _bot_y
       (sys::poke _bot_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _loc_x
       (sys::poke _loc_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _loc_y
       (sys::poke _loc_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _task_type
     (setq _task_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _priority
     (setq _priority (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _bot_x
     (setq _bot_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _bot_y
     (setq _bot_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _loc_x
     (setq _loc_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _loc_y
     (setq _loc_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass arc_msgs::TaskResponse
  :super ros::object
  :slots (_accepted ))

(defmethod arc_msgs::TaskResponse
  (:init
   (&key
    ((:accepted __accepted) 0)
    )
   (send-super :init)
   (setq _accepted (round __accepted))
   self)
  (:accepted
   (&optional __accepted)
   (if __accepted (setq _accepted __accepted)) _accepted)
  (:serialization-length
   ()
   (+
    ;; int32 _accepted
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _accepted
       (write-long _accepted s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _accepted
     (setq _accepted (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass arc_msgs::Task
  :super ros::object
  :slots ())

(setf (get arc_msgs::Task :md5sum-) "b4cba0104ef3e5618ceceb1e9c5f477f")
(setf (get arc_msgs::Task :datatype-) "arc_msgs/Task")
(setf (get arc_msgs::Task :request) arc_msgs::TaskRequest)
(setf (get arc_msgs::Task :response) arc_msgs::TaskResponse)

(defmethod arc_msgs::TaskRequest
  (:response () (instance arc_msgs::TaskResponse :init)))

(setf (get arc_msgs::TaskRequest :md5sum-) "b4cba0104ef3e5618ceceb1e9c5f477f")
(setf (get arc_msgs::TaskRequest :datatype-) "arc_msgs/TaskRequest")
(setf (get arc_msgs::TaskRequest :definition-)
      "int32 task_type
int32 priority
float64 bot_x
float64 bot_y
float64 loc_x
float64 loc_y
---
int32 accepted
")

(setf (get arc_msgs::TaskResponse :md5sum-) "b4cba0104ef3e5618ceceb1e9c5f477f")
(setf (get arc_msgs::TaskResponse :datatype-) "arc_msgs/TaskResponse")
(setf (get arc_msgs::TaskResponse :definition-)
      "int32 task_type
int32 priority
float64 bot_x
float64 bot_y
float64 loc_x
float64 loc_y
---
int32 accepted
")



(provide :arc_msgs/Task "b4cba0104ef3e5618ceceb1e9c5f477f")


