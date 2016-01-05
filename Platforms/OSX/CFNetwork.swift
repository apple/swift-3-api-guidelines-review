
@available(OSX 10.3, *)
let kCFStreamErrorDomainFTP: Int32
@available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPUserName: CFString
@available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPPassword: CFString
@available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPUsePassiveMode: CFString
@available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPResourceSize: CFString
@available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPFetchResourceInfo: CFString
@available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPFileTransferOffset: CFString
@available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPAttemptPersistentConnection: CFString
@available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPProxy: CFString
@available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPProxyHost: CFString
@available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPProxyPort: CFString
@available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPProxyUser: CFString
@available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPProxyPassword: CFString
@available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSessionAPI for ftp requests")
let kCFFTPResourceMode: CFString
@available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSessionAPI for ftp requests")
let kCFFTPResourceName: CFString
@available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSessionAPI for ftp requests")
let kCFFTPResourceOwner: CFString
@available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSessionAPI for ftp requests")
let kCFFTPResourceGroup: CFString
@available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSessionAPI for ftp requests")
let kCFFTPResourceLink: CFString
@available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSessionAPI for ftp requests")
let kCFFTPResourceSize: CFString
@available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSessionAPI for ftp requests")
let kCFFTPResourceType: CFString
@available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSessionAPI for ftp requests")
let kCFFTPResourceModDate: CFString
@available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSessionAPI for ftp requests")
func CFReadStreamCreateWithFTPURL(alloc: CFAllocator?, _ ftpURL: CFURL) -> Unmanaged<CFReadStream>
@available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSessionAPI for ftp requests")
func CFFTPCreateParsedResourceListing(alloc: CFAllocator?, _ buffer: UnsafePointer<UInt8>, _ bufferLength: CFIndex, _ parsed: UnsafeMutablePointer<Unmanaged<CFDictionary>?>) -> CFIndex
@available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSessionAPI for ftp requests")
func CFWriteStreamCreateWithFTPURL(alloc: CFAllocator?, _ ftpURL: CFURL) -> Unmanaged<CFWriteStream>
class CFHTTPAuthentication {
}
typealias CFHTTPAuthenticationRef = CFHTTPAuthentication
enum CFStreamErrorHTTPAuthentication : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case TypeUnsupported
  case BadUserName
  case BadPassword
}
@available(OSX 10.4, *)
let kCFHTTPAuthenticationUsername: CFString
@available(OSX 10.4, *)
let kCFHTTPAuthenticationPassword: CFString
@available(OSX 10.4, *)
let kCFHTTPAuthenticationAccountDomain: CFString
@available(OSX 10.2, *)
func CFHTTPAuthenticationGetTypeID() -> CFTypeID
@available(OSX 10.2, *)
func CFHTTPAuthenticationCreateFromResponse(alloc: CFAllocator?, _ response: CFHTTPMessage) -> Unmanaged<CFHTTPAuthentication>
@available(OSX 10.2, *)
func CFHTTPAuthenticationIsValid(auth: CFHTTPAuthentication, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(OSX 10.2, *)
func CFHTTPAuthenticationAppliesToRequest(auth: CFHTTPAuthentication, _ request: CFHTTPMessage) -> Bool
@available(OSX 10.2, *)
func CFHTTPAuthenticationRequiresOrderedRequests(auth: CFHTTPAuthentication) -> Bool
@available(OSX 10.2, *)
func CFHTTPMessageApplyCredentials(request: CFHTTPMessage, _ auth: CFHTTPAuthentication, _ username: CFString?, _ password: CFString?, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(OSX 10.4, *)
func CFHTTPMessageApplyCredentialDictionary(request: CFHTTPMessage, _ auth: CFHTTPAuthentication, _ dict: CFDictionary, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(OSX 10.2, *)
func CFHTTPAuthenticationCopyRealm(auth: CFHTTPAuthentication) -> Unmanaged<CFString>
@available(OSX 10.2, *)
func CFHTTPAuthenticationCopyDomains(auth: CFHTTPAuthentication) -> Unmanaged<CFArray>
@available(OSX 10.2, *)
func CFHTTPAuthenticationCopyMethod(auth: CFHTTPAuthentication) -> Unmanaged<CFString>
@available(OSX 10.3, *)
func CFHTTPAuthenticationRequiresUserNameAndPassword(auth: CFHTTPAuthentication) -> Bool
@available(OSX 10.4, *)
func CFHTTPAuthenticationRequiresAccountDomain(auth: CFHTTPAuthentication) -> Bool
@available(OSX 10.1, *)
let kCFHTTPVersion1_0: CFString
@available(OSX 10.1, *)
let kCFHTTPVersion1_1: CFString
@available(OSX 10.10, *)
let kCFHTTPVersion2_0: CFString
@available(OSX 10.2, *)
let kCFHTTPAuthenticationSchemeBasic: CFString
@available(OSX 10.2, *)
let kCFHTTPAuthenticationSchemeDigest: CFString
@available(OSX 10.5, *)
let kCFHTTPAuthenticationSchemeNTLM: CFString
@available(OSX 10.5, *)
let kCFHTTPAuthenticationSchemeKerberos: CFString
@available(OSX 10.5, *)
let kCFHTTPAuthenticationSchemeNegotiate: CFString
@available(OSX 10.6, *)
let kCFHTTPAuthenticationSchemeNegotiate2: CFString
@available(OSX 10.6, *)
let kCFHTTPAuthenticationSchemeXMobileMeAuthToken: CFString
@available(OSX 10.9, *)
let kCFHTTPAuthenticationSchemeOAuth1: CFString
class CFHTTPMessage {
}
typealias CFHTTPMessageRef = CFHTTPMessage
@available(OSX 10.1, *)
func CFHTTPMessageGetTypeID() -> CFTypeID
@available(OSX 10.1, *)
func CFHTTPMessageCreateRequest(alloc: CFAllocator?, _ requestMethod: CFString, _ url: CFURL, _ httpVersion: CFString) -> Unmanaged<CFHTTPMessage>
@available(OSX 10.1, *)
func CFHTTPMessageCreateResponse(alloc: CFAllocator?, _ statusCode: CFIndex, _ statusDescription: CFString?, _ httpVersion: CFString) -> Unmanaged<CFHTTPMessage>
@available(OSX 10.1, *)
func CFHTTPMessageCreateEmpty(alloc: CFAllocator?, _ isRequest: Bool) -> Unmanaged<CFHTTPMessage>
@available(OSX 10.1, *)
func CFHTTPMessageCreateCopy(alloc: CFAllocator?, _ message: CFHTTPMessage) -> Unmanaged<CFHTTPMessage>
@available(OSX 10.1, *)
func CFHTTPMessageIsRequest(message: CFHTTPMessage) -> Bool
@available(OSX 10.1, *)
func CFHTTPMessageCopyVersion(message: CFHTTPMessage) -> Unmanaged<CFString>
@available(OSX 10.1, *)
func CFHTTPMessageCopyBody(message: CFHTTPMessage) -> Unmanaged<CFData>?
@available(OSX 10.1, *)
func CFHTTPMessageSetBody(message: CFHTTPMessage, _ bodyData: CFData)
@available(OSX 10.1, *)
func CFHTTPMessageCopyHeaderFieldValue(message: CFHTTPMessage, _ headerField: CFString) -> Unmanaged<CFString>?
@available(OSX 10.1, *)
func CFHTTPMessageCopyAllHeaderFields(message: CFHTTPMessage) -> Unmanaged<CFDictionary>?
@available(OSX 10.1, *)
func CFHTTPMessageSetHeaderFieldValue(message: CFHTTPMessage, _ headerField: CFString, _ value: CFString?)
@available(OSX 10.1, *)
func CFHTTPMessageAppendBytes(message: CFHTTPMessage, _ newBytes: UnsafePointer<UInt8>, _ numBytes: CFIndex) -> Bool
@available(OSX 10.1, *)
func CFHTTPMessageIsHeaderComplete(message: CFHTTPMessage) -> Bool
@available(OSX 10.1, *)
func CFHTTPMessageCopySerializedMessage(message: CFHTTPMessage) -> Unmanaged<CFData>?

/*********************/
@available(OSX 10.1, *)
func CFHTTPMessageCopyRequestURL(request: CFHTTPMessage) -> Unmanaged<CFURL>?
@available(OSX 10.1, *)
func CFHTTPMessageCopyRequestMethod(request: CFHTTPMessage) -> Unmanaged<CFString>?
@available(OSX 10.1, *)
func CFHTTPMessageAddAuthentication(request: CFHTTPMessage, _ authenticationFailureResponse: CFHTTPMessage?, _ username: CFString, _ password: CFString, _ authenticationScheme: CFString?, _ forProxy: Bool) -> Bool

/**********************/
@available(OSX 10.1, *)
func CFHTTPMessageGetResponseStatusCode(response: CFHTTPMessage) -> CFIndex
@available(OSX 10.1, *)
func CFHTTPMessageCopyResponseStatusLine(response: CFHTTPMessage) -> Unmanaged<CFString>?
@available(OSX 10.1, *)
let kCFStreamErrorDomainHTTP: Int32
enum CFStreamErrorHTTP : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case ParseFailure
  case RedirectionLoop
  case BadURL
}
@available(OSX, introduced=10.1, deprecated=10.11, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPResponseHeader: CFString
@available(OSX, introduced=10.2, deprecated=10.11, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPFinalURL: CFString
@available(OSX, introduced=10.5, deprecated=10.11, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPFinalRequest: CFString
@available(OSX, introduced=10.2, deprecated=10.11, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPProxy: CFString
@available(OSX, introduced=10.2, deprecated=10.11, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPProxyHost: CFString
@available(OSX, introduced=10.2, deprecated=10.11, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPProxyPort: CFString
@available(OSX, introduced=10.2, deprecated=10.11, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPSProxyHost: CFString
@available(OSX, introduced=10.2, deprecated=10.11, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPSProxyPort: CFString
@available(OSX, introduced=10.2, deprecated=10.11, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPShouldAutoredirect: CFString
@available(OSX, introduced=10.2, deprecated=10.11, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPAttemptPersistentConnection: CFString
@available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPRequestBytesWrittenCount: CFString
@available(OSX, introduced=10.2, deprecated=10.11, message="Use NSURLSession API for http requests")
func CFReadStreamCreateForHTTPRequest(alloc: CFAllocator?, _ request: CFHTTPMessage) -> Unmanaged<CFReadStream>
@available(OSX, introduced=10.2, deprecated=10.11, message="Use NSURLSession API for http requests")
func CFReadStreamCreateForStreamedHTTPRequest(alloc: CFAllocator?, _ requestHeaders: CFHTTPMessage, _ requestBody: CFReadStream) -> Unmanaged<CFReadStream>
class CFHost {
}
typealias CFHostRef = CFHost
@available(OSX 10.3, *)
let kCFStreamErrorDomainNetDB: Int32
@available(OSX 10.3, *)
let kCFStreamErrorDomainSystemConfiguration: Int32
enum CFHostInfoType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Addresses
  case Names
  case Reachability
}
struct CFHostClientContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: CFAllocatorRetainCallBack?
  var release: CFAllocatorReleaseCallBack?
  var copyDescription: CFAllocatorCopyDescriptionCallBack
}
typealias CFHostClientCallBack = @convention(c) (CFHost, CFHostInfoType, UnsafePointer<CFStreamError>, UnsafeMutablePointer<Void>) -> Void
@available(OSX 10.3, *)
func CFHostGetTypeID() -> CFTypeID
@available(OSX 10.3, *)
func CFHostCreateWithName(allocator: CFAllocator?, _ hostname: CFString) -> Unmanaged<CFHost>
@available(OSX 10.3, *)
func CFHostCreateWithAddress(allocator: CFAllocator?, _ addr: CFData) -> Unmanaged<CFHost>
@available(OSX 10.3, *)
func CFHostCreateCopy(alloc: CFAllocator?, _ host: CFHost) -> Unmanaged<CFHost>
@available(OSX 10.3, *)
func CFHostStartInfoResolution(theHost: CFHost, _ info: CFHostInfoType, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(OSX 10.3, *)
func CFHostGetAddressing(theHost: CFHost, _ hasBeenResolved: UnsafeMutablePointer<DarwinBoolean>) -> Unmanaged<CFArray>?
@available(OSX 10.3, *)
func CFHostGetNames(theHost: CFHost, _ hasBeenResolved: UnsafeMutablePointer<DarwinBoolean>) -> Unmanaged<CFArray>?
@available(OSX 10.3, *)
func CFHostGetReachability(theHost: CFHost, _ hasBeenResolved: UnsafeMutablePointer<DarwinBoolean>) -> Unmanaged<CFData>?
@available(OSX 10.3, *)
func CFHostCancelInfoResolution(theHost: CFHost, _ info: CFHostInfoType)
@available(OSX 10.3, *)
func CFHostSetClient(theHost: CFHost, _ clientCB: CFHostClientCallBack?, _ clientContext: UnsafeMutablePointer<CFHostClientContext>) -> Bool
@available(OSX 10.3, *)
func CFHostScheduleWithRunLoop(theHost: CFHost, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(OSX 10.3, *)
func CFHostUnscheduleFromRunLoop(theHost: CFHost, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
class CFNetDiagnostic {
}
typealias CFNetDiagnosticRef = CFNetDiagnostic
enum CFNetDiagnosticStatusValues : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case NoErr
  case Err
  case ConnectionUp
  case ConnectionIndeterminate
  case ConnectionDown
}
typealias CFNetDiagnosticStatus = CFIndex
@available(OSX 10.4, *)
func CFNetDiagnosticCreateWithStreams(alloc: CFAllocator?, _ readStream: CFReadStream?, _ writeStream: CFWriteStream?) -> Unmanaged<CFNetDiagnostic>
@available(OSX 10.4, *)
func CFNetDiagnosticCreateWithURL(alloc: CFAllocator, _ url: CFURL) -> Unmanaged<CFNetDiagnostic>
@available(OSX 10.4, *)
func CFNetDiagnosticSetName(details: CFNetDiagnostic, _ name: CFString)
@available(OSX 10.4, *)
func CFNetDiagnosticDiagnoseProblemInteractively(details: CFNetDiagnostic) -> CFNetDiagnosticStatus
@available(OSX 10.4, *)
func CFNetDiagnosticCopyNetworkStatusPassively(details: CFNetDiagnostic, _ description: UnsafeMutablePointer<Unmanaged<CFString>?>) -> CFNetDiagnosticStatus
class CFNetService {
}
typealias CFNetServiceRef = CFNetService
typealias CFNetServiceMonitorRef = CFNetServiceMonitor
class CFNetServiceMonitor {
}
class CFNetServiceBrowser {
}
typealias CFNetServiceBrowserRef = CFNetServiceBrowser
@available(OSX 10.2, *)
let kCFStreamErrorDomainMach: Int32
@available(OSX 10.2, *)
let kCFStreamErrorDomainNetServices: Int32
enum CFNetServicesError : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Unknown
  case Collision
  case NotFound
  case InProgress
  case BadArgument
  case Cancel
  case Invalid
  case Timeout
}
enum CFNetServiceMonitorType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case TXT
}
struct CFNetServiceRegisterFlags : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var NoAutoRename: CFNetServiceRegisterFlags { get }
}
struct CFNetServiceBrowserFlags : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var MoreComing: CFNetServiceBrowserFlags { get }
  static var IsDomain: CFNetServiceBrowserFlags { get }
  static var IsDefault: CFNetServiceBrowserFlags { get }
  static var Remove: CFNetServiceBrowserFlags { get }
}
struct CFNetServiceClientContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: CFAllocatorRetainCallBack?
  var release: CFAllocatorReleaseCallBack?
  var copyDescription: CFAllocatorCopyDescriptionCallBack?
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: CFAllocatorRetainCallBack?, release: CFAllocatorReleaseCallBack?, copyDescription: CFAllocatorCopyDescriptionCallBack?)
}
typealias CFNetServiceClientCallBack = @convention(c) (CFNetService, UnsafeMutablePointer<CFStreamError>, UnsafeMutablePointer<Void>) -> Void
typealias CFNetServiceMonitorClientCallBack = @convention(c) (CFNetServiceMonitor, CFNetService, CFNetServiceMonitorType, CFData, UnsafeMutablePointer<CFStreamError>, UnsafeMutablePointer<Void>) -> Void
typealias CFNetServiceBrowserClientCallBack = @convention(c) (CFNetServiceBrowser, CFOptionFlags, AnyObject, UnsafeMutablePointer<CFStreamError>, UnsafeMutablePointer<Void>) -> Void
@available(OSX 10.2, *)
func CFNetServiceGetTypeID() -> CFTypeID
@available(OSX 10.4, *)
func CFNetServiceMonitorGetTypeID() -> CFTypeID
@available(OSX 10.2, *)
func CFNetServiceBrowserGetTypeID() -> CFTypeID
@available(OSX 10.2, *)
func CFNetServiceCreate(alloc: CFAllocator?, _ domain: CFString, _ serviceType: CFString, _ name: CFString, _ port: Int32) -> Unmanaged<CFNetService>
@available(OSX 10.3, *)
func CFNetServiceCreateCopy(alloc: CFAllocator?, _ service: CFNetService) -> Unmanaged<CFNetService>
@available(OSX 10.2, *)
func CFNetServiceGetDomain(theService: CFNetService) -> Unmanaged<CFString>
@available(OSX 10.2, *)
func CFNetServiceGetType(theService: CFNetService) -> Unmanaged<CFString>
@available(OSX 10.2, *)
func CFNetServiceGetName(theService: CFNetService) -> Unmanaged<CFString>
@available(OSX 10.4, *)
func CFNetServiceRegisterWithOptions(theService: CFNetService, _ options: CFOptionFlags, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(OSX 10.4, *)
func CFNetServiceResolveWithTimeout(theService: CFNetService, _ timeout: CFTimeInterval, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(OSX 10.2, *)
func CFNetServiceCancel(theService: CFNetService)
@available(OSX 10.4, *)
func CFNetServiceGetTargetHost(theService: CFNetService) -> Unmanaged<CFString>?
@available(OSX 10.5, *)
func CFNetServiceGetPortNumber(theService: CFNetService) -> Int32
@available(OSX 10.2, *)
func CFNetServiceGetAddressing(theService: CFNetService) -> Unmanaged<CFArray>?
@available(OSX 10.4, *)
func CFNetServiceGetTXTData(theService: CFNetService) -> Unmanaged<CFData>?
@available(OSX 10.4, *)
func CFNetServiceSetTXTData(theService: CFNetService, _ txtRecord: CFData) -> Bool
@available(OSX 10.4, *)
func CFNetServiceCreateDictionaryWithTXTData(alloc: CFAllocator?, _ txtRecord: CFData) -> Unmanaged<CFDictionary>?
@available(OSX 10.4, *)
func CFNetServiceCreateTXTDataWithDictionary(alloc: CFAllocator?, _ keyValuePairs: CFDictionary) -> Unmanaged<CFData>?
@available(OSX 10.2, *)
func CFNetServiceSetClient(theService: CFNetService, _ clientCB: CFNetServiceClientCallBack?, _ clientContext: UnsafeMutablePointer<CFNetServiceClientContext>) -> Bool
@available(OSX 10.2, *)
func CFNetServiceScheduleWithRunLoop(theService: CFNetService, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(OSX 10.2, *)
func CFNetServiceUnscheduleFromRunLoop(theService: CFNetService, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(OSX 10.4, *)
func CFNetServiceMonitorCreate(alloc: CFAllocator?, _ theService: CFNetService, _ clientCB: CFNetServiceMonitorClientCallBack, _ clientContext: UnsafeMutablePointer<CFNetServiceClientContext>) -> Unmanaged<CFNetServiceMonitor>
@available(OSX 10.4, *)
func CFNetServiceMonitorInvalidate(monitor: CFNetServiceMonitor)
@available(OSX 10.4, *)
func CFNetServiceMonitorStart(monitor: CFNetServiceMonitor, _ recordType: CFNetServiceMonitorType, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(OSX 10.4, *)
func CFNetServiceMonitorStop(monitor: CFNetServiceMonitor, _ error: UnsafeMutablePointer<CFStreamError>)
@available(OSX 10.4, *)
func CFNetServiceMonitorScheduleWithRunLoop(monitor: CFNetServiceMonitor, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(OSX 10.4, *)
func CFNetServiceMonitorUnscheduleFromRunLoop(monitor: CFNetServiceMonitor, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(OSX 10.2, *)
func CFNetServiceBrowserCreate(alloc: CFAllocator?, _ clientCB: CFNetServiceBrowserClientCallBack, _ clientContext: UnsafeMutablePointer<CFNetServiceClientContext>) -> Unmanaged<CFNetServiceBrowser>
@available(OSX 10.2, *)
func CFNetServiceBrowserInvalidate(browser: CFNetServiceBrowser)
@available(OSX 10.2, *)
func CFNetServiceBrowserSearchForDomains(browser: CFNetServiceBrowser, _ registrationDomains: Bool, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(OSX 10.2, *)
func CFNetServiceBrowserSearchForServices(browser: CFNetServiceBrowser, _ domain: CFString, _ serviceType: CFString, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(OSX 10.2, *)
func CFNetServiceBrowserStopSearch(browser: CFNetServiceBrowser, _ error: UnsafeMutablePointer<CFStreamError>)
@available(OSX 10.2, *)
func CFNetServiceBrowserScheduleWithRunLoop(browser: CFNetServiceBrowser, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(OSX 10.2, *)
func CFNetServiceBrowserUnscheduleFromRunLoop(browser: CFNetServiceBrowser, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(OSX 10.5, *)
let kCFErrorDomainCFNetwork: CFString
@available(OSX 10.5, *)
let kCFErrorDomainWinSock: CFString
enum CFNetworkErrors : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case CFHostErrorHostNotFound
  case CFHostErrorUnknown
  case CFSOCKSErrorUnknownClientVersion
  case CFSOCKSErrorUnsupportedServerVersion
  case CFSOCKS4ErrorRequestFailed
  case CFSOCKS4ErrorIdentdFailed
  case CFSOCKS4ErrorIdConflict
  case CFSOCKS4ErrorUnknownStatusCode
  case CFSOCKS5ErrorBadState
  case CFSOCKS5ErrorBadResponseAddr
  case CFSOCKS5ErrorBadCredentials
  case CFSOCKS5ErrorUnsupportedNegotiationMethod
  case CFSOCKS5ErrorNoAcceptableMethod
  case CFFTPErrorUnexpectedStatusCode
  case CFErrorHTTPAuthenticationTypeUnsupported
  case CFErrorHTTPBadCredentials
  case CFErrorHTTPConnectionLost
  case CFErrorHTTPParseFailure
  case CFErrorHTTPRedirectionLoopDetected
  case CFErrorHTTPBadURL
  case CFErrorHTTPProxyConnectionFailure
  case CFErrorHTTPBadProxyCredentials
  case CFErrorPACFileError
  case CFErrorPACFileAuth
  case CFErrorHTTPSProxyConnectionFailure
  case CFStreamErrorHTTPSProxyFailureUnexpectedResponseToCONNECTMethod
  case CFURLErrorBackgroundSessionInUseByAnotherProcess
  case CFURLErrorBackgroundSessionWasDisconnected
  case CFURLErrorUnknown
  case CFURLErrorCancelled
  case CFURLErrorBadURL
  case CFURLErrorTimedOut
  case CFURLErrorUnsupportedURL
  case CFURLErrorCannotFindHost
  case CFURLErrorCannotConnectToHost
  case CFURLErrorNetworkConnectionLost
  case CFURLErrorDNSLookupFailed
  case CFURLErrorHTTPTooManyRedirects
  case CFURLErrorResourceUnavailable
  case CFURLErrorNotConnectedToInternet
  case CFURLErrorRedirectToNonExistentLocation
  case CFURLErrorBadServerResponse
  case CFURLErrorUserCancelledAuthentication
  case CFURLErrorUserAuthenticationRequired
  case CFURLErrorZeroByteResource
  case CFURLErrorCannotDecodeRawData
  case CFURLErrorCannotDecodeContentData
  case CFURLErrorCannotParseResponse
  case CFURLErrorInternationalRoamingOff
  case CFURLErrorCallIsActive
  case CFURLErrorDataNotAllowed
  case CFURLErrorRequestBodyStreamExhausted
  case CFURLErrorAppTransportSecurityRequiresSecureConnection
  case CFURLErrorFileDoesNotExist
  case CFURLErrorFileIsDirectory
  case CFURLErrorNoPermissionsToReadFile
  case CFURLErrorDataLengthExceedsMaximum
  case CFURLErrorSecureConnectionFailed
  case CFURLErrorServerCertificateHasBadDate
  case CFURLErrorServerCertificateUntrusted
  case CFURLErrorServerCertificateHasUnknownRoot
  case CFURLErrorServerCertificateNotYetValid
  case CFURLErrorClientCertificateRejected
  case CFURLErrorClientCertificateRequired
  case CFURLErrorCannotLoadFromNetwork
  case CFURLErrorCannotCreateFile
  case CFURLErrorCannotOpenFile
  case CFURLErrorCannotCloseFile
  case CFURLErrorCannotWriteToFile
  case CFURLErrorCannotRemoveFile
  case CFURLErrorCannotMoveFile
  case CFURLErrorDownloadDecodingFailedMidStream
  case CFURLErrorDownloadDecodingFailedToComplete
  case CFHTTPCookieCannotParseCookieFile
  case CFNetServiceErrorUnknown
  case CFNetServiceErrorCollision
  case CFNetServiceErrorNotFound
  case CFNetServiceErrorInProgress
  case CFNetServiceErrorBadArgument
  case CFNetServiceErrorCancel
  case CFNetServiceErrorInvalid
  case CFNetServiceErrorTimeout
  case CFNetServiceErrorDNSServiceFailure
}
@available(OSX 10.5, *)
let kCFURLErrorFailingURLErrorKey: CFString
@available(OSX 10.5, *)
let kCFURLErrorFailingURLStringErrorKey: CFString
@available(OSX 10.5, *)
let kCFGetAddrInfoFailureKey: CFString
@available(OSX 10.5, *)
let kCFSOCKSStatusCodeKey: CFString
@available(OSX 10.5, *)
let kCFSOCKSVersionKey: CFString
@available(OSX 10.5, *)
let kCFSOCKSNegotiationMethodKey: CFString
@available(OSX 10.5, *)
let kCFDNSServiceFailureKey: CFString
@available(OSX 10.5, *)
let kCFFTPStatusCodeKey: CFString

/*!
	@function CFNetworkCopySystemProxySettings
	@discussion Returns a CFDictionary containing the current system internet proxy settings.
	@result Returns a dictionary containing key-value pairs that represent
		the current internet proxy settings.  See below for definitions of the keys and
		values.
		NULL if no proxy settings have been defined or if an error
		was encountered.
		The caller is responsible for releasing the returned dictionary.
*/
@available(OSX 10.6, *)
func CFNetworkCopySystemProxySettings() -> Unmanaged<CFDictionary>?
@available(OSX 10.5, *)
func CFNetworkCopyProxiesForURL(url: CFURL, _ proxySettings: CFDictionary) -> Unmanaged<CFArray>
typealias CFProxyAutoConfigurationResultCallback = @convention(c) (UnsafeMutablePointer<Void>, CFArray, CFError?) -> Void
@available(OSX 10.5, *)
func CFNetworkCopyProxiesForAutoConfigurationScript(proxyAutoConfigurationScript: CFString, _ targetURL: CFURL, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFArray>?
@available(OSX 10.5, *)
func CFNetworkExecuteProxyAutoConfigurationScript(proxyAutoConfigurationScript: CFString, _ targetURL: CFURL, _ cb: CFProxyAutoConfigurationResultCallback, _ clientContext: UnsafeMutablePointer<CFStreamClientContext>) -> Unmanaged<CFRunLoopSource>
@available(OSX 10.5, *)
func CFNetworkExecuteProxyAutoConfigurationURL(proxyAutoConfigURL: CFURL, _ targetURL: CFURL, _ cb: CFProxyAutoConfigurationResultCallback, _ clientContext: UnsafeMutablePointer<CFStreamClientContext>) -> Unmanaged<CFRunLoopSource>
@available(OSX 10.5, *)
let kCFProxyTypeKey: CFString
@available(OSX 10.5, *)
let kCFProxyHostNameKey: CFString
@available(OSX 10.5, *)
let kCFProxyPortNumberKey: CFString
@available(OSX 10.5, *)
let kCFProxyAutoConfigurationURLKey: CFString
@available(OSX 10.7, *)
let kCFProxyAutoConfigurationJavaScriptKey: CFString
@available(OSX 10.5, *)
let kCFProxyUsernameKey: CFString
@available(OSX 10.5, *)
let kCFProxyPasswordKey: CFString
@available(OSX 10.5, *)
let kCFProxyTypeNone: CFString
@available(OSX 10.5, *)
let kCFProxyTypeHTTP: CFString
@available(OSX 10.5, *)
let kCFProxyTypeHTTPS: CFString
@available(OSX 10.5, *)
let kCFProxyTypeSOCKS: CFString
@available(OSX 10.5, *)
let kCFProxyTypeFTP: CFString
@available(OSX 10.5, *)
let kCFProxyTypeAutoConfigurationURL: CFString
@available(OSX 10.7, *)
let kCFProxyTypeAutoConfigurationJavaScript: CFString
@available(OSX 10.5, *)
let kCFProxyAutoConfigurationHTTPResponseKey: CFString
@available(OSX 10.6, *)
let kCFNetworkProxiesExceptionsList: CFString
@available(OSX 10.6, *)
let kCFNetworkProxiesExcludeSimpleHostnames: CFString
@available(OSX 10.6, *)
let kCFNetworkProxiesFTPEnable: CFString
@available(OSX 10.6, *)
let kCFNetworkProxiesFTPPassive: CFString
@available(OSX 10.6, *)
let kCFNetworkProxiesFTPPort: CFString
@available(OSX 10.6, *)
let kCFNetworkProxiesFTPProxy: CFString
@available(OSX 10.6, *)
let kCFNetworkProxiesGopherEnable: CFString
@available(OSX 10.6, *)
let kCFNetworkProxiesGopherPort: CFString
@available(OSX 10.6, *)
let kCFNetworkProxiesGopherProxy: CFString
@available(OSX 10.6, *)
let kCFNetworkProxiesHTTPEnable: CFString
@available(OSX 10.6, *)
let kCFNetworkProxiesHTTPPort: CFString
@available(OSX 10.6, *)
let kCFNetworkProxiesHTTPProxy: CFString
@available(OSX 10.6, *)
let kCFNetworkProxiesHTTPSEnable: CFString
@available(OSX 10.6, *)
let kCFNetworkProxiesHTTPSPort: CFString
@available(OSX 10.6, *)
let kCFNetworkProxiesHTTPSProxy: CFString
@available(OSX 10.6, *)
let kCFNetworkProxiesRTSPEnable: CFString
@available(OSX 10.6, *)
let kCFNetworkProxiesRTSPPort: CFString
@available(OSX 10.6, *)
let kCFNetworkProxiesRTSPProxy: CFString
@available(OSX 10.6, *)
let kCFNetworkProxiesSOCKSEnable: CFString
@available(OSX 10.6, *)
let kCFNetworkProxiesSOCKSPort: CFString
@available(OSX 10.6, *)
let kCFNetworkProxiesSOCKSProxy: CFString
@available(OSX 10.6, *)
let kCFNetworkProxiesProxyAutoConfigEnable: CFString
@available(OSX 10.6, *)
let kCFNetworkProxiesProxyAutoConfigURLString: CFString
@available(OSX 10.7, *)
let kCFNetworkProxiesProxyAutoConfigJavaScript: CFString
@available(OSX 10.6, *)
let kCFNetworkProxiesProxyAutoDiscoveryEnable: CFString
@available(OSX 10.9, *)
let kCFStreamPropertySSLContext: CFString
@available(OSX 10.5, *)
let kCFStreamPropertySSLPeerTrust: CFString
@available(OSX 10.4, *)
let kCFStreamSSLValidatesCertificateChain: CFString
@available(OSX 10.4, *)
let kCFStreamPropertySSLSettings: CFString
@available(OSX 10.4, *)
let kCFStreamSSLLevel: CFString
@available(OSX 10.4, *)
let kCFStreamSSLPeerName: CFString
@available(OSX 10.4, *)
let kCFStreamSSLCertificates: CFString
@available(OSX 10.4, *)
let kCFStreamSSLIsServer: CFString
@available(OSX 10.7, *)
let kCFStreamNetworkServiceType: CFString
@available(OSX 10.7, *)
let kCFStreamNetworkServiceTypeVideo: CFString
@available(OSX 10.7, *)
let kCFStreamNetworkServiceTypeVoice: CFString
@available(OSX 10.7, *)
let kCFStreamNetworkServiceTypeBackground: CFString
@available(OSX, introduced=10.7, deprecated=10.11, message="use PushKit for VoIP control purposes")
let kCFStreamNetworkServiceTypeVoIP: CFString
@available(OSX 10.8, *)
let kCFStreamPropertyNoCellular: CFString
@available(OSX 10.8, *)
let kCFStreamPropertyConnectionIsCellular: CFString
@available(OSX 10.5, *)
let kCFStreamErrorDomainWinSock: CFIndex
@available(OSX 10.0, *)
let kCFStreamErrorDomainSOCKS: Int32
func CFSocketStreamSOCKSGetErrorSubdomain(error: UnsafePointer<CFStreamError>) -> Int32
func CFSocketStreamSOCKSGetError(error: UnsafePointer<CFStreamError>) -> Int32
var kCFStreamErrorSOCKSSubDomainNone: Int { get }
var kCFStreamErrorSOCKSSubDomainVersionCode: Int { get }
var kCFStreamErrorSOCKS4SubDomainResponse: Int { get }
var kCFStreamErrorSOCKS5SubDomainUserPass: Int { get }
var kCFStreamErrorSOCKS5SubDomainMethod: Int { get }
var kCFStreamErrorSOCKS5SubDomainResponse: Int { get }
var kCFStreamErrorSOCKS5BadResponseAddr: Int { get }
var kCFStreamErrorSOCKS5BadState: Int { get }
var kCFStreamErrorSOCKSUnknownClientVersion: Int { get }
var kCFStreamErrorSOCKS4RequestFailed: Int { get }
var kCFStreamErrorSOCKS4IdentdFailed: Int { get }
var kCFStreamErrorSOCKS4IdConflict: Int { get }
var kSOCKS5NoAcceptableMethod: Int { get }
@available(OSX 10.2, *)
let kCFStreamPropertySOCKSProxy: CFString
@available(OSX 10.2, *)
let kCFStreamPropertySOCKSProxyHost: CFString
@available(OSX 10.2, *)
let kCFStreamPropertySOCKSProxyPort: CFString
@available(OSX 10.2, *)
let kCFStreamPropertySOCKSVersion: CFString
@available(OSX 10.2, *)
let kCFStreamSocketSOCKSVersion4: CFString
@available(OSX 10.2, *)
let kCFStreamSocketSOCKSVersion5: CFString
@available(OSX 10.2, *)
let kCFStreamPropertySOCKSUser: CFString
@available(OSX 10.2, *)
let kCFStreamPropertySOCKSPassword: CFString
@available(OSX 10.4, *)
let kCFStreamPropertyProxyLocalBypass: CFString
@available(OSX 10.2, *)
let kCFStreamErrorDomainSSL: Int32
@available(OSX 10.2, *)
let kCFStreamPropertySocketSecurityLevel: CFString
@available(OSX 10.2, *)
let kCFStreamSocketSecurityLevelNone: CFString
@available(OSX 10.2, *)
let kCFStreamSocketSecurityLevelSSLv2: CFString
@available(OSX 10.2, *)
let kCFStreamSocketSecurityLevelSSLv3: CFString
@available(OSX 10.2, *)
let kCFStreamSocketSecurityLevelTLSv1: CFString
@available(OSX 10.2, *)
let kCFStreamSocketSecurityLevelNegotiatedSSL: CFString
@available(OSX 10.2, *)
let kCFStreamPropertyShouldCloseNativeSocket: CFString
@available(OSX 10.3, *)
let kCFStreamPropertySocketRemoteHost: CFString
@available(OSX 10.3, *)
let kCFStreamPropertySocketRemoteNetService: CFString
@available(OSX 10.11, *)
let kCFStreamPropertySocketExtendedBackgroundIdleMode: CFString
@available(OSX 10.3, *)
func CFStreamCreatePairWithSocketToCFHost(alloc: CFAllocator?, _ host: CFHost, _ port: Int32, _ readStream: UnsafeMutablePointer<Unmanaged<CFReadStream>?>, _ writeStream: UnsafeMutablePointer<Unmanaged<CFWriteStream>?>)
@available(OSX 10.3, *)
func CFStreamCreatePairWithSocketToNetService(alloc: CFAllocator?, _ service: CFNetService, _ readStream: UnsafeMutablePointer<Unmanaged<CFReadStream>?>, _ writeStream: UnsafeMutablePointer<Unmanaged<CFWriteStream>?>)
