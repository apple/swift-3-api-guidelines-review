
@available(OSX 10.11, *)
class NEDNSSettings : Object, SecureCoding, Copying {
  @available(OSX 10.11, *)
  init(servers: [String])
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
  init()
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.11, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
