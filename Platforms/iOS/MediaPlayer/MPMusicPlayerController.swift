
enum MPMusicPlaybackState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Stopped
  case Playing
  case Paused
  case Interrupted
  case SeekingForward
  case SeekingBackward
}
enum MPMusicRepeatMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case None
  case One
  case All
}
enum MPMusicShuffleMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Off
  case Songs
  case Albums
}
@available(iOS 3.0, *)
class MPMusicPlayerController : NSObject, MPMediaPlayback {
  class func applicationMusicPlayer() -> MPMusicPlayerController
  class func systemMusicPlayer() -> MPMusicPlayerController
  @available(iOS, introduced=3.0, deprecated=8.0, message="Use +systemMusicPlayer instead.")
  class func iPodMusicPlayer() -> MPMusicPlayerController
  init()
  @available(iOS 3.0, *)
  func prepareToPlay()
  @available(iOS 3.0, *)
  var isPreparedToPlay: Bool { get }
  @available(iOS 3.0, *)
  func play()
  @available(iOS 3.0, *)
  func pause()
  @available(iOS 3.0, *)
  func stop()
  @available(iOS 3.0, *)
  var currentPlaybackTime: NSTimeInterval
  @available(iOS 3.0, *)
  var currentPlaybackRate: Float
  @available(iOS 3.0, *)
  func beginSeekingForward()
  @available(iOS 3.0, *)
  func beginSeekingBackward()
  @available(iOS 3.0, *)
  func endSeeking()
}
extension MPMusicPlayerController {
  var playbackState: MPMusicPlaybackState { get }
  var repeatMode: MPMusicRepeatMode
  var shuffleMode: MPMusicShuffleMode
  @NSCopying var nowPlayingItem: MPMediaItem?
  @available(iOS 5.0, *)
  var indexOfNowPlayingItem: Int { get }
  func setQueueWithQuery(query: MPMediaQuery)
  func setQueueWithItemCollection(itemCollection: MPMediaItemCollection)
  func skipToNextItem()
  func skipToBeginning()
  func skipToPreviousItem()
  func beginGeneratingPlaybackNotifications()
  func endGeneratingPlaybackNotifications()
}
let MPMusicPlayerControllerPlaybackStateDidChangeNotification: String
let MPMusicPlayerControllerNowPlayingItemDidChangeNotification: String
let MPMusicPlayerControllerVolumeDidChangeNotification: String
