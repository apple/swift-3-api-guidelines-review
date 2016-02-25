
class NSRulerMarker : NSObject, NSCopying, NSCoding {
  init(rulerView ruler: NSRulerView, markerLocation location: CGFloat, image image: NSImage, imageOrigin imageOrigin: NSPoint)
  unowned(unsafe) var ruler: @sil_unmanaged NSRulerView { get }
  var markerLocation: CGFloat
  var image: NSImage
  var imageOrigin: NSPoint
  var movable: Bool
  var removable: Bool
  var dragging: Bool { get }
  var representedObject: NSCopying?
  var imageRectInRuler: NSRect { get }
  var thicknessRequiredInRuler: CGFloat { get }
  func drawRect(_ rect: NSRect)
  func trackMouse(_ mouseDownEvent: NSEvent, adding isAdding: Bool) -> Bool
  func copyWithZone(_ zone: NSZone) -> AnyObject
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct __rFlags {
  var movable: UInt32
  var removable: UInt32
  var dragging: UInt32
  var pinned: UInt32
  var _reserved: UInt32
  init()
  init(movable movable: UInt32, removable removable: UInt32, dragging dragging: UInt32, pinned pinned: UInt32, _reserved _reserved: UInt32)
}
