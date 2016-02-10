
@available(OSX 10.11, *)
class NEProxyServer : Object, SecureCoding, Copying {
  @available(OSX 10.11, *)
  init(address: String, port: Int)
  @available(OSX 10.11, *)
  var address: String { get }
  @available(OSX 10.11, *)
  var port: Int { get }
  @available(OSX 10.11, *)
  var authenticationRequired: Bool
  @available(OSX 10.11, *)
  var username: String?
  @available(OSX 10.11, *)
  var password: String?
  init()
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.11, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
@available(OSX 10.11, *)
class NEProxySettings : Object, SecureCoding, Copying {
  @available(OSX 10.11, *)
  var autoProxyConfigurationEnabled: Bool
  @available(OSX 10.11, *)
  @NSCopying var proxyAutoConfigurationURL: URL?
  @available(OSX 10.11, *)
  var proxyAutoConfigurationJavaScript: String?
  @available(OSX 10.11, *)
  var httpEnabled: Bool
  @available(OSX 10.11, *)
  @NSCopying var httpServer: NEProxyServer?
  @available(OSX 10.11, *)
  var httpsEnabled: Bool
  @available(OSX 10.11, *)
  @NSCopying var httpsServer: NEProxyServer?
  @available(OSX 10.11, *)
  var excludeSimpleHostnames: Bool
  @available(OSX 10.11, *)
  var exceptionList: [String]?
  @available(OSX 10.11, *)
  var matchDomains: [String]?
  init()
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.11, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
