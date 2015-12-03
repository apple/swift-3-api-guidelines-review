

/*!
	@class		AVCaptureView
	@abstract	AVCaptureView is a subclass of NSView that can be used to display standard user interface controls for capturing media data.
 */
@available(OSX 10.10, *)
class AVCaptureView : NSView {

  /*!
  	@property	delegate
  	@abstract	The capture view's delegate.
  	@discussion	The start recording button will be disabled if the delegate is not set.
   */
  weak var delegate: @sil_weak AVCaptureViewDelegate?

  /*!
  	@property	controlsStyle
  	@abstract	The style of the capture controls pane associated with the view.
   */
  var controlsStyle: AVCaptureViewControlsStyle

  /*!
  	@property	videoGravity
  	@abstract	A string defining how the video is displayed within the views bounds rect.
  	@discussion	Options are AVLayerVideoGravityResize, AVLayerVideoGravityResizeAspect and AVLayerVideoGravityResizeAspectFill. AVLayerVideoGravityResizeAspect is default. See <AVFoundation/AVAnimation.h> for a description of these options.
   */
  var videoGravity: String
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}

/*!
	@constant	AVCaptureViewControlsStyleInline
	@abstract	The inline controls pane for media recording is associated with the view.
	@constant	AVCaptureViewControlsStyleFloating
	@abstract	The floating controls pane for media recordings is associated with the view.
	@constant	AVCaptureViewControlsStyleInlineDeviceSelection
	@abstract	The inline controls pane for selection capture devices is associated with the view.
	@constant	AVCaptureViewControlsStyleDefault
	@abstract	The default controls pane is associated with the view.
 */
@available(OSX 10.10, *)
enum AVCaptureViewControlsStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Inline
  case Floating
  case InlineDeviceSelection
  static var Default: AVCaptureViewControlsStyle { get }
}

/*!
	@protocol	AVCaptureViewDelegate
	@abstract	Defines an interface for delegates of AVCaptureView.
 */
protocol AVCaptureViewDelegate : NSObjectProtocol {
}

/*!
	@class		AVPlayerView
	@abstract	AVPlayerView is a subclass of NSView that can be used to display the visual content of an AVPlayer object and the standard playback controls.
 */
@available(OSX 10.9, *)
class AVPlayerView : NSView {

  /*!
  	@property	controlsStyle
  	@abstract	The style of the playback controls pane currently associated with the view.
   */
  var controlsStyle: AVPlayerViewControlsStyle

  /*!
  	@property	videoGravity
  	@abstract	A string defining how the video is displayed within an AVPlayerLayer bounds rect.
  	@discussion	Options are AVLayerVideoGravityResizeAspect, AVLayerVideoGravityResizeAspectFill and AVLayerVideoGravityResize. AVLayerVideoGravityResizeAspect is default.
  				See <AVFoundation/AVAnimation.h> for a description of these options.
   */
  @available(OSX 10.10, *)
  var videoGravity: String

  /*!
  	@property	readyForDisplay
  	@abstract	Boolean indicating that the first video frame has been made ready for display for the current item of the associated AVPlayer.
   */
  @available(OSX 10.10, *)
  var isReadyForDisplay: Bool { get }

  /*!
  	@property	videoBounds
  	@abstract	The current size and position of the video image as displayed within the receiver's view's bounds.
   */
  @available(OSX 10.10, *)
  var videoBounds: NSRect { get }

  /*!
  	@property	contentOverlayView
  	@abstract	Use the content overlay view to add additional custom views between the video content and the controls.
   */
  @available(OSX 10.10, *)
  var contentOverlayView: NSView? { get }
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}

/*!
	@constant	AVPlayerViewControlsStyleNone
	@abstract	No controls pane is associated with the view.
	@constant	AVPlayerViewControlsStyleInline
	@abstract	The inline controls pane is associated with the view.
	@constant	AVPlayerViewControlsStyleFloating
	@abstract	The floating controls pane is associated with the view.
	@constant	AVPlayerViewControlsStyleMinimal
	@abstract	The minimal controls pane is associated with the view.
	@constant	AVPlayerViewControlsStyleDefault
	@abstract	The default controls pane is associated with the view.
 */
@available(OSX 10.9, *)
enum AVPlayerViewControlsStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Inline
  case Floating
  case Minimal
  static var Default: AVPlayerViewControlsStyle { get }
}
extension AVPlayerView {

  /*!
  	@property	showsFrameSteppingButtons
  	@abstract	Replace scanning controls in the playback UI with frame stepping buttons. Default is NO.
   */
  var showsFrameSteppingButtons: Bool

  /*!
  	@property	showsSharingServiceButton
  	@abstract	Whether or not the controls pane will show a sharing service button when the current player item can be shared. Default is NO.
   */
  var showsSharingServiceButton: Bool

  /*!
  	@property	actionPopUpButtonMenu
  	@abstract	Clients can set this property in order to show an action pop up button. Default is nil.
   */
  var actionPopUpButtonMenu: NSMenu?

  /*!
  	@property	showsFullScreenToggleButton
  	@abstract	Whether or not the controls pane will show a full screen toggle button. Default is NO.
   */
  var showsFullScreenToggleButton: Bool
}
extension AVPlayerView {

  /*!
  	@property	canBeginTrimming
  	@abstract	Whether or not the current media can be trimmed.
   */
  var canBeginTrimming: Bool { get }

  /*!
  	@method		beginTrimmingWithCompletionHandler:
  	@param		handler
  				A completion handler that is executed when the user selects either the Trim or Cancel button in the trimming UI.
  	@abstract	Sets the controls panel into trimming mode and blocks until the user selects either the Trim or the Cancel button.
   */
  func beginTrimming(completionHandler handler: ((AVPlayerViewTrimResult) -> Void)? = nil)
}

/*!
	@constant	AVPlayerViewTrimOKButton
	@abstract	The user selected the Trim button.
	@constant	AVPlayerViewTrimCancelButton
	@abstract	The user selected the Cancel button.
 */
@available(OSX 10.9, *)
enum AVPlayerViewTrimResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case OKButton
  case CancelButton
}
extension AVPlayerView {

  /*!
  	@method		flashChapterNumber:chapterTitle:
  	@param		chapterNumber
  				The chapter number (required).
  	@param		chapterTitle
  				The chapter title (optional).
  	@abstract	Display the provided chapter number and title momentarily.
   */
  func flashChapterNumber(chapterNumber: Int, chapterTitle: String)
}
