
@available(OSX 10.10, *)
class AVCaptureView : NSView {
  weak var delegate: @sil_weak AVCaptureViewDelegate?
  var controlsStyle: AVCaptureViewControlsStyle
  var videoGravity: String
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
@available(OSX 10.10, *)
enum AVCaptureViewControlsStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Inline
  case Floating
  case InlineDeviceSelection
  static var Default: AVCaptureViewControlsStyle { get }
}
protocol AVCaptureViewDelegate : ObjectProtocol {
}
