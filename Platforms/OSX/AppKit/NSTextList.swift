
struct NSTextListOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var PrependEnclosingMarker: NSTextListOptions { get }
}
class NSTextList : NSObject, NSCoding, NSCopying {
  init(markerFormat format: String, options mask: Int)
  var markerFormat: String { get }
  var listOptions: NSTextListOptions { get }
  func markerForItemNumber(_ itemNum: Int) -> String
  @available(OSX 10.6, *)
  var startingItemNumber: Int
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
