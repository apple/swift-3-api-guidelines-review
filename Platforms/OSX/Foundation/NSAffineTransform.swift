
struct NSAffineTransformStruct {
  var m11: CGFloat
  var m12: CGFloat
  var m21: CGFloat
  var m22: CGFloat
  var tX: CGFloat
  var tY: CGFloat
  init()
  init(m11: CGFloat, m12: CGFloat, m21: CGFloat, m22: CGFloat, tX: CGFloat, tY: CGFloat)
}
class NSAffineTransform : NSObject, NSCopying, NSSecureCoding {
  convenience init(transform: NSAffineTransform)
  init()
  func translateX(by deltaX: CGFloat, yBy deltaY: CGFloat)
  func rotate(byDegrees angle: CGFloat)
  func rotate(byRadians angle: CGFloat)
  func scale(by scale: CGFloat)
  func scaleX(by scaleX: CGFloat, yBy scaleY: CGFloat)
  func invert()
  func append(transform: NSAffineTransform)
  func prepend(transform: NSAffineTransform)
  func transform(aPoint: NSPoint) -> NSPoint
  func transform(aSize: NSSize) -> NSSize
  var transformStruct: NSAffineTransformStruct
  func copy(with zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
