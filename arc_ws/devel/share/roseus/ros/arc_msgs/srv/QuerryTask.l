;; Auto-generated. Do not edit!


(when (boundp 'arc_msgs::QuerryTask)
  (if (not (find-package "ARC_MSGS"))
    (make-package "ARC_MSGS"))
  (shadow 'QuerryTask (find-package "ARC_MSGS")))
(unless (find-package "ARC_MSGS::QUERRYTASK")
  (make-package "ARC_MSGS::QUERRYTASK"))
(unless (find-package "ARC_MSGS::QUERRYTASKREQUEST")
  (make-package "ARC_MSGS::QUERRYTASKREQUEST"))
(unless (find-package "ARC_MSGS::QUERRYTASKRESPONSE")
  (make-package "ARC_MSGS::QUERRYTASKRESPONSE"))

(in-package "ROS")





(defclass arc_msgs::QuerryTaskRequest
  :super ros::object
  :slots ())

(defmethod arc_msgs::QuerryTaskRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass arc_msgs::QuerryTaskResponse
  :super ros::object
  :slots (_task_type _priority _bot_x _bot_y _loc_x _loc_y ))

(defmethod arc_msgs::QuerryTaskResponse
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

(defclass arc_msgs::QuerryTask
  :super ros::object
  :slots ())

(setf (get arc_msgs::QuerryTask :md5sum-) "0367c6c74ded11b47d7fe0ed3f0c4dab")
(setf (get arc_msgs::QuerryTask :datatype-) "arc_msgs/QuerryTask")
(setf (get arc_msgs::QuerryTask :request) arc_msgs::QuerryTaskRequest)
(setf (get arc_msgs::QuerryTask :response) arc_msgs::QuerryTaskResponse)

(defmethod arc_msgs::QuerryTaskRequest
  (:response () (instance arc_msgs::QuerryTaskResponse :init)))

(setf (get arc_msgs::QuerryTaskRequest :md5sum-) "0367c6c74ded11b47d7fe0ed3f0c4dab")
(setf (get arc_msgs::QuerryTaskRequest :datatype-) "arc_msgs/QuerryTaskRequest")
(setf (get arc_msgs::QuerryTaskRequest :definition-)
      "---
int32 task_type
int32 priority
float64 bot_x
float64 bot_y
float64 loc_x
float64 loc_y
")

(setf (get arc_msgs::QuerryTaskResponse :md5sum-) "0367c6c74ded11b47d7fe0ed3f0c4dab")
(setf (get arc_msgs::QuerryTaskResponse :datatype-) "arc_msgs/QuerryTaskResponse")
(setf (get arc_msgs::QuerryTaskResponse :definition-)
      "---
int32 task_type
int32 priority
float64 bot_x
float64 bot_y
float64 loc_x
float64 loc_y
")



(provide :arc_msgs/QuerryTask "0367c6c74ded11b47d7fe0ed3f0c4dab")


