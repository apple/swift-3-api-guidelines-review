
class NWTLSParameters : Object {
  @available(iOS 9.0, *)
  @NSCopying var tlsSessionID: Data?
  @available(iOS 9.0, *)
  var sslCipherSuites: Set<Number>?
  @available(iOS 9.0, *)
  var minimumSSLProtocolVersion: Int
  @available(iOS 9.0, *)
  var maximumSSLProtocolVersion: Int
  init()
}
