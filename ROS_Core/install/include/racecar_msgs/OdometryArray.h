// Generated by gencpp from file racecar_msgs/OdometryArray.msg
// DO NOT EDIT!


#ifndef RACECAR_MSGS_MESSAGE_ODOMETRYARRAY_H
#define RACECAR_MSGS_MESSAGE_ODOMETRYARRAY_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <nav_msgs/Odometry.h>

namespace racecar_msgs
{
template <class ContainerAllocator>
struct OdometryArray_
{
  typedef OdometryArray_<ContainerAllocator> Type;

  OdometryArray_()
    : header()
    , odom_list()  {
    }
  OdometryArray_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , odom_list(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::nav_msgs::Odometry_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::nav_msgs::Odometry_<ContainerAllocator> >> _odom_list_type;
  _odom_list_type odom_list;





  typedef boost::shared_ptr< ::racecar_msgs::OdometryArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::racecar_msgs::OdometryArray_<ContainerAllocator> const> ConstPtr;

}; // struct OdometryArray_

typedef ::racecar_msgs::OdometryArray_<std::allocator<void> > OdometryArray;

typedef boost::shared_ptr< ::racecar_msgs::OdometryArray > OdometryArrayPtr;
typedef boost::shared_ptr< ::racecar_msgs::OdometryArray const> OdometryArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::racecar_msgs::OdometryArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::racecar_msgs::OdometryArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::racecar_msgs::OdometryArray_<ContainerAllocator1> & lhs, const ::racecar_msgs::OdometryArray_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.odom_list == rhs.odom_list;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::racecar_msgs::OdometryArray_<ContainerAllocator1> & lhs, const ::racecar_msgs::OdometryArray_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace racecar_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::racecar_msgs::OdometryArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::racecar_msgs::OdometryArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::racecar_msgs::OdometryArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::racecar_msgs::OdometryArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::racecar_msgs::OdometryArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::racecar_msgs::OdometryArray_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::racecar_msgs::OdometryArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "00342805187f237707baa7521e98b741";
  }

  static const char* value(const ::racecar_msgs::OdometryArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x00342805187f2377ULL;
  static const uint64_t static_value2 = 0x07baa7521e98b741ULL;
};

template<class ContainerAllocator>
struct DataType< ::racecar_msgs::OdometryArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "racecar_msgs/OdometryArray";
  }

  static const char* value(const ::racecar_msgs::OdometryArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::racecar_msgs::OdometryArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"\n"
"nav_msgs/Odometry[] odom_list\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: nav_msgs/Odometry\n"
"# This represents an estimate of a position and velocity in free space.  \n"
"# The pose in this message should be specified in the coordinate frame given by header.frame_id.\n"
"# The twist in this message should be specified in the coordinate frame given by the child_frame_id\n"
"Header header\n"
"string child_frame_id\n"
"geometry_msgs/PoseWithCovariance pose\n"
"geometry_msgs/TwistWithCovariance twist\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseWithCovariance\n"
"# This represents a pose in free space with uncertainty.\n"
"\n"
"Pose pose\n"
"\n"
"# Row-major representation of the 6x6 covariance matrix\n"
"# The orientation parameters use a fixed-axis representation.\n"
"# In order, the parameters are:\n"
"# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n"
"float64[36] covariance\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/TwistWithCovariance\n"
"# This expresses velocity in free space with uncertainty.\n"
"\n"
"Twist twist\n"
"\n"
"# Row-major representation of the 6x6 covariance matrix\n"
"# The orientation parameters use a fixed-axis representation.\n"
"# In order, the parameters are:\n"
"# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n"
"float64[36] covariance\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::racecar_msgs::OdometryArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::racecar_msgs::OdometryArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.odom_list);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OdometryArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::racecar_msgs::OdometryArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::racecar_msgs::OdometryArray_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "odom_list[]" << std::endl;
    for (size_t i = 0; i < v.odom_list.size(); ++i)
    {
      s << indent << "  odom_list[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::nav_msgs::Odometry_<ContainerAllocator> >::stream(s, indent + "    ", v.odom_list[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // RACECAR_MSGS_MESSAGE_ODOMETRYARRAY_H
