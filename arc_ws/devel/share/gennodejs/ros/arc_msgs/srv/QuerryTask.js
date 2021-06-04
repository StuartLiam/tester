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

class QuerryTaskRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QuerryTaskRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QuerryTaskRequest
    let len;
    let data = new QuerryTaskRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arc_msgs/QuerryTaskRequest';
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
    const resolved = new QuerryTaskRequest(null);
    return resolved;
    }
};

class QuerryTaskResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task_type = null;
      this.priority = null;
      this.bot_x = null;
      this.bot_y = null;
      this.loc_x = null;
      this.loc_y = null;
    }
    else {
      if (initObj.hasOwnProperty('task_type')) {
        this.task_type = initObj.task_type
      }
      else {
        this.task_type = 0;
      }
      if (initObj.hasOwnProperty('priority')) {
        this.priority = initObj.priority
      }
      else {
        this.priority = 0;
      }
      if (initObj.hasOwnProperty('bot_x')) {
        this.bot_x = initObj.bot_x
      }
      else {
        this.bot_x = 0.0;
      }
      if (initObj.hasOwnProperty('bot_y')) {
        this.bot_y = initObj.bot_y
      }
      else {
        this.bot_y = 0.0;
      }
      if (initObj.hasOwnProperty('loc_x')) {
        this.loc_x = initObj.loc_x
      }
      else {
        this.loc_x = 0.0;
      }
      if (initObj.hasOwnProperty('loc_y')) {
        this.loc_y = initObj.loc_y
      }
      else {
        this.loc_y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QuerryTaskResponse
    // Serialize message field [task_type]
    bufferOffset = _serializer.int32(obj.task_type, buffer, bufferOffset);
    // Serialize message field [priority]
    bufferOffset = _serializer.int32(obj.priority, buffer, bufferOffset);
    // Serialize message field [bot_x]
    bufferOffset = _serializer.float64(obj.bot_x, buffer, bufferOffset);
    // Serialize message field [bot_y]
    bufferOffset = _serializer.float64(obj.bot_y, buffer, bufferOffset);
    // Serialize message field [loc_x]
    bufferOffset = _serializer.float64(obj.loc_x, buffer, bufferOffset);
    // Serialize message field [loc_y]
    bufferOffset = _serializer.float64(obj.loc_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QuerryTaskResponse
    let len;
    let data = new QuerryTaskResponse(null);
    // Deserialize message field [task_type]
    data.task_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [priority]
    data.priority = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [bot_x]
    data.bot_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [bot_y]
    data.bot_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [loc_x]
    data.loc_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [loc_y]
    data.loc_y = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arc_msgs/QuerryTaskResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0367c6c74ded11b47d7fe0ed3f0c4dab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 task_type
    int32 priority
    float64 bot_x
    float64 bot_y
    float64 loc_x
    float64 loc_y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new QuerryTaskResponse(null);
    if (msg.task_type !== undefined) {
      resolved.task_type = msg.task_type;
    }
    else {
      resolved.task_type = 0
    }

    if (msg.priority !== undefined) {
      resolved.priority = msg.priority;
    }
    else {
      resolved.priority = 0
    }

    if (msg.bot_x !== undefined) {
      resolved.bot_x = msg.bot_x;
    }
    else {
      resolved.bot_x = 0.0
    }

    if (msg.bot_y !== undefined) {
      resolved.bot_y = msg.bot_y;
    }
    else {
      resolved.bot_y = 0.0
    }

    if (msg.loc_x !== undefined) {
      resolved.loc_x = msg.loc_x;
    }
    else {
      resolved.loc_x = 0.0
    }

    if (msg.loc_y !== undefined) {
      resolved.loc_y = msg.loc_y;
    }
    else {
      resolved.loc_y = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: QuerryTaskRequest,
  Response: QuerryTaskResponse,
  md5sum() { return '0367c6c74ded11b47d7fe0ed3f0c4dab'; },
  datatype() { return 'arc_msgs/QuerryTask'; }
};
