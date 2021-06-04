// Generated by gencpp from file arc_msgs/DetectedRobots.msg
// DO NOT EDIT!


#ifndef ARC_MSGS_MESSAGE_DETECTEDROBOTS_H
#define ARC_MSGS_MESSAGE_DETECTEDROBOTS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <arc_msgs/DetectedRobot.h>

namespace arc_msgs
{
template <class ContainerAllocator>
struct DetectedRobots_
{
  typedef DetectedRobots_<ContainerAllocator> Type;

  DetectedRobots_()
    : robots()  {
    }
  DetectedRobots_(const ContainerAllocator& _alloc)
    : robots(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::arc_msgs::DetectedRobot_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::arc_msgs::DetectedRobot_<ContainerAllocator> >::other >  _robots_type;
  _robots_type robots;





  typedef boost::shared_ptr< ::arc_msgs::DetectedRobots_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arc_msgs::DetectedRobots_<ContainerAllocator> const> ConstPtr;

}; // struct DetectedRobots_

typedef ::arc_msgs::DetectedRobots_<std::allocator<void> > DetectedRobots;

typedef boost::shared_ptr< ::arc_msgs::DetectedRobots > DetectedRobotsPtr;
typedef boost::shared_ptr< ::arc_msgs::DetectedRobots const> DetectedRobotsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::arc_msgs::DetectedRobots_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::arc_msgs::DetectedRobots_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::arc_msgs::DetectedRobots_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arc_msgs::DetectedRobots_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arc_msgs::DetectedRobots_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arc_msgs::DetectedRobots_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arc_msgs::DetectedRobots_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arc_msgs::DetectedRobots_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::arc_msgs::DetectedRobots_<ContainerAllocator> >
{
  static const char* value()
  {
    return "620e76eebd9864092c079930b5b956dd";
  }

  static const char* value(const ::arc_msgs::DetectedRobots_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x620e76eebd986409ULL;
  static const uint64_t static_value2 = 0x2c079930b5b956ddULL;
};

template<class ContainerAllocator>
struct DataType< ::arc_msgs::DetectedRobots_<ContainerAllocator> >
{
  static const char* value()
  {
    return "arc_msgs/DetectedRobots";
  }

  static const char* value(const ::arc_msgs::DetectedRobots_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::arc_msgs::DetectedRobots_<ContainerAllocator> >
{
  static const char* value()
  {
    return "arc_msgs/DetectedRobot[] robots		#list of the robots detected\n\
\n\
================================================================================\n\
MSG: arc_msgs/DetectedRobot\n\
#This is the detection info of a robot in arc. There is no transform info/ie we assume this detection takes place from a current robots perspective (ie base_link)\n\
int32 robot_id		#id of the robot\n\
geometry_msgs/Pose pose	#Position of the detected robot.\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::arc_msgs::DetectedRobots_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::arc_msgs::DetectedRobots_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.robots);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DetectedRobots_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arc_msgs::DetectedRobots_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::arc_msgs::DetectedRobots_<ContainerAllocator>& v)
  {
    s << indent << "robots[]" << std::endl;
    for (size_t i = 0; i < v.robots.size(); ++i)
    {
      s << indent << "  robots[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::arc_msgs::DetectedRobot_<ContainerAllocator> >::stream(s, indent + "    ", v.robots[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ARC_MSGS_MESSAGE_DETECTEDROBOTS_H