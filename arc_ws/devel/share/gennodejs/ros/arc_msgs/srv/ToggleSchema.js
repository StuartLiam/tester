// Auto-generated. Do not edit!

// (in-package arc_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let dynamic_reconfigure = _finder('dynamic_reconfigure');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ToggleSchemaRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.schema = null;
    }
    else {
      if (initObj.hasOwnProperty('schema')) {
        this.schema = initObj.schema
      }
      else {
        this.schema = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ToggleSchemaRequest
    // Serialize message field [schema]
    // Serialize the length for message field [schema]
    bufferOffset = _serializer.uint32(obj.schema.length, buffer, bufferOffset);
    obj.schema.forEach((val) => {
      bufferOffset = dynamic_reconfigure.msg.BoolParameter.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ToggleSchemaRequest
    let len;
    let data = new ToggleSchemaRequest(null);
    // Deserialize message field [schema]
    // Deserialize array length for message field [schema]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.schema = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.schema[i] = dynamic_reconfigure.msg.BoolParameter.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.schema.forEach((val) => {
      length += dynamic_reconfigure.msg.BoolParameter.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arc_msgs/ToggleSchemaRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7710a5d0d41dc5dfbfa6fdd0dd796270';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    dynamic_reconfigure/BoolParameter[] schema
    
    ================================================================================
    MSG: dynamic_reconfigure/BoolParameter
    string name
    bool value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ToggleSchemaRequest(null);
    if (msg.schema !== undefined) {
      resolved.schema = new Array(msg.schema.length);
      for (let i = 0; i < resolved.schema.length; ++i) {
        resolved.schema[i] = dynamic_reconfigure.msg.BoolParameter.Resolve(msg.schema[i]);
      }
    }
    else {
      resolved.schema = []
    }

    return resolved;
    }
};

class ToggleSchemaResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ToggleSchemaResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ToggleSchemaResponse
    let len;
    let data = new ToggleSchemaResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arc_msgs/ToggleSchemaResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ToggleSchemaResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ToggleSchemaRequest,
  Response: ToggleSchemaResponse,
  md5sum() { return '8ef993123e0d3a927ec9795e9c47782f'; },
  datatype() { return 'arc_msgs/ToggleSchema'; }
};
