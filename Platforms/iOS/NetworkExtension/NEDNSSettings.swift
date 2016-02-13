
@available(iOS 9.0, *)
class NEDNSSettings : Object, SecureCoding, Copying {
  @available(iOS 9.0, *)
  init(servers: [String])
  @available(iOS 9.0, *)
  var servers: [String] { get }
  @available(iOS 9.0, *)
  var searchDomains: [String]?
  @available(iOS 9.0, *)
  var domainName: String?
  @available(iOS 9.0, *)
  var matchDomains: [String]?
  @available(iOS 9.0, *)
  var matchDomainsNoSearch: Bool
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 9.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
