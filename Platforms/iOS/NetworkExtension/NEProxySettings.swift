
@available(iOS 9.0, *)
class NEProxyServer : NSObject, NSSecureCoding, NSCopying {
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
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 9.0, *)
class NEProxySettings : NSObject, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  var autoProxyConfigurationEnabled: Bool
  @available(iOS 9.0, *)
  @NSCopying var proxyAutoConfigurationURL: NSURL?
  @available(iOS 9.0, *)
  var proxyAutoConfigurationJavaScript: String?
  @available(iOS 9.0, *)
  var HTTPEnabled: Bool
  @available(iOS 9.0, *)
  @NSCopying var HTTPServer: NEProxyServer?
  @available(iOS 9.0, *)
  var HTTPSEnabled: Bool
  @available(iOS 9.0, *)
  @NSCopying var HTTPSServer: NEProxyServer?
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
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
