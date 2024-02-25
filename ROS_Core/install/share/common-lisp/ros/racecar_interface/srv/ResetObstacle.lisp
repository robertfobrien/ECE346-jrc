; Auto-generated. Do not edit!


(cl:in-package racecar_interface-srv)


;//! \htmlinclude ResetObstacle-request.msg.html

(cl:defclass <ResetObstacle-request> (roslisp-msg-protocol:ros-message)
  ((n
    :reader n
    :initarg :n
    :type cl:integer
    :initform 0))
)

(cl:defclass ResetObstacle-request (<ResetObstacle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetObstacle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetObstacle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name racecar_interface-srv:<ResetObstacle-request> is deprecated: use racecar_interface-srv:ResetObstacle-request instead.")))

(cl:ensure-generic-function 'n-val :lambda-list '(m))
(cl:defmethod n-val ((m <ResetObstacle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader racecar_interface-srv:n-val is deprecated.  Use racecar_interface-srv:n instead.")
  (n m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetObstacle-request>) ostream)
  "Serializes a message object of type '<ResetObstacle-request>"
  (cl:let* ((signed (cl:slot-value msg 'n)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetObstacle-request>) istream)
  "Deserializes a message object of type '<ResetObstacle-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'n) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetObstacle-request>)))
  "Returns string type for a service object of type '<ResetObstacle-request>"
  "racecar_interface/ResetObstacleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetObstacle-request)))
  "Returns string type for a service object of type 'ResetObstacle-request"
  "racecar_interface/ResetObstacleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetObstacle-request>)))
  "Returns md5sum for a message object of type '<ResetObstacle-request>"
  "69bb0bdd6e8b3cda2ae51bcc011a37d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetObstacle-request)))
  "Returns md5sum for a message object of type 'ResetObstacle-request"
  "69bb0bdd6e8b3cda2ae51bcc011a37d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetObstacle-request>)))
  "Returns full string definition for message of type '<ResetObstacle-request>"
  (cl:format cl:nil "int32 n~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetObstacle-request)))
  "Returns full string definition for message of type 'ResetObstacle-request"
  (cl:format cl:nil "int32 n~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetObstacle-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetObstacle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetObstacle-request
    (cl:cons ':n (n msg))
))
;//! \htmlinclude ResetObstacle-response.msg.html

(cl:defclass <ResetObstacle-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ResetObstacle-response (<ResetObstacle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetObstacle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetObstacle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name racecar_interface-srv:<ResetObstacle-response> is deprecated: use racecar_interface-srv:ResetObstacle-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ResetObstacle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader racecar_interface-srv:success-val is deprecated.  Use racecar_interface-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetObstacle-response>) ostream)
  "Serializes a message object of type '<ResetObstacle-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetObstacle-response>) istream)
  "Deserializes a message object of type '<ResetObstacle-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetObstacle-response>)))
  "Returns string type for a service object of type '<ResetObstacle-response>"
  "racecar_interface/ResetObstacleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetObstacle-response)))
  "Returns string type for a service object of type 'ResetObstacle-response"
  "racecar_interface/ResetObstacleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetObstacle-response>)))
  "Returns md5sum for a message object of type '<ResetObstacle-response>"
  "69bb0bdd6e8b3cda2ae51bcc011a37d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetObstacle-response)))
  "Returns md5sum for a message object of type 'ResetObstacle-response"
  "69bb0bdd6e8b3cda2ae51bcc011a37d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetObstacle-response>)))
  "Returns full string definition for message of type '<ResetObstacle-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetObstacle-response)))
  "Returns full string definition for message of type 'ResetObstacle-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetObstacle-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetObstacle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetObstacle-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ResetObstacle)))
  'ResetObstacle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ResetObstacle)))
  'ResetObstacle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetObstacle)))
  "Returns string type for a service object of type '<ResetObstacle>"
  "racecar_interface/ResetObstacle")