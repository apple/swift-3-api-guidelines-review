
struct AffineTransformStruct {
  var m11: CGFloat
  var m12: CGFloat
  var m21: CGFloat
  var m22: CGFloat
  var tX: CGFloat
  var tY: CGFloat
  init()
  init(m11: CGFloat, m12: CGFloat, m21: CGFloat, m22: CGFloat, tX: CGFloat, tY: CGFloat)
}
class AffineTransform : Object, Copying, SecureCoding {
  convenience init(transform: AffineTransform)
  init()
  func translateX(by deltaX: CGFloat, yBy deltaY: CGFloat)
  func rotate(byDegrees angle: CGFloat)
  func rotate(byRadians angle: CGFloat)
  func scale(by scale: CGFloat)
  func scaleX(by scaleX: CGFloat, yBy scaleY: CGFloat)
  func invert()
  func append(transform: AffineTransform)
  func prepend(transform: AffineTransform)
  func transform(aPoint: Point) -> Point
  func transform(aSize: Size) -> Size
  var transformStruct: AffineTransformStruct
  func copy(zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
