
enum NSPrinterTableStatus : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case OK
  case notFound
  case error
}
class NSPrinter : Object, Copying, Coding {
  class func printerNames() -> [String]
  class func printerTypes() -> [String]
  /*not inherited*/ init?(name: String)
  /*not inherited*/ init?(type: String)
  var name: String { get }
  var type: String { get }
  var languageLevel: Int { get }
  func pageSize(forPaper paperName: String) -> Size
  var deviceDescription: [String : AnyObject] { get }
  init()
  func copy(zone: Zone = nil) -> AnyObject
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension NSPrinter {
}
