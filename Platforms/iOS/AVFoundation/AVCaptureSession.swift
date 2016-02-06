
@available(iOS 4.0, *)
let AVCaptureSessionRuntimeErrorNotification: String
@available(iOS 4.0, *)
let AVCaptureSessionErrorKey: String
@available(iOS 4.0, *)
let AVCaptureSessionDidStartRunningNotification: String
@available(iOS 4.0, *)
let AVCaptureSessionDidStopRunningNotification: String
@available(iOS 4.0, *)
let AVCaptureSessionWasInterruptedNotification: String
@available(iOS 9.0, *)
enum AVCaptureSessionInterruptionReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case VideoDeviceNotAvailableInBackground
  case AudioDeviceInUseByAnotherClient
  case VideoDeviceInUseByAnotherClient
  case VideoDeviceNotAvailableWithMultipleForegroundApps
}
@available(iOS 9.0, *)
let AVCaptureSessionInterruptionReasonKey: String
@available(iOS 4.0, *)
let AVCaptureSessionInterruptionEndedNotification: String
@available(iOS 4.0, *)
enum AVCaptureVideoOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Portrait
  case PortraitUpsideDown
  case LandscapeRight
  case LandscapeLeft
}
@available(iOS 4.0, *)
let AVCaptureSessionPresetPhoto: String
@available(iOS 4.0, *)
let AVCaptureSessionPresetHigh: String
@available(iOS 4.0, *)
let AVCaptureSessionPresetMedium: String
@available(iOS 4.0, *)
let AVCaptureSessionPresetLow: String
@available(iOS 5.0, *)
let AVCaptureSessionPreset352x288: String
@available(iOS 4.0, *)
let AVCaptureSessionPreset640x480: String
@available(iOS 4.0, *)
let AVCaptureSessionPreset1280x720: String
@available(iOS 5.0, *)
let AVCaptureSessionPreset1920x1080: String
@available(iOS 9.0, *)
let AVCaptureSessionPreset3840x2160: String
@available(iOS 5.0, *)
let AVCaptureSessionPresetiFrame960x540: String
@available(iOS 5.0, *)
let AVCaptureSessionPresetiFrame1280x720: String
@available(iOS 7.0, *)
let AVCaptureSessionPresetInputPriority: String
@available(iOS 4.0, *)
class AVCaptureSession : Object {
  func canSetSessionPreset(preset: String!) -> Bool
  var sessionPreset: String!
  var inputs: [AnyObject]! { get }
  func canAddInput(input: AVCaptureInput!) -> Bool
  func addInput(input: AVCaptureInput!)
  func removeInput(input: AVCaptureInput!)
  var outputs: [AnyObject]! { get }
  func canAddOutput(output: AVCaptureOutput!) -> Bool
  func addOutput(output: AVCaptureOutput!)
  func removeOutput(output: AVCaptureOutput!)
  @available(iOS 8.0, *)
  func addInput(noConnections input: AVCaptureInput!)
  @available(iOS 8.0, *)
  func addOutput(noConnections output: AVCaptureOutput!)
  @available(iOS 8.0, *)
  func canAdd(connection: AVCaptureConnection!) -> Bool
  @available(iOS 8.0, *)
  func add(connection: AVCaptureConnection!)
  @available(iOS 8.0, *)
  func remove(connection: AVCaptureConnection!)
  func beginConfiguration()
  func commitConfiguration()
  var isRunning: Bool { get }
  @available(iOS 4.0, *)
  var isInterrupted: Bool { get }
  @available(iOS 7.0, *)
  var usesApplicationAudioSession: Bool
  @available(iOS 7.0, *)
  var automaticallyConfiguresApplicationAudioSession: Bool
  func startRunning()
  func stopRunning()
  @available(iOS 7.0, *)
  var masterClock: CMClock! { get }
  init()
}
@available(iOS 4.0, *)
class AVCaptureConnection : Object {
  @available(iOS 8.0, *)
  init!(inputPorts ports: [AnyObject]!, output: AVCaptureOutput!)
  @available(iOS 8.0, *)
  init!(inputPort port: AVCaptureInputPort!, videoPreviewLayer layer: AVCaptureVideoPreviewLayer!)
  var inputPorts: [AnyObject]! { get }
  var output: AVCaptureOutput! { get }
  @available(iOS 6.0, *)
  var videoPreviewLayer: AVCaptureVideoPreviewLayer! { get }
  var isEnabled: Bool
  var isActive: Bool { get }
  var audioChannels: [AnyObject]! { get }
  var isVideoMirroringSupported: Bool { get }
  var isVideoMirrored: Bool
  @available(iOS 6.0, *)
  var automaticallyAdjustsVideoMirroring: Bool
  var isVideoOrientationSupported: Bool { get }
  var videoOrientation: AVCaptureVideoOrientation
  @available(iOS 5.0, *)
  var videoMaxScaleAndCropFactor: CGFloat { get }
  @available(iOS 5.0, *)
  var videoScaleAndCropFactor: CGFloat
  @available(iOS 8.0, *)
  var preferredVideoStabilizationMode: AVCaptureVideoStabilizationMode
  @available(iOS 8.0, *)
  var activeVideoStabilizationMode: AVCaptureVideoStabilizationMode { get }
  @available(iOS 6.0, *)
  var isVideoStabilizationSupported: Bool { get }
  @available(iOS, introduced=6.0, deprecated=8.0, message="Use activeVideoStabilizationMode instead.")
  var isVideoStabilizationEnabled: Bool { get }
  @available(iOS, introduced=6.0, deprecated=8.0, message="Use preferredVideoStabilizationMode instead.")
  var enablesVideoStabilizationWhenAvailable: Bool
  init()
}
@available(iOS 4.0, *)
class AVCaptureAudioChannel : Object {
  var averagePowerLevel: Float { get }
  var peakHoldLevel: Float { get }
  init()
}
