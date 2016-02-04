
class NWTLSParameters : Object {
  @available(OSX 10.11, *)
  @NSCopying var tlsSessionID: Data?
  @available(OSX 10.11, *)
  var sslCipherSuites: Set<Number>?
  @available(OSX 10.11, *)
  var minimumSSLProtocolVersion: Int
  @available(OSX 10.11, *)
  var maximumSSLProtocolVersion: Int
  init()
}
