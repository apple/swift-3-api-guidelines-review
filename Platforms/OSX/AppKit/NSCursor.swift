
var NSAppKitVersionNumberWithCursorSizeSupport: Double { get }
class NSCursor : NSObject, NSCoding {
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
  init(image newImage: NSImage, hotSpot aPoint: NSPoint)
  convenience init(image newImage: NSImage, foregroundColorHint fg: NSColor?, backgroundColorHint bg: NSColor?, hotSpot hotSpot: NSPoint)
  class func hide()
  class func unhide()
  class func setHiddenUntilMouseMoves(_ flag: Bool)
  class func pop()
  var image: NSImage { get }
  var hotSpot: NSPoint { get }
  func push()
  func pop()
  func set()
  func setOnMouseExited(_ flag: Bool)
  func setOnMouseEntered(_ flag: Bool)
  var isSetOnMouseExited: Bool { get }
  var isSetOnMouseEntered: Bool { get }
  func mouseEntered(_ theEvent: NSEvent)
  func mouseExited(_ theEvent: NSEvent)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

extension NSCursor : CustomPlaygroundQuickLookable {
}
struct _cursorFlags {
  var onMouseExited: UInt32
  var onMouseEntered: UInt32
  var cursorType: UInt32
  init()
  init(onMouseExited onMouseExited: UInt32, onMouseEntered onMouseEntered: UInt32, cursorType cursorType: UInt32)
}
