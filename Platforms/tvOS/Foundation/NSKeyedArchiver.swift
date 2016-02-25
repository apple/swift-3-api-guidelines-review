
let NSInvalidArchiveOperationException: String
let NSInvalidUnarchiveOperationException: String
@available(tvOS 7.0, *)
let NSKeyedArchiveRootObjectKey: String
class NSKeyedArchiver : NSCoder {
  class func archivedData(withRootObject rootObject: AnyObject) -> NSData
  class func archiveRootObject(_ rootObject: AnyObject, toFile path: String) -> Bool
  init(forWritingWith data: NSMutableData)
  unowned(unsafe) var delegate: @sil_unmanaged NSKeyedArchiverDelegate?
  var outputFormat: NSPropertyListFormat
  func finishEncoding()
  class func setClassName(_ codedName: String?, for cls: AnyClass)
  func setClassName(_ codedName: String?, for cls: AnyClass)
  class func className(for cls: AnyClass) -> String?
  func className(for cls: AnyClass) -> String?
}
class NSKeyedUnarchiver : NSCoder {
  class func unarchiveObject(with data: NSData) -> AnyObject?
  class func unarchiveObject(withFile path: String) -> AnyObject?
  init(forReadingWith data: NSData)
  unowned(unsafe) var delegate: @sil_unmanaged NSKeyedUnarchiverDelegate?
  func finishDecoding()
  class func setClass(_ cls: AnyClass?, forClassName codedName: String)
  func setClass(_ cls: AnyClass?, forClassName codedName: String)
  class func classForClassName(_ codedName: String) -> AnyClass?
  func classForClassName(_ codedName: String) -> AnyClass?
}

extension NSKeyedUnarchiver {
  @warn_unused_result
  class func unarchiveTopLevelObjectWithData(_ data: NSData) throws -> AnyObject?
}
protocol NSKeyedArchiverDelegate : NSObjectProtocol {
  optional func archiver(_ archiver: NSKeyedArchiver, willEncode object: AnyObject) -> AnyObject?
  optional func archiver(_ archiver: NSKeyedArchiver, didEncode object: AnyObject?)
  optional func archiver(_ archiver: NSKeyedArchiver, willReplace object: AnyObject?, with newObject: AnyObject?)
  optional func archiverWillFinish(_ archiver: NSKeyedArchiver)
  optional func archiverDidFinish(_ archiver: NSKeyedArchiver)
}
protocol NSKeyedUnarchiverDelegate : NSObjectProtocol {
  optional func unarchiver(_ unarchiver: NSKeyedUnarchiver, cannotDecodeObjectOfClassName name: String, originalClasses classNames: [String]) -> AnyClass?
  optional func unarchiver(_ unarchiver: NSKeyedUnarchiver, didDecode object: AnyObject?) -> AnyObject?
  optional func unarchiver(_ unarchiver: NSKeyedUnarchiver, willReplace object: AnyObject, with newObject: AnyObject)
  optional func unarchiverWillFinish(_ unarchiver: NSKeyedUnarchiver)
  optional func unarchiverDidFinish(_ unarchiver: NSKeyedUnarchiver)
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
