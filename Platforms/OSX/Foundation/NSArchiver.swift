
class NSArchiver : NSCoder {
  init(forWritingWithMutableData mdata: NSMutableData)
  var archiverData: NSMutableData { get }
  func encodeRootObject(rootObject: AnyObject)
  func encodeConditionalObject(object: AnyObject?)
  class func archivedDataWithRootObject(rootObject: AnyObject) -> NSData
  class func archiveRootObject(rootObject: AnyObject, toFile path: String) -> Bool
  func encodeClassName(trueName: String, intoClassName inArchiveName: String)
  func classNameEncodedForTrueClassName(trueName: String) -> String?
  func replaceObject(object: AnyObject, withObject newObject: AnyObject)
  convenience init()
}
class NSUnarchiver : NSCoder {
  init?(forReadingWithData data: NSData)
  var atEnd: Bool { get }
  var systemVersion: UInt32 { get }
  class func unarchiveObjectWithData(data: NSData) -> AnyObject?
  class func unarchiveObjectWithFile(path: String) -> AnyObject?
  class func decodeClassName(inArchiveName: String, asClassName trueName: String)
  func decodeClassName(inArchiveName: String, asClassName trueName: String)
  class func classNameDecodedForArchiveClassName(inArchiveName: String) -> String
  func classNameDecodedForArchiveClassName(inArchiveName: String) -> String
  func replaceObject(object: AnyObject, withObject newObject: AnyObject)
  convenience init()
}
let NSInconsistentArchiveException: String
extension NSObject {
  var classForArchiver: AnyClass? { get }
  class func replacementObjectForArchiver(archiver: NSArchiver) -> AnyObject?
  func replacementObjectForArchiver(archiver: NSArchiver) -> AnyObject?
  class func classForArchiver() -> AnyClass?
}
