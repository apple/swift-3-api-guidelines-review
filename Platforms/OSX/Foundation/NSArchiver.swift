
class Archiver : Coder {
  init(forWritingWith mdata: MutableData)
  var archiverData: MutableData { get }
  func encodeRootObject(rootObject: AnyObject)
  func encodeConditionalObject(object: AnyObject?)
  class func archivedData(rootObject rootObject: AnyObject) -> Data
  class func archiveRootObject(rootObject: AnyObject, toFile path: String) -> Bool
  func encodeClassName(trueName: String, intoClassName inArchiveName: String)
  func classNameEncoded(forTrueClassName trueName: String) -> String?
  func replace(object: AnyObject, with newObject: AnyObject)
  convenience init()
}
class Unarchiver : Coder {
  init?(forReadingWith data: Data)
  var isAtEnd: Bool { get }
  var systemVersion: UInt32 { get }
  class func unarchiveObject(data: Data) -> AnyObject?
  class func unarchiveObject(file path: String) -> AnyObject?
  class func decodeClassName(inArchiveName: String, asClassName trueName: String)
  func decodeClassName(inArchiveName: String, asClassName trueName: String)
  class func classNameDecoded(forArchiveClassName inArchiveName: String) -> String
  func classNameDecoded(forArchiveClassName inArchiveName: String) -> String
  func replace(object: AnyObject, with newObject: AnyObject)
  convenience init()
}
let inconsistentArchiveException: String
extension Object {
  var classForArchiver: AnyClass? { get }
  class func replacementObject(for archiver: Archiver) -> AnyObject?
  func replacementObject(for archiver: Archiver) -> AnyObject?
  class func classForArchiver() -> AnyClass?
}
