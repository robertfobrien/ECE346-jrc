;; Auto-generated. Do not edit!


(when (boundp 'racecar_msgs::SetArray)
  (if (not (find-package "RACECAR_MSGS"))
    (make-package "RACECAR_MSGS"))
  (shadow 'SetArray (find-package "RACECAR_MSGS")))
(unless (find-package "RACECAR_MSGS::SETARRAY")
  (make-package "RACECAR_MSGS::SETARRAY"))

(in-package "ROS")
;;//! \htmlinclude SetArray.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass racecar_msgs::SetArray
  :super ros::object
  :slots (_set_list ))

(defmethod racecar_msgs::SetArray
  (:init
   (&key
    ((:set_list __set_list) ())
    )
   (send-super :init)
   (setq _set_list __set_list)
   self)
  (:set_list
   (&rest __set_list)
   (if (keywordp (car __set_list))
       (send* _set_list __set_list)
     (progn
       (if __set_list (setq _set_list (car __set_list)))
       _set_list)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Polygon[] _set_list
    (apply #'+ (send-all _set_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Polygon[] _set_list
     (write-long (length _set_list) s)
     (dolist (elem _set_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Polygon[] _set_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _set_list (let (r) (dotimes (i n) (push (instance geometry_msgs::Polygon :init) r)) r))
     (dolist (elem- _set_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get racecar_msgs::SetArray :md5sum-) "77d2e907d44e8d702f6689ff05db06d9")
(setf (get racecar_msgs::SetArray :datatype-) "racecar_msgs/SetArray")
(setf (get racecar_msgs::SetArray :definition-)
      "geometry_msgs/Polygon[] set_list
================================================================================
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :racecar_msgs/SetArray "77d2e907d44e8d702f6689ff05db06d9")


