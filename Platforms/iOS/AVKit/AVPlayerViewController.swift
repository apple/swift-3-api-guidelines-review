
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
}
protocol AVPlayerViewControllerDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  optional func playerViewControllerWillStartPictureInPicture(_ playerViewController: AVPlayerViewController)
  @available(iOS 8.0, *)
  optional func playerViewControllerDidStartPictureInPicture(_ playerViewController: AVPlayerViewController)
  @available(iOS 8.0, *)
  optional func playerViewController(_ playerViewController: AVPlayerViewController, failedToStartPictureInPictureWithError error: NSError)
  @available(iOS 8.0, *)
  optional func playerViewControllerWillStopPictureInPicture(_ playerViewController: AVPlayerViewController)
  @available(iOS 8.0, *)
  optional func playerViewControllerDidStopPictureInPicture(_ playerViewController: AVPlayerViewController)
  @available(iOS 8.0, *)
  optional func playerViewControllerShouldAutomaticallyDismissAtPictureInPictureStart(_ playerViewController: AVPlayerViewController) -> Bool
  @available(iOS 8.0, *)
  optional func playerViewController(_ playerViewController: AVPlayerViewController, restoreUserInterfaceForPictureInPictureStopWithCompletionHandler completionHandler: (Bool) -> Void)
}
