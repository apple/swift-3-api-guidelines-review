
@available(iOS 5.0, *)
class CIVector : Object, Copying, SecureCoding {
  init(values: UnsafePointer<CGFloat>, count: Int)
  convenience init(x: CGFloat)
  convenience init(x: CGFloat, y: CGFloat)
  convenience init(x: CGFloat, y: CGFloat, z: CGFloat)
  convenience init(x: CGFloat, y: CGFloat, z: CGFloat, w: CGFloat)
  @available(iOS 5.0, *)
  convenience init(cgPoint p: CGPoint)
  @available(iOS 5.0, *)
  convenience init(cgRect r: CGRect)
  @available(iOS 5.0, *)
  convenience init(cgAffineTransform r: CGAffineTransform)
  convenience init(string representation: String)
  func value(at index: Int) -> CGFloat
  var count: Int { get }
  var x: CGFloat { get }
  var y: CGFloat { get }
  var z: CGFloat { get }
  var w: CGFloat { get }
  @available(iOS 5.0, *)
  var cgPointValue: CGPoint { get }
  @available(iOS 5.0, *)
  var cgRectValue: CGRect { get }
  @available(iOS 5.0, *)
  var cgAffineTransformValue: CGAffineTransform { get }
  var stringRepresentation: String { get }
  convenience init()
  @available(iOS 5.0, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(iOS 5.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 5.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
