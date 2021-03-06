// Generated by gencpp from file arc_msgs/ArcTaskGoal.msg
// DO NOT EDIT!


#ifndef ARC_MSGS_MESSAGE_ARCTASKGOAL_H
#define ARC_MSGS_MESSAGE_ARCTASKGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <dynamic_reconfigure/Config.h>

namespace arc_msgs
{
template <class ContainerAllocator>
struct ArcTaskGoal_
{
  typedef ArcTaskGoal_<ContainerAllocator> Type;

  ArcTaskGoal_()
    : task_id(0)
    , parameters()  {
    }
  ArcTaskGoal_(const ContainerAllocator& _alloc)
    : task_id(0)
    , parameters(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _task_id_type;
  _task_id_type task_id;

   typedef  ::dynamic_reconfigure::Config_<ContainerAllocator>  _parameters_type;
  _parameters_type parameters;





  typedef boost::shared_ptr< ::arc_msgs::ArcTaskGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arc_msgs::ArcTaskGoal_<ContainerAllocator> const> ConstPtr;

}; // struct ArcTaskGoal_

typedef ::arc_msgs::ArcTaskGoal_<std::allocator<void> > ArcTaskGoal;

typedef boost::shared_ptr< ::arc_msgs::ArcTaskGoal > ArcTaskGoalPtr;
typedef boost::shared_ptr< ::arc_msgs::ArcTaskGoal const> ArcTaskGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::arc_msgs::ArcTaskGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::arc_msgs::ArcTaskGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace arc_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'dynamic_reconfigure': ['/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../msg'], 'arc_msgs': ['/home/mute/workspace/arc_ws/src/arc_ros/arc_msgs/msg', '/home/mute/workspace/arc_ws/devel/share/arc_msgs/msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::arc_msgs::ArcTaskGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arc_msgs::ArcTaskGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arc_msgs::ArcTaskGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arc_msgs::ArcTaskGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arc_msgs::ArcTaskGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arc_msgs::ArcTaskGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::arc_msgs::ArcTaskGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e4281041aa2e71259737eb7287e98ac4";
  }

  static const char* value(const ::arc_msgs::ArcTaskGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe4281041aa2e7125ULL;
  static const uint64_t static_value2 = 0x9737eb7287e98ac4ULL;
};

template<class ContainerAllocator>
struct DataType< ::arc_msgs::ArcTaskGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "arc_msgs/ArcTaskGoal";
  }

  static const char* value(const ::arc_msgs::ArcTaskGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::arc_msgs::ArcTaskGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#Any task being done by the Task Handler will have the form of this action. This is essentially the TaskRequest.msg except trimmed down to only include parameters. the TaskHandler doesn't care about a tasks id and status, just the task to be done and the info regarding it.\n\
\n\
#Goal parameters. Specified at runtime. If you are trying to pass complex data to a task (list of points/etc), you will have to encode it as a string, or however you'd like.\n\
int32 task_id\n\
dynamic_reconfigure/Config parameters\n\
\n\
================================================================================\n\
MSG: dynamic_reconfigure/Config\n\
BoolParameter[] bools\n\
IntParameter[] ints\n\
StrParameter[] strs\n\
DoubleParameter[] doubles\n\
GroupState[] groups\n\
\n\
================================================================================\n\
MSG: dynamic_reconfigure/BoolParameter\n\
string name\n\
bool value\n\
\n\
================================================================================\n\
MSG: dynamic_reconfigure/IntParameter\n\
string name\n\
int32 value\n\
\n\
================================================================================\n\
MSG: dynamic_reconfigure/StrParameter\n\
string name\n\
string value\n\
\n\
================================================================================\n\
MSG: dynamic_reconfigure/DoubleParameter\n\
string name\n\
float64 value\n\
\n\
================================================================================\n\
MSG: dynamic_reconfigure/GroupState\n\
string name\n\
bool state\n\
int32 id\n\
int32 parent\n\
";
  }

  static const char* value(const ::arc_msgs::ArcTaskGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::arc_msgs::ArcTaskGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.task_id);
      stream.next(m.parameters);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ArcTaskGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arc_msgs::ArcTaskGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::arc_msgs::ArcTaskGoal_<ContainerAllocator>& v)
  {
    s << indent << "task_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.task_id);
    s << indent << "parameters: ";
    s << std::endl;
    Printer< ::dynamic_reconfigure::Config_<ContainerAllocator> >::stream(s, indent + "  ", v.parameters);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ARC_MSGS_MESSAGE_ARCTASKGOAL_H
