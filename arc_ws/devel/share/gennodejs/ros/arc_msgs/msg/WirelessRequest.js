// Auto-generated. Do not edit!

// (in-package arc_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TaskRequest = require('./TaskRequest.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class WirelessRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sender_location = null;
      this.request_type = null;
      this.task = null;
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
      if (initObj.hasOwnProperty('request_type')) {
        this.request_type = initObj.request_type
      }
      else {
        this.request_type = 0;
      }
      if (initObj.hasOwnProperty('task')) {
        this.task = initObj.task
      }
      else {
        this.task = new TaskRequest();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WirelessRequest
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [sender_location]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.sender_location, buffer, bufferOffset);
    // Serialize message field [request_type]
    bufferOffset = _serializer.uint8(obj.request_type, buffer, bufferOffset);
    // Serialize message field [task]
    bufferOffset = TaskRequest.serialize(obj.task, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WirelessRequest
    let len;
    let data = new WirelessRequest(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sender_location]
    data.sender_location = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [request_type]
    data.request_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [task]
    data.task = TaskRequest.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += TaskRequest.getMessageSize(object.task);
    return length + 57;
  }

  static datatype() {
    // Returns string type for a message object
    return 'arc_msgs/WirelessRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0218c54dd4c00c08f6909a40927063ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Pertaining to information about this SPECIFIC message, not the wireless request itself.
    std_msgs/Header header
    
    #Where is the robot who sent this announcement? This is in /map coordinate frame.
    geometry_msgs/Pose sender_location
    
    #The type of Request. Default is (0), a Task Request.
    uint8 request_type
    uint8 TYPE_TASK=0
    
    #the task that is being requested. This is checked if request_type=TYPE_TASK
    arc_msgs/TaskRequest task
    
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
    MSG: arc_msgs/TaskRequest
    #A task is a small piece of behaviour defined in ARC, prompting a robot to do some specific piece of work.
    
    #Unique id created for this task instance. 
    #All requests and responses about this instance must have the same task_id, otherwise robot will think it’s a different task.
    uint32 task_id
    
    time created #The time that this task instance was created.
    
    #The name of the task to perform
    string task_name
    
    #Configuration parameters for this task. 
    dynamic_reconfigure/Config parameters
    
    #The intend of the request. some task requests are requesting to complete a task.
    #Another request may be asking to cancel the execution of a task.
    uint8 request_type
    
    #Request types
    uint8 TYPE_COMPLETION=0   #Requesting robot to complete the task.
    uint8 TYPE_CANCELLATION=1 #Requesting robot to cancel the task.
    
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
    const resolved = new WirelessRequest(null);
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

    if (msg.request_type !== undefined) {
      resolved.request_type = msg.request_type;
    }
    else {
      resolved.request_type = 0
    }

    if (msg.task !== undefined) {
      resolved.task = TaskRequest.Resolve(msg.task)
    }
    else {
      resolved.task = new TaskRequest()
    }

    return resolved;
    }
};

// Constants for message
WirelessRequest.Constants = {
  TYPE_TASK: 0,
}

module.exports = WirelessRequest;
