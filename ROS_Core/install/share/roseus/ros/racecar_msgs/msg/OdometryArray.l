;; Auto-generated. Do not edit!


(when (boundp 'racecar_msgs::OdometryArray)
  (if (not (find-package "RACECAR_MSGS"))
    (make-package "RACECAR_MSGS"))
  (shadow 'OdometryArray (find-package "RACECAR_MSGS")))
(unless (find-package "RACECAR_MSGS::ODOMETRYARRAY")
  (make-package "RACECAR_MSGS::ODOMETRYARRAY"))

(in-package "ROS")
;;//! \htmlinclude OdometryArray.msg.html
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass racecar_msgs::OdometryArray
  :super ros::object
  :slots (_header _odom_list ))

(defmethod racecar_msgs::OdometryArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:odom_list __odom_list) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _odom_list __odom_list)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:odom_list
   (&rest __odom_list)
   (if (keywordp (car __odom_list))
       (send* _odom_list __odom_list)
     (progn
       (if __odom_list (setq _odom_list (car __odom_list)))
       _odom_list)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; nav_msgs/Odometry[] _odom_list
    (apply #'+ (send-all _odom_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; nav_msgs/Odometry[] _odom_list
     (write-long (length _odom_list) s)
     (dolist (elem _odom_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; nav_msgs/Odometry[] _odom_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _odom_list (let (r) (dotimes (i n) (push (instance nav_msgs::Odometry :init) r)) r))
     (dolist (elem- _odom_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get racecar_msgs::OdometryArray :md5sum-) "00342805187f237707baa7521e98b741")
(setf (get racecar_msgs::OdometryArray :datatype-) "racecar_msgs/OdometryArray")
(setf (get racecar_msgs::OdometryArray :definition-)
      "Header header

nav_msgs/Odometry[] odom_list
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: nav_msgs/Odometry
# This represents an estimate of a position and velocity in free space.  
# The pose in this message should be specified in the coordinate frame given by header.frame_id.
# The twist in this message should be specified in the coordinate frame given by the child_frame_id
Header header
string child_frame_id
geometry_msgs/PoseWithCovariance pose
geometry_msgs/TwistWithCovariance twist

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :racecar_msgs/OdometryArray "00342805187f237707baa7521e98b741")


