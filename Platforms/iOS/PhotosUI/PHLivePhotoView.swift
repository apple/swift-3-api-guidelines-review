
@available(iOS 9.1, *)
struct PHLivePhotoBadgeOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var OverContent: PHLivePhotoBadgeOptions { get }
  static var LiveOff: PHLivePhotoBadgeOptions { get }
}
@available(iOS 9.1, *)
enum PHLivePhotoViewPlaybackStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Undefined
  case Full
  case Hint
}
@available(iOS 9.1, *)
class PHLivePhotoView : UIView {
  class func livePhotoBadgeImageWithOptions(badgeOptions: PHLivePhotoBadgeOptions) -> UIImage
  weak var delegate: @sil_weak PHLivePhotoViewDelegate?
  var livePhoto: PHLivePhoto?
  var muted: Bool
  var playbackGestureRecognizer: UIGestureRecognizer { get }
  func startPlaybackWithStyle(playbackStyle: PHLivePhotoViewPlaybackStyle)
  func stopPlayback()
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol PHLivePhotoViewDelegate : NSObjectProtocol {
  @available(iOS 9.1, *)
  optional func livePhotoView(livePhotoView: PHLivePhotoView, willBeginPlaybackWithStyle playbackStyle: PHLivePhotoViewPlaybackStyle)
  @available(iOS 9.1, *)
  optional func livePhotoView(livePhotoView: PHLivePhotoView, didEndPlaybackWithStyle playbackStyle: PHLivePhotoViewPlaybackStyle)
}
