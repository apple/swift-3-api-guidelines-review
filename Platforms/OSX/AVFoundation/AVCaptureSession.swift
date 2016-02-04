
@available(OSX 10.7, *)
let AVCaptureSessionRuntimeErrorNotification: String
@available(OSX 10.7, *)
let AVCaptureSessionErrorKey: String
@available(OSX 10.7, *)
let AVCaptureSessionDidStartRunningNotification: String
@available(OSX 10.7, *)
let AVCaptureSessionDidStopRunningNotification: String
@available(OSX 10.7, *)
enum AVCaptureVideoOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Portrait
  case PortraitUpsideDown
  case LandscapeRight
  case LandscapeLeft
}
@available(OSX 10.7, *)
let AVCaptureSessionPresetPhoto: String
@available(OSX 10.7, *)
let AVCaptureSessionPresetHigh: String
@available(OSX 10.7, *)
let AVCaptureSessionPresetMedium: String
@available(OSX 10.7, *)
let AVCaptureSessionPresetLow: String
@available(OSX 10.7, *)
let AVCaptureSessionPreset320x240: String
@available(OSX 10.7, *)
let AVCaptureSessionPreset352x288: String
@available(OSX 10.7, *)
let AVCaptureSessionPreset640x480: String
@available(OSX 10.7, *)
let AVCaptureSessionPreset960x540: String
@available(OSX 10.7, *)
let AVCaptureSessionPreset1280x720: String
@available(OSX 10.9, *)
let AVCaptureSessionPresetiFrame960x540: String
@available(OSX 10.9, *)
let AVCaptureSessionPresetiFrame1280x720: String
@available(OSX 10.7, *)
class AVCaptureSession : NSObject {
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
  @available(OSX 10.7, *)
  func addInputWithNoConnections(input: AVCaptureInput!)
  @available(OSX 10.7, *)
  func addOutputWithNoConnections(output: AVCaptureOutput!)
  @available(OSX 10.7, *)
  func canAddConnection(connection: AVCaptureConnection!) -> Bool
  @available(OSX 10.7, *)
  func addConnection(connection: AVCaptureConnection!)
  @available(OSX 10.7, *)
  func removeConnection(connection: AVCaptureConnection!)
  func beginConfiguration()
  func commitConfiguration()
  var running: Bool { get }
  func startRunning()
  func stopRunning()
  @available(OSX 10.9, *)
  var masterClock: CMClock! { get }
  init()
}
@available(OSX 10.7, *)
enum AVVideoFieldMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Both
  case TopOnly
  case BottomOnly
  case Deinterlace
}
@available(OSX 10.7, *)
class AVCaptureConnection : NSObject {
  @available(OSX 10.7, *)
  init!(inputPorts ports: [AnyObject]!, output: AVCaptureOutput!)
  @available(OSX 10.7, *)
  init!(inputPort port: AVCaptureInputPort!, videoPreviewLayer layer: AVCaptureVideoPreviewLayer!)
  var inputPorts: [AnyObject]! { get }
  var output: AVCaptureOutput! { get }
  @available(OSX 10.7, *)
  var videoPreviewLayer: AVCaptureVideoPreviewLayer! { get }
  var enabled: Bool
  var active: Bool { get }
  var audioChannels: [AnyObject]! { get }
  var supportsVideoMirroring: Bool { get }
  var videoMirrored: Bool
  @available(OSX 10.7, *)
  var automaticallyAdjustsVideoMirroring: Bool
  var supportsVideoOrientation: Bool { get }
  var videoOrientation: AVCaptureVideoOrientation
  @available(OSX 10.7, *)
  var supportsVideoFieldMode: Bool { get }
  @available(OSX 10.7, *)
  var videoFieldMode: AVVideoFieldMode
  @available(OSX, introduced=10.7, message="Use AVCaptureDevice's activeFormat.videoSupportedFrameRateRanges instead.")
  var supportsVideoMinFrameDuration: Bool { get }
  @available(OSX, introduced=10.7, message="Use AVCaptureDevice's activeVideoMinFrameDuration instead.")
  var videoMinFrameDuration: CMTime
  @available(OSX, introduced=10.9, message="Use AVCaptureDevice's activeFormat.videoSupportedFrameRateRanges instead.")
  var supportsVideoMaxFrameDuration: Bool { get }
  @available(OSX, introduced=10.9, message="Use AVCaptureDevice's activeVideoMaxFrameDuration instead.")
  var videoMaxFrameDuration: CMTime
  init()
}
@available(OSX 10.7, *)
class AVCaptureAudioChannel : NSObject {
  var averagePowerLevel: Float { get }
  var peakHoldLevel: Float { get }
  @available(OSX 10.7, *)
  var volume: Float
  @available(OSX 10.7, *)
  var enabled: Bool
  init()
}
