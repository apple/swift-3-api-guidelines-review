
class NSCoder : NSObject {
  func encodeValueOfObjCType(type: UnsafePointer<Int8>, at addr: UnsafePointer<Void>)
  func encodeDataObject(data: NSData)
  func decodeValueOfObjCType(type: UnsafePointer<Int8>, at data: UnsafeMutablePointer<Void>)
  func decodeDataObject() -> NSData?
  func versionForClassName(className: String) -> Int
  init()
}

extension NSCoder {
  @warn_unused_result
  func decodeObjectOfClass<DecodedObjectType : NSCoding where DecodedObjectType : NSObject>(cls: DecodedObjectType.Type, forKey key: String) -> DecodedObjectType?
  @warn_unused_result
  @nonobjc func decodeObjectOfClasses(classes: NSSet?, forKey key: String) -> AnyObject?
  @warn_unused_result
  func decodeTopLevelObject() throws -> AnyObject?
  @warn_unused_result
  func decodeTopLevelObjectForKey(key: String) throws -> AnyObject?
  @warn_unused_result
  func decodeTopLevelObjectOfClass<DecodedObjectType : NSCoding where DecodedObjectType : NSObject>(cls: DecodedObjectType.Type, forKey key: String) throws -> DecodedObjectType?
  @warn_unused_result
  func decodeTopLevelObjectOfClasses(classes: NSSet?, forKey key: String) throws -> AnyObject?
}
extension NSCoder {
  func encodeObject(object: AnyObject?)
  func encodeRootObject(rootObject: AnyObject)
  func encodeBycopyObject(anObject: AnyObject?)
  func encodeByrefObject(anObject: AnyObject?)
  func encodeConditionalObject(object: AnyObject?)
  func encodeArrayOfObjCType(type: UnsafePointer<Int8>, count: Int, at array: UnsafePointer<Void>)
  func encodeBytes(byteaddr: UnsafePointer<Void>, length: Int)
  func decodeObject() -> AnyObject?
  func decodeArrayOfObjCType(itemType: UnsafePointer<Int8>, count: Int, at array: UnsafeMutablePointer<Void>)
  func decodeBytesWithReturnedLength(lengthp: UnsafeMutablePointer<Int>) -> UnsafeMutablePointer<Void>
  var systemVersion: UInt32 { get }
  var allowsKeyedCoding: Bool { get }
  func encodeObject(objv: AnyObject?, forKey key: String)
  func encodeConditionalObject(objv: AnyObject?, forKey key: String)
  func encodeBool(boolv: Bool, forKey key: String)
  func encodeInt(intv: Int32, forKey key: String)
  func encodeInt32(intv: Int32, forKey key: String)
  func encodeInt64(intv: Int64, forKey key: String)
  func encodeFloat(realv: Float, forKey key: String)
  func encodeDouble(realv: Double, forKey key: String)
  func encodeBytes(bytesp: UnsafePointer<UInt8>, length lenv: Int, forKey key: String)
  func containsValueForKey(key: String) -> Bool
  func decodeObjectForKey(key: String) -> AnyObject?
  func decodeBoolForKey(key: String) -> Bool
  func decodeIntForKey(key: String) -> Int32
  func decodeInt32ForKey(key: String) -> Int32
  func decodeInt64ForKey(key: String) -> Int64
  func decodeFloatForKey(key: String) -> Float
  func decodeDoubleForKey(key: String) -> Double
  func decodeBytesForKey(key: String, returnedLength lengthp: UnsafeMutablePointer<Int>) -> UnsafePointer<UInt8>
  @available(watchOS 2.0, *)
  func encodeInteger(intv: Int, forKey key: String)
  @available(watchOS 2.0, *)
  func decodeIntegerForKey(key: String) -> Int
  @available(watchOS 2.0, *)
  var requiresSecureCoding: Bool { get }
  @available(watchOS 2.0, *)
  func __decodeObjectOfClasses(classes: Set<NSObject>?, forKey key: String) -> AnyObject?
  @available(watchOS 2.0, *)
  func decodePropertyListForKey(key: String) -> AnyObject?
  @available(watchOS 2.0, *)
  var allowedClasses: Set<NSObject>? { get }
  @available(watchOS 2.0, *)
  func failWithError(error: NSError)
}
