
@available(iOS 8.0, *)
class AVPlayerViewController : UIViewController {
  var showsPlaybackControls: Bool
  var videoGravity: String
  var readyForDisplay: Bool { get }
  var videoBounds: CGRect { get }
  var contentOverlayView: UIView? { get }
  @available(iOS 9.0, *)
  var allowsPictureInPicturePlayback: Bool
  @available(iOS 9.0, *)
  weak var delegate: @sil_weak AVPlayerViewControllerDelegate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol AVPlayerViewControllerDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  optional func playerViewControllerWillStartPictureInPicture(playerViewController: AVPlayerViewController)
  @available(iOS 8.0, *)
  optional func playerViewControllerDidStartPictureInPicture(playerViewController: AVPlayerViewController)
  @available(iOS 8.0, *)
  optional func playerViewController(playerViewController: AVPlayerViewController, failedToStartPictureInPictureWithError error: NSError)
  @available(iOS 8.0, *)
  optional func playerViewControllerWillStopPictureInPicture(playerViewController: AVPlayerViewController)
  @available(iOS 8.0, *)
  optional func playerViewControllerDidStopPictureInPicture(playerViewController: AVPlayerViewController)
  @available(iOS 8.0, *)
  optional func playerViewControllerShouldAutomaticallyDismissAtPictureInPictureStart(playerViewController: AVPlayerViewController) -> Bool
  @available(iOS 8.0, *)
  optional func playerViewController(playerViewController: AVPlayerViewController, restoreUserInterfaceForPictureInPictureStopWithCompletionHandler completionHandler: (Bool) -> Void)
}
