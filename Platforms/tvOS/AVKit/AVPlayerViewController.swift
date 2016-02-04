
@available(tvOS 9.0, *)
class AVPlayerViewController : UIViewController {
  var player: AVPlayer?
  var showsPlaybackControls: Bool
  var requiresLinearPlayback: Bool
  var videoGravity: String
  var isReadyForDisplay: Bool { get }
  var contentOverlayView: UIView? { get }
  weak var delegate: @sil_weak AVPlayerViewControllerDelegate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
extension AVPlayerViewController {
  var allowedSubtitleOptionLanguages: [String]?
  var requiresFullSubtitles: Bool
}
protocol AVPlayerViewControllerDelegate : ObjectProtocol {
  @available(tvOS 9.0, *)
  optional func playerViewController(playerViewController: AVPlayerViewController, willPresent interstitial: AVInterstitialTimeRange)
  @available(tvOS 9.0, *)
  optional func playerViewController(playerViewController: AVPlayerViewController, didPresent interstitial: AVInterstitialTimeRange)
  @available(tvOS 9.0, *)
  optional func playerViewController(playerViewController: AVPlayerViewController, willResumePlaybackAfterUserNavigatedFrom oldTime: CMTime, to targetTime: CMTime)
  @available(tvOS 9.0, *)
  optional func playerViewController(playerViewController: AVPlayerViewController, didSelect mediaSelectionOption: AVMediaSelectionOption?, in mediaSelectionGroup: AVMediaSelectionGroup)
}
