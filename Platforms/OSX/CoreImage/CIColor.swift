
@available(OSX 10.4, *)
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
  @available(OSX 10.4, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.4, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.4, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
