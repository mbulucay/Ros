// Generated by gencpp from file msgsrv_basic_p/WarningStatusResponse.msg
// DO NOT EDIT!


#ifndef MSGSRV_BASIC_P_MESSAGE_WARNINGSTATUSRESPONSE_H
#define MSGSRV_BASIC_P_MESSAGE_WARNINGSTATUSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/String.h>

namespace msgsrv_basic_p
{
template <class ContainerAllocator>
struct WarningStatusResponse_
{
  typedef WarningStatusResponse_<ContainerAllocator> Type;

  WarningStatusResponse_()
    : resp()  {
    }
  WarningStatusResponse_(const ContainerAllocator& _alloc)
    : resp(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::String_<ContainerAllocator>  _resp_type;
  _resp_type resp;





  typedef boost::shared_ptr< ::msgsrv_basic_p::WarningStatusResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::msgsrv_basic_p::WarningStatusResponse_<ContainerAllocator> const> ConstPtr;

}; // struct WarningStatusResponse_

typedef ::msgsrv_basic_p::WarningStatusResponse_<std::allocator<void> > WarningStatusResponse;

typedef boost::shared_ptr< ::msgsrv_basic_p::WarningStatusResponse > WarningStatusResponsePtr;
typedef boost::shared_ptr< ::msgsrv_basic_p::WarningStatusResponse const> WarningStatusResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::msgsrv_basic_p::WarningStatusResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::msgsrv_basic_p::WarningStatusResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::msgsrv_basic_p::WarningStatusResponse_<ContainerAllocator1> & lhs, const ::msgsrv_basic_p::WarningStatusResponse_<ContainerAllocator2> & rhs)
{
  return lhs.resp == rhs.resp;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::msgsrv_basic_p::WarningStatusResponse_<ContainerAllocator1> & lhs, const ::msgsrv_basic_p::WarningStatusResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace msgsrv_basic_p

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::msgsrv_basic_p::WarningStatusResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msgsrv_basic_p::WarningStatusResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::msgsrv_basic_p::WarningStatusResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::msgsrv_basic_p::WarningStatusResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msgsrv_basic_p::WarningStatusResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msgsrv_basic_p::WarningStatusResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::msgsrv_basic_p::WarningStatusResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5fa7ad3d433a72e124bf705aa8bfdd40";
  }

  static const char* value(const ::msgsrv_basic_p::WarningStatusResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5fa7ad3d433a72e1ULL;
  static const uint64_t static_value2 = 0x24bf705aa8bfdd40ULL;
};

template<class ContainerAllocator>
struct DataType< ::msgsrv_basic_p::WarningStatusResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "msgsrv_basic_p/WarningStatusResponse";
  }

  static const char* value(const ::msgsrv_basic_p::WarningStatusResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::msgsrv_basic_p::WarningStatusResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/String resp\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/String\n"
"string data\n"
;
  }

  static const char* value(const ::msgsrv_basic_p::WarningStatusResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::msgsrv_basic_p::WarningStatusResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.resp);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WarningStatusResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::msgsrv_basic_p::WarningStatusResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::msgsrv_basic_p::WarningStatusResponse_<ContainerAllocator>& v)
  {
    s << indent << "resp: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.resp);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MSGSRV_BASIC_P_MESSAGE_WARNINGSTATUSRESPONSE_H
