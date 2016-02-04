
var NSAppKitVersionNumberWithCursorSizeSupport: Double { get }
class NSCursor : NSObject, NSCoding {
  class func currentCursor() -> NSCursor
  @available(OSX 10.6, *)
  class func currentSystemCursor() -> NSCursor?
  class func arrowCursor() -> NSCursor
  class func IBeamCursor() -> NSCursor
  class func pointingHandCursor() -> NSCursor
  class func closedHandCursor() -> NSCursor
  class func openHandCursor() -> NSCursor
  class func resizeLeftCursor() -> NSCursor
  class func resizeRightCursor() -> NSCursor
  class func resizeLeftRightCursor() -> NSCursor
  class func resizeUpCursor() -> NSCursor
  class func resizeDownCursor() -> NSCursor
  class func resizeUpDownCursor() -> NSCursor
  class func crosshairCursor() -> NSCursor
  class func disappearingItemCursor() -> NSCursor
  @available(OSX 10.5, *)
  class func operationNotAllowedCursor() -> NSCursor
  @available(OSX 10.6, *)
  class func dragLinkCursor() -> NSCursor
  @available(OSX 10.6, *)
  class func dragCopyCursor() -> NSCursor
  @available(OSX 10.6, *)
  class func contextualMenuCursor() -> NSCursor
  @available(OSX 10.7, *)
  class func IBeamCursorForVerticalLayout() -> NSCursor
  init(image newImage: NSImage, hotSpot aPoint: NSPoint)
  convenience init(image newImage: NSImage, foregroundColorHint fg: NSColor?, backgroundColorHint bg: NSColor?, hotSpot: NSPoint)
  class func hide()
  class func unhide()
  class func setHiddenUntilMouseMoves(flag: Bool)
  class func pop()
  var image: NSImage { get }
  var hotSpot: NSPoint { get }
  func push()
  func pop()
  func set()
  func setOnMouseExited(flag: Bool)
  func setOnMouseEntered(flag: Bool)
  var setOnMouseExited: Bool { get }
  var setOnMouseEntered: Bool { get }
  func mouseEntered(theEvent: NSEvent)
  func mouseExited(theEvent: NSEvent)
  convenience init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
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
