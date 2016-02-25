
@available(iOS 4.2, *)
class MPMediaQuerySection : NSObject, NSSecureCoding, NSCopying {
  var title: String { get }
  var range: NSRange { get }
  @available(iOS 4.2, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 4.2, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 4.2, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
