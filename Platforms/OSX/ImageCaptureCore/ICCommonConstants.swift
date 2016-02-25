
enum ICEXIFOrientationType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Orientation1
  case Orientation2
  case Orientation3
  case Orientation4
  case Orientation5
  case Orientation6
  case Orientation7
  case Orientation8
}
enum ICReturnCode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Success
  case InvalidParam
  case CommunicationTimedOut
  case ScanOperationCanceled
  case ScannerInUseByLocalUser
  case ScannerInUseByRemoteUser
  case DeviceFailedToOpenSession
  case DeviceFailedToCloseSession
  case ScannerFailedToSelectFunctionalUnit
  case ScannerFailedToCompleteOverviewScan
  case ScannerFailedToCompleteScan
  case ReceivedUnsolicitedScannerStatusInfo
  case ReceivedUnsolicitedScannerErrorInfo
  case DownloadFailed
  case UploadFailed
  case FailedToCompletePassThroughCommand
  case DownloadCanceled
  case FailedToEnabeTethering
  case FailedToDisabeTethering
  case FailedToCompleteSendMessageRequest
  case DeleteFilesFailed
  case DeleteFilesCanceled
  case DeviceIsPasscodeLocked
  case DeviceFailedToTakePicture
  case DeviceSoftwareNotInstalled
  case DeviceSoftwareIsBeingInstalled
  case DeviceSoftwareInstallationCompleted
  case DeviceSoftwareInstallationCanceled
  case DeviceSoftwareInstallationFailed
  case DeviceSoftwareNotAvailable
  case DeviceCouldNotPair
  case DeviceCouldNotUnpair
  case DeviceNeedsCredentials
}
