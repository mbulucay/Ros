// Auto-generated. Do not edit!

// (in-package msgsrv_basic_p.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class WarningStatusRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.warn = null;
    }
    else {
      if (initObj.hasOwnProperty('warn')) {
        this.warn = initObj.warn
      }
      else {
        this.warn = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WarningStatusRequest
    // Serialize message field [warn]
    bufferOffset = _serializer.bool(obj.warn, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WarningStatusRequest
    let len;
    let data = new WarningStatusRequest(null);
    // Deserialize message field [warn]
    data.warn = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'msgsrv_basic_p/WarningStatusRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c9b6461af4510efa7832370186740da3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool warn
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WarningStatusRequest(null);
    if (msg.warn !== undefined) {
      resolved.warn = msg.warn;
    }
    else {
      resolved.warn = false
    }

    return resolved;
    }
};

class WarningStatusResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.resp = null;
    }
    else {
      if (initObj.hasOwnProperty('resp')) {
        this.resp = initObj.resp
      }
      else {
        this.resp = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WarningStatusResponse
    // Serialize message field [resp]
    bufferOffset = std_msgs.msg.String.serialize(obj.resp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WarningStatusResponse
    let len;
    let data = new WarningStatusResponse(null);
    // Deserialize message field [resp]
    data.resp = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.resp);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'msgsrv_basic_p/WarningStatusResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5fa7ad3d433a72e124bf705aa8bfdd40';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String resp
    
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WarningStatusResponse(null);
    if (msg.resp !== undefined) {
      resolved.resp = std_msgs.msg.String.Resolve(msg.resp)
    }
    else {
      resolved.resp = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = {
  Request: WarningStatusRequest,
  Response: WarningStatusResponse,
  md5sum() { return 'e30b85c266ffbe42abf942f98a5b4797'; },
  datatype() { return 'msgsrv_basic_p/WarningStatus'; }
};
