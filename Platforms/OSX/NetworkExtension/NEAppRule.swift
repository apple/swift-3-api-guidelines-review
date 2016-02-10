
@available(OSX 10.11, *)
class NEAppRule : Object, SecureCoding, Copying {
  @available(OSX 10.11, *)
  init(signingIdentifier: String, designatedRequirement: String)
  @available(OSX 10.11, *)
  var matchSigningIdentifier: String { get }
  @available(OSX 10.11, *)
  var matchDesignatedRequirement: String { get }
  @available(OSX 10.11, *)
  var matchPath: String?
  @available(OSX 10.11, *)
  var matchDomains: [AnyObject]?
  init()
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.11, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
