// Auto-generated. Do not edit!

// (in-package arc_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Debris = require('./Debris.js');

//-----------------------------------------------------------

class DetectedDebris {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.debris = null;
    }
    else {
      if (initObj.hasOwnProperty('debris')) {
        this.debris = initObj.debris
      }
      else {
        this.debris = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectedDebris
    // Serialize message field [debris]
    // Serialize the length for message field [debris]
    bufferOffset = _serializer.uint32(obj.debris.length, buffer, bufferOffset);
    obj.debris.forEach((val) => {
      bufferOffset = Debris.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectedDebris
    let len;
    let data = new DetectedDebris(null);
    // Deserialize message field [debris]
    // Deserialize array length for message field [debris]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.debris = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.debris[i] = Debris.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 60 * object.debris.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'arc_msgs/DetectedDebris';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '67aa68765d8aaa6b92b6631ba36e4492';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    arc_msgs/Debris[] debris 		#list of the debris
    
    
    ================================================================================
    MSG: arc_msgs/Debris
    int32 debris_id			#the id of debris object, ie it's fiducial return.
    geometry_msgs/Pose 	pose	#location of the degree relative to robot
    
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
    const resolved = new DetectedDebris(null);
    if (msg.debris !== undefined) {
      resolved.debris = new Array(msg.debris.length);
      for (let i = 0; i < resolved.debris.length; ++i) {
        resolved.debris[i] = Debris.Resolve(msg.debris[i]);
      }
    }
    else {
      resolved.debris = []
    }

    return resolved;
    }
};

module.exports = DetectedDebris;
