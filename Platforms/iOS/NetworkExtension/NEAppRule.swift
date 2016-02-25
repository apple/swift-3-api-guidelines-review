
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
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 9.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
