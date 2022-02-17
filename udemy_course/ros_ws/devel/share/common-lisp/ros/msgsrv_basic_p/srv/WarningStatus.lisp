; Auto-generated. Do not edit!


(cl:in-package msgsrv_basic_p-srv)


;//! \htmlinclude WarningStatus-request.msg.html

(cl:defclass <WarningStatus-request> (roslisp-msg-protocol:ros-message)
  ((warn
    :reader warn
    :initarg :warn
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WarningStatus-request (<WarningStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WarningStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WarningStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgsrv_basic_p-srv:<WarningStatus-request> is deprecated: use msgsrv_basic_p-srv:WarningStatus-request instead.")))

(cl:ensure-generic-function 'warn-val :lambda-list '(m))
(cl:defmethod warn-val ((m <WarningStatus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgsrv_basic_p-srv:warn-val is deprecated.  Use msgsrv_basic_p-srv:warn instead.")
  (warn m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WarningStatus-request>) ostream)
  "Serializes a message object of type '<WarningStatus-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'warn) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WarningStatus-request>) istream)
  "Deserializes a message object of type '<WarningStatus-request>"
    (cl:setf (cl:slot-value msg 'warn) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WarningStatus-request>)))
  "Returns string type for a service object of type '<WarningStatus-request>"
  "msgsrv_basic_p/WarningStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WarningStatus-request)))
  "Returns string type for a service object of type 'WarningStatus-request"
  "msgsrv_basic_p/WarningStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WarningStatus-request>)))
  "Returns md5sum for a message object of type '<WarningStatus-request>"
  "e30b85c266ffbe42abf942f98a5b4797")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WarningStatus-request)))
  "Returns md5sum for a message object of type 'WarningStatus-request"
  "e30b85c266ffbe42abf942f98a5b4797")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WarningStatus-request>)))
  "Returns full string definition for message of type '<WarningStatus-request>"
  (cl:format cl:nil "bool warn~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WarningStatus-request)))
  "Returns full string definition for message of type 'WarningStatus-request"
  (cl:format cl:nil "bool warn~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WarningStatus-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WarningStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WarningStatus-request
    (cl:cons ':warn (warn msg))
))
;//! \htmlinclude WarningStatus-response.msg.html

(cl:defclass <WarningStatus-response> (roslisp-msg-protocol:ros-message)
  ((resp
    :reader resp
    :initarg :resp
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass WarningStatus-response (<WarningStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WarningStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WarningStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgsrv_basic_p-srv:<WarningStatus-response> is deprecated: use msgsrv_basic_p-srv:WarningStatus-response instead.")))

(cl:ensure-generic-function 'resp-val :lambda-list '(m))
(cl:defmethod resp-val ((m <WarningStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgsrv_basic_p-srv:resp-val is deprecated.  Use msgsrv_basic_p-srv:resp instead.")
  (resp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WarningStatus-response>) ostream)
  "Serializes a message object of type '<WarningStatus-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'resp) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WarningStatus-response>) istream)
  "Deserializes a message object of type '<WarningStatus-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'resp) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WarningStatus-response>)))
  "Returns string type for a service object of type '<WarningStatus-response>"
  "msgsrv_basic_p/WarningStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WarningStatus-response)))
  "Returns string type for a service object of type 'WarningStatus-response"
  "msgsrv_basic_p/WarningStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WarningStatus-response>)))
  "Returns md5sum for a message object of type '<WarningStatus-response>"
  "e30b85c266ffbe42abf942f98a5b4797")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WarningStatus-response)))
  "Returns md5sum for a message object of type 'WarningStatus-response"
  "e30b85c266ffbe42abf942f98a5b4797")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WarningStatus-response>)))
  "Returns full string definition for message of type '<WarningStatus-response>"
  (cl:format cl:nil "std_msgs/String resp~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WarningStatus-response)))
  "Returns full string definition for message of type 'WarningStatus-response"
  (cl:format cl:nil "std_msgs/String resp~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WarningStatus-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'resp))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WarningStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WarningStatus-response
    (cl:cons ':resp (resp msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WarningStatus)))
  'WarningStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WarningStatus)))
  'WarningStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WarningStatus)))
  "Returns string type for a service object of type '<WarningStatus>"
  "msgsrv_basic_p/WarningStatus")