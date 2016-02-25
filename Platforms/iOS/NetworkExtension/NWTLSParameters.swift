
class NWTLSParameters : NSObject {
  @available(iOS 9.0, *)
  @NSCopying var TLSSessionID: NSData?
  @available(iOS 9.0, *)
  var SSLCipherSuites: Set<NSNumber>?
  @available(iOS 9.0, *)
  var minimumSSLProtocolVersion: Int
  @available(iOS 9.0, *)
  var maximumSSLProtocolVersion: Int
}
