
class SSLContext {
}
typealias SSLConnectionRef = UnsafePointer<Void>
enum SSLProtocol : Int32 {
  init?(rawValue rawValue: Int32)
  var rawValue: Int32 { get }
  case sslProtocolUnknown
  case sslProtocol3
  case tlsProtocol1
  case tlsProtocol11
  case tlsProtocol12
  case dtlsProtocol1
  case sslProtocol2
  case sslProtocol3Only
  case tlsProtocol1Only
  case sslProtocolAll
}
enum SSLSessionOption : Int32 {
  init?(rawValue rawValue: Int32)
  var rawValue: Int32 { get }
  case breakOnServerAuth
  case breakOnCertRequested
  case breakOnClientAuth
  case falseStart
  case sendOneByteRecord
  case allowServerIdentityChange
  case fallback
  case breakOnClientHello
}
enum SSLSessionState : Int32 {
  init?(rawValue rawValue: Int32)
  var rawValue: Int32 { get }
  case idle
  case handshake
  case connected
  case closed
  case aborted
}
enum SSLClientCertificateState : Int32 {
  init?(rawValue rawValue: Int32)
  var rawValue: Int32 { get }
  case certNone
  case certRequested
  case certSent
  case certRejected
}
typealias SSLReadFunc = @convention(c) (SSLConnectionRef, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Int>) -> OSStatus
typealias SSLWriteFunc = @convention(c) (SSLConnectionRef, UnsafePointer<Void>, UnsafeMutablePointer<Int>) -> OSStatus
var errSSLProtocol: OSStatus { get }
var errSSLNegotiation: OSStatus { get }
var errSSLFatalAlert: OSStatus { get }
var errSSLWouldBlock: OSStatus { get }
var errSSLSessionNotFound: OSStatus { get }
var errSSLClosedGraceful: OSStatus { get }
var errSSLClosedAbort: OSStatus { get }
var errSSLXCertChainInvalid: OSStatus { get }
var errSSLBadCert: OSStatus { get }
var errSSLCrypto: OSStatus { get }
var errSSLInternal: OSStatus { get }
var errSSLModuleAttach: OSStatus { get }
var errSSLUnknownRootCert: OSStatus { get }
var errSSLNoRootCert: OSStatus { get }
var errSSLCertExpired: OSStatus { get }
var errSSLCertNotYetValid: OSStatus { get }
var errSSLClosedNoNotify: OSStatus { get }
var errSSLBufferOverflow: OSStatus { get }
var errSSLBadCipherSuite: OSStatus { get }
var errSSLPeerUnexpectedMsg: OSStatus { get }
var errSSLPeerBadRecordMac: OSStatus { get }
var errSSLPeerDecryptionFail: OSStatus { get }
var errSSLPeerRecordOverflow: OSStatus { get }
var errSSLPeerDecompressFail: OSStatus { get }
var errSSLPeerHandshakeFail: OSStatus { get }
var errSSLPeerBadCert: OSStatus { get }
var errSSLPeerUnsupportedCert: OSStatus { get }
var errSSLPeerCertRevoked: OSStatus { get }
var errSSLPeerCertExpired: OSStatus { get }
var errSSLPeerCertUnknown: OSStatus { get }
var errSSLIllegalParam: OSStatus { get }
var errSSLPeerUnknownCA: OSStatus { get }
var errSSLPeerAccessDenied: OSStatus { get }
var errSSLPeerDecodeError: OSStatus { get }
var errSSLPeerDecryptError: OSStatus { get }
var errSSLPeerExportRestriction: OSStatus { get }
var errSSLPeerProtocolVersion: OSStatus { get }
var errSSLPeerInsufficientSecurity: OSStatus { get }
var errSSLPeerInternalError: OSStatus { get }
var errSSLPeerUserCancelled: OSStatus { get }
var errSSLPeerNoRenegotiation: OSStatus { get }
var errSSLPeerAuthCompleted: OSStatus { get }
var errSSLClientCertRequested: OSStatus { get }
var errSSLHostNameMismatch: OSStatus { get }
var errSSLConnectionRefused: OSStatus { get }
var errSSLDecryptionFail: OSStatus { get }
var errSSLBadRecordMac: OSStatus { get }
var errSSLRecordOverflow: OSStatus { get }
var errSSLBadConfiguration: OSStatus { get }
var errSSLUnexpectedRecord: OSStatus { get }
var errSSLWeakPeerEphemeralDHKey: OSStatus { get }
var errSSLClientHelloReceived: OSStatus { get }
enum SSLProtocolSide : Int32 {
  init?(rawValue rawValue: Int32)
  var rawValue: Int32 { get }
  case serverSide
  case clientSide
}
enum SSLConnectionType : Int32 {
  init?(rawValue rawValue: Int32)
  var rawValue: Int32 { get }
  case streamType
  case datagramType
}
@available(OSX 10.8, *)
func SSLContextGetTypeID() -> CFTypeID
@available(OSX 10.8, *)
func SSLCreateContext(_ alloc: CFAllocator?, _ protocolSide: SSLProtocolSide, _ connectionType: SSLConnectionType) -> SSLContext?
@available(OSX 10.2, *)
func SSLGetSessionState(_ context: SSLContext, _ state: UnsafeMutablePointer<SSLSessionState>) -> OSStatus
@available(OSX 10.6, *)
func SSLSetSessionOption(_ context: SSLContext, _ option: SSLSessionOption, _ value: Bool) -> OSStatus
@available(OSX 10.6, *)
func SSLGetSessionOption(_ context: SSLContext, _ option: SSLSessionOption, _ value: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.2, *)
func SSLSetIOFuncs(_ context: SSLContext, _ readFunc: SSLReadFunc, _ writeFunc: SSLWriteFunc) -> OSStatus
@available(OSX 10.8, *)
func SSLSetProtocolVersionMin(_ context: SSLContext, _ minVersion: SSLProtocol) -> OSStatus
@available(OSX 10.8, *)
func SSLGetProtocolVersionMin(_ context: SSLContext, _ minVersion: UnsafeMutablePointer<SSLProtocol>) -> OSStatus
@available(OSX 10.8, *)
func SSLSetProtocolVersionMax(_ context: SSLContext, _ maxVersion: SSLProtocol) -> OSStatus
@available(OSX 10.8, *)
func SSLGetProtocolVersionMax(_ context: SSLContext, _ maxVersion: UnsafeMutablePointer<SSLProtocol>) -> OSStatus
@available(OSX 10.2, *)
func SSLSetCertificate(_ context: SSLContext, _ certRefs: CFArray) -> OSStatus
@available(OSX 10.2, *)
func SSLSetConnection(_ context: SSLContext, _ connection: SSLConnectionRef) -> OSStatus
@available(OSX 10.2, *)
func SSLGetConnection(_ context: SSLContext, _ connection: UnsafeMutablePointer<SSLConnectionRef>) -> OSStatus
@available(OSX 10.2, *)
func SSLSetPeerDomainName(_ context: SSLContext, _ peerName: UnsafePointer<Int8>, _ peerNameLen: Int) -> OSStatus
@available(OSX 10.2, *)
func SSLGetPeerDomainNameLength(_ context: SSLContext, _ peerNameLen: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.2, *)
func SSLGetPeerDomainName(_ context: SSLContext, _ peerName: UnsafeMutablePointer<Int8>, _ peerNameLen: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.8, *)
func SSLSetDatagramHelloCookie(_ dtlsContext: SSLContext, _ cookie: UnsafePointer<Void>, _ cookieLen: Int) -> OSStatus
@available(OSX 10.8, *)
func SSLSetMaxDatagramRecordSize(_ dtlsContext: SSLContext, _ maxSize: Int) -> OSStatus
@available(OSX 10.8, *)
func SSLGetMaxDatagramRecordSize(_ dtlsContext: SSLContext, _ maxSize: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.2, *)
func SSLGetNegotiatedProtocolVersion(_ context: SSLContext, _ protocol: UnsafeMutablePointer<SSLProtocol>) -> OSStatus
@available(OSX 10.2, *)
func SSLGetNumberSupportedCiphers(_ context: SSLContext, _ numCiphers: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.2, *)
func SSLGetSupportedCiphers(_ context: SSLContext, _ ciphers: UnsafeMutablePointer<SSLCipherSuite>, _ numCiphers: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.2, *)
func SSLSetEnabledCiphers(_ context: SSLContext, _ ciphers: UnsafePointer<SSLCipherSuite>, _ numCiphers: Int) -> OSStatus
@available(OSX 10.2, *)
func SSLGetNumberEnabledCiphers(_ context: SSLContext, _ numCiphers: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.2, *)
func SSLGetEnabledCiphers(_ context: SSLContext, _ ciphers: UnsafeMutablePointer<SSLCipherSuite>, _ numCiphers: UnsafeMutablePointer<Int>) -> OSStatus
enum SSLSessionStrengthPolicy : Int32 {
  init?(rawValue rawValue: Int32)
  var rawValue: Int32 { get }
  case `default`
  case atSv1
  case atSv1_noPFS
}
func SSLSetSessionStrengthPolicy(_ context: SSLContext, _ policyStrength: SSLSessionStrengthPolicy) -> OSStatus
@available(OSX 10.6, *)
func SSLCopyPeerTrust(_ context: SSLContext, _ trust: UnsafeMutablePointer<SecTrust?>) -> OSStatus
@available(OSX 10.2, *)
func SSLSetPeerID(_ context: SSLContext, _ peerID: UnsafePointer<Void>, _ peerIDLen: Int) -> OSStatus
@available(OSX 10.2, *)
func SSLGetPeerID(_ context: SSLContext, _ peerID: UnsafeMutablePointer<UnsafePointer<Void>>, _ peerIDLen: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.2, *)
func SSLGetNegotiatedCipher(_ context: SSLContext, _ cipherSuite: UnsafeMutablePointer<SSLCipherSuite>) -> OSStatus
@available(OSX, introduced=10.2, deprecated=10.11)
func SSLSetEncryptionCertificate(_ context: SSLContext, _ certRefs: CFArray) -> OSStatus
enum SSLAuthenticate : Int32 {
  init?(rawValue rawValue: Int32)
  var rawValue: Int32 { get }
  case neverAuthenticate
  case alwaysAuthenticate
  case tryAuthenticate
}
@available(OSX 10.2, *)
func SSLSetClientSideAuthenticate(_ context: SSLContext, _ auth: SSLAuthenticate) -> OSStatus
@available(OSX 10.4, *)
func SSLAddDistinguishedName(_ context: SSLContext, _ derDN: UnsafePointer<Void>, _ derDNLen: Int) -> OSStatus
@available(OSX 10.5, *)
func SSLSetCertificateAuthorities(_ context: SSLContext, _ certificateOrArray: CFTypeRef, _ replaceExisting: Bool) -> OSStatus
@available(OSX 10.5, *)
func SSLCopyCertificateAuthorities(_ context: SSLContext, _ certificates: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(OSX 10.5, *)
func SSLCopyDistinguishedNames(_ context: SSLContext, _ names: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(OSX 10.3, *)
func SSLGetClientCertificateState(_ context: SSLContext, _ clientState: UnsafeMutablePointer<SSLClientCertificateState>) -> OSStatus
@available(OSX 10.2, *)
func SSLSetDiffieHellmanParams(_ context: SSLContext, _ dhParams: UnsafePointer<Void>, _ dhParamsLen: Int) -> OSStatus
@available(OSX 10.2, *)
func SSLGetDiffieHellmanParams(_ context: SSLContext, _ dhParams: UnsafeMutablePointer<UnsafePointer<Void>>, _ dhParamsLen: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.2, *)
func SSLHandshake(_ context: SSLContext) -> OSStatus
@available(OSX 10.2, *)
func SSLWrite(_ context: SSLContext, _ data: UnsafePointer<Void>, _ dataLength: Int, _ processed: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.2, *)
func SSLRead(_ context: SSLContext, _ data: UnsafeMutablePointer<Void>, _ dataLength: Int, _ processed: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.2, *)
func SSLGetBufferedReadSize(_ context: SSLContext, _ bufSize: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.8, *)
func SSLGetDatagramWriteSize(_ dtlsContext: SSLContext, _ bufSize: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.2, *)
func SSLClose(_ context: SSLContext) -> OSStatus
