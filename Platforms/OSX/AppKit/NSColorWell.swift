
class NSColorWell : NSControl {
  func deactivate()
  func activate(exclusive: Bool)
  var isActive: Bool { get }
  func draw(inside insideRect: Rect)
  var isBordered: Bool
  func takeColorFrom(sender: AnyObject?)
  @NSCopying var color: NSColor
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
struct __cwFlags {
  var isActive: UInt32
  var isBordered: UInt32
  var cantDraw: UInt32
  var isNotContinuous: UInt32
  var refusesFR: UInt32
  var reservedColorWell: UInt32
  init()
  init(isActive: UInt32, isBordered: UInt32, cantDraw: UInt32, isNotContinuous: UInt32, refusesFR: UInt32, reservedColorWell: UInt32)
}
