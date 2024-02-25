// Generated by gencpp from file racecar_interface/ResetObstacleResponse.msg
// DO NOT EDIT!


#ifndef RACECAR_INTERFACE_MESSAGE_RESETOBSTACLERESPONSE_H
#define RACECAR_INTERFACE_MESSAGE_RESETOBSTACLERESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace racecar_interface
{
template <class ContainerAllocator>
struct ResetObstacleResponse_
{
  typedef ResetObstacleResponse_<ContainerAllocator> Type;

  ResetObstacleResponse_()
    : success(false)  {
    }
  ResetObstacleResponse_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::racecar_interface::ResetObstacleResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::racecar_interface::ResetObstacleResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ResetObstacleResponse_

typedef ::racecar_interface::ResetObstacleResponse_<std::allocator<void> > ResetObstacleResponse;

typedef boost::shared_ptr< ::racecar_interface::ResetObstacleResponse > ResetObstacleResponsePtr;
typedef boost::shared_ptr< ::racecar_interface::ResetObstacleResponse const> ResetObstacleResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::racecar_interface::ResetObstacleResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::racecar_interface::ResetObstacleResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::racecar_interface::ResetObstacleResponse_<ContainerAllocator1> & lhs, const ::racecar_interface::ResetObstacleResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::racecar_interface::ResetObstacleResponse_<ContainerAllocator1> & lhs, const ::racecar_interface::ResetObstacleResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace racecar_interface

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::racecar_interface::ResetObstacleResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::racecar_interface::ResetObstacleResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::racecar_interface::ResetObstacleResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::racecar_interface::ResetObstacleResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::racecar_interface::ResetObstacleResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::racecar_interface::ResetObstacleResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::racecar_interface::ResetObstacleResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::racecar_interface::ResetObstacleResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::racecar_interface::ResetObstacleResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "racecar_interface/ResetObstacleResponse";
  }

  static const char* value(const ::racecar_interface::ResetObstacleResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::racecar_interface::ResetObstacleResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
;
  }

  static const char* value(const ::racecar_interface::ResetObstacleResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::racecar_interface::ResetObstacleResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ResetObstacleResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::racecar_interface::ResetObstacleResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::racecar_interface::ResetObstacleResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RACECAR_INTERFACE_MESSAGE_RESETOBSTACLERESPONSE_H