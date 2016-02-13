
@available(iOS 9.0, *)
class NEAppRule : Object, SecureCoding, Copying {
  @available(iOS 9.0, *)
  init(signingIdentifier: String)
  @available(iOS 9.0, *)
  var matchSigningIdentifier: String { get }
  @available(iOS 9.0, *)
  var matchDomains: [AnyObject]?
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 9.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
