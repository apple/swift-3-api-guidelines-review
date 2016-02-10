
@available(tvOS 5.0, *)
class CIVector : Object, Copying, SecureCoding {
  init(values: UnsafePointer<CGFloat>, count: Int)
  convenience init(x: CGFloat)
  convenience init(x: CGFloat, y: CGFloat)
  convenience init(x: CGFloat, y: CGFloat, z: CGFloat)
  convenience init(x: CGFloat, y: CGFloat, z: CGFloat, w: CGFloat)
  @available(tvOS 5.0, *)
  convenience init(cgPoint p: CGPoint)
  @available(tvOS 5.0, *)
  convenience init(cgRect r: CGRect)
  @available(tvOS 5.0, *)
  convenience init(cgAffineTransform r: CGAffineTransform)
  convenience init(string representation: String)
  func value(at index: Int) -> CGFloat
  var count: Int { get }
  var x: CGFloat { get }
  var y: CGFloat { get }
  var z: CGFloat { get }
  var w: CGFloat { get }
  @available(tvOS 5.0, *)
  var cgPointValue: CGPoint { get }
  @available(tvOS 5.0, *)
  var cgRectValue: CGRect { get }
  @available(tvOS 5.0, *)
  var cgAffineTransformValue: CGAffineTransform { get }
  var stringRepresentation: String { get }
  convenience init()
  @available(tvOS 5.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(tvOS 5.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 5.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
