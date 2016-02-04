
@available(*, deprecated, renamed="SSLContext")
typealias SSLContextRef = SSLContext
class SSLContext {
}
typealias SSLConnectionRef = UnsafePointer<Void>
enum SSLProtocol : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case SSLProtocolUnknown
  case SSLProtocol3
  case TLSProtocol1
  case TLSProtocol11
  case TLSProtocol12
  case DTLSProtocol1
  case SSLProtocol2
  case SSLProtocol3Only
  case TLSProtocol1Only
  case SSLProtocolAll
}
enum SSLSessionOption : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case BreakOnServerAuth
  case BreakOnCertRequested
  case BreakOnClientAuth
  case FalseStart
  case SendOneByteRecord
  case AllowServerIdentityChange
  case Fallback
  case BreakOnClientHello
}
enum SSLSessionState : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Idle
  case Handshake
  case Connected
  case Closed
  case Aborted
}
enum SSLClientCertificateState : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case CertNone
  case CertRequested
  case CertSent
  case CertRejected
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
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case ServerSide
  case ClientSide
}
enum SSLConnectionType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case StreamType
  case DatagramType
}
@available(OSX 10.8, *)
func SSLContextGetTypeID() -> CFTypeID
@available(OSX 10.8, *)
func SSLCreateContext(alloc: CFAllocator?, _ protocolSide: SSLProtocolSide, _ connectionType: SSLConnectionType) -> SSLContext?
@available(OSX 10.2, *)
func SSLGetSessionState(context: SSLContext, _ state: UnsafeMutablePointer<SSLSessionState>) -> OSStatus
@available(OSX 10.6, *)
func SSLSetSessionOption(context: SSLContext, _ option: SSLSessionOption, _ value: Bool) -> OSStatus
@available(OSX 10.6, *)
func SSLGetSessionOption(context: SSLContext, _ option: SSLSessionOption, _ value: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.2, *)
func SSLSetIOFuncs(context: SSLContext, _ readFunc: SSLReadFunc, _ writeFunc: SSLWriteFunc) -> OSStatus
@available(OSX 10.8, *)
func SSLSetProtocolVersionMin(context: SSLContext, _ minVersion: SSLProtocol) -> OSStatus
@available(OSX 10.8, *)
func SSLGetProtocolVersionMin(context: SSLContext, _ minVersion: UnsafeMutablePointer<SSLProtocol>) -> OSStatus
@available(OSX 10.8, *)
func SSLSetProtocolVersionMax(context: SSLContext, _ maxVersion: SSLProtocol) -> OSStatus
@available(OSX 10.8, *)
func SSLGetProtocolVersionMax(context: SSLContext, _ maxVersion: UnsafeMutablePointer<SSLProtocol>) -> OSStatus
@available(OSX 10.2, *)
func SSLSetCertificate(context: SSLContext, _ certRefs: CFArray) -> OSStatus
@available(OSX 10.2, *)
func SSLSetConnection(context: SSLContext, _ connection: SSLConnectionRef) -> OSStatus
@available(OSX 10.2, *)
func SSLGetConnection(context: SSLContext, _ connection: UnsafeMutablePointer<SSLConnectionRef>) -> OSStatus
@available(OSX 10.2, *)
func SSLSetPeerDomainName(context: SSLContext, _ peerName: UnsafePointer<Int8>, _ peerNameLen: Int) -> OSStatus
@available(OSX 10.2, *)
func SSLGetPeerDomainNameLength(context: SSLContext, _ peerNameLen: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.2, *)
func SSLGetPeerDomainName(context: SSLContext, _ peerName: UnsafeMutablePointer<Int8>, _ peerNameLen: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.8, *)
func SSLSetDatagramHelloCookie(dtlsContext: SSLContext, _ cookie: UnsafePointer<Void>, _ cookieLen: Int) -> OSStatus
@available(OSX 10.8, *)
func SSLSetMaxDatagramRecordSize(dtlsContext: SSLContext, _ maxSize: Int) -> OSStatus
@available(OSX 10.8, *)
func SSLGetMaxDatagramRecordSize(dtlsContext: SSLContext, _ maxSize: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.2, *)
func SSLGetNegotiatedProtocolVersion(context: SSLContext, _ protocol: UnsafeMutablePointer<SSLProtocol>) -> OSStatus
@available(OSX 10.2, *)
func SSLGetNumberSupportedCiphers(context: SSLContext, _ numCiphers: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.2, *)
func SSLGetSupportedCiphers(context: SSLContext, _ ciphers: UnsafeMutablePointer<SSLCipherSuite>, _ numCiphers: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.2, *)
func SSLSetEnabledCiphers(context: SSLContext, _ ciphers: UnsafePointer<SSLCipherSuite>, _ numCiphers: Int) -> OSStatus
@available(OSX 10.2, *)
func SSLGetNumberEnabledCiphers(context: SSLContext, _ numCiphers: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.2, *)
func SSLGetEnabledCiphers(context: SSLContext, _ ciphers: UnsafeMutablePointer<SSLCipherSuite>, _ numCiphers: UnsafeMutablePointer<Int>) -> OSStatus
enum SSLSessionStrengthPolicy : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Default
  case ATSv1
  case ATSv1_noPFS
}
func SSLSetSessionStrengthPolicy(context: SSLContext, _ policyStrength: SSLSessionStrengthPolicy) -> OSStatus
@available(OSX 10.6, *)
func SSLCopyPeerTrust(context: SSLContext, _ trust: UnsafeMutablePointer<SecTrust?>) -> OSStatus
@available(OSX 10.2, *)
func SSLSetPeerID(context: SSLContext, _ peerID: UnsafePointer<Void>, _ peerIDLen: Int) -> OSStatus
@available(OSX 10.2, *)
func SSLGetPeerID(context: SSLContext, _ peerID: UnsafeMutablePointer<UnsafePointer<Void>>, _ peerIDLen: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.2, *)
func SSLGetNegotiatedCipher(context: SSLContext, _ cipherSuite: UnsafeMutablePointer<SSLCipherSuite>) -> OSStatus
@available(OSX, introduced=10.2, deprecated=10.11)
func SSLSetEncryptionCertificate(context: SSLContext, _ certRefs: CFArray) -> OSStatus
enum SSLAuthenticate : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case NeverAuthenticate
  case AlwaysAuthenticate
  case TryAuthenticate
}
@available(OSX 10.2, *)
func SSLSetClientSideAuthenticate(context: SSLContext, _ auth: SSLAuthenticate) -> OSStatus
@available(OSX 10.4, *)
func SSLAddDistinguishedName(context: SSLContext, _ derDN: UnsafePointer<Void>, _ derDNLen: Int) -> OSStatus
@available(OSX 10.5, *)
func SSLSetCertificateAuthorities(context: SSLContext, _ certificateOrArray: CFTypeRef, _ replaceExisting: Bool) -> OSStatus
@available(OSX 10.5, *)
func SSLCopyCertificateAuthorities(context: SSLContext, _ certificates: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(OSX 10.5, *)
func SSLCopyDistinguishedNames(context: SSLContext, _ names: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(OSX 10.3, *)
func SSLGetClientCertificateState(context: SSLContext, _ clientState: UnsafeMutablePointer<SSLClientCertificateState>) -> OSStatus
@available(OSX 10.2, *)
func SSLSetDiffieHellmanParams(context: SSLContext, _ dhParams: UnsafePointer<Void>, _ dhParamsLen: Int) -> OSStatus
@available(OSX 10.2, *)
func SSLGetDiffieHellmanParams(context: SSLContext, _ dhParams: UnsafeMutablePointer<UnsafePointer<Void>>, _ dhParamsLen: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.2, *)
func SSLHandshake(context: SSLContext) -> OSStatus
@available(OSX 10.2, *)
func SSLWrite(context: SSLContext, _ data: UnsafePointer<Void>, _ dataLength: Int, _ processed: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.2, *)
func SSLRead(context: SSLContext, _ data: UnsafeMutablePointer<Void>, _ dataLength: Int, _ processed: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.2, *)
func SSLGetBufferedReadSize(context: SSLContext, _ bufSize: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.8, *)
func SSLGetDatagramWriteSize(dtlsContext: SSLContext, _ bufSize: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.2, *)
func SSLClose(context: SSLContext) -> OSStatus
