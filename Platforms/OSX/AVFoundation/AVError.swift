
@available(OSX 10.7, *)
let AVFoundationErrorDomain: String
@available(OSX 10.7, *)
let AVErrorDeviceKey: String
@available(OSX 10.7, *)
let AVErrorTimeKey: String
@available(OSX 10.7, *)
let AVErrorFileSizeKey: String
@available(OSX 10.7, *)
let AVErrorPIDKey: String
@available(OSX 10.7, *)
let AVErrorRecordingSuccessfullyFinishedKey: String
@available(OSX 10.7, *)
let AVErrorMediaTypeKey: String
@available(OSX 10.7, *)
let AVErrorMediaSubTypeKey: String
@available(OSX 10.10, *)
let AVErrorPresentationTimeStampKey: String
@available(OSX 10.10, *)
let AVErrorPersistentTrackIDKey: String
@available(OSX 10.10, *)
let AVErrorFileTypeKey: String
@available(OSX 10.7, *)
let AVErrorDiscontinuityFlagsKey: String
enum AVError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
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
  case OperationNotSupportedForAsset
  case DecoderTemporarilyUnavailable
  case EncoderTemporarilyUnavailable
  case InvalidVideoComposition
  case ReferenceForbiddenByReferencePolicy
  case InvalidOutputURLPathExtension
  case ScreenCaptureFailed
  case DisplayWasDisabled
  case TorchLevelUnavailable
  case IncompatibleAsset
  case FailedToLoadMediaData
  case ServerIncorrectlyConfigured
  case ApplicationIsNotAuthorizedToUseDevice
  @available(OSX 10.10, *)
  case FailedToParse
  @available(OSX 10.10, *)
  case FileTypeDoesNotSupportSampleReferences
  @available(OSX 10.10, *)
  case UndecodableMediaData
  @available(OSX 10.10, *)
  case AirPlayControllerRequiresInternet
  @available(OSX 10.10, *)
  case AirPlayReceiverRequiresInternet
  @available(OSX 10.11, *)
  case VideoCompositorFailed
}

extension AVError : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
