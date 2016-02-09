
@available(iOS 6.0, *)
class NSStringDrawingContext : Object {
  var minimumScaleFactor: CGFloat
  var actualScaleFactor: CGFloat { get }
  var totalBounds: CGRect { get }
  init()
}
extension NSString {
  @available(iOS 7.0, *)
  func size(attributes attrs: [String : AnyObject]? = [:]) -> CGSize
  @available(iOS 7.0, *)
  func draw(at point: CGPoint, withAttributes attrs: [String : AnyObject]? = [:])
  @available(iOS 7.0, *)
  func draw(in rect: CGRect, withAttributes attrs: [String : AnyObject]? = [:])
}
extension AttributedString {
  @available(iOS 6.0, *)
  func size() -> CGSize
  @available(iOS 6.0, *)
  func draw(at point: CGPoint)
  @available(iOS 6.0, *)
  func draw(in rect: CGRect)
}
@available(iOS 6.0, *)
struct NSStringDrawingOptions : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var usesLineFragmentOrigin: NSStringDrawingOptions { get }
  static var usesFontLeading: NSStringDrawingOptions { get }
  static var usesDeviceMetrics: NSStringDrawingOptions { get }
  @available(iOS 6.0, *)
  static var truncatesLastVisibleLine: NSStringDrawingOptions { get }
}
extension NSString {
  @available(iOS 7.0, *)
  func draw(rect: CGRect, options: NSStringDrawingOptions = [], attributes: [String : AnyObject]? = [:], context: NSStringDrawingContext?)
  @available(iOS 7.0, *)
  func boundingRect(withSize size: CGSize, options: NSStringDrawingOptions = [], attributes: [String : AnyObject]? = [:], context: NSStringDrawingContext?) -> CGRect
}
extension AttributedString {
  @available(iOS 6.0, *)
  func draw(rect: CGRect, options: NSStringDrawingOptions = [], context: NSStringDrawingContext?)
  @available(iOS 6.0, *)
  func boundingRect(withSize size: CGSize, options: NSStringDrawingOptions = [], context: NSStringDrawingContext?) -> CGRect
}
extension NSStringDrawingContext {
}
