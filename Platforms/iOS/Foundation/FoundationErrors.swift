
var fileNoSuchFileError: Int { get }
var fileLockingError: Int { get }
var fileReadUnknownError: Int { get }
var fileReadNoPermissionError: Int { get }
var fileReadInvalidFileNameError: Int { get }
var fileReadCorruptFileError: Int { get }
var fileReadNoSuchFileError: Int { get }
var fileReadInapplicableStringEncodingError: Int { get }
var fileReadUnsupportedSchemeError: Int { get }
@available(iOS 2.0, *)
var fileReadTooLargeError: Int { get }
@available(iOS 2.0, *)
var fileReadUnknownStringEncodingError: Int { get }
var fileWriteUnknownError: Int { get }
var fileWriteNoPermissionError: Int { get }
var fileWriteInvalidFileNameError: Int { get }
@available(iOS 5.0, *)
var fileWriteFileExistsError: Int { get }
var fileWriteInapplicableStringEncodingError: Int { get }
var fileWriteUnsupportedSchemeError: Int { get }
var fileWriteOutOfSpaceError: Int { get }
@available(iOS 4.0, *)
var fileWriteVolumeReadOnlyError: Int { get }
var keyValueValidationError: Int { get }
var formattingError: Int { get }
var userCancelledError: Int { get }
@available(iOS 6.0, *)
var featureUnsupportedError: Int { get }
@available(iOS 2.0, *)
var executableNotLoadableError: Int { get }
@available(iOS 2.0, *)
var executableArchitectureMismatchError: Int { get }
@available(iOS 2.0, *)
var executableRuntimeMismatchError: Int { get }
@available(iOS 2.0, *)
var executableLoadError: Int { get }
@available(iOS 2.0, *)
var executableLinkError: Int { get }
var fileErrorMinimum: Int { get }
var fileErrorMaximum: Int { get }
var validationErrorMinimum: Int { get }
var validationErrorMaximum: Int { get }
@available(iOS 2.0, *)
var executableErrorMinimum: Int { get }
@available(iOS 2.0, *)
var executableErrorMaximum: Int { get }
var formattingErrorMinimum: Int { get }
var formattingErrorMaximum: Int { get }
@available(iOS 4.0, *)
var propertyListReadCorruptError: Int { get }
@available(iOS 4.0, *)
var propertyListReadUnknownVersionError: Int { get }
@available(iOS 4.0, *)
var propertyListReadStreamError: Int { get }
@available(iOS 4.0, *)
var propertyListWriteStreamError: Int { get }
@available(iOS 8.0, *)
var propertyListWriteInvalidError: Int { get }
@available(iOS 4.0, *)
var propertyListErrorMinimum: Int { get }
@available(iOS 4.0, *)
var propertyListErrorMaximum: Int { get }
@available(iOS 6.0, *)
var xpcConnectionInterrupted: Int { get }
@available(iOS 6.0, *)
var xpcConnectionInvalid: Int { get }
@available(iOS 6.0, *)
var xpcConnectionReplyInvalid: Int { get }
@available(iOS 6.0, *)
var xpcConnectionErrorMinimum: Int { get }
@available(iOS 6.0, *)
var xpcConnectionErrorMaximum: Int { get }
@available(iOS 7.0, *)
var ubiquitousFileUnavailableError: Int { get }
@available(iOS 7.0, *)
var ubiquitousFileNotUploadedDueToQuotaError: Int { get }
@available(iOS 7.0, *)
var ubiquitousFileUbiquityServerNotAvailable: Int { get }
@available(iOS 7.0, *)
var ubiquitousFileErrorMinimum: Int { get }
@available(iOS 7.0, *)
var ubiquitousFileErrorMaximum: Int { get }
@available(iOS 8.0, *)
var userActivityHandoffFailedError: Int { get }
@available(iOS 8.0, *)
var userActivityConnectionUnavailableError: Int { get }
@available(iOS 8.0, *)
var userActivityRemoteApplicationTimedOutError: Int { get }
@available(iOS 8.0, *)
var userActivityHandoffUserInfoTooLargeError: Int { get }
@available(iOS 8.0, *)
var userActivityErrorMinimum: Int { get }
@available(iOS 8.0, *)
var userActivityErrorMaximum: Int { get }
@available(iOS 9.0, *)
var coderReadCorruptError: Int { get }
@available(iOS 9.0, *)
var coderValueNotFoundError: Int { get }
@available(iOS 9.0, *)
var coderErrorMinimum: Int { get }
@available(iOS 9.0, *)
var coderErrorMaximum: Int { get }
@available(iOS 9.0, *)
var bundleErrorMinimum: Int { get }
@available(iOS 9.0, *)
var bundleErrorMaximum: Int { get }
@available(iOS 9.0, *)
var bundleOnDemandResourceOutOfSpaceError: Int { get }
@available(iOS 9.0, *)
var bundleOnDemandResourceExceededMaximumSizeError: Int { get }
@available(iOS 9.0, *)
var bundleOnDemandResourceInvalidTagError: Int { get }
