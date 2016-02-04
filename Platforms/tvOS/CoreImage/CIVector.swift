
@available(tvOS 5.0, *)
class CIVector : NSObject, NSCopying, NSSecureCoding {
  init(values: UnsafePointer<CGFloat>, count: Int)
  convenience init(x: CGFloat)
  convenience init(x: CGFloat, y: CGFloat)
  convenience init(x: CGFloat, y: CGFloat, z: CGFloat)
  convenience init(x: CGFloat, y: CGFloat, z: CGFloat, w: CGFloat)
  @available(tvOS 5.0, *)
  convenience init(CGPoint p: CGPoint)
  @available(tvOS 5.0, *)
  convenience init(CGRect r: CGRect)
  @available(tvOS 5.0, *)
  convenience init(CGAffineTransform r: CGAffineTransform)
  convenience init(string representation: String)
  func valueAtIndex(index: Int) -> CGFloat
  var count: Int { get }
  var X: CGFloat { get }
  var Y: CGFloat { get }
  var Z: CGFloat { get }
  var W: CGFloat { get }
  @available(tvOS 5.0, *)
  var CGPointValue: CGPoint { get }
  @available(tvOS 5.0, *)
  var CGRectValue: CGRect { get }
  @available(tvOS 5.0, *)
  var CGAffineTransformValue: CGAffineTransform { get }
  var stringRepresentation: String { get }
  convenience init()
  @available(tvOS 5.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 5.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 5.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
