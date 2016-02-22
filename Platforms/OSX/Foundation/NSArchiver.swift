
class NSArchiver : NSCoder {
  init(forWritingWith mdata: NSMutableData)
  var archiverData: NSMutableData { get }
  func encodeRootObject(_ rootObject: AnyObject)
  func encodeConditionalObject(_ object: AnyObject?)
  class func archivedData(withRootObject rootObject: AnyObject) -> NSData
  class func archiveRootObject(_ rootObject: AnyObject, toFile path: String) -> Bool
  func encodeClassName(_ trueName: String, intoClassName inArchiveName: String)
  func classNameEncoded(forTrueClassName trueName: String) -> String?
  func replace(_ object: AnyObject, with newObject: AnyObject)
  convenience init()
}
class NSUnarchiver : NSCoder {
  init?(forReadingWith data: NSData)
  var isAtEnd: Bool { get }
  var systemVersion: UInt32 { get }
  class func unarchiveObject(with data: NSData) -> AnyObject?
  class func unarchiveObject(withFile path: String) -> AnyObject?
  class func decodeClassName(_ inArchiveName: String, asClassName trueName: String)
  func decodeClassName(_ inArchiveName: String, asClassName trueName: String)
  class func classNameDecoded(forArchiveClassName inArchiveName: String) -> String
  func classNameDecoded(forArchiveClassName inArchiveName: String) -> String
  func replace(_ object: AnyObject, with newObject: AnyObject)
  convenience init()
}
let NSInconsistentArchiveException: String
extension NSObject {
  var classForArchiver: AnyClass? { get }
  class func replacementObject(for archiver: NSArchiver) -> AnyObject?
  func replacementObject(for archiver: NSArchiver) -> AnyObject?
  class func classForArchiver() -> AnyClass?
}
