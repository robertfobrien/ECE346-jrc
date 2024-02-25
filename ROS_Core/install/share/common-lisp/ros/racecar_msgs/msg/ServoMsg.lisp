; Auto-generated. Do not edit!


(cl:in-package racecar_msgs-msg)


;//! \htmlinclude ServoMsg.msg.html

(cl:defclass <ServoMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (throttle
    :reader throttle
    :initarg :throttle
    :type cl:float
    :initform 0.0)
   (steer
    :reader steer
    :initarg :steer
    :type cl:float
    :initform 0.0)
   (reverse
    :reader reverse
    :initarg :reverse
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ServoMsg (<ServoMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name racecar_msgs-msg:<ServoMsg> is deprecated: use racecar_msgs-msg:ServoMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ServoMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader racecar_msgs-msg:header-val is deprecated.  Use racecar_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'throttle-val :lambda-list '(m))
(cl:defmethod throttle-val ((m <ServoMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader racecar_msgs-msg:throttle-val is deprecated.  Use racecar_msgs-msg:throttle instead.")
  (throttle m))

(cl:ensure-generic-function 'steer-val :lambda-list '(m))
(cl:defmethod steer-val ((m <ServoMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader racecar_msgs-msg:steer-val is deprecated.  Use racecar_msgs-msg:steer instead.")
  (steer m))

(cl:ensure-generic-function 'reverse-val :lambda-list '(m))
(cl:defmethod reverse-val ((m <ServoMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader racecar_msgs-msg:reverse-val is deprecated.  Use racecar_msgs-msg:reverse instead.")
  (reverse m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoMsg>) ostream)
  "Serializes a message object of type '<ServoMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'throttle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reverse) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoMsg>) istream)
  "Deserializes a message object of type '<ServoMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steer) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'reverse) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoMsg>)))
  "Returns string type for a message object of type '<ServoMsg>"
  "racecar_msgs/ServoMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoMsg)))
  "Returns string type for a message object of type 'ServoMsg"
  "racecar_msgs/ServoMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoMsg>)))
  "Returns md5sum for a message object of type '<ServoMsg>"
  "1e2df9a7e4172c5ca3d899a1b7385af8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoMsg)))
  "Returns md5sum for a message object of type 'ServoMsg"
  "1e2df9a7e4172c5ca3d899a1b7385af8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoMsg>)))
  "Returns full string definition for message of type '<ServoMsg>"
  (cl:format cl:nil "Header header~%~%# One paddle drive, range -1 to 1, 1 is max throttle, -1 is max brake~%float64 throttle~%~%# Range -1 to +1, +1 is maximum left turn~%float64 steer~%~%# define gear_mode True for reverse~%bool reverse~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoMsg)))
  "Returns full string definition for message of type 'ServoMsg"
  (cl:format cl:nil "Header header~%~%# One paddle drive, range -1 to 1, 1 is max throttle, -1 is max brake~%float64 throttle~%~%# Range -1 to +1, +1 is maximum left turn~%float64 steer~%~%# define gear_mode True for reverse~%bool reverse~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoMsg
    (cl:cons ':header (header msg))
    (cl:cons ':throttle (throttle msg))
    (cl:cons ':steer (steer msg))
    (cl:cons ':reverse (reverse msg))
))
