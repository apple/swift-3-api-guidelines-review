
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
