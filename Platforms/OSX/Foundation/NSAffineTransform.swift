
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
  func translateXBy(deltaX: CGFloat, yBy deltaY: CGFloat)
  func rotateByDegrees(angle: CGFloat)
  func rotateByRadians(angle: CGFloat)
  func scaleBy(scale: CGFloat)
  func scaleXBy(scaleX: CGFloat, yBy scaleY: CGFloat)
  func invert()
  func appendTransform(transform: NSAffineTransform)
  func prependTransform(transform: NSAffineTransform)
  func transformPoint(aPoint: NSPoint) -> NSPoint
  func transformSize(aSize: NSSize) -> NSSize
  var transformStruct: NSAffineTransformStruct
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
