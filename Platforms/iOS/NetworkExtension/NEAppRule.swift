
@available(iOS 9.0, *)
class NEAppRule : NSObject, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  init(signingIdentifier signingIdentifier: String)
  @available(iOS 9.0, *)
  var matchSigningIdentifier: String { get }
  @available(iOS 9.0, *)
  var matchDomains: [AnyObject]?
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 9.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
