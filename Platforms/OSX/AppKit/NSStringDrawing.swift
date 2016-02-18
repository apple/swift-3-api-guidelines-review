
@available(OSX 10.11, *)
class NSStringDrawingContext : Object {
  var minimumScaleFactor: CGFloat
  var actualScaleFactor: CGFloat { get }
  var totalBounds: Rect { get }
  init()
}
extension NSString {
  @available(OSX 10.0, *)
  func size(attributes attrs: [String : AnyObject]? = [:]) -> Size
  @available(OSX 10.0, *)
  func draw(at point: Point, withAttributes attrs: [String : AnyObject]? = [:])
  @available(OSX 10.0, *)
  func draw(in rect: Rect, withAttributes attrs: [String : AnyObject]? = [:])
}
extension AttributedString {
  @available(OSX 10.0, *)
  func size() -> Size
  @available(OSX 10.0, *)
  func draw(at point: Point)
  @available(OSX 10.0, *)
  func draw(in rect: Rect)
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
  func draw(rect: Rect, options: NSStringDrawingOptions = [], attributes: [String : AnyObject]? = [:], context: NSStringDrawingContext?)
  @available(OSX 10.11, *)
  func boundingRect(size: Size, options: NSStringDrawingOptions = [], attributes: [String : AnyObject]? = [:], context: NSStringDrawingContext?) -> Rect
}
extension AttributedString {
  @available(OSX 10.11, *)
  func draw(rect: Rect, options: NSStringDrawingOptions = [], context: NSStringDrawingContext?)
  @available(OSX 10.11, *)
  func boundingRect(size: Size, options: NSStringDrawingOptions = [], context: NSStringDrawingContext?) -> Rect
}
extension NSString {
  func draw(rect: Rect, options: NSStringDrawingOptions = [], attributes: [String : AnyObject]? = [:])
  func boundingRect(size: Size, options: NSStringDrawingOptions = [], attributes: [String : AnyObject]? = [:]) -> Rect
}
extension AttributedString {
  func draw(rect: Rect, options: NSStringDrawingOptions = [])
  func boundingRect(size: Size, options: NSStringDrawingOptions = []) -> Rect
}
