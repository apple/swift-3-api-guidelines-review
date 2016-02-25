
@available(OSX 10.11, *)
class NSStringDrawingContext : NSObject {
  var minimumScaleFactor: CGFloat
  var actualScaleFactor: CGFloat { get }
  var totalBounds: NSRect { get }
}
extension NSString {
  @available(OSX 10.0, *)
  func sizeWithAttributes(_ attrs: [String : AnyObject]?) -> NSSize
  @available(OSX 10.0, *)
  func drawAtPoint(_ point: NSPoint, withAttributes attrs: [String : AnyObject]?)
  @available(OSX 10.0, *)
  func drawInRect(_ rect: NSRect, withAttributes attrs: [String : AnyObject]?)
}
extension NSAttributedString {
  @available(OSX 10.0, *)
  func size() -> NSSize
  @available(OSX 10.0, *)
  func drawAtPoint(_ point: NSPoint)
  @available(OSX 10.0, *)
  func drawInRect(_ rect: NSRect)
}
@available(OSX 10.0, *)
struct NSStringDrawingOptions : OptionSetType {
  init(rawValue rawValue: Int)
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
  func drawWithRect(_ rect: NSRect, options options: NSStringDrawingOptions, attributes attributes: [String : AnyObject]?, context context: NSStringDrawingContext?)
  @available(OSX 10.11, *)
  func boundingRectWithSize(_ size: NSSize, options options: NSStringDrawingOptions, attributes attributes: [String : AnyObject]?, context context: NSStringDrawingContext?) -> NSRect
}
extension NSAttributedString {
  @available(OSX 10.11, *)
  func drawWithRect(_ rect: NSRect, options options: NSStringDrawingOptions, context context: NSStringDrawingContext?)
  @available(OSX 10.11, *)
  func boundingRectWithSize(_ size: NSSize, options options: NSStringDrawingOptions, context context: NSStringDrawingContext?) -> NSRect
}
extension NSString {
  func drawWithRect(_ rect: NSRect, options options: NSStringDrawingOptions, attributes attributes: [String : AnyObject]?)
  func boundingRectWithSize(_ size: NSSize, options options: NSStringDrawingOptions, attributes attributes: [String : AnyObject]?) -> NSRect
}
extension NSAttributedString {
  func drawWithRect(_ rect: NSRect, options options: NSStringDrawingOptions)
  func boundingRectWithSize(_ size: NSSize, options options: NSStringDrawingOptions) -> NSRect
}
