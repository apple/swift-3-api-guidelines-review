
class NSCoder : NSObject {
  func encodeValueOfObjCType(_ type: UnsafePointer<Int8>, at addr: UnsafePointer<Void>)
  func encodeDataObject(_ data: NSData)
  func decodeValueOfObjCType(_ type: UnsafePointer<Int8>, at data: UnsafeMutablePointer<Void>)
  func decodeDataObject() -> NSData?
  func versionForClassName(_ className: String) -> Int
}

extension NSCoder {
  @warn_unused_result
  func decodeObjectOfClass<DecodedObjectType : NSCoding where DecodedObjectType : NSObject>(_ cls: DecodedObjectType.Type, forKey key: String) -> DecodedObjectType?
  @warn_unused_result
  @nonobjc func decodeObjectOfClasses(_ classes: NSSet?, forKey key: String) -> AnyObject?
  @warn_unused_result
  func decodeTopLevelObject() throws -> AnyObject?
  @warn_unused_result
  func decodeTopLevelObjectForKey(_ key: String) throws -> AnyObject?
  @warn_unused_result
  func decodeTopLevelObjectOfClass<DecodedObjectType : NSCoding where DecodedObjectType : NSObject>(_ cls: DecodedObjectType.Type, forKey key: String) throws -> DecodedObjectType?
  @warn_unused_result
  func decodeTopLevelObjectOfClasses(_ classes: NSSet?, forKey key: String) throws -> AnyObject?
}
extension NSCoder {
  func encodeObject(_ object: AnyObject?)
  func encodeRootObject(_ rootObject: AnyObject)
  func encodeBycopyObject(_ anObject: AnyObject?)
  func encodeByrefObject(_ anObject: AnyObject?)
  func encodeConditionalObject(_ object: AnyObject?)
  func encodeArrayOfObjCType(_ type: UnsafePointer<Int8>, count count: Int, at array: UnsafePointer<Void>)
  func encodeBytes(_ byteaddr: UnsafePointer<Void>, length length: Int)
  func decodeObject() -> AnyObject?
  func decodeArrayOfObjCType(_ itemType: UnsafePointer<Int8>, count count: Int, at array: UnsafeMutablePointer<Void>)
  func decodeBytesWithReturnedLength(_ lengthp: UnsafeMutablePointer<Int>) -> UnsafeMutablePointer<Void>
  var systemVersion: UInt32 { get }
  var allowsKeyedCoding: Bool { get }
  func encodeObject(_ objv: AnyObject?, forKey key: String)
  func encodeConditionalObject(_ objv: AnyObject?, forKey key: String)
  func encodeBool(_ boolv: Bool, forKey key: String)
  func encodeInt(_ intv: Int32, forKey key: String)
  func encodeInt32(_ intv: Int32, forKey key: String)
  func encodeInt64(_ intv: Int64, forKey key: String)
  func encodeFloat(_ realv: Float, forKey key: String)
  func encodeDouble(_ realv: Double, forKey key: String)
  func encodeBytes(_ bytesp: UnsafePointer<UInt8>, length lenv: Int, forKey key: String)
  func containsValueForKey(_ key: String) -> Bool
  func decodeObjectForKey(_ key: String) -> AnyObject?
  func decodeBoolForKey(_ key: String) -> Bool
  func decodeIntForKey(_ key: String) -> Int32
  func decodeInt32ForKey(_ key: String) -> Int32
  func decodeInt64ForKey(_ key: String) -> Int64
  func decodeFloatForKey(_ key: String) -> Float
  func decodeDoubleForKey(_ key: String) -> Double
  func decodeBytesForKey(_ key: String, returnedLength lengthp: UnsafeMutablePointer<Int>) -> UnsafePointer<UInt8>
  @available(iOS 2.0, *)
  func encodeInteger(_ intv: Int, forKey key: String)
  @available(iOS 2.0, *)
  func decodeIntegerForKey(_ key: String) -> Int
  @available(iOS 6.0, *)
  var requiresSecureCoding: Bool { get }
  @available(iOS 6.0, *)
  func __decodeObjectOfClasses(_ classes: Set<NSObject>?, forKey key: String) -> AnyObject?
  @available(iOS 6.0, *)
  func decodePropertyListForKey(_ key: String) -> AnyObject?
  @available(iOS 6.0, *)
  var allowedClasses: Set<NSObject>? { get }
  @available(iOS 9.0, *)
  func failWithError(_ error: NSError)
}
