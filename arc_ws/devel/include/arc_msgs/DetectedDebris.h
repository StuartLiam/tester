// Generated by gencpp from file arc_msgs/DetectedDebris.msg
// DO NOT EDIT!


#ifndef ARC_MSGS_MESSAGE_DETECTEDDEBRIS_H
#define ARC_MSGS_MESSAGE_DETECTEDDEBRIS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <arc_msgs/Debris.h>

namespace arc_msgs
{
template <class ContainerAllocator>
struct DetectedDebris_
{
  typedef DetectedDebris_<ContainerAllocator> Type;

  DetectedDebris_()
    : debris()  {
    }
  DetectedDebris_(const ContainerAllocator& _alloc)
    : debris(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::arc_msgs::Debris_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::arc_msgs::Debris_<ContainerAllocator> >::other >  _debris_type;
  _debris_type debris;





  typedef boost::shared_ptr< ::arc_msgs::DetectedDebris_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arc_msgs::DetectedDebris_<ContainerAllocator> const> ConstPtr;

}; // struct DetectedDebris_

typedef ::arc_msgs::DetectedDebris_<std::allocator<void> > DetectedDebris;

typedef boost::shared_ptr< ::arc_msgs::DetectedDebris > DetectedDebrisPtr;
typedef boost::shared_ptr< ::arc_msgs::DetectedDebris const> DetectedDebrisConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::arc_msgs::DetectedDebris_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::arc_msgs::DetectedDebris_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::arc_msgs::DetectedDebris_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arc_msgs::DetectedDebris_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arc_msgs::DetectedDebris_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arc_msgs::DetectedDebris_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arc_msgs::DetectedDebris_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arc_msgs::DetectedDebris_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::arc_msgs::DetectedDebris_<ContainerAllocator> >
{
  static const char* value()
  {
    return "67aa68765d8aaa6b92b6631ba36e4492";
  }

  static const char* value(const ::arc_msgs::DetectedDebris_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x67aa68765d8aaa6bULL;
  static const uint64_t static_value2 = 0x92b6631ba36e4492ULL;
};

template<class ContainerAllocator>
struct DataType< ::arc_msgs::DetectedDebris_<ContainerAllocator> >
{
  static const char* value()
  {
    return "arc_msgs/DetectedDebris";
  }

  static const char* value(const ::arc_msgs::DetectedDebris_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::arc_msgs::DetectedDebris_<ContainerAllocator> >
{
  static const char* value()
  {
    return "arc_msgs/Debris[] debris 		#list of the debris\n\
\n\
\n\
================================================================================\n\
MSG: arc_msgs/Debris\n\
int32 debris_id			#the id of debris object, ie it's fiducial return.\n\
geometry_msgs/Pose 	pose	#location of the degree relative to robot\n\
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

  static const char* value(const ::arc_msgs::DetectedDebris_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::arc_msgs::DetectedDebris_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.debris);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DetectedDebris_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arc_msgs::DetectedDebris_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::arc_msgs::DetectedDebris_<ContainerAllocator>& v)
  {
    s << indent << "debris[]" << std::endl;
    for (size_t i = 0; i < v.debris.size(); ++i)
    {
      s << indent << "  debris[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::arc_msgs::Debris_<ContainerAllocator> >::stream(s, indent + "    ", v.debris[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ARC_MSGS_MESSAGE_DETECTEDDEBRIS_H
