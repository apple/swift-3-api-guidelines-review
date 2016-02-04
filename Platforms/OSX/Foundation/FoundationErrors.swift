
var fileNoSuchFileError: Int { get }
var fileLockingError: Int { get }
var fileReadUnknownError: Int { get }
var fileReadNoPermissionError: Int { get }
var fileReadInvalidFileNameError: Int { get }
var fileReadCorruptFileError: Int { get }
var fileReadNoSuchFileError: Int { get }
var fileReadInapplicableStringEncodingError: Int { get }
var fileReadUnsupportedSchemeError: Int { get }
@available(OSX 10.5, *)
var fileReadTooLargeError: Int { get }
@available(OSX 10.5, *)
var fileReadUnknownStringEncodingError: Int { get }
var fileWriteUnknownError: Int { get }
var fileWriteNoPermissionError: Int { get }
var fileWriteInvalidFileNameError: Int { get }
@available(OSX 10.7, *)
var fileWriteFileExistsError: Int { get }
var fileWriteInapplicableStringEncodingError: Int { get }
var fileWriteUnsupportedSchemeError: Int { get }
var fileWriteOutOfSpaceError: Int { get }
@available(OSX 10.6, *)
var fileWriteVolumeReadOnlyError: Int { get }
@available(OSX 10.11, *)
var fileManagerUnmountUnknownError: Int { get }
@available(OSX 10.11, *)
var fileManagerUnmountBusyError: Int { get }
var keyValueValidationError: Int { get }
var formattingError: Int { get }
var userCancelledError: Int { get }
@available(OSX 10.8, *)
var featureUnsupportedError: Int { get }
@available(OSX 10.5, *)
var executableNotLoadableError: Int { get }
@available(OSX 10.5, *)
var executableArchitectureMismatchError: Int { get }
@available(OSX 10.5, *)
var executableRuntimeMismatchError: Int { get }
@available(OSX 10.5, *)
var executableLoadError: Int { get }
@available(OSX 10.5, *)
var executableLinkError: Int { get }
var fileErrorMinimum: Int { get }
var fileErrorMaximum: Int { get }
var validationErrorMinimum: Int { get }
var validationErrorMaximum: Int { get }
@available(OSX 10.5, *)
var executableErrorMinimum: Int { get }
@available(OSX 10.5, *)
var executableErrorMaximum: Int { get }
var formattingErrorMinimum: Int { get }
var formattingErrorMaximum: Int { get }
@available(OSX 10.6, *)
var propertyListReadCorruptError: Int { get }
@available(OSX 10.6, *)
var propertyListReadUnknownVersionError: Int { get }
@available(OSX 10.6, *)
var propertyListReadStreamError: Int { get }
@available(OSX 10.6, *)
var propertyListWriteStreamError: Int { get }
@available(OSX 10.10, *)
var propertyListWriteInvalidError: Int { get }
@available(OSX 10.6, *)
var propertyListErrorMinimum: Int { get }
@available(OSX 10.6, *)
var propertyListErrorMaximum: Int { get }
@available(OSX 10.8, *)
var xpcConnectionInterrupted: Int { get }
@available(OSX 10.8, *)
var xpcConnectionInvalid: Int { get }
@available(OSX 10.8, *)
var xpcConnectionReplyInvalid: Int { get }
@available(OSX 10.8, *)
var xpcConnectionErrorMinimum: Int { get }
@available(OSX 10.8, *)
var xpcConnectionErrorMaximum: Int { get }
@available(OSX 10.9, *)
var ubiquitousFileUnavailableError: Int { get }
@available(OSX 10.9, *)
var ubiquitousFileNotUploadedDueToQuotaError: Int { get }
@available(OSX 10.9, *)
var ubiquitousFileUbiquityServerNotAvailable: Int { get }
@available(OSX 10.9, *)
var ubiquitousFileErrorMinimum: Int { get }
@available(OSX 10.9, *)
var ubiquitousFileErrorMaximum: Int { get }
@available(OSX 10.10, *)
var userActivityHandoffFailedError: Int { get }
@available(OSX 10.10, *)
var userActivityConnectionUnavailableError: Int { get }
@available(OSX 10.10, *)
var userActivityRemoteApplicationTimedOutError: Int { get }
@available(OSX 10.10, *)
var userActivityHandoffUserInfoTooLargeError: Int { get }
@available(OSX 10.10, *)
var userActivityErrorMinimum: Int { get }
@available(OSX 10.10, *)
var userActivityErrorMaximum: Int { get }
@available(OSX 10.11, *)
var coderReadCorruptError: Int { get }
@available(OSX 10.11, *)
var coderValueNotFoundError: Int { get }
@available(OSX 10.11, *)
var coderErrorMinimum: Int { get }
@available(OSX 10.11, *)
var coderErrorMaximum: Int { get }
@available(OSX 10.11, *)
var bundleErrorMinimum: Int { get }
@available(OSX 10.11, *)
var bundleErrorMaximum: Int { get }
