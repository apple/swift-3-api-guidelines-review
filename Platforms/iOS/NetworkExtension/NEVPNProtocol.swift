
@available(iOS 8.0, *)
class NEVPNProtocol : Object, Copying, SecureCoding {
  @available(iOS 8.0, *)
  var serverAddress: String?
  @available(iOS 8.0, *)
  var username: String?
  @available(iOS 8.0, *)
  @NSCopying var passwordReference: Data?
  @available(iOS 9.0, *)
  @NSCopying var identityReference: Data?
  @available(iOS 8.0, *)
  @NSCopying var identityData: Data?
  @available(iOS 8.0, *)
  var identityDataPassword: String?
  @available(iOS 8.0, *)
  var disconnectOnSleep: Bool
  @available(iOS 9.0, *)
  @NSCopying var proxySettings: NEProxySettings?
  init()
  @available(iOS 8.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
