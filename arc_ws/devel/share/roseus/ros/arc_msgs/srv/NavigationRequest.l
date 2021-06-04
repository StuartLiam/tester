;; Auto-generated. Do not edit!


(when (boundp 'arc_msgs::NavigationRequest)
  (if (not (find-package "ARC_MSGS"))
    (make-package "ARC_MSGS"))
  (shadow 'NavigationRequest (find-package "ARC_MSGS")))
(unless (find-package "ARC_MSGS::NAVIGATIONREQUEST")
  (make-package "ARC_MSGS::NAVIGATIONREQUEST"))
(unless (find-package "ARC_MSGS::NAVIGATIONREQUESTREQUEST")
  (make-package "ARC_MSGS::NAVIGATIONREQUESTREQUEST"))
(unless (find-package "ARC_MSGS::NAVIGATIONREQUESTRESPONSE")
  (make-package "ARC_MSGS::NAVIGATIONREQUESTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass arc_msgs::NavigationRequestRequest
  :super ros::object
  :slots (_priority _pose ))

(defmethod arc_msgs::NavigationRequestRequest
  (:init
   (&key
    ((:priority __priority) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _priority (round __priority))
   (setq _pose __pose)
   self)
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; int32 _priority
    4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _priority
       (write-long _priority s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _priority
     (setq _priority (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass arc_msgs::NavigationRequestResponse
  :super ros::object
  :slots (_result ))

(defmethod arc_msgs::NavigationRequestResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass arc_msgs::NavigationRequest
  :super ros::object
  :slots ())

(setf (get arc_msgs::NavigationRequest :md5sum-) "0990ba5feaa158a7030cc5a892af2ba7")
(setf (get arc_msgs::NavigationRequest :datatype-) "arc_msgs/NavigationRequest")
(setf (get arc_msgs::NavigationRequest :request) arc_msgs::NavigationRequestRequest)
(setf (get arc_msgs::NavigationRequest :response) arc_msgs::NavigationRequestResponse)

(defmethod arc_msgs::NavigationRequestRequest
  (:response () (instance arc_msgs::NavigationRequestResponse :init)))

(setf (get arc_msgs::NavigationRequestRequest :md5sum-) "0990ba5feaa158a7030cc5a892af2ba7")
(setf (get arc_msgs::NavigationRequestRequest :datatype-) "arc_msgs/NavigationRequestRequest")
(setf (get arc_msgs::NavigationRequestRequest :definition-)
      "int32 priority
geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool result

")

(setf (get arc_msgs::NavigationRequestResponse :md5sum-) "0990ba5feaa158a7030cc5a892af2ba7")
(setf (get arc_msgs::NavigationRequestResponse :datatype-) "arc_msgs/NavigationRequestResponse")
(setf (get arc_msgs::NavigationRequestResponse :definition-)
      "int32 priority
geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool result

")



(provide :arc_msgs/NavigationRequest "0990ba5feaa158a7030cc5a892af2ba7")


