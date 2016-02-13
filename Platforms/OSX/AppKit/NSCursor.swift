
var NSAppKitVersionNumberWithCursorSizeSupport: Double { get }
class NSCursor : Object, Coding {
  class func current() -> NSCursor
  @available(OSX 10.6, *)
  class func currentSystem() -> NSCursor?
  class func arrow() -> NSCursor
  class func iBeam() -> NSCursor
  class func pointingHand() -> NSCursor
  class func closedHand() -> NSCursor
  class func openHand() -> NSCursor
  class func resizeLeft() -> NSCursor
  class func resizeRight() -> NSCursor
  class func resizeLeftRight() -> NSCursor
  class func resizeUp() -> NSCursor
  class func resizeDown() -> NSCursor
  class func resizeUpDown() -> NSCursor
  class func crosshair() -> NSCursor
  class func disappearingItem() -> NSCursor
  @available(OSX 10.5, *)
  class func operationNotAllowed() -> NSCursor
  @available(OSX 10.6, *)
  class func dragLink() -> NSCursor
  @available(OSX 10.6, *)
  class func dragCopy() -> NSCursor
  @available(OSX 10.6, *)
  class func contextualMenu() -> NSCursor
  @available(OSX 10.7, *)
  class func iBeamCursorForVerticalLayout() -> NSCursor
  init(image newImage: NSImage, hotSpot aPoint: Point)
  convenience init(image newImage: NSImage, foregroundColorHint fg: NSColor?, backgroundColorHint bg: NSColor?, hotSpot: Point)
  class func hide()
  class func unhide()
  class func setHiddenUntilMouseMoves(flag: Bool)
  class func pop()
  var image: NSImage { get }
  var hotSpot: Point { get }
  func push()
  func pop()
  func set()
  func setOnMouseExited(flag: Bool)
  func setOnMouseEntered(flag: Bool)
  var isSetOnMouseExited: Bool { get }
  var isSetOnMouseEntered: Bool { get }
  func mouseEntered(theEvent: NSEvent)
  func mouseExited(theEvent: NSEvent)
  convenience init()
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
}

extension NSCursor : CustomPlaygroundQuickLookable {
  func customPlaygroundQuickLook() -> PlaygroundQuickLook
}
struct _cursorFlags {
  var onMouseExited: UInt32
  var onMouseEntered: UInt32
  var cursorType: UInt32
  init()
  init(onMouseExited: UInt32, onMouseEntered: UInt32, cursorType: UInt32)
}
