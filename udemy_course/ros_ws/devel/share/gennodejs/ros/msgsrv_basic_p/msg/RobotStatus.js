// Auto-generated. Do not edit!

// (in-package msgsrv_basic_p.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class RobotStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motor1_rpm = null;
      this.motor2_rpm = null;
      this.motor3_rpm = null;
      this.motor4_rpm = null;
      this.location = null;
    }
    else {
      if (initObj.hasOwnProperty('motor1_rpm')) {
        this.motor1_rpm = initObj.motor1_rpm
      }
      else {
        this.motor1_rpm = 0;
      }
      if (initObj.hasOwnProperty('motor2_rpm')) {
        this.motor2_rpm = initObj.motor2_rpm
      }
      else {
        this.motor2_rpm = 0;
      }
      if (initObj.hasOwnProperty('motor3_rpm')) {
        this.motor3_rpm = initObj.motor3_rpm
      }
      else {
        this.motor3_rpm = 0;
      }
      if (initObj.hasOwnProperty('motor4_rpm')) {
        this.motor4_rpm = initObj.motor4_rpm
      }
      else {
        this.motor4_rpm = 0;
      }
      if (initObj.hasOwnProperty('location')) {
        this.location = initObj.location
      }
      else {
        this.location = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotStatus
    // Serialize message field [motor1_rpm]
    bufferOffset = _serializer.int16(obj.motor1_rpm, buffer, bufferOffset);
    // Serialize message field [motor2_rpm]
    bufferOffset = _serializer.int16(obj.motor2_rpm, buffer, bufferOffset);
    // Serialize message field [motor3_rpm]
    bufferOffset = _serializer.int16(obj.motor3_rpm, buffer, bufferOffset);
    // Serialize message field [motor4_rpm]
    bufferOffset = _serializer.int16(obj.motor4_rpm, buffer, bufferOffset);
    // Serialize message field [location]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.location, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotStatus
    let len;
    let data = new RobotStatus(null);
    // Deserialize message field [motor1_rpm]
    data.motor1_rpm = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [motor2_rpm]
    data.motor2_rpm = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [motor3_rpm]
    data.motor3_rpm = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [motor4_rpm]
    data.motor4_rpm = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [location]
    data.location = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgsrv_basic_p/RobotStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '26fb00c2a9a55416e3fc28ca9efe50fa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 motor1_rpm
    int16 motor2_rpm
    int16 motor3_rpm
    int16 motor4_rpm
    geometry_msgs/Vector3 location
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotStatus(null);
    if (msg.motor1_rpm !== undefined) {
      resolved.motor1_rpm = msg.motor1_rpm;
    }
    else {
      resolved.motor1_rpm = 0
    }

    if (msg.motor2_rpm !== undefined) {
      resolved.motor2_rpm = msg.motor2_rpm;
    }
    else {
      resolved.motor2_rpm = 0
    }

    if (msg.motor3_rpm !== undefined) {
      resolved.motor3_rpm = msg.motor3_rpm;
    }
    else {
      resolved.motor3_rpm = 0
    }

    if (msg.motor4_rpm !== undefined) {
      resolved.motor4_rpm = msg.motor4_rpm;
    }
    else {
      resolved.motor4_rpm = 0
    }

    if (msg.location !== undefined) {
      resolved.location = geometry_msgs.msg.Vector3.Resolve(msg.location)
    }
    else {
      resolved.location = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = RobotStatus;
