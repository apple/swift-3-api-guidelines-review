
class NSArchiver : NSCoder {
  init(forWritingWithMutableData mdata: NSMutableData)
  var archiverData: NSMutableData { get }
  class func archivedDataWithRootObject(_ rootObject: AnyObject) -> NSData
  class func archiveRootObject(_ rootObject: AnyObject, toFile path: String) -> Bool
  func encodeClassName(_ trueName: String, intoClassName inArchiveName: String)
  func classNameEncodedForTrueClassName(_ trueName: String) -> String?
  func replaceObject(_ object: AnyObject, withObject newObject: AnyObject)
}
class NSUnarchiver : NSCoder {
  init?(forReadingWithData data: NSData)
  var atEnd: Bool { get }
  class func unarchiveObjectWithData(_ data: NSData) -> AnyObject?
  class func unarchiveObjectWithFile(_ path: String) -> AnyObject?
  class func decodeClassName(_ inArchiveName: String, asClassName trueName: String)
  func decodeClassName(_ inArchiveName: String, asClassName trueName: String)
  class func classNameDecodedForArchiveClassName(_ inArchiveName: String) -> String
  func classNameDecodedForArchiveClassName(_ inArchiveName: String) -> String
  func replaceObject(_ object: AnyObject, withObject newObject: AnyObject)
}
let NSInconsistentArchiveException: String
extension NSObject {
  var classForArchiver: AnyClass? { get }
  class func replacementObjectForArchiver(_ archiver: NSArchiver) -> AnyObject?
  func replacementObjectForArchiver(_ archiver: NSArchiver) -> AnyObject?
  class func classForArchiver() -> AnyClass?
}
