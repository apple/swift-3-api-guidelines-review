

/*!
	@constant	AVKitErrorDomain
	@abstract	Domain for errors from AVKit APIs.
 */
@available(iOS 9.0, *)
let AVKitErrorDomain: String

/*!
	@constant	AVKitErrorUnknown
	@abstract	Unknown error.
	@constant	AVKitErrorPictureInPictureStartFailed
	@abstract	Failed to start Picture in Picture.
 */
@available(iOS 9.0, *)
enum AVKitError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case PictureInPictureStartFailed
}

/*!
	@class		AVPictureInPictureController
	@abstract	AVPictureInPictureController is a subclass of NSObject that can be used to present the contents of an AVPlayerLayer floating on top of applications.
 */
@available(iOS 9.0, *)
class AVPictureInPictureController : NSObject {

  /*!
  	@method		isPictureInPictureSupported
  	@abstract	Whether or not Picture in Picture is supported on the current device.
  	@discussion	When NO, all initializers will return nil.
   */
  class func isPictureInPictureSupported() -> Bool

  /*!
  	@method		pictureInPictureButtonStartImageCompatibleWithTraitCollection:
  	@param		traitCollection
  				Traits that describe the image to retrieve, pass nil to use traits that describe the main screen.
  	@abstract	System default Picture in Picture start template image for use in client's Picture in Picture button.
   */
  class func pictureInPictureButtonStartImageCompatibleWithTraitCollection(traitCollection: UITraitCollection?) -> UIImage

  /*!
  	@method		pictureInPictureButtonStopImageCompatibleWithTraitCollection:
  	@param		traitCollection
  				Traits that describe the image to retrieve, pass nil to use traits that describe the main screen.
  	@abstract	System default Picture in Picture stop template image for use in client's Picture in Picture button.
   */
  class func pictureInPictureButtonStopImageCompatibleWithTraitCollection(traitCollection: UITraitCollection?) -> UIImage

  /*!
  	@property	delegate
  	@abstract	The receiver's delegate.
   */
  weak var delegate: @sil_weak AVPictureInPictureControllerDelegate?

  /*!
  	@method		startPictureInPicture
  	@abstract	Start Picture in Picture for the provided AVPlayerLayer if possible.
  	@discussion	Receiver will call -pictureInPictureControllerWillStartPictureInPicture: if Picture in Picture is currently possible and -pictureInPictureControllerDidStartPictureInPicture: after a successful start. If starting Picture in Picture fails, -pictureInPictureControllerFailedToStartPictureInPicture:withError: is called on the delegate instead. Client can stop Picture in Picture by calling -stopPictureInPicture. In addition the user can stop Picture in Picture through user interaction. It is also possible that Picture in Picture is stopped by the Picture in Picture controller at any time. In all these cases receiver calls -pictureInPictureControllerWillStopPictureInPicture: on the delegate and -pictureInPictureControllerDidStopPictureInPicture:after the stop animation completed.
   */
  func startPictureInPicture()

  /*!
  	@method		stopPictureInPicture
  	@abstract	Stop Picture in Picture for the provided AVPlayerLayer if currently active.
  	@discussion	See -startPictureInPicture for details.
   */
  func stopPictureInPicture()

  /*!
  	@property	pictureInPicturePossible
  	@abstract	Whether or not Picture in Picture is currently possible.
   */
  var pictureInPicturePossible: Bool { get }

  /*!
  	@property	pictureInPictureActive
  	@abstract	Whether or not Picture in Picture is currently active.
   */
  var pictureInPictureActive: Bool { get }

  /*!
  	@property	pictureInPictureSuspended
  	@abstract	Whether or not Picture in Picture is currently suspended.
   */
  var pictureInPictureSuspended: Bool { get }
  convenience init()
}

/*!
	@protocol	AVPictureInPictureControllerDelegate
	@abstract	A protocol for delegates of AVPictureInPictureController.
 */
protocol AVPictureInPictureControllerDelegate : NSObjectProtocol {

  /*!
  	@method		pictureInPictureControllerWillStartPictureInPicture:
  	@param		pictureInPictureController
  				The Picture in Picture controller.
  	@abstract	Delegate can implement this method to be notified when Picture in Picture will start.
   */
  @available(iOS 9.0, *)
  optional func pictureInPictureControllerWillStartPictureInPicture(pictureInPictureController: AVPictureInPictureController)

  /*!
  	@method		pictureInPictureControllerDidStartPictureInPicture:
  	@param		pictureInPictureController
  				The Picture in Picture controller.
  	@abstract	Delegate can implement this method to be notified when Picture in Picture did start.
   */
  @available(iOS 9.0, *)
  optional func pictureInPictureControllerDidStartPictureInPicture(pictureInPictureController: AVPictureInPictureController)

  /*!
  	@method		pictureInPictureController:failedToStartPictureInPictureWithError:
  	@param		pictureInPictureController
  				The Picture in Picture controller.
  	@param		error
  				An error describing why it failed.
  	@abstract	Delegate can implement this method to be notified when Picture in Picture failed to start.
   */
  @available(iOS 9.0, *)
  optional func pictureInPictureController(pictureInPictureController: AVPictureInPictureController, failedToStartPictureInPictureWithError error: NSError)

  /*!
  	@method		pictureInPictureControllerWillStopPictureInPicture:
  	@param		pictureInPictureController
  				The Picture in Picture controller.
  	@abstract	Delegate can implement this method to be notified when Picture in Picture will stop.
   */
  @available(iOS 9.0, *)
  optional func pictureInPictureControllerWillStopPictureInPicture(pictureInPictureController: AVPictureInPictureController)

  /*!
  	@method		pictureInPictureControllerDidStopPictureInPicture:
  	@param		pictureInPictureController
  				The Picture in Picture controller.
  	@abstract	Delegate can implement this method to be notified when Picture in Picture did stop.
   */
  @available(iOS 9.0, *)
  optional func pictureInPictureControllerDidStopPictureInPicture(pictureInPictureController: AVPictureInPictureController)

  /*!
  	@method		pictureInPictureController:restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:
  	@param		pictureInPictureController
  				The Picture in Picture controller.
  	@param		completionHandler
  				The completion handler the delegate needs to call after restore.
  	@abstract	Delegate can implement this method to restore the user interface before Picture in Picture stops.
   */
  @available(iOS 9.0, *)
  optional func pictureInPictureController(pictureInPictureController: AVPictureInPictureController, restoreUserInterfaceForPictureInPictureStopWithCompletionHandler completionHandler: (Bool) -> Void)
}

/*!
	@class		AVPlayerViewController
	@abstract	AVPlayerViewController is a subclass of UIViewController that can be used to display the visual content of an AVPlayer object and the standard playback controls.
 */
@available(iOS 8.0, *)
class AVPlayerViewController : UIViewController {

  /*!
  	@property	showsPlaybackControls
  	@abstract	Whether or not the receiver shows playback controls. Default is YES.
  	@discussion	Clients can set this property to NO when they don't want to have any playback controls on top of the visual content (e.g. for a game splash screen).
  				This property should not be used to temporarily change the visibility of the playback controls since it will create or destroy UI elements.
   */
  var showsPlaybackControls: Bool

  /*!
  	@property	videoGravity
  	@abstract	A string defining how the video is displayed within an AVPlayerLayer bounds rect.
  	@discussion	Options are AVLayerVideoGravityResizeAspect, AVLayerVideoGravityResizeAspectFill and AVLayerVideoGravityResize. AVLayerVideoGravityResizeAspect is default.
  				See <AVFoundation/AVAnimation.h> for a description of these options.
   */
  var videoGravity: String

  /*!
  	@property	readyForDisplay
  	@abstract	Boolean indicating that the first video frame has been made ready for display for the current item of the associated AVPlayer.
   */
  var readyForDisplay: Bool { get }

  /*!
  	@property	videoBounds
  	@abstract	The current size and position of the video image as displayed within the receiver's view's bounds.
   */
  var videoBounds: CGRect { get }

  /*!
  	@property	contentOverlayView
  	@abstract	Use the content overlay view to add additional custom views between the video content and the controls.
   */
  var contentOverlayView: UIView? { get }

  /*!
  	@property	allowsPictureInPicturePlayback
  	@abstract	Whether or not the receiver allows Picture in Picture playback. Default is YES.
   */
  @available(iOS 9.0, *)
  var allowsPictureInPicturePlayback: Bool

  /*!
  	@property	delegate
  	@abstract	The receiver's delegate.
   */
  @available(iOS 9.0, *)
  weak var delegate: @sil_weak AVPlayerViewControllerDelegate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}

/*!
	@protocol	AVPlayerViewControllerDelegate
	@abstract	A protocol for delegates of AVPlayerViewController.
 */
protocol AVPlayerViewControllerDelegate : NSObjectProtocol {

  /*!
  	@method		playerViewControllerWillStartPictureInPicture:
  	@param		playerViewController
  				The player view controller.
  	@abstract	Delegate can implement this method to be notified when Picture in Picture will start.
   */
  @available(iOS 8.0, *)
  optional func playerViewControllerWillStartPictureInPicture(playerViewController: AVPlayerViewController)

  /*!
  	@method		playerViewControllerDidStartPictureInPicture:
  	@param		playerViewController
  				The player view controller.
  	@abstract	Delegate can implement this method to be notified when Picture in Picture did start.
   */
  @available(iOS 8.0, *)
  optional func playerViewControllerDidStartPictureInPicture(playerViewController: AVPlayerViewController)

  /*!
  	@method		playerViewController:failedToStartPictureInPictureWithError:
  	@param		playerViewController
  				The player view controller.
  	@param		error
  				An error describing why it failed.
  	@abstract	Delegate can implement this method to be notified when Picture in Picture failed to start.
   */
  @available(iOS 8.0, *)
  optional func playerViewController(playerViewController: AVPlayerViewController, failedToStartPictureInPictureWithError error: NSError)

  /*!
  	@method		playerViewControllerWillStopPictureInPicture:
  	@param		playerViewController
  				The player view controller.
  	@abstract	Delegate can implement this method to be notified when Picture in Picture will stop.
   */
  @available(iOS 8.0, *)
  optional func playerViewControllerWillStopPictureInPicture(playerViewController: AVPlayerViewController)

  /*!
  	@method		playerViewControllerDidStopPictureInPicture:
  	@param		playerViewController
  				The player view controller.
  	@abstract	Delegate can implement this method to be notified when Picture in Picture did stop.
   */
  @available(iOS 8.0, *)
  optional func playerViewControllerDidStopPictureInPicture(playerViewController: AVPlayerViewController)

  /*!
  	@method		playerViewControllerShouldAutomaticallyDismissAtPictureInPictureStart:
  	@param		playerViewController
  				The player view controller.
  	@abstract	Delegate can implement this method and return NO to prevent player view controller from automatically being dismissed when Picture in Picture starts.
   */
  @available(iOS 8.0, *)
  optional func playerViewControllerShouldAutomaticallyDismissAtPictureInPictureStart(playerViewController: AVPlayerViewController) -> Bool

  /*!
  	@method		playerViewController:restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:
  	@param		playerViewController
  				The player view controller.
  	@param		completionHandler
  				The completion handler the delegate needs to call after restore.
  	@abstract	Delegate can implement this method to restore the user interface before Picture in Picture stops.
   */
  @available(iOS 8.0, *)
  optional func playerViewController(playerViewController: AVPlayerViewController, restoreUserInterfaceForPictureInPictureStopWithCompletionHandler completionHandler: (Bool) -> Void)
}
