
let NSInvalidArchiveOperationException: String
let NSInvalidUnarchiveOperationException: String
@available(iOS 7.0, *)
let NSKeyedArchiveRootObjectKey: String
class NSKeyedArchiver : NSCoder {
  class func archivedData(withRootObject rootObject: AnyObject) -> NSData
  class func archiveRootObject(rootObject: AnyObject, toFile path: String) -> Bool
  init(forWritingWith data: NSMutableData)
  unowned(unsafe) var delegate: @sil_unmanaged NSKeyedArchiverDelegate?
  var outputFormat: NSPropertyListFormat
  func finishEncoding()
  class func setClassName(codedName: String?, for cls: AnyClass)
  func setClassName(codedName: String?, for cls: AnyClass)
  class func className(for cls: AnyClass) -> String?
  func className(for cls: AnyClass) -> String?
  func encode(objv: AnyObject?, forKey key: String)
  func encodeConditionalObject(objv: AnyObject?, forKey key: String)
  func encode(boolv: Bool, forKey key: String)
  func encode(intv: Int32, forKey key: String)
  func encode(intv: Int32, forKey key: String)
  func encode(intv: Int64, forKey key: String)
  func encode(realv: Float, forKey key: String)
  func encode(realv: Double, forKey key: String)
  func encodeBytes(bytesp: UnsafePointer<UInt8>, length lenv: Int, forKey key: String)
  @available(iOS 6.0, *)
  var requiresSecureCoding: Bool
  init()
}
class NSKeyedUnarchiver : NSCoder {
  class func unarchiveObject(with data: NSData) -> AnyObject?
  class func unarchiveObject(withFile path: String) -> AnyObject?
  init(forReadingWith data: NSData)
  unowned(unsafe) var delegate: @sil_unmanaged NSKeyedUnarchiverDelegate?
  func finishDecoding()
  class func setClass(cls: AnyClass?, forClassName codedName: String)
  func setClass(cls: AnyClass?, forClassName codedName: String)
  class func classForClassName(codedName: String) -> AnyClass?
  func classForClassName(codedName: String) -> AnyClass?
  func containsValue(forKey key: String) -> Bool
  func decodeObject(forKey key: String) -> AnyObject?
  func decodeBool(forKey key: String) -> Bool
  func decodeInt(forKey key: String) -> Int32
  func decodeInt32(forKey key: String) -> Int32
  func decodeInt64(forKey key: String) -> Int64
  func decodeFloat(forKey key: String) -> Float
  func decodeDouble(forKey key: String) -> Double
  func decodeBytes(forKey key: String, returnedLength lengthp: UnsafeMutablePointer<Int>) -> UnsafePointer<UInt8>
  @available(iOS 6.0, *)
  var requiresSecureCoding: Bool
  init()
}

extension NSKeyedUnarchiver {
  @warn_unused_result
  class func unarchiveTopLevelObjectWithData(data: NSData) throws -> AnyObject?
}
protocol NSKeyedArchiverDelegate : NSObjectProtocol {
  optional func archiver(archiver: NSKeyedArchiver, willEncode object: AnyObject) -> AnyObject?
  optional func archiver(archiver: NSKeyedArchiver, didEncode object: AnyObject?)
  optional func archiver(archiver: NSKeyedArchiver, willReplace object: AnyObject?, with newObject: AnyObject?)
  optional func archiverWillFinish(archiver: NSKeyedArchiver)
  optional func archiverDidFinish(archiver: NSKeyedArchiver)
}
protocol NSKeyedUnarchiverDelegate : NSObjectProtocol {
  optional func unarchiver(unarchiver: NSKeyedUnarchiver, cannotDecodeObjectOfClassName name: String, originalClasses classNames: [String]) -> AnyClass?
  optional func unarchiver(unarchiver: NSKeyedUnarchiver, didDecode object: AnyObject?) -> AnyObject?
  optional func unarchiver(unarchiver: NSKeyedUnarchiver, willReplace object: AnyObject, with newObject: AnyObject)
  optional func unarchiverWillFinish(unarchiver: NSKeyedUnarchiver)
  optional func unarchiverDidFinish(unarchiver: NSKeyedUnarchiver)
}
extension NSObject {
  var classForKeyedArchiver: AnyClass? { get }
  class func replacementObject(for archiver: NSKeyedArchiver) -> AnyObject?
  func replacementObject(for archiver: NSKeyedArchiver) -> AnyObject?
  class func classFallbacksForKeyedArchiver() -> [String]
  class func classForKeyedArchiver() -> AnyClass?
}
extension NSObject {
  class func classForKeyedUnarchiver() -> AnyClass
}
