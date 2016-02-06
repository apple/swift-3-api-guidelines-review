
@available(OSX 10.11, *)
enum NSTableViewRowActionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Regular
  case Destructive
}
@available(OSX 10.11, *)
class NSTableViewRowAction : Object, Copying {
  convenience init(style: NSTableViewRowActionStyle, title: String, handler: (NSTableViewRowAction, Int) -> Void)
  var style: NSTableViewRowActionStyle { get }
  var title: String
  @NSCopying var backgroundColor: NSColor!
  init()
  @available(OSX 10.11, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
