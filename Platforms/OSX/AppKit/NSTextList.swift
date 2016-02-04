
struct NSTextListOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var PrependEnclosingMarker: NSTextListOptions { get }
}
class NSTextList : NSObject, NSCoding, NSCopying {
  init(markerFormat format: String, options mask: Int)
  var markerFormat: String { get }
  var listOptions: NSTextListOptions { get }
  func markerForItemNumber(itemNum: Int) -> String
  @available(OSX 10.6, *)
  var startingItemNumber: Int
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
