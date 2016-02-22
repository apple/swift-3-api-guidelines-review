
struct UIRectCorner : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var topLeft: UIRectCorner { get }
  static var topRight: UIRectCorner { get }
  static var bottomLeft: UIRectCorner { get }
  static var bottomRight: UIRectCorner { get }
  static var allCorners: UIRectCorner { get }
}
@available(watchOS 2.0, *)
class UIBezierPath : NSObject, NSCopying, NSCoding {
  convenience init(rect: CGRect)
  convenience init(ovalIn rect: CGRect)
  convenience init(roundedRect rect: CGRect, cornerRadius: CGFloat)
  convenience init(roundedRect rect: CGRect, byRoundingCorners corners: UIRectCorner, cornerRadii: CGSize)
  convenience init(arcCenter center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)
  convenience init(cgPath CGPath: CGPath)
  init()
  init?(coder aDecoder: NSCoder)
  var cgPath: CGPath
  func move(to point: CGPoint)
  func addLine(to point: CGPoint)
  func addCurve(to endPoint: CGPoint, controlPoint1: CGPoint, controlPoint2: CGPoint)
  func addQuadCurve(to endPoint: CGPoint, controlPoint: CGPoint)
  @available(watchOS 2.0, *)
  func addArc(center center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)
  func close()
  func removeAllPoints()
  func append(bezierPath: UIBezierPath)
  @available(watchOS 2.0, *)
  func reversing() -> UIBezierPath
  func apply(transform: CGAffineTransform)
  var isEmpty: Bool { get }
  var bounds: CGRect { get }
  var currentPoint: CGPoint { get }
  func contains(point: CGPoint) -> Bool
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
  func fill(blendMode: CGBlendMode, alpha: CGFloat)
  func stroke(blendMode: CGBlendMode, alpha: CGFloat)
  func addClip()
  @available(watchOS 2.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  func encode(with aCoder: NSCoder)
}
