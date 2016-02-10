
@available(OSX 10.10, *)
class NEVPNProtocol : Object, Copying, SecureCoding {
  @available(OSX 10.10, *)
  var serverAddress: String?
  @available(OSX 10.10, *)
  var username: String?
  @available(OSX 10.10, *)
  @NSCopying var passwordReference: Data?
  @available(OSX 10.10, *)
  @NSCopying var identityReference: Data?
  @available(OSX 10.11, *)
  @NSCopying var identityData: Data?
  @available(OSX 10.11, *)
  var identityDataPassword: String?
  @available(OSX 10.10, *)
  var disconnectOnSleep: Bool
  @available(OSX 10.11, *)
  @NSCopying var proxySettings: NEProxySettings?
  init()
  @available(OSX 10.10, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
