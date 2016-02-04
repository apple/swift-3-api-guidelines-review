
@available(tvOS 6.0, *)
class NSStringDrawingContext : NSObject {
  var minimumScaleFactor: CGFloat
  var actualScaleFactor: CGFloat { get }
  var totalBounds: CGRect { get }
  init()
}
extension NSString {
  @available(tvOS 7.0, *)
  func sizeWithAttributes(attrs: [String : AnyObject]?) -> CGSize
  @available(tvOS 7.0, *)
  func drawAtPoint(point: CGPoint, withAttributes attrs: [String : AnyObject]?)
  @available(tvOS 7.0, *)
  func drawInRect(rect: CGRect, withAttributes attrs: [String : AnyObject]?)
}
extension NSAttributedString {
  @available(tvOS 6.0, *)
  func size() -> CGSize
  @available(tvOS 6.0, *)
  func drawAtPoint(point: CGPoint)
  @available(tvOS 6.0, *)
  func drawInRect(rect: CGRect)
}
@available(tvOS 6.0, *)
struct NSStringDrawingOptions : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var UsesLineFragmentOrigin: NSStringDrawingOptions { get }
  static var UsesFontLeading: NSStringDrawingOptions { get }
  static var UsesDeviceMetrics: NSStringDrawingOptions { get }
  @available(tvOS 6.0, *)
  static var TruncatesLastVisibleLine: NSStringDrawingOptions { get }
}
extension NSString {
  @available(tvOS 7.0, *)
  func drawWithRect(rect: CGRect, options: NSStringDrawingOptions, attributes: [String : AnyObject]?, context: NSStringDrawingContext?)
  @available(tvOS 7.0, *)
  func boundingRectWithSize(size: CGSize, options: NSStringDrawingOptions, attributes: [String : AnyObject]?, context: NSStringDrawingContext?) -> CGRect
}
extension NSAttributedString {
  @available(tvOS 6.0, *)
  func drawWithRect(rect: CGRect, options: NSStringDrawingOptions, context: NSStringDrawingContext?)
  @available(tvOS 6.0, *)
  func boundingRectWithSize(size: CGSize, options: NSStringDrawingOptions, context: NSStringDrawingContext?) -> CGRect
}
extension NSStringDrawingContext {
}
