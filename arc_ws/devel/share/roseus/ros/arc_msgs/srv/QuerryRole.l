;; Auto-generated. Do not edit!


(when (boundp 'arc_msgs::QuerryRole)
  (if (not (find-package "ARC_MSGS"))
    (make-package "ARC_MSGS"))
  (shadow 'QuerryRole (find-package "ARC_MSGS")))
(unless (find-package "ARC_MSGS::QUERRYROLE")
  (make-package "ARC_MSGS::QUERRYROLE"))
(unless (find-package "ARC_MSGS::QUERRYROLEREQUEST")
  (make-package "ARC_MSGS::QUERRYROLEREQUEST"))
(unless (find-package "ARC_MSGS::QUERRYROLERESPONSE")
  (make-package "ARC_MSGS::QUERRYROLERESPONSE"))

(in-package "ROS")





(defclass arc_msgs::QuerryRoleRequest
  :super ros::object
  :slots (_bot_type ))

(defmethod arc_msgs::QuerryRoleRequest
  (:init
   (&key
    ((:bot_type __bot_type) 0)
    )
   (send-super :init)
   (setq _bot_type (round __bot_type))
   self)
  (:bot_type
   (&optional __bot_type)
   (if __bot_type (setq _bot_type __bot_type)) _bot_type)
  (:serialization-length
   ()
   (+
    ;; int32 _bot_type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _bot_type
       (write-long _bot_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _bot_type
     (setq _bot_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass arc_msgs::QuerryRoleResponse
  :super ros::object
  :slots (_app ))

(defmethod arc_msgs::QuerryRoleResponse
  (:init
   (&key
    ((:app __app) 0.0)
    )
   (send-super :init)
   (setq _app (float __app))
   self)
  (:app
   (&optional __app)
   (if __app (setq _app __app)) _app)
  (:serialization-length
   ()
   (+
    ;; float32 _app
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _app
       (sys::poke _app (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _app
     (setq _app (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass arc_msgs::QuerryRole
  :super ros::object
  :slots ())

(setf (get arc_msgs::QuerryRole :md5sum-) "d7615da21ebfea9eb2a1d406fa324a4c")
(setf (get arc_msgs::QuerryRole :datatype-) "arc_msgs/QuerryRole")
(setf (get arc_msgs::QuerryRole :request) arc_msgs::QuerryRoleRequest)
(setf (get arc_msgs::QuerryRole :response) arc_msgs::QuerryRoleResponse)

(defmethod arc_msgs::QuerryRoleRequest
  (:response () (instance arc_msgs::QuerryRoleResponse :init)))

(setf (get arc_msgs::QuerryRoleRequest :md5sum-) "d7615da21ebfea9eb2a1d406fa324a4c")
(setf (get arc_msgs::QuerryRoleRequest :datatype-) "arc_msgs/QuerryRoleRequest")
(setf (get arc_msgs::QuerryRoleRequest :definition-)
      "int32 bot_type
---
float32 app

")

(setf (get arc_msgs::QuerryRoleResponse :md5sum-) "d7615da21ebfea9eb2a1d406fa324a4c")
(setf (get arc_msgs::QuerryRoleResponse :datatype-) "arc_msgs/QuerryRoleResponse")
(setf (get arc_msgs::QuerryRoleResponse :definition-)
      "int32 bot_type
---
float32 app

")



(provide :arc_msgs/QuerryRole "d7615da21ebfea9eb2a1d406fa324a4c")


