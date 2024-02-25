;; Auto-generated. Do not edit!


(when (boundp 'racecar_interface::ResetObstacle)
  (if (not (find-package "RACECAR_INTERFACE"))
    (make-package "RACECAR_INTERFACE"))
  (shadow 'ResetObstacle (find-package "RACECAR_INTERFACE")))
(unless (find-package "RACECAR_INTERFACE::RESETOBSTACLE")
  (make-package "RACECAR_INTERFACE::RESETOBSTACLE"))
(unless (find-package "RACECAR_INTERFACE::RESETOBSTACLEREQUEST")
  (make-package "RACECAR_INTERFACE::RESETOBSTACLEREQUEST"))
(unless (find-package "RACECAR_INTERFACE::RESETOBSTACLERESPONSE")
  (make-package "RACECAR_INTERFACE::RESETOBSTACLERESPONSE"))

(in-package "ROS")





(defclass racecar_interface::ResetObstacleRequest
  :super ros::object
  :slots (_n ))

(defmethod racecar_interface::ResetObstacleRequest
  (:init
   (&key
    ((:n __n) 0)
    )
   (send-super :init)
   (setq _n (round __n))
   self)
  (:n
   (&optional __n)
   (if __n (setq _n __n)) _n)
  (:serialization-length
   ()
   (+
    ;; int32 _n
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _n
       (write-long _n s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _n
     (setq _n (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass racecar_interface::ResetObstacleResponse
  :super ros::object
  :slots (_success ))

(defmethod racecar_interface::ResetObstacleResponse
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

(defclass racecar_interface::ResetObstacle
  :super ros::object
  :slots ())

(setf (get racecar_interface::ResetObstacle :md5sum-) "69bb0bdd6e8b3cda2ae51bcc011a37d3")
(setf (get racecar_interface::ResetObstacle :datatype-) "racecar_interface/ResetObstacle")
(setf (get racecar_interface::ResetObstacle :request) racecar_interface::ResetObstacleRequest)
(setf (get racecar_interface::ResetObstacle :response) racecar_interface::ResetObstacleResponse)

(defmethod racecar_interface::ResetObstacleRequest
  (:response () (instance racecar_interface::ResetObstacleResponse :init)))

(setf (get racecar_interface::ResetObstacleRequest :md5sum-) "69bb0bdd6e8b3cda2ae51bcc011a37d3")
(setf (get racecar_interface::ResetObstacleRequest :datatype-) "racecar_interface/ResetObstacleRequest")
(setf (get racecar_interface::ResetObstacleRequest :definition-)
      "int32 n
---
bool success
")

(setf (get racecar_interface::ResetObstacleResponse :md5sum-) "69bb0bdd6e8b3cda2ae51bcc011a37d3")
(setf (get racecar_interface::ResetObstacleResponse :datatype-) "racecar_interface/ResetObstacleResponse")
(setf (get racecar_interface::ResetObstacleResponse :definition-)
      "int32 n
---
bool success
")



(provide :racecar_interface/ResetObstacle "69bb0bdd6e8b3cda2ae51bcc011a37d3")


