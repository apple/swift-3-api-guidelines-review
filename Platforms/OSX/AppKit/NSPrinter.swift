
enum NSPrinterTableStatus : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case OK
  case notFound
  case error
}
class NSPrinter : NSObject, NSCopying, NSCoding {
  class func printerNames() -> [String]
  class func printerTypes() -> [String]
  /*not inherited*/ init?(name name: String)
  /*not inherited*/ init?(type type: String)
  var name: String { get }
  var type: String { get }
  var languageLevel: Int { get }
  func pageSize(forPaper paperName: String) -> NSSize
  var deviceDescription: [String : AnyObject] { get }
  func copy(with zone: NSZone = nil) -> AnyObject
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSPrinter {
}
