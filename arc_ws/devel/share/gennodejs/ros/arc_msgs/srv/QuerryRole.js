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

class QuerryRoleRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bot_type = null;
    }
    else {
      if (initObj.hasOwnProperty('bot_type')) {
        this.bot_type = initObj.bot_type
      }
      else {
        this.bot_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QuerryRoleRequest
    // Serialize message field [bot_type]
    bufferOffset = _serializer.int32(obj.bot_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QuerryRoleRequest
    let len;
    let data = new QuerryRoleRequest(null);
    // Deserialize message field [bot_type]
    data.bot_type = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arc_msgs/QuerryRoleRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '246d3a9fde167f7177ef071a7b28f1f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 bot_type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new QuerryRoleRequest(null);
    if (msg.bot_type !== undefined) {
      resolved.bot_type = msg.bot_type;
    }
    else {
      resolved.bot_type = 0
    }

    return resolved;
    }
};

class QuerryRoleResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.app = null;
    }
    else {
      if (initObj.hasOwnProperty('app')) {
        this.app = initObj.app
      }
      else {
        this.app = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QuerryRoleResponse
    // Serialize message field [app]
    bufferOffset = _serializer.float32(obj.app, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QuerryRoleResponse
    let len;
    let data = new QuerryRoleResponse(null);
    // Deserialize message field [app]
    data.app = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arc_msgs/QuerryRoleResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '88d6aa86935cc331b7d45537a5e7011f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 app
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new QuerryRoleResponse(null);
    if (msg.app !== undefined) {
      resolved.app = msg.app;
    }
    else {
      resolved.app = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: QuerryRoleRequest,
  Response: QuerryRoleResponse,
  md5sum() { return 'd7615da21ebfea9eb2a1d406fa324a4c'; },
  datatype() { return 'arc_msgs/QuerryRole'; }
};
