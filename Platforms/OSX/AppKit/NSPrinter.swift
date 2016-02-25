
enum NSPrinterTableStatus : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case OK
  case NotFound
  case Error
}
class NSPrinter : NSObject, NSCopying, NSCoding {
  class func printerNames() -> [String]
  class func printerTypes() -> [String]
  /*not inherited*/ init?(name name: String)
  /*not inherited*/ init?(type type: String)
  var name: String { get }
  var type: String { get }
  var languageLevel: Int { get }
  func pageSizeForPaper(_ paperName: String) -> NSSize
  var deviceDescription: [String : AnyObject] { get }
  func copyWithZone(_ zone: NSZone) -> AnyObject
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSPrinter {
}
