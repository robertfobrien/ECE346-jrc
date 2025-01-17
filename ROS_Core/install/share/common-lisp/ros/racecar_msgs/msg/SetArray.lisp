; Auto-generated. Do not edit!


(cl:in-package racecar_msgs-msg)


;//! \htmlinclude SetArray.msg.html

(cl:defclass <SetArray> (roslisp-msg-protocol:ros-message)
  ((set_list
    :reader set_list
    :initarg :set_list
    :type (cl:vector geometry_msgs-msg:Polygon)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Polygon :initial-element (cl:make-instance 'geometry_msgs-msg:Polygon))))
)

(cl:defclass SetArray (<SetArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name racecar_msgs-msg:<SetArray> is deprecated: use racecar_msgs-msg:SetArray instead.")))

(cl:ensure-generic-function 'set_list-val :lambda-list '(m))
(cl:defmethod set_list-val ((m <SetArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader racecar_msgs-msg:set_list-val is deprecated.  Use racecar_msgs-msg:set_list instead.")
  (set_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetArray>) ostream)
  "Serializes a message object of type '<SetArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'set_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'set_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetArray>) istream)
  "Deserializes a message object of type '<SetArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'set_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'set_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Polygon))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetArray>)))
  "Returns string type for a message object of type '<SetArray>"
  "racecar_msgs/SetArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetArray)))
  "Returns string type for a message object of type 'SetArray"
  "racecar_msgs/SetArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetArray>)))
  "Returns md5sum for a message object of type '<SetArray>"
  "77d2e907d44e8d702f6689ff05db06d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetArray)))
  "Returns md5sum for a message object of type 'SetArray"
  "77d2e907d44e8d702f6689ff05db06d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetArray>)))
  "Returns full string definition for message of type '<SetArray>"
  (cl:format cl:nil "geometry_msgs/Polygon[] set_list~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetArray)))
  "Returns full string definition for message of type 'SetArray"
  (cl:format cl:nil "geometry_msgs/Polygon[] set_list~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'set_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetArray>))
  "Converts a ROS message object to a list"
  (cl:list 'SetArray
    (cl:cons ':set_list (set_list msg))
))
