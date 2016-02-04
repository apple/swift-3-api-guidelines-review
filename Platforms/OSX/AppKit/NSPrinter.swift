
enum NSPrinterTableStatus : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case OK
  case NotFound
  case Error
}
class NSPrinter : NSObject, NSCopying, NSCoding {
  class func printerNames() -> [String]
  class func printerTypes() -> [String]
  /*not inherited*/ init?(name: String)
  /*not inherited*/ init?(type: String)
  var name: String { get }
  var type: String { get }
  var languageLevel: Int { get }
  func pageSizeForPaper(paperName: String) -> NSSize
  var deviceDescription: [String : AnyObject] { get }
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSPrinter {
}
