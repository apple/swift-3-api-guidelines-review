
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
  init?(rawValue rawValue: Int)
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
  init?(rawValue rawValue: Int)
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
class AVCaptureSession : NSObject {
  func canSetSessionPreset(_ preset: String!) -> Bool
  var sessionPreset: String!
  var inputs: [AnyObject]! { get }
  func canAddInput(_ input: AVCaptureInput!) -> Bool
  func addInput(_ input: AVCaptureInput!)
  func removeInput(_ input: AVCaptureInput!)
  var outputs: [AnyObject]! { get }
  func canAddOutput(_ output: AVCaptureOutput!) -> Bool
  func addOutput(_ output: AVCaptureOutput!)
  func removeOutput(_ output: AVCaptureOutput!)
  @available(iOS 8.0, *)
  func addInputWithNoConnections(_ input: AVCaptureInput!)
  @available(iOS 8.0, *)
  func addOutputWithNoConnections(_ output: AVCaptureOutput!)
  @available(iOS 8.0, *)
  func canAddConnection(_ connection: AVCaptureConnection!) -> Bool
  @available(iOS 8.0, *)
  func addConnection(_ connection: AVCaptureConnection!)
  @available(iOS 8.0, *)
  func removeConnection(_ connection: AVCaptureConnection!)
  func beginConfiguration()
  func commitConfiguration()
  var running: Bool { get }
  @available(iOS 4.0, *)
  var interrupted: Bool { get }
  @available(iOS 7.0, *)
  var usesApplicationAudioSession: Bool
  @available(iOS 7.0, *)
  var automaticallyConfiguresApplicationAudioSession: Bool
  func startRunning()
  func stopRunning()
  @available(iOS 7.0, *)
  var masterClock: CMClock! { get }
}
@available(iOS 4.0, *)
class AVCaptureConnection : NSObject {
  @available(iOS 8.0, *)
  init!(inputPorts ports: [AnyObject]!, output output: AVCaptureOutput!)
  @available(iOS 8.0, *)
  init!(inputPort port: AVCaptureInputPort!, videoPreviewLayer layer: AVCaptureVideoPreviewLayer!)
  var inputPorts: [AnyObject]! { get }
  var output: AVCaptureOutput! { get }
  @available(iOS 6.0, *)
  var videoPreviewLayer: AVCaptureVideoPreviewLayer! { get }
  var enabled: Bool
  var active: Bool { get }
  var audioChannels: [AnyObject]! { get }
  var supportsVideoMirroring: Bool { get }
  var videoMirrored: Bool
  @available(iOS 6.0, *)
  var automaticallyAdjustsVideoMirroring: Bool
  var supportsVideoOrientation: Bool { get }
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
  var supportsVideoStabilization: Bool { get }
  @available(iOS, introduced=6.0, deprecated=8.0, message="Use activeVideoStabilizationMode instead.")
  var videoStabilizationEnabled: Bool { get }
  @available(iOS, introduced=6.0, deprecated=8.0, message="Use preferredVideoStabilizationMode instead.")
  var enablesVideoStabilizationWhenAvailable: Bool
}
@available(iOS 4.0, *)
class AVCaptureAudioChannel : NSObject {
  var averagePowerLevel: Float { get }
  var peakHoldLevel: Float { get }
}
