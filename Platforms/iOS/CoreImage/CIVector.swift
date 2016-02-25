
@available(iOS 5.0, *)
class CIVector : NSObject, NSCopying, NSSecureCoding {
  init(values values: UnsafePointer<CGFloat>, count count: Int)
  convenience init(x x: CGFloat)
  convenience init(x x: CGFloat, y y: CGFloat)
  convenience init(x x: CGFloat, y y: CGFloat, z z: CGFloat)
  convenience init(x x: CGFloat, y y: CGFloat, z z: CGFloat, w w: CGFloat)
  @available(iOS 5.0, *)
  convenience init(CGPoint p: CGPoint)
  @available(iOS 5.0, *)
  convenience init(CGRect r: CGRect)
  @available(iOS 5.0, *)
  convenience init(CGAffineTransform r: CGAffineTransform)
  convenience init(string representation: String)
  func valueAtIndex(_ index: Int) -> CGFloat
  var count: Int { get }
  var X: CGFloat { get }
  var Y: CGFloat { get }
  var Z: CGFloat { get }
  var W: CGFloat { get }
  @available(iOS 5.0, *)
  var CGPointValue: CGPoint { get }
  @available(iOS 5.0, *)
  var CGRectValue: CGRect { get }
  @available(iOS 5.0, *)
  var CGAffineTransformValue: CGAffineTransform { get }
  var stringRepresentation: String { get }
  @available(iOS 5.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 5.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 5.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
