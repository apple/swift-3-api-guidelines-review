
@available(OSX 10.11, *)
enum NSTableViewRowActionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case regular
  case destructive
}
@available(OSX 10.11, *)
class NSTableViewRowAction : Object, Copying {
  convenience init(style: NSTableViewRowActionStyle, title: String, handler: (NSTableViewRowAction, Int) -> Void)
  var style: NSTableViewRowActionStyle { get }
  var title: String
  @NSCopying var backgroundColor: NSColor!
  init()
  @available(OSX 10.11, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
