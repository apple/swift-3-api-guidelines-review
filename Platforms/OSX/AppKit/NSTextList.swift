
struct NSTextListOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var prependEnclosingMarker: NSTextListOptions { get }
}
class NSTextList : NSObject, NSCoding, NSCopying {
  init(markerFormat format: String, options mask: Int)
  var markerFormat: String { get }
  var listOptions: NSTextListOptions { get }
  func marker(forItemNumber itemNum: Int) -> String
  @available(OSX 10.6, *)
  var startingItemNumber: Int
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copy(with zone: NSZone = nil) -> AnyObject
}
