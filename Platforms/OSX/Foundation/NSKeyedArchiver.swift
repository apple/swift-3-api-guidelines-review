
let NSInvalidArchiveOperationException: String
let NSInvalidUnarchiveOperationException: String
@available(OSX 10.9, *)
let NSKeyedArchiveRootObjectKey: String
class NSKeyedArchiver : NSCoder {
  class func archivedDataWithRootObject(_ rootObject: AnyObject) -> NSData
  class func archiveRootObject(_ rootObject: AnyObject, toFile path: String) -> Bool
  init(forWritingWithMutableData data: NSMutableData)
  unowned(unsafe) var delegate: @sil_unmanaged NSKeyedArchiverDelegate?
  var outputFormat: NSPropertyListFormat
  func finishEncoding()
  class func setClassName(_ codedName: String?, forClass cls: AnyClass)
  func setClassName(_ codedName: String?, forClass cls: AnyClass)
  class func classNameForClass(_ cls: AnyClass) -> String?
  func classNameForClass(_ cls: AnyClass) -> String?
}
class NSKeyedUnarchiver : NSCoder {
  class func unarchiveObjectWithData(_ data: NSData) -> AnyObject?
  class func unarchiveObjectWithFile(_ path: String) -> AnyObject?
  init(forReadingWithData data: NSData)
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
  optional func archiver(_ archiver: NSKeyedArchiver, willEncodeObject object: AnyObject) -> AnyObject?
  optional func archiver(_ archiver: NSKeyedArchiver, didEncodeObject object: AnyObject?)
  optional func archiver(_ archiver: NSKeyedArchiver, willReplaceObject object: AnyObject?, withObject newObject: AnyObject?)
  optional func archiverWillFinish(_ archiver: NSKeyedArchiver)
  optional func archiverDidFinish(_ archiver: NSKeyedArchiver)
}
protocol NSKeyedUnarchiverDelegate : NSObjectProtocol {
  optional func unarchiver(_ unarchiver: NSKeyedUnarchiver, cannotDecodeObjectOfClassName name: String, originalClasses classNames: [String]) -> AnyClass?
  optional func unarchiver(_ unarchiver: NSKeyedUnarchiver, didDecodeObject object: AnyObject?) -> AnyObject?
  optional func unarchiver(_ unarchiver: NSKeyedUnarchiver, willReplaceObject object: AnyObject, withObject newObject: AnyObject)
  optional func unarchiverWillFinish(_ unarchiver: NSKeyedUnarchiver)
  optional func unarchiverDidFinish(_ unarchiver: NSKeyedUnarchiver)
}
extension NSObject {
  var classForKeyedArchiver: AnyClass? { get }
  class func replacementObjectForKeyedArchiver(_ archiver: NSKeyedArchiver) -> AnyObject?
  func replacementObjectForKeyedArchiver(_ archiver: NSKeyedArchiver) -> AnyObject?
  class func classFallbacksForKeyedArchiver() -> [String]
  class func classForKeyedArchiver() -> AnyClass?
}
extension NSObject {
  class func classForKeyedUnarchiver() -> AnyClass
}
