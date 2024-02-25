;; Auto-generated. Do not edit!


(when (boundp 'racecar_interface::Reset)
  (if (not (find-package "RACECAR_INTERFACE"))
    (make-package "RACECAR_INTERFACE"))
  (shadow 'Reset (find-package "RACECAR_INTERFACE")))
(unless (find-package "RACECAR_INTERFACE::RESET")
  (make-package "RACECAR_INTERFACE::RESET"))
(unless (find-package "RACECAR_INTERFACE::RESETREQUEST")
  (make-package "RACECAR_INTERFACE::RESETREQUEST"))
(unless (find-package "RACECAR_INTERFACE::RESETRESPONSE")
  (make-package "RACECAR_INTERFACE::RESETRESPONSE"))

(in-package "ROS")





(defclass racecar_interface::ResetRequest
  :super ros::object
  :slots (_x _y _yaw ))

(defmethod racecar_interface::ResetRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _yaw (float __yaw))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _yaw
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass racecar_interface::ResetResponse
  :super ros::object
  :slots (_success ))

(defmethod racecar_interface::ResetResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass racecar_interface::Reset
  :super ros::object
  :slots ())

(setf (get racecar_interface::Reset :md5sum-) "4ea516c50b8e2b735013ac031a10cc9d")
(setf (get racecar_interface::Reset :datatype-) "racecar_interface/Reset")
(setf (get racecar_interface::Reset :request) racecar_interface::ResetRequest)
(setf (get racecar_interface::Reset :response) racecar_interface::ResetResponse)

(defmethod racecar_interface::ResetRequest
  (:response () (instance racecar_interface::ResetResponse :init)))

(setf (get racecar_interface::ResetRequest :md5sum-) "4ea516c50b8e2b735013ac031a10cc9d")
(setf (get racecar_interface::ResetRequest :datatype-) "racecar_interface/ResetRequest")
(setf (get racecar_interface::ResetRequest :definition-)
      "float32 x
float32 y
float32 yaw
---
bool success
")

(setf (get racecar_interface::ResetResponse :md5sum-) "4ea516c50b8e2b735013ac031a10cc9d")
(setf (get racecar_interface::ResetResponse :datatype-) "racecar_interface/ResetResponse")
(setf (get racecar_interface::ResetResponse :definition-)
      "float32 x
float32 y
float32 yaw
---
bool success
")



(provide :racecar_interface/Reset "4ea516c50b8e2b735013ac031a10cc9d")


