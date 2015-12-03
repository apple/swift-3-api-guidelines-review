
@available(iOS 2.0, *)
let kCFStreamErrorDomainFTP: Int32
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPUserName: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPPassword: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPUsePassiveMode: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPResourceSize: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPFetchResourceInfo: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPFileTransferOffset: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPAttemptPersistentConnection: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPProxy: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPProxyHost: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPProxyPort: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPProxyUser: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSessionAPI for ftp requests")
let kCFStreamPropertyFTPProxyPassword: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSessionAPI for ftp requests")
let kCFFTPResourceMode: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSessionAPI for ftp requests")
let kCFFTPResourceName: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSessionAPI for ftp requests")
let kCFFTPResourceOwner: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSessionAPI for ftp requests")
let kCFFTPResourceGroup: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSessionAPI for ftp requests")
let kCFFTPResourceLink: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSessionAPI for ftp requests")
let kCFFTPResourceSize: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSessionAPI for ftp requests")
let kCFFTPResourceType: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSessionAPI for ftp requests")
let kCFFTPResourceModDate: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSessionAPI for ftp requests")
func CFReadStreamCreateWithFTPURL(alloc: CFAllocator?, _ ftpURL: CFURL) -> Unmanaged<CFReadStream>
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSessionAPI for ftp requests")
func CFFTPCreateParsedResourceListing(alloc: CFAllocator?, _ buffer: UnsafePointer<UInt8>, _ bufferLength: CFIndex, _ parsed: UnsafeMutablePointer<Unmanaged<CFDictionary>?>) -> CFIndex
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSessionAPI for ftp requests")
func CFWriteStreamCreateWithFTPURL(alloc: CFAllocator?, _ ftpURL: CFURL) -> Unmanaged<CFWriteStream>
typealias CFHTTPAuthenticationRef = CFHTTPAuthentication
enum CFStreamErrorHTTPAuthentication : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case TypeUnsupported
  case BadUserName
  case BadPassword
}
@available(iOS 2.0, *)
let kCFHTTPAuthenticationUsername: CFString
@available(iOS 2.0, *)
let kCFHTTPAuthenticationPassword: CFString
@available(iOS 2.0, *)
let kCFHTTPAuthenticationAccountDomain: CFString
@available(iOS 2.0, *)
func CFHTTPAuthenticationGetTypeID() -> CFTypeID
@available(iOS 2.0, *)
func CFHTTPAuthenticationCreateFromResponse(alloc: CFAllocator?, _ response: CFHTTPMessage) -> Unmanaged<CFHTTPAuthentication>
@available(iOS 2.0, *)
func CFHTTPAuthenticationIsValid(auth: CFHTTPAuthentication, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(iOS 2.0, *)
func CFHTTPAuthenticationAppliesToRequest(auth: CFHTTPAuthentication, _ request: CFHTTPMessage) -> Bool
@available(iOS 2.0, *)
func CFHTTPAuthenticationRequiresOrderedRequests(auth: CFHTTPAuthentication) -> Bool
@available(iOS 2.0, *)
func CFHTTPMessageApplyCredentials(request: CFHTTPMessage, _ auth: CFHTTPAuthentication, _ username: CFString?, _ password: CFString?, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(iOS 2.0, *)
func CFHTTPMessageApplyCredentialDictionary(request: CFHTTPMessage, _ auth: CFHTTPAuthentication, _ dict: CFDictionary, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(iOS 2.0, *)
func CFHTTPAuthenticationCopyRealm(auth: CFHTTPAuthentication) -> Unmanaged<CFString>
@available(iOS 2.0, *)
func CFHTTPAuthenticationCopyDomains(auth: CFHTTPAuthentication) -> Unmanaged<CFArray>
@available(iOS 2.0, *)
func CFHTTPAuthenticationCopyMethod(auth: CFHTTPAuthentication) -> Unmanaged<CFString>
@available(iOS 2.0, *)
func CFHTTPAuthenticationRequiresUserNameAndPassword(auth: CFHTTPAuthentication) -> Bool
@available(iOS 2.0, *)
func CFHTTPAuthenticationRequiresAccountDomain(auth: CFHTTPAuthentication) -> Bool
@available(iOS 2.0, *)
let kCFHTTPVersion1_0: CFString
@available(iOS 2.0, *)
let kCFHTTPVersion1_1: CFString
@available(iOS 8.0, *)
let kCFHTTPVersion2_0: CFString
@available(iOS 2.0, *)
let kCFHTTPAuthenticationSchemeBasic: CFString
@available(iOS 2.0, *)
let kCFHTTPAuthenticationSchemeDigest: CFString
@available(iOS 2.0, *)
let kCFHTTPAuthenticationSchemeNTLM: CFString
@available(iOS 2.0, *)
let kCFHTTPAuthenticationSchemeKerberos: CFString
@available(iOS 2.0, *)
let kCFHTTPAuthenticationSchemeNegotiate: CFString
@available(iOS 3.0, *)
let kCFHTTPAuthenticationSchemeNegotiate2: CFString
@available(iOS 4.3, *)
let kCFHTTPAuthenticationSchemeXMobileMeAuthToken: CFString
@available(iOS 7.0, *)
let kCFHTTPAuthenticationSchemeOAuth1: CFString
typealias CFHTTPMessageRef = CFHTTPMessage
@available(iOS 2.0, *)
func CFHTTPMessageGetTypeID() -> CFTypeID
@available(iOS 2.0, *)
func CFHTTPMessageCreateRequest(alloc: CFAllocator?, _ requestMethod: CFString, _ url: CFURL, _ httpVersion: CFString) -> Unmanaged<CFHTTPMessage>
@available(iOS 2.0, *)
func CFHTTPMessageCreateResponse(alloc: CFAllocator?, _ statusCode: CFIndex, _ statusDescription: CFString?, _ httpVersion: CFString) -> Unmanaged<CFHTTPMessage>
@available(iOS 2.0, *)
func CFHTTPMessageCreateEmpty(alloc: CFAllocator?, _ isRequest: Bool) -> Unmanaged<CFHTTPMessage>
@available(iOS 2.0, *)
func CFHTTPMessageCreateCopy(alloc: CFAllocator?, _ message: CFHTTPMessage) -> Unmanaged<CFHTTPMessage>
@available(iOS 2.0, *)
func CFHTTPMessageIsRequest(message: CFHTTPMessage) -> Bool
@available(iOS 2.0, *)
func CFHTTPMessageCopyVersion(message: CFHTTPMessage) -> Unmanaged<CFString>
@available(iOS 2.0, *)
func CFHTTPMessageCopyBody(message: CFHTTPMessage) -> Unmanaged<CFData>?
@available(iOS 2.0, *)
func CFHTTPMessageSetBody(message: CFHTTPMessage, _ bodyData: CFData)
@available(iOS 2.0, *)
func CFHTTPMessageCopyHeaderFieldValue(message: CFHTTPMessage, _ headerField: CFString) -> Unmanaged<CFString>?
@available(iOS 2.0, *)
func CFHTTPMessageCopyAllHeaderFields(message: CFHTTPMessage) -> Unmanaged<CFDictionary>?
@available(iOS 2.0, *)
func CFHTTPMessageSetHeaderFieldValue(message: CFHTTPMessage, _ headerField: CFString, _ value: CFString?)
@available(iOS 2.0, *)
func CFHTTPMessageAppendBytes(message: CFHTTPMessage, _ newBytes: UnsafePointer<UInt8>, _ numBytes: CFIndex) -> Bool
@available(iOS 2.0, *)
func CFHTTPMessageIsHeaderComplete(message: CFHTTPMessage) -> Bool
@available(iOS 2.0, *)
func CFHTTPMessageCopySerializedMessage(message: CFHTTPMessage) -> Unmanaged<CFData>?

/*********************/
@available(iOS 2.0, *)
func CFHTTPMessageCopyRequestURL(request: CFHTTPMessage) -> Unmanaged<CFURL>?
@available(iOS 2.0, *)
func CFHTTPMessageCopyRequestMethod(request: CFHTTPMessage) -> Unmanaged<CFString>?
@available(iOS 2.0, *)
func CFHTTPMessageAddAuthentication(request: CFHTTPMessage, _ authenticationFailureResponse: CFHTTPMessage?, _ username: CFString, _ password: CFString, _ authenticationScheme: CFString?, _ forProxy: Bool) -> Bool

/**********************/
@available(iOS 2.0, *)
func CFHTTPMessageGetResponseStatusCode(response: CFHTTPMessage) -> CFIndex
@available(iOS 2.0, *)
func CFHTTPMessageCopyResponseStatusLine(response: CFHTTPMessage) -> Unmanaged<CFString>?
@available(iOS 2.0, *)
let kCFStreamErrorDomainHTTP: Int32
enum CFStreamErrorHTTP : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case ParseFailure
  case RedirectionLoop
  case BadURL
}
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPResponseHeader: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPFinalURL: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPFinalRequest: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPProxy: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPProxyHost: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPProxyPort: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPSProxyHost: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPSProxyPort: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPShouldAutoredirect: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPAttemptPersistentConnection: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPRequestBytesWrittenCount: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession API for http requests")
func CFReadStreamCreateForHTTPRequest(alloc: CFAllocator?, _ request: CFHTTPMessage) -> Unmanaged<CFReadStream>
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession API for http requests")
func CFReadStreamCreateForStreamedHTTPRequest(alloc: CFAllocator?, _ requestHeaders: CFHTTPMessage, _ requestBody: CFReadStream) -> Unmanaged<CFReadStream>
typealias CFHostRef = CFHost
@available(iOS 2.0, *)
let kCFStreamErrorDomainNetDB: Int32
@available(iOS 2.0, *)
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
@available(iOS 2.0, *)
func CFHostGetTypeID() -> CFTypeID
@available(iOS 2.0, *)
func CFHostCreateWithName(allocator: CFAllocator?, _ hostname: CFString) -> Unmanaged<CFHost>
@available(iOS 2.0, *)
func CFHostCreateWithAddress(allocator: CFAllocator?, _ addr: CFData) -> Unmanaged<CFHost>
@available(iOS 2.0, *)
func CFHostCreateCopy(alloc: CFAllocator?, _ host: CFHost) -> Unmanaged<CFHost>
@available(iOS 2.0, *)
func CFHostStartInfoResolution(theHost: CFHost, _ info: CFHostInfoType, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(iOS 2.0, *)
func CFHostGetAddressing(theHost: CFHost, _ hasBeenResolved: UnsafeMutablePointer<DarwinBoolean>) -> Unmanaged<CFArray>?
@available(iOS 2.0, *)
func CFHostGetNames(theHost: CFHost, _ hasBeenResolved: UnsafeMutablePointer<DarwinBoolean>) -> Unmanaged<CFArray>?
@available(iOS 2.0, *)
func CFHostGetReachability(theHost: CFHost, _ hasBeenResolved: UnsafeMutablePointer<DarwinBoolean>) -> Unmanaged<CFData>?
@available(iOS 2.0, *)
func CFHostCancelInfoResolution(theHost: CFHost, _ info: CFHostInfoType)
@available(iOS 2.0, *)
func CFHostSetClient(theHost: CFHost, _ clientCB: CFHostClientCallBack?, _ clientContext: UnsafeMutablePointer<CFHostClientContext>) -> Bool
@available(iOS 2.0, *)
func CFHostScheduleWithRunLoop(theHost: CFHost, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(iOS 2.0, *)
func CFHostUnscheduleFromRunLoop(theHost: CFHost, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
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
@available(iOS 2.0, *)
func CFNetDiagnosticCreateWithStreams(alloc: CFAllocator?, _ readStream: CFReadStream?, _ writeStream: CFWriteStream?) -> Unmanaged<CFNetDiagnostic>
@available(iOS 2.0, *)
func CFNetDiagnosticCreateWithURL(alloc: CFAllocator, _ url: CFURL) -> Unmanaged<CFNetDiagnostic>
@available(iOS 2.0, *)
func CFNetDiagnosticSetName(details: CFNetDiagnostic, _ name: CFString)
@available(iOS 2.0, *)
func CFNetDiagnosticDiagnoseProblemInteractively(details: CFNetDiagnostic) -> CFNetDiagnosticStatus
@available(iOS 2.0, *)
func CFNetDiagnosticCopyNetworkStatusPassively(details: CFNetDiagnostic, _ description: UnsafeMutablePointer<Unmanaged<CFString>?>) -> CFNetDiagnosticStatus
typealias CFNetServiceRef = CFNetService
typealias CFNetServiceMonitorRef = CFNetServiceMonitor
typealias CFNetServiceBrowserRef = CFNetServiceBrowser
@available(iOS 2.0, *)
let kCFStreamErrorDomainMach: Int32
@available(iOS 2.0, *)
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
@available(iOS 2.0, *)
func CFNetServiceGetTypeID() -> CFTypeID
@available(iOS 2.0, *)
func CFNetServiceMonitorGetTypeID() -> CFTypeID
@available(iOS 2.0, *)
func CFNetServiceBrowserGetTypeID() -> CFTypeID
@available(iOS 2.0, *)
func CFNetServiceCreate(alloc: CFAllocator?, _ domain: CFString, _ serviceType: CFString, _ name: CFString, _ port: Int32) -> Unmanaged<CFNetService>
@available(iOS 2.0, *)
func CFNetServiceCreateCopy(alloc: CFAllocator?, _ service: CFNetService) -> Unmanaged<CFNetService>
@available(iOS 2.0, *)
func CFNetServiceGetDomain(theService: CFNetService) -> Unmanaged<CFString>
@available(iOS 2.0, *)
func CFNetServiceGetType(theService: CFNetService) -> Unmanaged<CFString>
@available(iOS 2.0, *)
func CFNetServiceGetName(theService: CFNetService) -> Unmanaged<CFString>
@available(iOS 2.0, *)
func CFNetServiceRegisterWithOptions(theService: CFNetService, _ options: CFOptionFlags, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(iOS 2.0, *)
func CFNetServiceResolveWithTimeout(theService: CFNetService, _ timeout: CFTimeInterval, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(iOS 2.0, *)
func CFNetServiceCancel(theService: CFNetService)
@available(iOS 2.0, *)
func CFNetServiceGetTargetHost(theService: CFNetService) -> Unmanaged<CFString>?
@available(iOS 2.0, *)
func CFNetServiceGetPortNumber(theService: CFNetService) -> Int32
@available(iOS 2.0, *)
func CFNetServiceGetAddressing(theService: CFNetService) -> Unmanaged<CFArray>?
@available(iOS 2.0, *)
func CFNetServiceGetTXTData(theService: CFNetService) -> Unmanaged<CFData>?
@available(iOS 2.0, *)
func CFNetServiceSetTXTData(theService: CFNetService, _ txtRecord: CFData) -> Bool
@available(iOS 2.0, *)
func CFNetServiceCreateDictionaryWithTXTData(alloc: CFAllocator?, _ txtRecord: CFData) -> Unmanaged<CFDictionary>?
@available(iOS 2.0, *)
func CFNetServiceCreateTXTDataWithDictionary(alloc: CFAllocator?, _ keyValuePairs: CFDictionary) -> Unmanaged<CFData>?
@available(iOS 2.0, *)
func CFNetServiceSetClient(theService: CFNetService, _ clientCB: CFNetServiceClientCallBack?, _ clientContext: UnsafeMutablePointer<CFNetServiceClientContext>) -> Bool
@available(iOS 2.0, *)
func CFNetServiceScheduleWithRunLoop(theService: CFNetService, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(iOS 2.0, *)
func CFNetServiceUnscheduleFromRunLoop(theService: CFNetService, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(iOS 2.0, *)
func CFNetServiceMonitorCreate(alloc: CFAllocator?, _ theService: CFNetService, _ clientCB: CFNetServiceMonitorClientCallBack, _ clientContext: UnsafeMutablePointer<CFNetServiceClientContext>) -> Unmanaged<CFNetServiceMonitor>
@available(iOS 2.0, *)
func CFNetServiceMonitorInvalidate(monitor: CFNetServiceMonitor)
@available(iOS 2.0, *)
func CFNetServiceMonitorStart(monitor: CFNetServiceMonitor, _ recordType: CFNetServiceMonitorType, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(iOS 2.0, *)
func CFNetServiceMonitorStop(monitor: CFNetServiceMonitor, _ error: UnsafeMutablePointer<CFStreamError>)
@available(iOS 2.0, *)
func CFNetServiceMonitorScheduleWithRunLoop(monitor: CFNetServiceMonitor, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(iOS 2.0, *)
func CFNetServiceMonitorUnscheduleFromRunLoop(monitor: CFNetServiceMonitor, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(iOS 2.0, *)
func CFNetServiceBrowserCreate(alloc: CFAllocator?, _ clientCB: CFNetServiceBrowserClientCallBack, _ clientContext: UnsafeMutablePointer<CFNetServiceClientContext>) -> Unmanaged<CFNetServiceBrowser>
@available(iOS 2.0, *)
func CFNetServiceBrowserInvalidate(browser: CFNetServiceBrowser)
@available(iOS 2.0, *)
func CFNetServiceBrowserSearchForDomains(browser: CFNetServiceBrowser, _ registrationDomains: Bool, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(iOS 2.0, *)
func CFNetServiceBrowserSearchForServices(browser: CFNetServiceBrowser, _ domain: CFString, _ serviceType: CFString, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(iOS 2.0, *)
func CFNetServiceBrowserStopSearch(browser: CFNetServiceBrowser, _ error: UnsafeMutablePointer<CFStreamError>)
@available(iOS 2.0, *)
func CFNetServiceBrowserScheduleWithRunLoop(browser: CFNetServiceBrowser, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(iOS 2.0, *)
func CFNetServiceBrowserUnscheduleFromRunLoop(browser: CFNetServiceBrowser, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(iOS 2.0, *)
let kCFErrorDomainCFNetwork: CFString
@available(iOS 2.0, *)
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
@available(iOS 2.2, *)
let kCFURLErrorFailingURLErrorKey: CFString
@available(iOS 2.2, *)
let kCFURLErrorFailingURLStringErrorKey: CFString
@available(iOS 2.0, *)
let kCFGetAddrInfoFailureKey: CFString
@available(iOS 2.0, *)
let kCFSOCKSStatusCodeKey: CFString
@available(iOS 2.0, *)
let kCFSOCKSVersionKey: CFString
@available(iOS 2.0, *)
let kCFSOCKSNegotiationMethodKey: CFString
@available(iOS 2.0, *)
let kCFDNSServiceFailureKey: CFString
@available(iOS 2.0, *)
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
@available(iOS 2.0, *)
func CFNetworkCopySystemProxySettings() -> Unmanaged<CFDictionary>?
@available(iOS 2.0, *)
func CFNetworkCopyProxiesForURL(url: CFURL, _ proxySettings: CFDictionary) -> Unmanaged<CFArray>
typealias CFProxyAutoConfigurationResultCallback = @convention(c) (UnsafeMutablePointer<Void>, CFArray, CFError?) -> Void
@available(iOS 2.0, *)
func CFNetworkCopyProxiesForAutoConfigurationScript(proxyAutoConfigurationScript: CFString, _ targetURL: CFURL, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFArray>?
@available(iOS 2.0, *)
func CFNetworkExecuteProxyAutoConfigurationScript(proxyAutoConfigurationScript: CFString, _ targetURL: CFURL, _ cb: CFProxyAutoConfigurationResultCallback, _ clientContext: UnsafeMutablePointer<CFStreamClientContext>) -> Unmanaged<CFRunLoopSource>
@available(iOS 2.0, *)
func CFNetworkExecuteProxyAutoConfigurationURL(proxyAutoConfigURL: CFURL, _ targetURL: CFURL, _ cb: CFProxyAutoConfigurationResultCallback, _ clientContext: UnsafeMutablePointer<CFStreamClientContext>) -> Unmanaged<CFRunLoopSource>
@available(iOS 2.0, *)
let kCFProxyTypeKey: CFString
@available(iOS 2.0, *)
let kCFProxyHostNameKey: CFString
@available(iOS 2.0, *)
let kCFProxyPortNumberKey: CFString
@available(iOS 2.0, *)
let kCFProxyAutoConfigurationURLKey: CFString
@available(iOS 3.0, *)
let kCFProxyAutoConfigurationJavaScriptKey: CFString
@available(iOS 2.0, *)
let kCFProxyUsernameKey: CFString
@available(iOS 2.0, *)
let kCFProxyPasswordKey: CFString
@available(iOS 2.0, *)
let kCFProxyTypeNone: CFString
@available(iOS 2.0, *)
let kCFProxyTypeHTTP: CFString
@available(iOS 2.0, *)
let kCFProxyTypeHTTPS: CFString
@available(iOS 2.0, *)
let kCFProxyTypeSOCKS: CFString
@available(iOS 2.0, *)
let kCFProxyTypeFTP: CFString
@available(iOS 2.0, *)
let kCFProxyTypeAutoConfigurationURL: CFString
@available(iOS 3.0, *)
let kCFProxyTypeAutoConfigurationJavaScript: CFString
@available(iOS 2.0, *)
let kCFProxyAutoConfigurationHTTPResponseKey: CFString
@available(iOS 2.0, *)
let kCFNetworkProxiesHTTPEnable: CFString
@available(iOS 2.0, *)
let kCFNetworkProxiesHTTPPort: CFString
@available(iOS 2.0, *)
let kCFNetworkProxiesHTTPProxy: CFString
@available(iOS 2.0, *)
let kCFNetworkProxiesProxyAutoConfigEnable: CFString
@available(iOS 2.0, *)
let kCFNetworkProxiesProxyAutoConfigURLString: CFString
@available(iOS 3.0, *)
let kCFNetworkProxiesProxyAutoConfigJavaScript: CFString
@available(iOS 5.0, *)
let kCFStreamPropertySSLContext: CFString
@available(iOS 2.0, *)
let kCFStreamPropertySSLPeerTrust: CFString
@available(iOS 2.0, *)
let kCFStreamSSLValidatesCertificateChain: CFString
@available(iOS 2.0, *)
let kCFStreamPropertySSLSettings: CFString
@available(iOS 2.0, *)
let kCFStreamSSLLevel: CFString
@available(iOS 2.0, *)
let kCFStreamSSLPeerName: CFString
@available(iOS 2.0, *)
let kCFStreamSSLCertificates: CFString
@available(iOS 2.0, *)
let kCFStreamSSLIsServer: CFString
@available(iOS 4.0, *)
let kCFStreamNetworkServiceType: CFString
@available(iOS 5.0, *)
let kCFStreamNetworkServiceTypeVideo: CFString
@available(iOS 5.0, *)
let kCFStreamNetworkServiceTypeVoice: CFString
@available(iOS 5.0, *)
let kCFStreamNetworkServiceTypeBackground: CFString
@available(iOS, introduced=4.0, deprecated=9.0, message="use PushKit for VoIP control purposes")
let kCFStreamNetworkServiceTypeVoIP: CFString
@available(iOS 5.0, *)
let kCFStreamPropertyNoCellular: CFString
@available(iOS 6.0, *)
let kCFStreamPropertyConnectionIsCellular: CFString
@available(iOS 2.0, *)
let kCFStreamErrorDomainWinSock: CFIndex
@available(iOS 2.0, *)
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
@available(iOS 2.0, *)
let kCFStreamPropertySOCKSProxy: CFString
@available(iOS 2.0, *)
let kCFStreamPropertySOCKSProxyHost: CFString
@available(iOS 2.0, *)
let kCFStreamPropertySOCKSProxyPort: CFString
@available(iOS 2.0, *)
let kCFStreamPropertySOCKSVersion: CFString
@available(iOS 2.0, *)
let kCFStreamSocketSOCKSVersion4: CFString
@available(iOS 2.0, *)
let kCFStreamSocketSOCKSVersion5: CFString
@available(iOS 2.0, *)
let kCFStreamPropertySOCKSUser: CFString
@available(iOS 2.0, *)
let kCFStreamPropertySOCKSPassword: CFString
@available(iOS 2.0, *)
let kCFStreamPropertyProxyLocalBypass: CFString
@available(iOS 2.0, *)
let kCFStreamErrorDomainSSL: Int32
@available(iOS 2.0, *)
let kCFStreamPropertySocketSecurityLevel: CFString
@available(iOS 2.0, *)
let kCFStreamSocketSecurityLevelNone: CFString
@available(iOS 2.0, *)
let kCFStreamSocketSecurityLevelSSLv2: CFString
@available(iOS 2.0, *)
let kCFStreamSocketSecurityLevelSSLv3: CFString
@available(iOS 2.0, *)
let kCFStreamSocketSecurityLevelTLSv1: CFString
@available(iOS 2.0, *)
let kCFStreamSocketSecurityLevelNegotiatedSSL: CFString
@available(iOS 2.0, *)
let kCFStreamPropertyShouldCloseNativeSocket: CFString
@available(iOS 2.0, *)
let kCFStreamPropertySocketRemoteHost: CFString
@available(iOS 2.0, *)
let kCFStreamPropertySocketRemoteNetService: CFString
@available(iOS 9.0, *)
let kCFStreamPropertySocketExtendedBackgroundIdleMode: CFString
@available(iOS 2.0, *)
func CFStreamCreatePairWithSocketToCFHost(alloc: CFAllocator?, _ host: CFHost, _ port: Int32, _ readStream: UnsafeMutablePointer<Unmanaged<CFReadStream>?>, _ writeStream: UnsafeMutablePointer<Unmanaged<CFWriteStream>?>)
@available(iOS 2.0, *)
func CFStreamCreatePairWithSocketToNetService(alloc: CFAllocator?, _ service: CFNetService, _ readStream: UnsafeMutablePointer<Unmanaged<CFReadStream>?>, _ writeStream: UnsafeMutablePointer<Unmanaged<CFWriteStream>?>)
