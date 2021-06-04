;; Auto-generated. Do not edit!


(when (boundp 'arc_msgs::ToggleSchema)
  (if (not (find-package "ARC_MSGS"))
    (make-package "ARC_MSGS"))
  (shadow 'ToggleSchema (find-package "ARC_MSGS")))
(unless (find-package "ARC_MSGS::TOGGLESCHEMA")
  (make-package "ARC_MSGS::TOGGLESCHEMA"))
(unless (find-package "ARC_MSGS::TOGGLESCHEMAREQUEST")
  (make-package "ARC_MSGS::TOGGLESCHEMAREQUEST"))
(unless (find-package "ARC_MSGS::TOGGLESCHEMARESPONSE")
  (make-package "ARC_MSGS::TOGGLESCHEMARESPONSE"))

(in-package "ROS")

(if (not (find-package "DYNAMIC_RECONFIGURE"))
  (ros::roseus-add-msgs "dynamic_reconfigure"))




(defclass arc_msgs::ToggleSchemaRequest
  :super ros::object
  :slots (_schema ))

(defmethod arc_msgs::ToggleSchemaRequest
  (:init
   (&key
    ((:schema __schema) (let (r) (dotimes (i 0) (push (instance dynamic_reconfigure::BoolParameter :init) r)) r))
    )
   (send-super :init)
   (setq _schema __schema)
   self)
  (:schema
   (&rest __schema)
   (if (keywordp (car __schema))
       (send* _schema __schema)
     (progn
       (if __schema (setq _schema (car __schema)))
       _schema)))
  (:serialization-length
   ()
   (+
    ;; dynamic_reconfigure/BoolParameter[] _schema
    (apply #'+ (send-all _schema :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dynamic_reconfigure/BoolParameter[] _schema
     (write-long (length _schema) s)
     (dolist (elem _schema)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dynamic_reconfigure/BoolParameter[] _schema
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _schema (let (r) (dotimes (i n) (push (instance dynamic_reconfigure::BoolParameter :init) r)) r))
     (dolist (elem- _schema)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass arc_msgs::ToggleSchemaResponse
  :super ros::object
  :slots (_result ))

(defmethod arc_msgs::ToggleSchemaResponse
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

(defclass arc_msgs::ToggleSchema
  :super ros::object
  :slots ())

(setf (get arc_msgs::ToggleSchema :md5sum-) "8ef993123e0d3a927ec9795e9c47782f")
(setf (get arc_msgs::ToggleSchema :datatype-) "arc_msgs/ToggleSchema")
(setf (get arc_msgs::ToggleSchema :request) arc_msgs::ToggleSchemaRequest)
(setf (get arc_msgs::ToggleSchema :response) arc_msgs::ToggleSchemaResponse)

(defmethod arc_msgs::ToggleSchemaRequest
  (:response () (instance arc_msgs::ToggleSchemaResponse :init)))

(setf (get arc_msgs::ToggleSchemaRequest :md5sum-) "8ef993123e0d3a927ec9795e9c47782f")
(setf (get arc_msgs::ToggleSchemaRequest :datatype-) "arc_msgs/ToggleSchemaRequest")
(setf (get arc_msgs::ToggleSchemaRequest :definition-)
      "
dynamic_reconfigure/BoolParameter[] schema

================================================================================
MSG: dynamic_reconfigure/BoolParameter
string name
bool value
---
bool result

")

(setf (get arc_msgs::ToggleSchemaResponse :md5sum-) "8ef993123e0d3a927ec9795e9c47782f")
(setf (get arc_msgs::ToggleSchemaResponse :datatype-) "arc_msgs/ToggleSchemaResponse")
(setf (get arc_msgs::ToggleSchemaResponse :definition-)
      "
dynamic_reconfigure/BoolParameter[] schema

================================================================================
MSG: dynamic_reconfigure/BoolParameter
string name
bool value
---
bool result

")



(provide :arc_msgs/ToggleSchema "8ef993123e0d3a927ec9795e9c47782f")


