
@available(iOS 9.0, *)
class NEProxyServer : Object, SecureCoding, Copying {
  @available(iOS 9.0, *)
  init(address: String, port: Int)
  @available(iOS 9.0, *)
  var address: String { get }
  @available(iOS 9.0, *)
  var port: Int { get }
  @available(iOS 9.0, *)
  var authenticationRequired: Bool
  @available(iOS 9.0, *)
  var username: String?
  @available(iOS 9.0, *)
  var password: String?
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 9.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
@available(iOS 9.0, *)
class NEProxySettings : Object, SecureCoding, Copying {
  @available(iOS 9.0, *)
  var autoProxyConfigurationEnabled: Bool
  @available(iOS 9.0, *)
  @NSCopying var proxyAutoConfigurationURL: URL?
  @available(iOS 9.0, *)
  var proxyAutoConfigurationJavaScript: String?
  @available(iOS 9.0, *)
  var httpEnabled: Bool
  @available(iOS 9.0, *)
  @NSCopying var httpServer: NEProxyServer?
  @available(iOS 9.0, *)
  var httpsEnabled: Bool
  @available(iOS 9.0, *)
  @NSCopying var httpsServer: NEProxyServer?
  @available(iOS 9.0, *)
  var excludeSimpleHostnames: Bool
  @available(iOS 9.0, *)
  var exceptionList: [String]?
  @available(iOS 9.0, *)
  var matchDomains: [String]?
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 9.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
