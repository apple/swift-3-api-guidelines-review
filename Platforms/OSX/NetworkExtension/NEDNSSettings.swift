
@available(OSX 10.11, *)
class NEDNSSettings : NSObject, NSSecureCoding, NSCopying {
  @available(OSX 10.11, *)
  init(servers servers: [String])
  @available(OSX 10.11, *)
  var servers: [String] { get }
  @available(OSX 10.11, *)
  var searchDomains: [String]?
  @available(OSX 10.11, *)
  var domainName: String?
  @available(OSX 10.11, *)
  var matchDomains: [String]?
  @available(OSX 10.11, *)
  var matchDomainsNoSearch: Bool
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
