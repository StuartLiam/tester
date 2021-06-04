// Auto-generated. Do not edit!

// (in-package arc_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let dynamic_reconfigure = _finder('dynamic_reconfigure');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class WirelessAnnouncement {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sender_location = null;
      this.announcement = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('sender_location')) {
        this.sender_location = initObj.sender_location
      }
      else {
        this.sender_location = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('announcement')) {
        this.announcement = initObj.announcement
      }
      else {
        this.announcement = new dynamic_reconfigure.msg.Config();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WirelessAnnouncement
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [sender_location]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.sender_location, buffer, bufferOffset);
    // Serialize message field [announcement]
    bufferOffset = dynamic_reconfigure.msg.Config.serialize(obj.announcement, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WirelessAnnouncement
    let len;
    let data = new WirelessAnnouncement(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sender_location]
    data.sender_location = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [announcement]
    data.announcement = dynamic_reconfigure.msg.Config.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += dynamic_reconfigure.msg.Config.getMessageSize(object.announcement);
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'arc_msgs/WirelessAnnouncement';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '38616ea982e90535028043ae1eb63a11';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    #Where is the robot who sent this announcement? This is in /map coordinate frame.
    geometry_msgs/Pose sender_location
    
    #content of the announcement. The information to broadcast.
    dynamic_reconfigure/Config announcement
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: dynamic_reconfigure/Config
    BoolParameter[] bools
    IntParameter[] ints
    StrParameter[] strs
    DoubleParameter[] doubles
    GroupState[] groups
    
    ================================================================================
    MSG: dynamic_reconfigure/BoolParameter
    string name
    bool value
    
    ================================================================================
    MSG: dynamic_reconfigure/IntParameter
    string name
    int32 value
    
    ================================================================================
    MSG: dynamic_reconfigure/StrParameter
    string name
    string value
    
    ================================================================================
    MSG: dynamic_reconfigure/DoubleParameter
    string name
    float64 value
    
    ================================================================================
    MSG: dynamic_reconfigure/GroupState
    string name
    bool state
    int32 id
    int32 parent
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WirelessAnnouncement(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.sender_location !== undefined) {
      resolved.sender_location = geometry_msgs.msg.Pose.Resolve(msg.sender_location)
    }
    else {
      resolved.sender_location = new geometry_msgs.msg.Pose()
    }

    if (msg.announcement !== undefined) {
      resolved.announcement = dynamic_reconfigure.msg.Config.Resolve(msg.announcement)
    }
    else {
      resolved.announcement = new dynamic_reconfigure.msg.Config()
    }

    return resolved;
    }
};

module.exports = WirelessAnnouncement;
