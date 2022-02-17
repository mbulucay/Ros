;; Auto-generated. Do not edit!


(when (boundp 'msgsrv_basic_p::WarningStatus)
  (if (not (find-package "MSGSRV_BASIC_P"))
    (make-package "MSGSRV_BASIC_P"))
  (shadow 'WarningStatus (find-package "MSGSRV_BASIC_P")))
(unless (find-package "MSGSRV_BASIC_P::WARNINGSTATUS")
  (make-package "MSGSRV_BASIC_P::WARNINGSTATUS"))
(unless (find-package "MSGSRV_BASIC_P::WARNINGSTATUSREQUEST")
  (make-package "MSGSRV_BASIC_P::WARNINGSTATUSREQUEST"))
(unless (find-package "MSGSRV_BASIC_P::WARNINGSTATUSRESPONSE")
  (make-package "MSGSRV_BASIC_P::WARNINGSTATUSRESPONSE"))

(in-package "ROS")



(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass msgsrv_basic_p::WarningStatusRequest
  :super ros::object
  :slots (_warn ))

(defmethod msgsrv_basic_p::WarningStatusRequest
  (:init
   (&key
    ((:warn __warn) nil)
    )
   (send-super :init)
   (setq _warn __warn)
   self)
  (:warn
   (&optional (__warn :null))
   (if (not (eq __warn :null)) (setq _warn __warn)) _warn)
  (:serialization-length
   ()
   (+
    ;; bool _warn
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _warn
       (if _warn (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _warn
     (setq _warn (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass msgsrv_basic_p::WarningStatusResponse
  :super ros::object
  :slots (_resp ))

(defmethod msgsrv_basic_p::WarningStatusResponse
  (:init
   (&key
    ((:resp __resp) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _resp __resp)
   self)
  (:resp
   (&rest __resp)
   (if (keywordp (car __resp))
       (send* _resp __resp)
     (progn
       (if __resp (setq _resp (car __resp)))
       _resp)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _resp
    (send _resp :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _resp
       (send _resp :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _resp
     (send _resp :deserialize buf ptr-) (incf ptr- (send _resp :serialization-length))
   ;;
   self)
  )

(defclass msgsrv_basic_p::WarningStatus
  :super ros::object
  :slots ())

(setf (get msgsrv_basic_p::WarningStatus :md5sum-) "e30b85c266ffbe42abf942f98a5b4797")
(setf (get msgsrv_basic_p::WarningStatus :datatype-) "msgsrv_basic_p/WarningStatus")
(setf (get msgsrv_basic_p::WarningStatus :request) msgsrv_basic_p::WarningStatusRequest)
(setf (get msgsrv_basic_p::WarningStatus :response) msgsrv_basic_p::WarningStatusResponse)

(defmethod msgsrv_basic_p::WarningStatusRequest
  (:response () (instance msgsrv_basic_p::WarningStatusResponse :init)))

(setf (get msgsrv_basic_p::WarningStatusRequest :md5sum-) "e30b85c266ffbe42abf942f98a5b4797")
(setf (get msgsrv_basic_p::WarningStatusRequest :datatype-) "msgsrv_basic_p/WarningStatusRequest")
(setf (get msgsrv_basic_p::WarningStatusRequest :definition-)
      "bool warn
---
std_msgs/String resp


================================================================================
MSG: std_msgs/String
string data
")

(setf (get msgsrv_basic_p::WarningStatusResponse :md5sum-) "e30b85c266ffbe42abf942f98a5b4797")
(setf (get msgsrv_basic_p::WarningStatusResponse :datatype-) "msgsrv_basic_p/WarningStatusResponse")
(setf (get msgsrv_basic_p::WarningStatusResponse :definition-)
      "bool warn
---
std_msgs/String resp


================================================================================
MSG: std_msgs/String
string data
")



(provide :msgsrv_basic_p/WarningStatus "e30b85c266ffbe42abf942f98a5b4797")


