
var NSAppKitVersionNumberWithDockTilePlugInSupport: Double { get }
@available(OSX 10.5, *)
class NSDockTile : Object {
  var size: Size { get }
  var contentView: NSView?
  func display()
  var showsApplicationBadge: Bool
  var badgeLabel: String?
  unowned(unsafe) var owner: @sil_unmanaged AnyObject { get }
  init()
}
protocol NSDockTilePlugIn : ObjectProtocol {
  @available(OSX 10.5, *)
  func setDockTile(dockTile: NSDockTile?)
  optional func dockMenu() -> NSMenu?
}
