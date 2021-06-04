// Auto-generated. Do not edit!

// (in-package arc_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ToggleListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.random_wander = null;
      this.move_to_goal = null;
      this.clean_debris = null;
      this.detect_debris = null;
    }
    else {
      if (initObj.hasOwnProperty('random_wander')) {
        this.random_wander = initObj.random_wander
      }
      else {
        this.random_wander = false;
      }
      if (initObj.hasOwnProperty('move_to_goal')) {
        this.move_to_goal = initObj.move_to_goal
      }
      else {
        this.move_to_goal = false;
      }
      if (initObj.hasOwnProperty('clean_debris')) {
        this.clean_debris = initObj.clean_debris
      }
      else {
        this.clean_debris = false;
      }
      if (initObj.hasOwnProperty('detect_debris')) {
        this.detect_debris = initObj.detect_debris
      }
      else {
        this.detect_debris = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ToggleListRequest
    // Serialize message field [random_wander]
    bufferOffset = _serializer.bool(obj.random_wander, buffer, bufferOffset);
    // Serialize message field [move_to_goal]
    bufferOffset = _serializer.bool(obj.move_to_goal, buffer, bufferOffset);
    // Serialize message field [clean_debris]
    bufferOffset = _serializer.bool(obj.clean_debris, buffer, bufferOffset);
    // Serialize message field [detect_debris]
    bufferOffset = _serializer.bool(obj.detect_debris, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ToggleListRequest
    let len;
    let data = new ToggleListRequest(null);
    // Deserialize message field [random_wander]
    data.random_wander = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [move_to_goal]
    data.move_to_goal = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [clean_debris]
    data.clean_debris = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [detect_debris]
    data.detect_debris = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arc_msgs/ToggleListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fc98542f37cff10cf2b272c02d421986';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool random_wander
    bool move_to_goal
    bool clean_debris
    bool detect_debris
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ToggleListRequest(null);
    if (msg.random_wander !== undefined) {
      resolved.random_wander = msg.random_wander;
    }
    else {
      resolved.random_wander = false
    }

    if (msg.move_to_goal !== undefined) {
      resolved.move_to_goal = msg.move_to_goal;
    }
    else {
      resolved.move_to_goal = false
    }

    if (msg.clean_debris !== undefined) {
      resolved.clean_debris = msg.clean_debris;
    }
    else {
      resolved.clean_debris = false
    }

    if (msg.detect_debris !== undefined) {
      resolved.detect_debris = msg.detect_debris;
    }
    else {
      resolved.detect_debris = false
    }

    return resolved;
    }
};

class ToggleListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ToggleListResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ToggleListResponse
    let len;
    let data = new ToggleListResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arc_msgs/ToggleListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ToggleListResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: ToggleListRequest,
  Response: ToggleListResponse,
  md5sum() { return 'fc98542f37cff10cf2b272c02d421986'; },
  datatype() { return 'arc_msgs/ToggleList'; }
};
