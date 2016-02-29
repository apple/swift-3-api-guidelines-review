
class NSCoder : NSObject {
  func encodeValue(ofObjCType type: UnsafePointer<Int8>, at addr: UnsafePointer<Void>)
  func encodeDataObject(_ data: NSData)
  func decodeValue(ofObjCType type: UnsafePointer<Int8>, at data: UnsafeMutablePointer<Void>)
  func decodeDataObject() -> NSData?
  func version(forClassName className: String) -> Int
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
  func encode(_ object: AnyObject?)
  func encodeRootObject(_ rootObject: AnyObject)
  func encodeBycopyObject(_ anObject: AnyObject?)
  func encodeByrefObject(_ anObject: AnyObject?)
  func encodeConditionalObject(_ object: AnyObject?)
  func encodeArray(ofObjCType type: UnsafePointer<Int8>, count count: Int, at array: UnsafePointer<Void>)
  func encodeBytes(_ byteaddr: UnsafePointer<Void>, length length: Int)
  func decodeObject() -> AnyObject?
  func decodeArray(ofObjCType itemType: UnsafePointer<Int8>, count count: Int, at array: UnsafeMutablePointer<Void>)
  func decodeBytes(withReturnedLength lengthp: UnsafeMutablePointer<Int>) -> UnsafeMutablePointer<Void>
  var systemVersion: UInt32 { get }
  var allowsKeyedCoding: Bool { get }
  func encode(_ objv: AnyObject?, forKey key: String)
  func encodeConditionalObject(_ objv: AnyObject?, forKey key: String)
  func encode(_ boolv: Bool, forKey key: String)
  func encode(_ intv: Int32, forKey key: String)
  func encode(_ intv: Int32, forKey key: String)
  func encode(_ intv: Int64, forKey key: String)
  func encode(_ realv: Float, forKey key: String)
  func encode(_ realv: Double, forKey key: String)
  func encodeBytes(_ bytesp: UnsafePointer<UInt8>, length lenv: Int, forKey key: String)
  func containsValue(forKey key: String) -> Bool
  func decodeObject(forKey key: String) -> AnyObject?
  func decodeBool(forKey key: String) -> Bool
  func decodeInt(forKey key: String) -> Int32
  func decodeInt32(forKey key: String) -> Int32
  func decodeInt64(forKey key: String) -> Int64
  func decodeFloat(forKey key: String) -> Float
  func decodeDouble(forKey key: String) -> Double
  func decodeBytes(forKey key: String, returnedLength lengthp: UnsafeMutablePointer<Int>) -> UnsafePointer<UInt8>
  @available(iOS 2.0, *)
  func encode(_ intv: Int, forKey key: String)
  @available(iOS 2.0, *)
  func decodeInteger(forKey key: String) -> Int
  @available(iOS 6.0, *)
  var requiresSecureCoding: Bool { get }
  @available(iOS 6.0, *)
  func __decodeObject(ofClasses classes: Set<NSObject>?, forKey key: String) -> AnyObject?
  @available(iOS 6.0, *)
  func decodePropertyList(forKey key: String) -> AnyObject?
  @available(iOS 6.0, *)
  var allowedClasses: Set<NSObject>? { get }
  @available(iOS 9.0, *)
  func failWithError(_ error: NSError)
}
