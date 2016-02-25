
@available(OSX 10.11, *)
class NEAppRule : NSObject, NSSecureCoding, NSCopying {
  @available(OSX 10.11, *)
  init(signingIdentifier signingIdentifier: String, designatedRequirement designatedRequirement: String)
  @available(OSX 10.11, *)
  var matchSigningIdentifier: String { get }
  @available(OSX 10.11, *)
  var matchDesignatedRequirement: String { get }
  @available(OSX 10.11, *)
  var matchPath: String?
  @available(OSX 10.11, *)
  var matchDomains: [AnyObject]?
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
