;; Auto-generated. Do not edit!


(when (boundp 'arc_msgs::MoveAlterableObject)
  (if (not (find-package "ARC_MSGS"))
    (make-package "ARC_MSGS"))
  (shadow 'MoveAlterableObject (find-package "ARC_MSGS")))
(unless (find-package "ARC_MSGS::MOVEALTERABLEOBJECT")
  (make-package "ARC_MSGS::MOVEALTERABLEOBJECT"))
(unless (find-package "ARC_MSGS::MOVEALTERABLEOBJECTREQUEST")
  (make-package "ARC_MSGS::MOVEALTERABLEOBJECTREQUEST"))
(unless (find-package "ARC_MSGS::MOVEALTERABLEOBJECTRESPONSE")
  (make-package "ARC_MSGS::MOVEALTERABLEOBJECTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass arc_msgs::MoveAlterableObjectRequest
  :super ros::object
  :slots (_fiducial_return _name _pose ))

(defmethod arc_msgs::MoveAlterableObjectRequest
  (:init
   (&key
    ((:fiducial_return __fiducial_return) 0)
    ((:name __name) "")
    ((:pose __pose) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _fiducial_return (round __fiducial_return))
   (setq _name (string __name))
   (setq _pose __pose)
   self)
  (:fiducial_return
   (&optional __fiducial_return)
   (if __fiducial_return (setq _fiducial_return __fiducial_return)) _fiducial_return)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
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
    ;; int32 _fiducial_return
    4
    ;; string _name
    4 (length _name)
    ;; geometry_msgs/Pose2D _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _fiducial_return
       (write-long _fiducial_return s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; geometry_msgs/Pose2D _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _fiducial_return
     (setq _fiducial_return (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose2D _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass arc_msgs::MoveAlterableObjectResponse
  :super ros::object
  :slots ())

(defmethod arc_msgs::MoveAlterableObjectResponse
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

(defclass arc_msgs::MoveAlterableObject
  :super ros::object
  :slots ())

(setf (get arc_msgs::MoveAlterableObject :md5sum-) "7081b645962fcb4bfe66c7f0df8a9786")
(setf (get arc_msgs::MoveAlterableObject :datatype-) "arc_msgs/MoveAlterableObject")
(setf (get arc_msgs::MoveAlterableObject :request) arc_msgs::MoveAlterableObjectRequest)
(setf (get arc_msgs::MoveAlterableObject :response) arc_msgs::MoveAlterableObjectResponse)

(defmethod arc_msgs::MoveAlterableObjectRequest
  (:response () (instance arc_msgs::MoveAlterableObjectResponse :init)))

(setf (get arc_msgs::MoveAlterableObjectRequest :md5sum-) "7081b645962fcb4bfe66c7f0df8a9786")
(setf (get arc_msgs::MoveAlterableObjectRequest :datatype-) "arc_msgs/MoveAlterableObjectRequest")
(setf (get arc_msgs::MoveAlterableObjectRequest :definition-)
      "


int32 fiducial_return

string name
geometry_msgs/Pose2D pose

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
---

")

(setf (get arc_msgs::MoveAlterableObjectResponse :md5sum-) "7081b645962fcb4bfe66c7f0df8a9786")
(setf (get arc_msgs::MoveAlterableObjectResponse :datatype-) "arc_msgs/MoveAlterableObjectResponse")
(setf (get arc_msgs::MoveAlterableObjectResponse :definition-)
      "


int32 fiducial_return

string name
geometry_msgs/Pose2D pose

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
---

")



(provide :arc_msgs/MoveAlterableObject "7081b645962fcb4bfe66c7f0df8a9786")


