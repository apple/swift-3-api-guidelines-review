
@available(OSX 10.10, *)
class AVCaptureView : NSView {
  weak var delegate: @sil_weak AVCaptureViewDelegate?
  var controlsStyle: AVCaptureViewControlsStyle
  var videoGravity: String
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
@available(OSX 10.10, *)
enum AVCaptureViewControlsStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case inline
  case floating
  case inlineDeviceSelection
  static var `default`: AVCaptureViewControlsStyle { get }
}
protocol AVCaptureViewDelegate : NSObjectProtocol {
}
