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

//-----------------------------------------------------------

class ArcTaskGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task_id = null;
      this.parameters = null;
    }
    else {
      if (initObj.hasOwnProperty('task_id')) {
        this.task_id = initObj.task_id
      }
      else {
        this.task_id = 0;
      }
      if (initObj.hasOwnProperty('parameters')) {
        this.parameters = initObj.parameters
      }
      else {
        this.parameters = new dynamic_reconfigure.msg.Config();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArcTaskGoal
    // Serialize message field [task_id]
    bufferOffset = _serializer.int32(obj.task_id, buffer, bufferOffset);
    // Serialize message field [parameters]
    bufferOffset = dynamic_reconfigure.msg.Config.serialize(obj.parameters, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArcTaskGoal
    let len;
    let data = new ArcTaskGoal(null);
    // Deserialize message field [task_id]
    data.task_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [parameters]
    data.parameters = dynamic_reconfigure.msg.Config.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += dynamic_reconfigure.msg.Config.getMessageSize(object.parameters);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'arc_msgs/ArcTaskGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e4281041aa2e71259737eb7287e98ac4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #Any task being done by the Task Handler will have the form of this action. This is essentially the TaskRequest.msg except trimmed down to only include parameters. the TaskHandler doesn't care about a tasks id and status, just the task to be done and the info regarding it.
    
    #Goal parameters. Specified at runtime. If you are trying to pass complex data to a task (list of points/etc), you will have to encode it as a string, or however you'd like.
    int32 task_id
    dynamic_reconfigure/Config parameters
    
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
    const resolved = new ArcTaskGoal(null);
    if (msg.task_id !== undefined) {
      resolved.task_id = msg.task_id;
    }
    else {
      resolved.task_id = 0
    }

    if (msg.parameters !== undefined) {
      resolved.parameters = dynamic_reconfigure.msg.Config.Resolve(msg.parameters)
    }
    else {
      resolved.parameters = new dynamic_reconfigure.msg.Config()
    }

    return resolved;
    }
};

module.exports = ArcTaskGoal;
