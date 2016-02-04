
@available(tvOS 9.0, *)
class AVPlayerViewController : UIViewController {
  var player: AVPlayer?
  var showsPlaybackControls: Bool
  var requiresLinearPlayback: Bool
  var videoGravity: String
  var readyForDisplay: Bool { get }
  var contentOverlayView: UIView? { get }
  weak var delegate: @sil_weak AVPlayerViewControllerDelegate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
extension AVPlayerViewController {
  var allowedSubtitleOptionLanguages: [String]?
  var requiresFullSubtitles: Bool
}
protocol AVPlayerViewControllerDelegate : NSObjectProtocol {
  @available(tvOS 9.0, *)
  optional func playerViewController(playerViewController: AVPlayerViewController, willPresentInterstitialTimeRange interstitial: AVInterstitialTimeRange)
  @available(tvOS 9.0, *)
  optional func playerViewController(playerViewController: AVPlayerViewController, didPresentInterstitialTimeRange interstitial: AVInterstitialTimeRange)
  @available(tvOS 9.0, *)
  optional func playerViewController(playerViewController: AVPlayerViewController, willResumePlaybackAfterUserNavigatedFromTime oldTime: CMTime, toTime targetTime: CMTime)
  @available(tvOS 9.0, *)
  optional func playerViewController(playerViewController: AVPlayerViewController, didSelectMediaSelectionOption mediaSelectionOption: AVMediaSelectionOption?, inMediaSelectionGroup mediaSelectionGroup: AVMediaSelectionGroup)
}
