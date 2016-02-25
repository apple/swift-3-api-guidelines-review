
@available(tvOS 5.0, *)
class CIColor : NSObject, NSSecureCoding, NSCopying {
  convenience init(red r: CGFloat, green g: CGFloat, blue b: CGFloat)
  convenience init(string representation: String)
  init(cgColor c: CGColor)
  convenience init(red r: CGFloat, green g: CGFloat, blue b: CGFloat, alpha a: CGFloat)
  var numberOfComponents: Int { get }
  var components: UnsafePointer<CGFloat> { get }
  var alpha: CGFloat { get }
  var colorSpace: CGColorSpace { get }
  var red: CGFloat { get }
  var green: CGFloat { get }
  var blue: CGFloat { get }
  var stringRepresentation: String { get }
  @available(tvOS 5.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 5.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 5.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
