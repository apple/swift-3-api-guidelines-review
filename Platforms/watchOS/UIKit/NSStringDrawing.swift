
@available(watchOS 2.0, *)
class NSStringDrawingContext : NSObject {
  var minimumScaleFactor: CGFloat
  var actualScaleFactor: CGFloat { get }
  var totalBounds: CGRect { get }
}
extension NSString {
  @available(watchOS 2.0, *)
  func sizeWithAttributes(_ attrs: [String : AnyObject]?) -> CGSize
  @available(watchOS 2.0, *)
  func drawAtPoint(_ point: CGPoint, withAttributes attrs: [String : AnyObject]?)
  @available(watchOS 2.0, *)
  func drawInRect(_ rect: CGRect, withAttributes attrs: [String : AnyObject]?)
}
extension NSAttributedString {
  @available(watchOS 2.0, *)
  func size() -> CGSize
  @available(watchOS 2.0, *)
  func drawAtPoint(_ point: CGPoint)
  @available(watchOS 2.0, *)
  func drawInRect(_ rect: CGRect)
}
@available(watchOS 2.0, *)
struct NSStringDrawingOptions : OptionSetType {
  init(rawValue rawValue: Int)
  let rawValue: Int
  static var UsesLineFragmentOrigin: NSStringDrawingOptions { get }
  static var UsesFontLeading: NSStringDrawingOptions { get }
  static var UsesDeviceMetrics: NSStringDrawingOptions { get }
  @available(watchOS 2.0, *)
  static var TruncatesLastVisibleLine: NSStringDrawingOptions { get }
}
extension NSString {
  @available(watchOS 2.0, *)
  func drawWithRect(_ rect: CGRect, options options: NSStringDrawingOptions, attributes attributes: [String : AnyObject]?, context context: NSStringDrawingContext?)
  @available(watchOS 2.0, *)
  func boundingRectWithSize(_ size: CGSize, options options: NSStringDrawingOptions, attributes attributes: [String : AnyObject]?, context context: NSStringDrawingContext?) -> CGRect
}
extension NSAttributedString {
  @available(watchOS 2.0, *)
  func drawWithRect(_ rect: CGRect, options options: NSStringDrawingOptions, context context: NSStringDrawingContext?)
  @available(watchOS 2.0, *)
  func boundingRectWithSize(_ size: CGSize, options options: NSStringDrawingOptions, context context: NSStringDrawingContext?) -> CGRect
}
extension NSStringDrawingContext {
  @available(watchOS, introduced=2.0, deprecated=2.0)
  var minimumTrackingAdjustment: CGFloat
  @available(watchOS, introduced=2.0, deprecated=2.0)
  var actualTrackingAdjustment: CGFloat { get }
}
