
@available(OSX 10.4, *)
class CIVector : NSObject, NSCopying, NSSecureCoding {
  init(values values: UnsafePointer<CGFloat>, count count: Int)
  convenience init(x x: CGFloat)
  convenience init(x x: CGFloat, y y: CGFloat)
  convenience init(x x: CGFloat, y y: CGFloat, z z: CGFloat)
  convenience init(x x: CGFloat, y y: CGFloat, z z: CGFloat, w w: CGFloat)
  @available(OSX 10.9, *)
  convenience init(CGPoint p: CGPoint)
  @available(OSX 10.9, *)
  convenience init(CGRect r: CGRect)
  @available(OSX 10.9, *)
  convenience init(CGAffineTransform r: CGAffineTransform)
  convenience init(string representation: String)
  func valueAtIndex(_ index: Int) -> CGFloat
  var count: Int { get }
  var X: CGFloat { get }
  var Y: CGFloat { get }
  var Z: CGFloat { get }
  var W: CGFloat { get }
  @available(OSX 10.9, *)
  var CGPointValue: CGPoint { get }
  @available(OSX 10.9, *)
  var CGRectValue: CGRect { get }
  @available(OSX 10.9, *)
  var CGAffineTransformValue: CGAffineTransform { get }
  var stringRepresentation: String { get }
  @available(OSX 10.4, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.4, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.4, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
