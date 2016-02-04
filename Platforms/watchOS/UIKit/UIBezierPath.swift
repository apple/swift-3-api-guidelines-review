
struct UIRectCorner : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var TopLeft: UIRectCorner { get }
  static var TopRight: UIRectCorner { get }
  static var BottomLeft: UIRectCorner { get }
  static var BottomRight: UIRectCorner { get }
  static var AllCorners: UIRectCorner { get }
}
@available(watchOS 2.0, *)
class UIBezierPath : NSObject, NSCopying, NSCoding {
  convenience init(rect: CGRect)
  convenience init(ovalInRect rect: CGRect)
  convenience init(roundedRect rect: CGRect, cornerRadius: CGFloat)
  convenience init(roundedRect rect: CGRect, byRoundingCorners corners: UIRectCorner, cornerRadii: CGSize)
  convenience init(arcCenter center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)
  convenience init(CGPath: CGPath)
  init()
  init?(coder aDecoder: NSCoder)
  var CGPath: CGPath
  func moveToPoint(point: CGPoint)
  func addLineToPoint(point: CGPoint)
  func addCurveToPoint(endPoint: CGPoint, controlPoint1: CGPoint, controlPoint2: CGPoint)
  func addQuadCurveToPoint(endPoint: CGPoint, controlPoint: CGPoint)
  @available(watchOS 2.0, *)
  func addArcWithCenter(center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)
  func closePath()
  func removeAllPoints()
  func appendPath(bezierPath: UIBezierPath)
  @available(watchOS 2.0, *)
  func bezierPathByReversingPath() -> UIBezierPath
  func applyTransform(transform: CGAffineTransform)
  var empty: Bool { get }
  var bounds: CGRect { get }
  var currentPoint: CGPoint { get }
  func containsPoint(point: CGPoint) -> Bool
  var lineWidth: CGFloat
  var lineCapStyle: CGLineCap
  var lineJoinStyle: CGLineJoin
  var miterLimit: CGFloat
  var flatness: CGFloat
  var usesEvenOddFillRule: Bool
  func setLineDash(pattern: UnsafePointer<CGFloat>, count: Int, phase: CGFloat)
  func getLineDash(pattern: UnsafeMutablePointer<CGFloat>, count: UnsafeMutablePointer<Int>, phase: UnsafeMutablePointer<CGFloat>)
  func fill()
  func stroke()
  func fillWithBlendMode(blendMode: CGBlendMode, alpha: CGFloat)
  func strokeWithBlendMode(blendMode: CGBlendMode, alpha: CGFloat)
  func addClip()
  @available(watchOS 2.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(watchOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
}
