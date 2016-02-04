
let NSInvalidArchiveOperationException: String
let NSInvalidUnarchiveOperationException: String
@available(tvOS 7.0, *)
let NSKeyedArchiveRootObjectKey: String
class NSKeyedArchiver : NSCoder {
  class func archivedDataWithRootObject(rootObject: AnyObject) -> NSData
  class func archiveRootObject(rootObject: AnyObject, toFile path: String) -> Bool
  init(forWritingWithMutableData data: NSMutableData)
  unowned(unsafe) var delegate: @sil_unmanaged NSKeyedArchiverDelegate?
  var outputFormat: NSPropertyListFormat
  func finishEncoding()
  class func setClassName(codedName: String?, forClass cls: AnyClass)
  func setClassName(codedName: String?, forClass cls: AnyClass)
  class func classNameForClass(cls: AnyClass) -> String?
  func classNameForClass(cls: AnyClass) -> String?
  func encodeObject(objv: AnyObject?, forKey key: String)
  func encodeConditionalObject(objv: AnyObject?, forKey key: String)
  func encodeBool(boolv: Bool, forKey key: String)
  func encodeInt(intv: Int32, forKey key: String)
  func encodeInt32(intv: Int32, forKey key: String)
  func encodeInt64(intv: Int64, forKey key: String)
  func encodeFloat(realv: Float, forKey key: String)
  func encodeDouble(realv: Double, forKey key: String)
  func encodeBytes(bytesp: UnsafePointer<UInt8>, length lenv: Int, forKey key: String)
  @available(tvOS 6.0, *)
  var requiresSecureCoding: Bool
  init()
}
class NSKeyedUnarchiver : NSCoder {
  class func unarchiveObjectWithData(data: NSData) -> AnyObject?
  class func unarchiveObjectWithFile(path: String) -> AnyObject?
  init(forReadingWithData data: NSData)
  unowned(unsafe) var delegate: @sil_unmanaged NSKeyedUnarchiverDelegate?
  func finishDecoding()
  class func setClass(cls: AnyClass?, forClassName codedName: String)
  func setClass(cls: AnyClass?, forClassName codedName: String)
  class func classForClassName(codedName: String) -> AnyClass?
  func classForClassName(codedName: String) -> AnyClass?
  func containsValueForKey(key: String) -> Bool
  func decodeObjectForKey(key: String) -> AnyObject?
  func decodeBoolForKey(key: String) -> Bool
  func decodeIntForKey(key: String) -> Int32
  func decodeInt32ForKey(key: String) -> Int32
  func decodeInt64ForKey(key: String) -> Int64
  func decodeFloatForKey(key: String) -> Float
  func decodeDoubleForKey(key: String) -> Double
  func decodeBytesForKey(key: String, returnedLength lengthp: UnsafeMutablePointer<Int>) -> UnsafePointer<UInt8>
  @available(tvOS 6.0, *)
  var requiresSecureCoding: Bool
  init()
}

extension NSKeyedUnarchiver {
  @warn_unused_result
  class func unarchiveTopLevelObjectWithData(data: NSData) throws -> AnyObject?
}
protocol NSKeyedArchiverDelegate : NSObjectProtocol {
  optional func archiver(archiver: NSKeyedArchiver, willEncodeObject object: AnyObject) -> AnyObject?
  optional func archiver(archiver: NSKeyedArchiver, didEncodeObject object: AnyObject?)
  optional func archiver(archiver: NSKeyedArchiver, willReplaceObject object: AnyObject?, withObject newObject: AnyObject?)
  optional func archiverWillFinish(archiver: NSKeyedArchiver)
  optional func archiverDidFinish(archiver: NSKeyedArchiver)
}
protocol NSKeyedUnarchiverDelegate : NSObjectProtocol {
  optional func unarchiver(unarchiver: NSKeyedUnarchiver, cannotDecodeObjectOfClassName name: String, originalClasses classNames: [String]) -> AnyClass?
  optional func unarchiver(unarchiver: NSKeyedUnarchiver, didDecodeObject object: AnyObject?) -> AnyObject?
  optional func unarchiver(unarchiver: NSKeyedUnarchiver, willReplaceObject object: AnyObject, withObject newObject: AnyObject)
  optional func unarchiverWillFinish(unarchiver: NSKeyedUnarchiver)
  optional func unarchiverDidFinish(unarchiver: NSKeyedUnarchiver)
}
extension NSObject {
  var classForKeyedArchiver: AnyClass? { get }
  class func replacementObjectForKeyedArchiver(archiver: NSKeyedArchiver) -> AnyObject?
  func replacementObjectForKeyedArchiver(archiver: NSKeyedArchiver) -> AnyObject?
  class func classFallbacksForKeyedArchiver() -> [String]
  class func classForKeyedArchiver() -> AnyClass?
}
extension NSObject {
  class func classForKeyedUnarchiver() -> AnyClass
}
