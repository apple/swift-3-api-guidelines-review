
struct UIRectCorner : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var TopLeft: UIRectCorner { get }
  static var TopRight: UIRectCorner { get }
  static var BottomLeft: UIRectCorner { get }
  static var BottomRight: UIRectCorner { get }
  static var AllCorners: UIRectCorner { get }
}
@available(watchOS 2.0, *)
class UIBezierPath : NSObject, NSCopying, NSCoding {
  convenience init(rect rect: CGRect)
  convenience init(ovalInRect rect: CGRect)
  convenience init(roundedRect rect: CGRect, cornerRadius cornerRadius: CGFloat)
  convenience init(roundedRect rect: CGRect, byRoundingCorners corners: UIRectCorner, cornerRadii cornerRadii: CGSize)
  convenience init(arcCenter center: CGPoint, radius radius: CGFloat, startAngle startAngle: CGFloat, endAngle endAngle: CGFloat, clockwise clockwise: Bool)
  convenience init(CGPath CGPath: CGPath)
  init?(coder aDecoder: NSCoder)
  var CGPath: CGPath
  func moveToPoint(_ point: CGPoint)
  func addLineToPoint(_ point: CGPoint)
  func addCurveToPoint(_ endPoint: CGPoint, controlPoint1 controlPoint1: CGPoint, controlPoint2 controlPoint2: CGPoint)
  func addQuadCurveToPoint(_ endPoint: CGPoint, controlPoint controlPoint: CGPoint)
  @available(watchOS 2.0, *)
  func addArcWithCenter(_ center: CGPoint, radius radius: CGFloat, startAngle startAngle: CGFloat, endAngle endAngle: CGFloat, clockwise clockwise: Bool)
  func closePath()
  func removeAllPoints()
  func appendPath(_ bezierPath: UIBezierPath)
  @available(watchOS 2.0, *)
  func bezierPathByReversingPath() -> UIBezierPath
  func applyTransform(_ transform: CGAffineTransform)
  var empty: Bool { get }
  var bounds: CGRect { get }
  var currentPoint: CGPoint { get }
  func containsPoint(_ point: CGPoint) -> Bool
  var lineWidth: CGFloat
  var lineCapStyle: CGLineCap
  var lineJoinStyle: CGLineJoin
  var miterLimit: CGFloat
  var flatness: CGFloat
  var usesEvenOddFillRule: Bool
  func setLineDash(_ pattern: UnsafePointer<CGFloat>, count count: Int, phase phase: CGFloat)
  func getLineDash(_ pattern: UnsafeMutablePointer<CGFloat>, count count: UnsafeMutablePointer<Int>, phase phase: UnsafeMutablePointer<CGFloat>)
  func fill()
  func stroke()
  func fillWithBlendMode(_ blendMode: CGBlendMode, alpha alpha: CGFloat)
  func strokeWithBlendMode(_ blendMode: CGBlendMode, alpha alpha: CGFloat)
  func addClip()
  @available(watchOS 2.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(watchOS 2.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
}
