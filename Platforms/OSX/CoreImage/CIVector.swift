
@available(OSX 10.4, *)
class CIVector : NSObject, NSCopying, NSSecureCoding {
  init(values: UnsafePointer<CGFloat>, count: Int)
  convenience init(x: CGFloat)
  convenience init(x: CGFloat, y: CGFloat)
  convenience init(x: CGFloat, y: CGFloat, z: CGFloat)
  convenience init(x: CGFloat, y: CGFloat, z: CGFloat, w: CGFloat)
  @available(OSX 10.9, *)
  convenience init(CGPoint p: CGPoint)
  @available(OSX 10.9, *)
  convenience init(CGRect r: CGRect)
  @available(OSX 10.9, *)
  convenience init(CGAffineTransform r: CGAffineTransform)
  convenience init(string representation: String)
  func valueAtIndex(index: Int) -> CGFloat
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
  convenience init()
  @available(OSX 10.4, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.4, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.4, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
