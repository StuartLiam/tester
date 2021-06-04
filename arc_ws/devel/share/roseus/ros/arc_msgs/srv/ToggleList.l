;; Auto-generated. Do not edit!


(when (boundp 'arc_msgs::ToggleList)
  (if (not (find-package "ARC_MSGS"))
    (make-package "ARC_MSGS"))
  (shadow 'ToggleList (find-package "ARC_MSGS")))
(unless (find-package "ARC_MSGS::TOGGLELIST")
  (make-package "ARC_MSGS::TOGGLELIST"))
(unless (find-package "ARC_MSGS::TOGGLELISTREQUEST")
  (make-package "ARC_MSGS::TOGGLELISTREQUEST"))
(unless (find-package "ARC_MSGS::TOGGLELISTRESPONSE")
  (make-package "ARC_MSGS::TOGGLELISTRESPONSE"))

(in-package "ROS")





(defclass arc_msgs::ToggleListRequest
  :super ros::object
  :slots (_random_wander _move_to_goal _clean_debris _detect_debris ))

(defmethod arc_msgs::ToggleListRequest
  (:init
   (&key
    ((:random_wander __random_wander) nil)
    ((:move_to_goal __move_to_goal) nil)
    ((:clean_debris __clean_debris) nil)
    ((:detect_debris __detect_debris) nil)
    )
   (send-super :init)
   (setq _random_wander __random_wander)
   (setq _move_to_goal __move_to_goal)
   (setq _clean_debris __clean_debris)
   (setq _detect_debris __detect_debris)
   self)
  (:random_wander
   (&optional __random_wander)
   (if __random_wander (setq _random_wander __random_wander)) _random_wander)
  (:move_to_goal
   (&optional __move_to_goal)
   (if __move_to_goal (setq _move_to_goal __move_to_goal)) _move_to_goal)
  (:clean_debris
   (&optional __clean_debris)
   (if __clean_debris (setq _clean_debris __clean_debris)) _clean_debris)
  (:detect_debris
   (&optional __detect_debris)
   (if __detect_debris (setq _detect_debris __detect_debris)) _detect_debris)
  (:serialization-length
   ()
   (+
    ;; bool _random_wander
    1
    ;; bool _move_to_goal
    1
    ;; bool _clean_debris
    1
    ;; bool _detect_debris
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _random_wander
       (if _random_wander (write-byte -1 s) (write-byte 0 s))
     ;; bool _move_to_goal
       (if _move_to_goal (write-byte -1 s) (write-byte 0 s))
     ;; bool _clean_debris
       (if _clean_debris (write-byte -1 s) (write-byte 0 s))
     ;; bool _detect_debris
       (if _detect_debris (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _random_wander
     (setq _random_wander (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _move_to_goal
     (setq _move_to_goal (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _clean_debris
     (setq _clean_debris (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _detect_debris
     (setq _detect_debris (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass arc_msgs::ToggleListResponse
  :super ros::object
  :slots ())

(defmethod arc_msgs::ToggleListResponse
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

(defclass arc_msgs::ToggleList
  :super ros::object
  :slots ())

(setf (get arc_msgs::ToggleList :md5sum-) "fc98542f37cff10cf2b272c02d421986")
(setf (get arc_msgs::ToggleList :datatype-) "arc_msgs/ToggleList")
(setf (get arc_msgs::ToggleList :request) arc_msgs::ToggleListRequest)
(setf (get arc_msgs::ToggleList :response) arc_msgs::ToggleListResponse)

(defmethod arc_msgs::ToggleListRequest
  (:response () (instance arc_msgs::ToggleListResponse :init)))

(setf (get arc_msgs::ToggleListRequest :md5sum-) "fc98542f37cff10cf2b272c02d421986")
(setf (get arc_msgs::ToggleListRequest :datatype-) "arc_msgs/ToggleListRequest")
(setf (get arc_msgs::ToggleListRequest :definition-)
      "bool random_wander
bool move_to_goal
bool clean_debris
bool detect_debris
---
")

(setf (get arc_msgs::ToggleListResponse :md5sum-) "fc98542f37cff10cf2b272c02d421986")
(setf (get arc_msgs::ToggleListResponse :datatype-) "arc_msgs/ToggleListResponse")
(setf (get arc_msgs::ToggleListResponse :definition-)
      "bool random_wander
bool move_to_goal
bool clean_debris
bool detect_debris
---
")



(provide :arc_msgs/ToggleList "fc98542f37cff10cf2b272c02d421986")


