// Generated by gencpp from file arc_msgs/QuerryRoleRequest.msg
// DO NOT EDIT!


#ifndef ARC_MSGS_MESSAGE_QUERRYROLEREQUEST_H
#define ARC_MSGS_MESSAGE_QUERRYROLEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace arc_msgs
{
template <class ContainerAllocator>
struct QuerryRoleRequest_
{
  typedef QuerryRoleRequest_<ContainerAllocator> Type;

  QuerryRoleRequest_()
    : bot_type(0)  {
    }
  QuerryRoleRequest_(const ContainerAllocator& _alloc)
    : bot_type(0)  {
  (void)_alloc;
    }



   typedef int32_t _bot_type_type;
  _bot_type_type bot_type;





  typedef boost::shared_ptr< ::arc_msgs::QuerryRoleRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arc_msgs::QuerryRoleRequest_<ContainerAllocator> const> ConstPtr;

}; // struct QuerryRoleRequest_

typedef ::arc_msgs::QuerryRoleRequest_<std::allocator<void> > QuerryRoleRequest;

typedef boost::shared_ptr< ::arc_msgs::QuerryRoleRequest > QuerryRoleRequestPtr;
typedef boost::shared_ptr< ::arc_msgs::QuerryRoleRequest const> QuerryRoleRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::arc_msgs::QuerryRoleRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::arc_msgs::QuerryRoleRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace arc_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'dynamic_reconfigure': ['/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg'], 'arc_msgs': ['/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg', '/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::arc_msgs::QuerryRoleRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arc_msgs::QuerryRoleRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arc_msgs::QuerryRoleRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arc_msgs::QuerryRoleRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arc_msgs::QuerryRoleRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arc_msgs::QuerryRoleRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::arc_msgs::QuerryRoleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "246d3a9fde167f7177ef071a7b28f1f2";
  }

  static const char* value(const ::arc_msgs::QuerryRoleRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x246d3a9fde167f71ULL;
  static const uint64_t static_value2 = 0x77ef071a7b28f1f2ULL;
};

template<class ContainerAllocator>
struct DataType< ::arc_msgs::QuerryRoleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "arc_msgs/QuerryRoleRequest";
  }

  static const char* value(const ::arc_msgs::QuerryRoleRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::arc_msgs::QuerryRoleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 bot_type\n\
";
  }

  static const char* value(const ::arc_msgs::QuerryRoleRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::arc_msgs::QuerryRoleRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.bot_type);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct QuerryRoleRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arc_msgs::QuerryRoleRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::arc_msgs::QuerryRoleRequest_<ContainerAllocator>& v)
  {
    s << indent << "bot_type: ";
    Printer<int32_t>::stream(s, indent + "  ", v.bot_type);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ARC_MSGS_MESSAGE_QUERRYROLEREQUEST_H
