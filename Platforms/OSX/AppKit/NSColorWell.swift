
class NSColorWell : NSControl {
  func deactivate()
  func activate(exclusive: Bool)
  var active: Bool { get }
  func drawWellInside(insideRect: NSRect)
  var bordered: Bool
  func takeColorFrom(sender: AnyObject?)
  @NSCopying var color: NSColor
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
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
