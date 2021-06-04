// Auto-generated. Do not edit!

// (in-package arc_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DetectedVictim = require('./DetectedVictim.js');

//-----------------------------------------------------------

class DetectedVictims {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.victims = null;
    }
    else {
      if (initObj.hasOwnProperty('victims')) {
        this.victims = initObj.victims
      }
      else {
        this.victims = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectedVictims
    // Serialize message field [victims]
    // Serialize the length for message field [victims]
    bufferOffset = _serializer.uint32(obj.victims.length, buffer, bufferOffset);
    obj.victims.forEach((val) => {
      bufferOffset = DetectedVictim.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectedVictims
    let len;
    let data = new DetectedVictims(null);
    // Deserialize message field [victims]
    // Deserialize array length for message field [victims]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.victims = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.victims[i] = DetectedVictim.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 64 * object.victims.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'arc_msgs/DetectedVictims';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a82d7fbb7e64cf7614858422a3604178';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    arc_msgs/DetectedVictim[] victims		#list of the victims detected
    
    ================================================================================
    MSG: arc_msgs/DetectedVictim
    #This is the detection info of a victim in arc. There is no transform info/ie we assume this detection takes place from a current robots perspective (ie base_link)
    int32 victim_id		#id of the robot
    int32 status		#postiive, negative, unkown, or uncertain
    geometry_msgs/Pose pose	#Position of the detected robot.
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DetectedVictims(null);
    if (msg.victims !== undefined) {
      resolved.victims = new Array(msg.victims.length);
      for (let i = 0; i < resolved.victims.length; ++i) {
        resolved.victims[i] = DetectedVictim.Resolve(msg.victims[i]);
      }
    }
    else {
      resolved.victims = []
    }

    return resolved;
    }
};

module.exports = DetectedVictims;
