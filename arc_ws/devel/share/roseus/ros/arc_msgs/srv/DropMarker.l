;; Auto-generated. Do not edit!


(when (boundp 'arc_msgs::DropMarker)
  (if (not (find-package "ARC_MSGS"))
    (make-package "ARC_MSGS"))
  (shadow 'DropMarker (find-package "ARC_MSGS")))
(unless (find-package "ARC_MSGS::DROPMARKER")
  (make-package "ARC_MSGS::DROPMARKER"))
(unless (find-package "ARC_MSGS::DROPMARKERREQUEST")
  (make-package "ARC_MSGS::DROPMARKERREQUEST"))
(unless (find-package "ARC_MSGS::DROPMARKERRESPONSE")
  (make-package "ARC_MSGS::DROPMARKERRESPONSE"))

(in-package "ROS")





(defclass arc_msgs::DropMarkerRequest
  :super ros::object
  :slots ())

(defmethod arc_msgs::DropMarkerRequest
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

(defclass arc_msgs::DropMarkerResponse
  :super ros::object
  :slots ())

(defmethod arc_msgs::DropMarkerResponse
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

(defclass arc_msgs::DropMarker
  :super ros::object
  :slots ())

(setf (get arc_msgs::DropMarker :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get arc_msgs::DropMarker :datatype-) "arc_msgs/DropMarker")
(setf (get arc_msgs::DropMarker :request) arc_msgs::DropMarkerRequest)
(setf (get arc_msgs::DropMarker :response) arc_msgs::DropMarkerResponse)

(defmethod arc_msgs::DropMarkerRequest
  (:response () (instance arc_msgs::DropMarkerResponse :init)))

(setf (get arc_msgs::DropMarkerRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get arc_msgs::DropMarkerRequest :datatype-) "arc_msgs/DropMarkerRequest")
(setf (get arc_msgs::DropMarkerRequest :definition-)
      "

---

")

(setf (get arc_msgs::DropMarkerResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get arc_msgs::DropMarkerResponse :datatype-) "arc_msgs/DropMarkerResponse")
(setf (get arc_msgs::DropMarkerResponse :definition-)
      "

---

")



(provide :arc_msgs/DropMarker "d41d8cd98f00b204e9800998ecf8427e")


