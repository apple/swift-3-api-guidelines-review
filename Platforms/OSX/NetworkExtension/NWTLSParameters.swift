
class NWTLSParameters : NSObject {
  @available(OSX 10.11, *)
  @NSCopying var TLSSessionID: NSData?
  @available(OSX 10.11, *)
  var SSLCipherSuites: Set<NSNumber>?
  @available(OSX 10.11, *)
  var minimumSSLProtocolVersion: Int
  @available(OSX 10.11, *)
  var maximumSSLProtocolVersion: Int
  init()
}
