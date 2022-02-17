
(cl:in-package :asdf)

(defsystem "msgsrv_basic_p-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "WarningStatus" :depends-on ("_package_WarningStatus"))
    (:file "_package_WarningStatus" :depends-on ("_package"))
  ))