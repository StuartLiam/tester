;; Auto-generated. Do not edit!


(when (boundp 'arc_msgs::DetectedRobots)
  (if (not (find-package "ARC_MSGS"))
    (make-package "ARC_MSGS"))
  (shadow 'DetectedRobots (find-package "ARC_MSGS")))
(unless (find-package "ARC_MSGS::DETECTEDROBOTS")
  (make-package "ARC_MSGS::DETECTEDROBOTS"))

(in-package "ROS")
;;//! \htmlinclude DetectedRobots.msg.html


(defclass arc_msgs::DetectedRobots
  :super ros::object
  :slots (_robots ))

(defmethod arc_msgs::DetectedRobots
  (:init
   (&key
    ((:robots __robots) (let (r) (dotimes (i 0) (push (instance arc_msgs::DetectedRobot :init) r)) r))
    )
   (send-super :init)
   (setq _robots __robots)
   self)
  (:robots
   (&rest __robots)
   (if (keywordp (car __robots))
       (send* _robots __robots)
     (progn
       (if __robots (setq _robots (car __robots)))
       _robots)))
  (:serialization-length
   ()
   (+
    ;; arc_msgs/DetectedRobot[] _robots
    (apply #'+ (send-all _robots :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; arc_msgs/DetectedRobot[] _robots
     (write-long (length _robots) s)
     (dolist (elem _robots)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; arc_msgs/DetectedRobot[] _robots
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _robots (let (r) (dotimes (i n) (push (instance arc_msgs::DetectedRobot :init) r)) r))
     (dolist (elem- _robots)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get arc_msgs::DetectedRobots :md5sum-) "620e76eebd9864092c079930b5b956dd")
(setf (get arc_msgs::DetectedRobots :datatype-) "arc_msgs/DetectedRobots")
(setf (get arc_msgs::DetectedRobots :definition-)
      "arc_msgs/DetectedRobot[] robots		#list of the robots detected

================================================================================
MSG: arc_msgs/DetectedRobot
#This is the detection info of a robot in arc. There is no transform info/ie we assume this detection takes place from a current robots perspective (ie base_link)
int32 robot_id		#id of the robot
geometry_msgs/Pose pose	#Position of the detected robot.

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

")



(provide :arc_msgs/DetectedRobots "620e76eebd9864092c079930b5b956dd")


