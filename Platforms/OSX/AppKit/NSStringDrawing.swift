
@available(OSX 10.11, *)
class NSStringDrawingContext : NSObject {
  var minimumScaleFactor: CGFloat
  var actualScaleFactor: CGFloat { get }
  var totalBounds: NSRect { get }
  init()
}
extension NSString {
  @available(OSX 10.0, *)
  func sizeWithAttributes(attrs: [String : AnyObject]?) -> NSSize
  @available(OSX 10.0, *)
  func drawAtPoint(point: NSPoint, withAttributes attrs: [String : AnyObject]?)
  @available(OSX 10.0, *)
  func drawInRect(rect: NSRect, withAttributes attrs: [String : AnyObject]?)
}
extension NSAttributedString {
  @available(OSX 10.0, *)
  func size() -> NSSize
  @available(OSX 10.0, *)
  func drawAtPoint(point: NSPoint)
  @available(OSX 10.0, *)
  func drawInRect(rect: NSRect)
}
@available(OSX 10.0, *)
struct NSStringDrawingOptions : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var UsesLineFragmentOrigin: NSStringDrawingOptions { get }
  static var UsesFontLeading: NSStringDrawingOptions { get }
  static var UsesDeviceMetrics: NSStringDrawingOptions { get }
  @available(OSX 10.5, *)
  static var TruncatesLastVisibleLine: NSStringDrawingOptions { get }
  @available(OSX, introduced=10.0, deprecated=10.11)
  static var DisableScreenFontSubstitution: NSStringDrawingOptions { get }
  @available(OSX, introduced=10.0, deprecated=10.11)
  static var OneShot: NSStringDrawingOptions { get }
}
extension NSString {
  @available(OSX 10.11, *)
  func drawWithRect(rect: NSRect, options: NSStringDrawingOptions, attributes: [String : AnyObject]?, context: NSStringDrawingContext?)
  @available(OSX 10.11, *)
  func boundingRectWithSize(size: NSSize, options: NSStringDrawingOptions, attributes: [String : AnyObject]?, context: NSStringDrawingContext?) -> NSRect
}
extension NSAttributedString {
  @available(OSX 10.11, *)
  func drawWithRect(rect: NSRect, options: NSStringDrawingOptions, context: NSStringDrawingContext?)
  @available(OSX 10.11, *)
  func boundingRectWithSize(size: NSSize, options: NSStringDrawingOptions, context: NSStringDrawingContext?) -> NSRect
}
extension NSString {
  func drawWithRect(rect: NSRect, options: NSStringDrawingOptions, attributes: [String : AnyObject]?)
  func boundingRectWithSize(size: NSSize, options: NSStringDrawingOptions, attributes: [String : AnyObject]?) -> NSRect
}
extension NSAttributedString {
  func drawWithRect(rect: NSRect, options: NSStringDrawingOptions)
  func boundingRectWithSize(size: NSSize, options: NSStringDrawingOptions) -> NSRect
}
