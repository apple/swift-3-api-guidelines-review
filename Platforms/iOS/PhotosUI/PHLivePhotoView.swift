
@available(iOS 9.1, *)
struct PHLivePhotoBadgeOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var OverContent: PHLivePhotoBadgeOptions { get }
  static var LiveOff: PHLivePhotoBadgeOptions { get }
}
@available(iOS 9.1, *)
enum PHLivePhotoViewPlaybackStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Undefined
  case Full
  case Hint
}
@available(iOS 9.1, *)
class PHLivePhotoView : UIView {
  class func livePhotoBadgeImageWithOptions(_ badgeOptions: PHLivePhotoBadgeOptions) -> UIImage
  weak var delegate: @sil_weak PHLivePhotoViewDelegate?
  var livePhoto: PHLivePhoto?
  var muted: Bool
  var playbackGestureRecognizer: UIGestureRecognizer { get }
  func startPlaybackWithStyle(_ playbackStyle: PHLivePhotoViewPlaybackStyle)
  func stopPlayback()
}
protocol PHLivePhotoViewDelegate : NSObjectProtocol {
  @available(iOS 9.1, *)
  optional func livePhotoView(_ livePhotoView: PHLivePhotoView, willBeginPlaybackWithStyle playbackStyle: PHLivePhotoViewPlaybackStyle)
  @available(iOS 9.1, *)
  optional func livePhotoView(_ livePhotoView: PHLivePhotoView, didEndPlaybackWithStyle playbackStyle: PHLivePhotoViewPlaybackStyle)
}
