
class NSRulerMarker : Object, Copying, Coding {
  init(rulerView ruler: NSRulerView, markerLocation location: CGFloat, image: NSImage, imageOrigin: Point)
  unowned(unsafe) var ruler: @sil_unmanaged NSRulerView { get }
  var markerLocation: CGFloat
  var image: NSImage
  var imageOrigin: Point
  var isMovable: Bool
  var isRemovable: Bool
  var isDragging: Bool { get }
  var representedObject: Copying?
  var imageRectInRuler: Rect { get }
  var thicknessRequiredInRuler: CGFloat { get }
  func draw(rect: Rect)
  func trackMouse(mouseDownEvent: NSEvent, adding isAdding: Bool) -> Bool
  convenience init()
  func copy(zone: Zone = nil) -> AnyObject
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
struct __rFlags {
  var movable: UInt32
  var removable: UInt32
  var dragging: UInt32
  var pinned: UInt32
  var _reserved: UInt32
  init()
  init(movable: UInt32, removable: UInt32, dragging: UInt32, pinned: UInt32, _reserved: UInt32)
}
