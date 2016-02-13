
struct NSTextListOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var prependEnclosingMarker: NSTextListOptions { get }
}
class NSTextList : Object, Coding, Copying {
  init(markerFormat format: String, options mask: Int)
  var markerFormat: String { get }
  var listOptions: NSTextListOptions { get }
  func marker(forItemNumber itemNum: Int) -> String
  @available(OSX 10.6, *)
  var startingItemNumber: Int
  init()
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone: Zone = nil) -> AnyObject
}
