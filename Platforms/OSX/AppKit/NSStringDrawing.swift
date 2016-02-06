
@available(OSX 10.11, *)
class NSStringDrawingContext : Object {
  var minimumScaleFactor: CGFloat
  var actualScaleFactor: CGFloat { get }
  var totalBounds: Rect { get }
  init()
}
extension NSString {
  @available(OSX 10.0, *)
  func sizeWith(attributes attrs: [String : AnyObject]? = [:]) -> Size
  @available(OSX 10.0, *)
  func drawAt(point: Point, withAttributes attrs: [String : AnyObject]? = [:])
  @available(OSX 10.0, *)
  func drawIn(rect: Rect, withAttributes attrs: [String : AnyObject]? = [:])
}
extension AttributedString {
  @available(OSX 10.0, *)
  func size() -> Size
  @available(OSX 10.0, *)
  func drawAt(point: Point)
  @available(OSX 10.0, *)
  func drawIn(rect: Rect)
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
  func draw(rect: Rect, options: NSStringDrawingOptions = [], attributes: [String : AnyObject]? = [:], context: NSStringDrawingContext?)
  @available(OSX 10.11, *)
  func boundingRectWith(size: Size, options: NSStringDrawingOptions = [], attributes: [String : AnyObject]? = [:], context: NSStringDrawingContext?) -> Rect
}
extension AttributedString {
  @available(OSX 10.11, *)
  func draw(rect: Rect, options: NSStringDrawingOptions = [], context: NSStringDrawingContext?)
  @available(OSX 10.11, *)
  func boundingRectWith(size: Size, options: NSStringDrawingOptions = [], context: NSStringDrawingContext?) -> Rect
}
extension NSString {
  func draw(rect: Rect, options: NSStringDrawingOptions = [], attributes: [String : AnyObject]? = [:])
  func boundingRectWith(size: Size, options: NSStringDrawingOptions = [], attributes: [String : AnyObject]? = [:]) -> Rect
}
extension AttributedString {
  func draw(rect: Rect, options: NSStringDrawingOptions = [])
  func boundingRectWith(size: Size, options: NSStringDrawingOptions = []) -> Rect
}
