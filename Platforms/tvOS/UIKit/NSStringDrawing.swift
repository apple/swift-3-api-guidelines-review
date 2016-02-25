
@available(tvOS 6.0, *)
class NSStringDrawingContext : NSObject {
  var minimumScaleFactor: CGFloat
  var actualScaleFactor: CGFloat { get }
  var totalBounds: CGRect { get }
}
extension NSString {
  @available(tvOS 7.0, *)
  func sizeWithAttributes(_ attrs: [String : AnyObject]?) -> CGSize
  @available(tvOS 7.0, *)
  func drawAtPoint(_ point: CGPoint, withAttributes attrs: [String : AnyObject]?)
  @available(tvOS 7.0, *)
  func drawInRect(_ rect: CGRect, withAttributes attrs: [String : AnyObject]?)
}
extension NSAttributedString {
  @available(tvOS 6.0, *)
  func size() -> CGSize
  @available(tvOS 6.0, *)
  func drawAtPoint(_ point: CGPoint)
  @available(tvOS 6.0, *)
  func drawInRect(_ rect: CGRect)
}
@available(tvOS 6.0, *)
struct NSStringDrawingOptions : OptionSetType {
  init(rawValue rawValue: Int)
  let rawValue: Int
  static var UsesLineFragmentOrigin: NSStringDrawingOptions { get }
  static var UsesFontLeading: NSStringDrawingOptions { get }
  static var UsesDeviceMetrics: NSStringDrawingOptions { get }
  @available(tvOS 6.0, *)
  static var TruncatesLastVisibleLine: NSStringDrawingOptions { get }
}
extension NSString {
  @available(tvOS 7.0, *)
  func drawWithRect(_ rect: CGRect, options options: NSStringDrawingOptions, attributes attributes: [String : AnyObject]?, context context: NSStringDrawingContext?)
  @available(tvOS 7.0, *)
  func boundingRectWithSize(_ size: CGSize, options options: NSStringDrawingOptions, attributes attributes: [String : AnyObject]?, context context: NSStringDrawingContext?) -> CGRect
}
extension NSAttributedString {
  @available(tvOS 6.0, *)
  func drawWithRect(_ rect: CGRect, options options: NSStringDrawingOptions, context context: NSStringDrawingContext?)
  @available(tvOS 6.0, *)
  func boundingRectWithSize(_ size: CGSize, options options: NSStringDrawingOptions, context context: NSStringDrawingContext?) -> CGRect
}
extension NSStringDrawingContext {
}
