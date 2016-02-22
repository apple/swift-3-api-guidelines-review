
@available(OSX 10.11, *)
class NSStringDrawingContext : NSObject {
  var minimumScaleFactor: CGFloat
  var actualScaleFactor: CGFloat { get }
  var totalBounds: NSRect { get }
  init()
}
extension NSString {
  @available(OSX 10.0, *)
  func size(attributes attrs: [String : AnyObject]? = [:]) -> NSSize
  @available(OSX 10.0, *)
  func draw(at point: NSPoint, withAttributes attrs: [String : AnyObject]? = [:])
  @available(OSX 10.0, *)
  func draw(in rect: NSRect, withAttributes attrs: [String : AnyObject]? = [:])
}
extension NSAttributedString {
  @available(OSX 10.0, *)
  func size() -> NSSize
  @available(OSX 10.0, *)
  func draw(at point: NSPoint)
  @available(OSX 10.0, *)
  func draw(in rect: NSRect)
}
@available(OSX 10.0, *)
struct NSStringDrawingOptions : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var usesLineFragmentOrigin: NSStringDrawingOptions { get }
  static var usesFontLeading: NSStringDrawingOptions { get }
  static var usesDeviceMetrics: NSStringDrawingOptions { get }
  @available(OSX 10.5, *)
  static var truncatesLastVisibleLine: NSStringDrawingOptions { get }
  @available(OSX, introduced=10.0, deprecated=10.11)
  static var disableScreenFontSubstitution: NSStringDrawingOptions { get }
  @available(OSX, introduced=10.0, deprecated=10.11)
  static var oneShot: NSStringDrawingOptions { get }
}
extension NSString {
  @available(OSX 10.11, *)
  func draw(rect: NSRect, options: NSStringDrawingOptions = [], attributes: [String : AnyObject]? = [:], context: NSStringDrawingContext?)
  @available(OSX 10.11, *)
  func boundingRect(with size: NSSize, options: NSStringDrawingOptions = [], attributes: [String : AnyObject]? = [:], context: NSStringDrawingContext?) -> NSRect
}
extension NSAttributedString {
  @available(OSX 10.11, *)
  func draw(rect: NSRect, options: NSStringDrawingOptions = [], context: NSStringDrawingContext?)
  @available(OSX 10.11, *)
  func boundingRect(with size: NSSize, options: NSStringDrawingOptions = [], context: NSStringDrawingContext?) -> NSRect
}
extension NSString {
  func draw(rect: NSRect, options: NSStringDrawingOptions = [], attributes: [String : AnyObject]? = [:])
  func boundingRect(with size: NSSize, options: NSStringDrawingOptions = [], attributes: [String : AnyObject]? = [:]) -> NSRect
}
extension NSAttributedString {
  func draw(rect: NSRect, options: NSStringDrawingOptions = [])
  func boundingRect(with size: NSSize, options: NSStringDrawingOptions = []) -> NSRect
}
