
@available(iOS 4.0, *)
let AVFoundationErrorDomain: String
@available(iOS 4.0, *)
let AVErrorDeviceKey: String
@available(iOS 4.0, *)
let AVErrorTimeKey: String
@available(iOS 4.0, *)
let AVErrorFileSizeKey: String
@available(iOS 4.0, *)
let AVErrorPIDKey: String
@available(iOS 4.0, *)
let AVErrorRecordingSuccessfullyFinishedKey: String
@available(iOS 4.3, *)
let AVErrorMediaTypeKey: String
@available(iOS 4.3, *)
let AVErrorMediaSubTypeKey: String
@available(iOS 8.0, *)
let AVErrorPresentationTimeStampKey: String
@available(iOS 8.0, *)
let AVErrorPersistentTrackIDKey: String
@available(iOS 8.0, *)
let AVErrorFileTypeKey: String
enum AVError : Int {
  case Unknown
  case OutOfMemory
  case SessionNotRunning
  case DeviceAlreadyUsedByAnotherSession
  case NoDataCaptured
  case SessionConfigurationChanged
  case DiskFull
  case DeviceWasDisconnected
  case MediaChanged
  case MaximumDurationReached
  case MaximumFileSizeReached
  case MediaDiscontinuity
  case MaximumNumberOfSamplesForFileFormatReached
  case DeviceNotConnected
  case DeviceInUseByAnotherApplication
  case DeviceLockedForConfigurationByAnotherProcess
  case SessionWasInterrupted
  case MediaServicesWereReset
  case ExportFailed
  case DecodeFailed
  case InvalidSourceMedia
  case FileAlreadyExists
  case CompositionTrackSegmentsNotContiguous
  case InvalidCompositionTrackSegmentDuration
  case InvalidCompositionTrackSegmentSourceStartTime
  case InvalidCompositionTrackSegmentSourceDuration
  case FileFormatNotRecognized
  case FileFailedToParse
  case MaximumStillImageCaptureRequestsExceeded
  case ContentIsProtected
  case NoImageAtTime
  case DecoderNotFound
  case EncoderNotFound
  case ContentIsNotAuthorized
  case ApplicationIsNotAuthorized
  @available(iOS, introduced=4.3, deprecated=9.0, message="AVCaptureSession no longer produces an AVCaptureSessionRuntimeErrorNotification with this error. See AVCaptureSessionInterruptionReasonVideoDeviceNotAvailableInBackground.")
  case DeviceIsNotAvailableInBackground
  case OperationNotSupportedForAsset
  case DecoderTemporarilyUnavailable
  case EncoderTemporarilyUnavailable
  case InvalidVideoComposition
  case ReferenceForbiddenByReferencePolicy
  case InvalidOutputURLPathExtension
  case ScreenCaptureFailed
  case DisplayWasDisabled
  case TorchLevelUnavailable
  case OperationInterrupted
  case IncompatibleAsset
  case FailedToLoadMediaData
  case ServerIncorrectlyConfigured
  case ApplicationIsNotAuthorizedToUseDevice
  @available(iOS 8.0, *)
  case FailedToParse
  @available(iOS 8.0, *)
  case FileTypeDoesNotSupportSampleReferences
  @available(iOS 8.0, *)
  case UndecodableMediaData
  @available(iOS 8.3, *)
  case AirPlayControllerRequiresInternet
  @available(iOS 8.3, *)
  case AirPlayReceiverRequiresInternet
  @available(iOS 9.0, *)
  case VideoCompositorFailed
  @available(iOS 9.0, *)
  case RecordingAlreadyInProgress
}

extension AVError : _BridgedNSError {
}
