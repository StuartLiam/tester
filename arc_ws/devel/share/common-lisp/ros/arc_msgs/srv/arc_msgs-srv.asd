
(cl:in-package :asdf)

(defsystem "arc_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :dynamic_reconfigure-msg
               :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "DropMarker" :depends-on ("_package_DropMarker"))
    (:file "_package_DropMarker" :depends-on ("_package"))
    (:file "MoveAlterableObject" :depends-on ("_package_MoveAlterableObject"))
    (:file "_package_MoveAlterableObject" :depends-on ("_package"))
    (:file "NavigationRequest" :depends-on ("_package_NavigationRequest"))
    (:file "_package_NavigationRequest" :depends-on ("_package"))
    (:file "QuerryRole" :depends-on ("_package_QuerryRole"))
    (:file "_package_QuerryRole" :depends-on ("_package"))
    (:file "QuerryTask" :depends-on ("_package_QuerryTask"))
    (:file "_package_QuerryTask" :depends-on ("_package"))
    (:file "Task" :depends-on ("_package_Task"))
    (:file "_package_Task" :depends-on ("_package"))
    (:file "ToggleBehaviour" :depends-on ("_package_ToggleBehaviour"))
    (:file "_package_ToggleBehaviour" :depends-on ("_package"))
    (:file "ToggleList" :depends-on ("_package_ToggleList"))
    (:file "_package_ToggleList" :depends-on ("_package"))
    (:file "ToggleSchema" :depends-on ("_package_ToggleSchema"))
    (:file "_package_ToggleSchema" :depends-on ("_package"))
  ))