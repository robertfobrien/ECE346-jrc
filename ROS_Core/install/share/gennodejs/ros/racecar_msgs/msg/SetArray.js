// Auto-generated. Do not edit!

// (in-package racecar_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class SetArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.set_list = null;
    }
    else {
      if (initObj.hasOwnProperty('set_list')) {
        this.set_list = initObj.set_list
      }
      else {
        this.set_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetArray
    // Serialize message field [set_list]
    // Serialize the length for message field [set_list]
    bufferOffset = _serializer.uint32(obj.set_list.length, buffer, bufferOffset);
    obj.set_list.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Polygon.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetArray
    let len;
    let data = new SetArray(null);
    // Deserialize message field [set_list]
    // Deserialize array length for message field [set_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.set_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.set_list[i] = geometry_msgs.msg.Polygon.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.set_list.forEach((val) => {
      length += geometry_msgs.msg.Polygon.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'racecar_msgs/SetArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '77d2e907d44e8d702f6689ff05db06d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Polygon[] set_list
    ================================================================================
    MSG: geometry_msgs/Polygon
    #A specification of a polygon where the first and last points are assumed to be connected
    Point32[] points
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetArray(null);
    if (msg.set_list !== undefined) {
      resolved.set_list = new Array(msg.set_list.length);
      for (let i = 0; i < resolved.set_list.length; ++i) {
        resolved.set_list[i] = geometry_msgs.msg.Polygon.Resolve(msg.set_list[i]);
      }
    }
    else {
      resolved.set_list = []
    }

    return resolved;
    }
};

module.exports = SetArray;
