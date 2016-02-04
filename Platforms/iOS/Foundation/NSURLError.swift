
let urlErrorDomain: String
@available(iOS 4.0, *)
let urlErrorFailingURLErrorKey: String
@available(iOS 4.0, *)
let urlErrorFailingURLStringErrorKey: String
@available(iOS 4.0, *)
let urlErrorFailingURLPeerTrustErrorKey: String
@available(iOS 8.0, *)
let urlErrorBackgroundTaskCancelledReasonKey: String
var urlErrorCancelledReasonUserForceQuitApplication: Int { get }
var urlErrorCancelledReasonBackgroundUpdatesDisabled: Int { get }
@available(iOS 8.0, *)
var urlErrorCancelledReasonInsufficientSystemResources: Int { get }
var urlErrorUnknown: Int { get }
var urlErrorCancelled: Int { get }
var urlErrorBadURL: Int { get }
var urlErrorTimedOut: Int { get }
var urlErrorUnsupportedURL: Int { get }
var urlErrorCannotFindHost: Int { get }
var urlErrorCannotConnectToHost: Int { get }
var urlErrorNetworkConnectionLost: Int { get }
var urlErrorDNSLookupFailed: Int { get }
var urlErrorHTTPTooManyRedirects: Int { get }
var urlErrorResourceUnavailable: Int { get }
var urlErrorNotConnectedToInternet: Int { get }
var urlErrorRedirectToNonExistentLocation: Int { get }
var urlErrorBadServerResponse: Int { get }
var urlErrorUserCancelledAuthentication: Int { get }
var urlErrorUserAuthenticationRequired: Int { get }
var urlErrorZeroByteResource: Int { get }
var urlErrorCannotDecodeRawData: Int { get }
var urlErrorCannotDecodeContentData: Int { get }
var urlErrorCannotParseResponse: Int { get }
@available(iOS 9.0, *)
var urlErrorAppTransportSecurityRequiresSecureConnection: Int { get }
var urlErrorFileDoesNotExist: Int { get }
var urlErrorFileIsDirectory: Int { get }
var urlErrorNoPermissionsToReadFile: Int { get }
@available(iOS 2.0, *)
var urlErrorDataLengthExceedsMaximum: Int { get }
var urlErrorSecureConnectionFailed: Int { get }
var urlErrorServerCertificateHasBadDate: Int { get }
var urlErrorServerCertificateUntrusted: Int { get }
var urlErrorServerCertificateHasUnknownRoot: Int { get }
var urlErrorServerCertificateNotYetValid: Int { get }
var urlErrorClientCertificateRejected: Int { get }
var urlErrorClientCertificateRequired: Int { get }
var urlErrorCannotLoadFromNetwork: Int { get }
var urlErrorCannotCreateFile: Int { get }
var urlErrorCannotOpenFile: Int { get }
var urlErrorCannotCloseFile: Int { get }
var urlErrorCannotWriteToFile: Int { get }
var urlErrorCannotRemoveFile: Int { get }
var urlErrorCannotMoveFile: Int { get }
var urlErrorDownloadDecodingFailedMidStream: Int { get }
var urlErrorDownloadDecodingFailedToComplete: Int { get }
@available(iOS 3.0, *)
var urlErrorInternationalRoamingOff: Int { get }
@available(iOS 3.0, *)
var urlErrorCallIsActive: Int { get }
@available(iOS 3.0, *)
var urlErrorDataNotAllowed: Int { get }
@available(iOS 3.0, *)
var urlErrorRequestBodyStreamExhausted: Int { get }
@available(iOS 8.0, *)
var urlErrorBackgroundSessionRequiresSharedContainer: Int { get }
@available(iOS 8.0, *)
var urlErrorBackgroundSessionInUseByAnotherProcess: Int { get }
@available(iOS 8.0, *)
var urlErrorBackgroundSessionWasDisconnected: Int { get }
