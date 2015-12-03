
protocol PHContentEditingController : NSObjectProtocol {
  @available(iOS 8.0, *)
  func canHandleAdjustmentData(adjustmentData: PHAdjustmentData!) -> Bool
  @available(iOS 8.0, *)
  func startContentEditingWithInput(contentEditingInput: PHContentEditingInput!, placeholderImage: UIImage!)
  @available(iOS 8.0, *)
  func finishContentEditingWithCompletionHandler(completionHandler: ((PHContentEditingOutput!) -> Void)!)
  func cancelContentEditing()
  var shouldShowCancelConfirmation: Bool { get }
}
@available(iOS 9.1, *)
struct PHLivePhotoBadgeOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt

  ///< Include treatments so this image can be shown directly over the content of the Live Photo
  static var OverContent: PHLivePhotoBadgeOptions { get }

  ///< To indicate that the Live Photo aspect is turned off and it will be treated as a still (e.g. for sharing)
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

  /// System badge images representing Live Photo content
  class func livePhotoBadgeImageWithOptions(badgeOptions: PHLivePhotoBadgeOptions) -> UIImage
  weak var delegate: @sil_weak PHLivePhotoViewDelegate?

  /// Live photo displayed in the receiver.
  var livePhoto: PHLivePhoto?

  /// Indicates whether the audio of the Live Photo is muted.
  var muted: Bool

  /// Gesture used to trigger playback. By default, added to the receiver. Can be moved to a different view.
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
