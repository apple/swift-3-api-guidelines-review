
@available(OSX 10.5, *)
let urlProtectionSpaceHTTP: String
@available(OSX 10.5, *)
let urlProtectionSpaceHTTPS: String
@available(OSX 10.5, *)
let urlProtectionSpaceFTP: String
let urlProtectionSpaceHTTPProxy: String
let urlProtectionSpaceHTTPSProxy: String
let urlProtectionSpaceFTPProxy: String
let urlProtectionSpaceSOCKSProxy: String
let urlAuthenticationMethodDefault: String
let urlAuthenticationMethodHTTPBasic: String
let urlAuthenticationMethodHTTPDigest: String
let urlAuthenticationMethodHTMLForm: String
@available(OSX 10.5, *)
let urlAuthenticationMethodNTLM: String
@available(OSX 10.5, *)
let urlAuthenticationMethodNegotiate: String
@available(OSX 10.6, *)
let urlAuthenticationMethodClientCertificate: String
@available(OSX 10.6, *)
let urlAuthenticationMethodServerTrust: String
class URLProtectionSpace : Object, SecureCoding, Copying {
  init(host: String, port: Int, protocol: String?, realm: String?, authenticationMethod: String?)
  init(proxyHost host: String, port: Int, type: String?, realm: String?, authenticationMethod: String?)
  var realm: String? { get }
  var receivesCredentialSecurely: Bool { get }
  var host: String { get }
  var port: Int { get }
  var proxyType: String? { get }
  var `protocol`: String? { get }
  var authenticationMethod: String { get }
  func isProxy() -> Bool
  init()
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(with zone: Zone = nil) -> AnyObject
}
extension URLProtectionSpace {
  @available(OSX 10.6, *)
  var distinguishedNames: [Data]? { get }
}
extension URLProtectionSpace {
  @available(OSX 10.6, *)
  var serverTrust: SecTrust? { get }
}
