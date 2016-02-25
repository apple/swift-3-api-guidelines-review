
@available(OSX 10.9, *)
class AVPlayerView : NSView {
  var controlsStyle: AVPlayerViewControlsStyle
  @available(OSX 10.10, *)
  var videoGravity: String
  @available(OSX 10.10, *)
  var readyForDisplay: Bool { get }
  @available(OSX 10.10, *)
  var videoBounds: NSRect { get }
  @available(OSX 10.10, *)
  var contentOverlayView: NSView? { get }
}
@available(OSX 10.9, *)
enum AVPlayerViewControlsStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case None
  case Inline
  case Floating
  case Minimal
  static var Default: AVPlayerViewControlsStyle { get }
}
extension AVPlayerView {
  var showsFrameSteppingButtons: Bool
  var showsSharingServiceButton: Bool
  var actionPopUpButtonMenu: NSMenu?
  var showsFullScreenToggleButton: Bool
}
extension AVPlayerView {
  var canBeginTrimming: Bool { get }
  func beginTrimmingWithCompletionHandler(_ handler: ((AVPlayerViewTrimResult) -> Void)?)
}
@available(OSX 10.9, *)
enum AVPlayerViewTrimResult : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case OKButton
  case CancelButton
}
extension AVPlayerView {
  func flashChapterNumber(_ chapterNumber: Int, chapterTitle chapterTitle: String)
}
