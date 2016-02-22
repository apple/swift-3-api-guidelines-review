
@available(iOS 4.0, *)
class AVCaptureInput : NSObject {
  var ports: [AnyObject]! { get }
  init()
}
@available(iOS 4.0, *)
let AVCaptureInputPortFormatDescriptionDidChangeNotification: String
@available(iOS 4.0, *)
class AVCaptureInputPort : NSObject {
  var input: AVCaptureInput! { get }
  var mediaType: String! { get }
  var formatDescription: CMFormatDescription! { get }
  var isEnabled: Bool
  @available(iOS 7.0, *)
  var clock: CMClock! { get }
  init()
}
@available(iOS 4.0, *)
class AVCaptureDeviceInput : AVCaptureInput {
  init(device device: AVCaptureDevice!) throws
  var device: AVCaptureDevice! { get }
  init()
}
@available(iOS 9.0, *)
class AVCaptureMetadataInput : AVCaptureInput {
  init!(formatDescription desc: CMMetadataFormatDescription!, clock clock: CMClock!)
  func append(_ metadata: AVTimedMetadataGroup!) throws
  init()
}
