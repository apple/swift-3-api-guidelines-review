
struct NSAffineTransformStruct {
  var m11: CGFloat
  var m12: CGFloat
  var m21: CGFloat
  var m22: CGFloat
  var tX: CGFloat
  var tY: CGFloat
  init()
  init(m11 m11: CGFloat, m12 m12: CGFloat, m21 m21: CGFloat, m22 m22: CGFloat, tX tX: CGFloat, tY tY: CGFloat)
}
class NSAffineTransform : NSObject, NSCopying, NSSecureCoding {
  convenience init(transform transform: NSAffineTransform)
  func translateXBy(_ deltaX: CGFloat, yBy deltaY: CGFloat)
  func rotateByDegrees(_ angle: CGFloat)
  func rotateByRadians(_ angle: CGFloat)
  func scaleBy(_ scale: CGFloat)
  func scaleXBy(_ scaleX: CGFloat, yBy scaleY: CGFloat)
  func invert()
  func appendTransform(_ transform: NSAffineTransform)
  func prependTransform(_ transform: NSAffineTransform)
  func transformPoint(_ aPoint: NSPoint) -> NSPoint
  func transformSize(_ aSize: NSSize) -> NSSize
  var transformStruct: NSAffineTransformStruct
  func copyWithZone(_ zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
