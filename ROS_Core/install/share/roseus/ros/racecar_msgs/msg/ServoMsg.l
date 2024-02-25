;; Auto-generated. Do not edit!


(when (boundp 'racecar_msgs::ServoMsg)
  (if (not (find-package "RACECAR_MSGS"))
    (make-package "RACECAR_MSGS"))
  (shadow 'ServoMsg (find-package "RACECAR_MSGS")))
(unless (find-package "RACECAR_MSGS::SERVOMSG")
  (make-package "RACECAR_MSGS::SERVOMSG"))

(in-package "ROS")
;;//! \htmlinclude ServoMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass racecar_msgs::ServoMsg
  :super ros::object
  :slots (_header _throttle _steer _reverse ))

(defmethod racecar_msgs::ServoMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:throttle __throttle) 0.0)
    ((:steer __steer) 0.0)
    ((:reverse __reverse) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _throttle (float __throttle))
   (setq _steer (float __steer))
   (setq _reverse __reverse)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:throttle
   (&optional __throttle)
   (if __throttle (setq _throttle __throttle)) _throttle)
  (:steer
   (&optional __steer)
   (if __steer (setq _steer __steer)) _steer)
  (:reverse
   (&optional (__reverse :null))
   (if (not (eq __reverse :null)) (setq _reverse __reverse)) _reverse)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _throttle
    8
    ;; float64 _steer
    8
    ;; bool _reverse
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _throttle
       (sys::poke _throttle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _steer
       (sys::poke _steer (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _reverse
       (if _reverse (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _throttle
     (setq _throttle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steer
     (setq _steer (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _reverse
     (setq _reverse (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get racecar_msgs::ServoMsg :md5sum-) "1e2df9a7e4172c5ca3d899a1b7385af8")
(setf (get racecar_msgs::ServoMsg :datatype-) "racecar_msgs/ServoMsg")
(setf (get racecar_msgs::ServoMsg :definition-)
      "Header header

# One paddle drive, range -1 to 1, 1 is max throttle, -1 is max brake
float64 throttle

# Range -1 to +1, +1 is maximum left turn
float64 steer

# define gear_mode True for reverse
bool reverse

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

")



(provide :racecar_msgs/ServoMsg "1e2df9a7e4172c5ca3d899a1b7385af8")


