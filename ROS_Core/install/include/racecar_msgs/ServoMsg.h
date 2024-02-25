// Generated by gencpp from file racecar_msgs/ServoMsg.msg
// DO NOT EDIT!


#ifndef RACECAR_MSGS_MESSAGE_SERVOMSG_H
#define RACECAR_MSGS_MESSAGE_SERVOMSG_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace racecar_msgs
{
template <class ContainerAllocator>
struct ServoMsg_
{
  typedef ServoMsg_<ContainerAllocator> Type;

  ServoMsg_()
    : header()
    , throttle(0.0)
    , steer(0.0)
    , reverse(false)  {
    }
  ServoMsg_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , throttle(0.0)
    , steer(0.0)
    , reverse(false)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _throttle_type;
  _throttle_type throttle;

   typedef double _steer_type;
  _steer_type steer;

   typedef uint8_t _reverse_type;
  _reverse_type reverse;





  typedef boost::shared_ptr< ::racecar_msgs::ServoMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::racecar_msgs::ServoMsg_<ContainerAllocator> const> ConstPtr;

}; // struct ServoMsg_

typedef ::racecar_msgs::ServoMsg_<std::allocator<void> > ServoMsg;

typedef boost::shared_ptr< ::racecar_msgs::ServoMsg > ServoMsgPtr;
typedef boost::shared_ptr< ::racecar_msgs::ServoMsg const> ServoMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::racecar_msgs::ServoMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::racecar_msgs::ServoMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::racecar_msgs::ServoMsg_<ContainerAllocator1> & lhs, const ::racecar_msgs::ServoMsg_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.throttle == rhs.throttle &&
    lhs.steer == rhs.steer &&
    lhs.reverse == rhs.reverse;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::racecar_msgs::ServoMsg_<ContainerAllocator1> & lhs, const ::racecar_msgs::ServoMsg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace racecar_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::racecar_msgs::ServoMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::racecar_msgs::ServoMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::racecar_msgs::ServoMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::racecar_msgs::ServoMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::racecar_msgs::ServoMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::racecar_msgs::ServoMsg_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::racecar_msgs::ServoMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1e2df9a7e4172c5ca3d899a1b7385af8";
  }

  static const char* value(const ::racecar_msgs::ServoMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1e2df9a7e4172c5cULL;
  static const uint64_t static_value2 = 0xa3d899a1b7385af8ULL;
};

template<class ContainerAllocator>
struct DataType< ::racecar_msgs::ServoMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "racecar_msgs/ServoMsg";
  }

  static const char* value(const ::racecar_msgs::ServoMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::racecar_msgs::ServoMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"\n"
"# One paddle drive, range -1 to 1, 1 is max throttle, -1 is max brake\n"
"float64 throttle\n"
"\n"
"# Range -1 to +1, +1 is maximum left turn\n"
"float64 steer\n"
"\n"
"# define gear_mode True for reverse\n"
"bool reverse\n"
"\n"
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
;
  }

  static const char* value(const ::racecar_msgs::ServoMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::racecar_msgs::ServoMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.throttle);
      stream.next(m.steer);
      stream.next(m.reverse);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ServoMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::racecar_msgs::ServoMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::racecar_msgs::ServoMsg_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "throttle: ";
    Printer<double>::stream(s, indent + "  ", v.throttle);
    s << indent << "steer: ";
    Printer<double>::stream(s, indent + "  ", v.steer);
    s << indent << "reverse: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.reverse);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RACECAR_MSGS_MESSAGE_SERVOMSG_H