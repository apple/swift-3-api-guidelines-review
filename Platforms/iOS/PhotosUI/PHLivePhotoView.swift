
@available(iOS 9.1, *)
struct PHLivePhotoBadgeOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var overContent: PHLivePhotoBadgeOptions { get }
  static var liveOff: PHLivePhotoBadgeOptions { get }
}
@available(iOS 9.1, *)
enum PHLivePhotoViewPlaybackStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case undefined
  case full
  case hint
}
@available(iOS 9.1, *)
class PHLivePhotoView : UIView {
  class func livePhotoBadgeImage(badgeOptions: PHLivePhotoBadgeOptions = []) -> UIImage
  weak var delegate: @sil_weak PHLivePhotoViewDelegate?
  var livePhoto: PHLivePhoto?
  var isMuted: Bool
  var playbackGestureRecognizer: UIGestureRecognizer { get }
  func startPlayback(playbackStyle: PHLivePhotoViewPlaybackStyle)
  func stopPlayback()
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol PHLivePhotoViewDelegate : NSObjectProtocol {
  @available(iOS 9.1, *)
  optional func livePhotoView(livePhotoView: PHLivePhotoView, willBeginPlaybackWith playbackStyle: PHLivePhotoViewPlaybackStyle)
  @available(iOS 9.1, *)
  optional func livePhotoView(livePhotoView: PHLivePhotoView, didEndPlaybackWith playbackStyle: PHLivePhotoViewPlaybackStyle)
}
