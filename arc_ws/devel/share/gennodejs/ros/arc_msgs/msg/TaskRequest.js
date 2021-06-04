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

class TaskRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task_id = null;
      this.created = null;
      this.task_name = null;
      this.parameters = null;
      this.request_type = null;
    }
    else {
      if (initObj.hasOwnProperty('task_id')) {
        this.task_id = initObj.task_id
      }
      else {
        this.task_id = 0;
      }
      if (initObj.hasOwnProperty('created')) {
        this.created = initObj.created
      }
      else {
        this.created = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('task_name')) {
        this.task_name = initObj.task_name
      }
      else {
        this.task_name = '';
      }
      if (initObj.hasOwnProperty('parameters')) {
        this.parameters = initObj.parameters
      }
      else {
        this.parameters = new dynamic_reconfigure.msg.Config();
      }
      if (initObj.hasOwnProperty('request_type')) {
        this.request_type = initObj.request_type
      }
      else {
        this.request_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskRequest
    // Serialize message field [task_id]
    bufferOffset = _serializer.uint32(obj.task_id, buffer, bufferOffset);
    // Serialize message field [created]
    bufferOffset = _serializer.time(obj.created, buffer, bufferOffset);
    // Serialize message field [task_name]
    bufferOffset = _serializer.string(obj.task_name, buffer, bufferOffset);
    // Serialize message field [parameters]
    bufferOffset = dynamic_reconfigure.msg.Config.serialize(obj.parameters, buffer, bufferOffset);
    // Serialize message field [request_type]
    bufferOffset = _serializer.uint8(obj.request_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskRequest
    let len;
    let data = new TaskRequest(null);
    // Deserialize message field [task_id]
    data.task_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [created]
    data.created = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [task_name]
    data.task_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [parameters]
    data.parameters = dynamic_reconfigure.msg.Config.deserialize(buffer, bufferOffset);
    // Deserialize message field [request_type]
    data.request_type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.task_name.length;
    length += dynamic_reconfigure.msg.Config.getMessageSize(object.parameters);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'arc_msgs/TaskRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '918300d9f5eb2af46b00af6c1c427533';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new TaskRequest(null);
    if (msg.task_id !== undefined) {
      resolved.task_id = msg.task_id;
    }
    else {
      resolved.task_id = 0
    }

    if (msg.created !== undefined) {
      resolved.created = msg.created;
    }
    else {
      resolved.created = {secs: 0, nsecs: 0}
    }

    if (msg.task_name !== undefined) {
      resolved.task_name = msg.task_name;
    }
    else {
      resolved.task_name = ''
    }

    if (msg.parameters !== undefined) {
      resolved.parameters = dynamic_reconfigure.msg.Config.Resolve(msg.parameters)
    }
    else {
      resolved.parameters = new dynamic_reconfigure.msg.Config()
    }

    if (msg.request_type !== undefined) {
      resolved.request_type = msg.request_type;
    }
    else {
      resolved.request_type = 0
    }

    return resolved;
    }
};

// Constants for message
TaskRequest.Constants = {
  TYPE_COMPLETION: 0,
  TYPE_CANCELLATION: 1,
}

module.exports = TaskRequest;
