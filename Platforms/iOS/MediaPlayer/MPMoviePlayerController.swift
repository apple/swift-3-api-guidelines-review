
@available(iOS, introduced=2.0, deprecated=9.0)
enum MPMovieScalingMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case None
  case AspectFit
  case AspectFill
  case Fill
}
@available(iOS, introduced=3.2, deprecated=9.0)
enum MPMoviePlaybackState : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Stopped
  case Playing
  case Paused
  case Interrupted
  case SeekingForward
  case SeekingBackward
}
@available(iOS, introduced=3.2, deprecated=9.0)
struct MPMovieLoadState : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var Unknown: MPMovieLoadState { get }
  static var Playable: MPMovieLoadState { get }
  static var PlaythroughOK: MPMovieLoadState { get }
  static var Stalled: MPMovieLoadState { get }
}
@available(iOS, introduced=3.2, deprecated=9.0)
enum MPMovieRepeatMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case None
  case One
}
@available(iOS, introduced=3.2, deprecated=9.0)
enum MPMovieControlStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case None
  case Embedded
  case Fullscreen
  static var Default: MPMovieControlStyle { get }
}
@available(iOS, introduced=3.2, deprecated=9.0)
enum MPMovieFinishReason : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case PlaybackEnded
  case PlaybackError
  case UserExited
}
@available(iOS, introduced=3.2, deprecated=9.0)
struct MPMovieMediaTypeMask : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var None: MPMovieMediaTypeMask { get }
  static var Video: MPMovieMediaTypeMask { get }
  static var Audio: MPMovieMediaTypeMask { get }
}
@available(iOS, introduced=3.2, deprecated=9.0)
enum MPMovieSourceType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case File
  case Streaming
}
@available(iOS 2.0, *)
@available(iOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
class MPMoviePlayerController : NSObject, MPMediaPlayback {
  init!(contentURL url: NSURL!)
  @NSCopying var contentURL: NSURL!
  var view: UIView! { get }
  var backgroundView: UIView! { get }
  var playbackState: MPMoviePlaybackState { get }
  var loadState: MPMovieLoadState { get }
  var controlStyle: MPMovieControlStyle
  var repeatMode: MPMovieRepeatMode
  var shouldAutoplay: Bool
  var fullscreen: Bool
  func setFullscreen(_ fullscreen: Bool, animated animated: Bool)
  var scalingMode: MPMovieScalingMode
  @available(iOS 6.0, *)
  var readyForDisplay: Bool { get }
  @available(iOS 2.0, *)
  func prepareToPlay()
  @available(iOS 2.0, *)
  var isPreparedToPlay: Bool { get }
  @available(iOS 2.0, *)
  func play()
  @available(iOS 2.0, *)
  func pause()
  @available(iOS 2.0, *)
  func stop()
  @available(iOS 2.0, *)
  var currentPlaybackTime: NSTimeInterval
  @available(iOS 2.0, *)
  var currentPlaybackRate: Float
  @available(iOS 2.0, *)
  func beginSeekingForward()
  @available(iOS 2.0, *)
  func beginSeekingBackward()
  @available(iOS 2.0, *)
  func endSeeking()
}
extension MPMoviePlayerController {
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var movieMediaTypes: MPMovieMediaTypeMask { get }
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var movieSourceType: MPMovieSourceType
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var duration: NSTimeInterval { get }
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var playableDuration: NSTimeInterval { get }
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var naturalSize: CGSize { get }
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var initialPlaybackTime: NSTimeInterval
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var endPlaybackTime: NSTimeInterval
  @available(iOS, introduced=4.3, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var allowsAirPlay: Bool
  @available(iOS, introduced=5.0, deprecated=9.0, message="Use AVPlayerViewController in AVKit.")
  var airPlayVideoActive: Bool { get }
}
@available(iOS, introduced=2.0, deprecated=9.0)
let MPMoviePlayerScalingModeDidChangeNotification: String
@available(iOS, introduced=2.0, deprecated=9.0)
let MPMoviePlayerPlaybackDidFinishNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerPlaybackDidFinishReasonUserInfoKey: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerPlaybackStateDidChangeNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerLoadStateDidChangeNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerNowPlayingMovieDidChangeNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerWillEnterFullscreenNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerDidEnterFullscreenNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerWillExitFullscreenNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerDidExitFullscreenNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerFullscreenAnimationDurationUserInfoKey: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerFullscreenAnimationCurveUserInfoKey: String
@available(iOS, introduced=5.0, deprecated=9.0)
let MPMoviePlayerIsAirPlayVideoActiveDidChangeNotification: String
@available(iOS, introduced=6.0, deprecated=9.0)
let MPMoviePlayerReadyForDisplayDidChangeNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMovieMediaTypesAvailableNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMovieSourceTypeAvailableNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMovieDurationAvailableNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMovieNaturalSizeAvailableNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
enum MPMovieTimeOption : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case NearestKeyFrame
  case Exact
}
extension MPMoviePlayerController {
  @available(iOS, introduced=3.2, deprecated=9.0)
  func requestThumbnailImagesAtTimes(_ playbackTimes: [AnyObject]!, timeOption option: MPMovieTimeOption)
  @available(iOS, introduced=3.2, deprecated=9.0)
  func cancelAllThumbnailImageRequests()
}
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerThumbnailImageRequestDidFinishNotification: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerThumbnailImageKey: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerThumbnailTimeKey: String
@available(iOS, introduced=3.2, deprecated=9.0)
let MPMoviePlayerThumbnailErrorKey: String
extension MPMoviePlayerController {
  @available(iOS, introduced=4.0, deprecated=9.0)
  var timedMetadata: [AnyObject]! { get }
}
@available(iOS 4.0, *)
@available(iOS, introduced=4.0, deprecated=9.0)
class MPTimedMetadata : NSObject {
  var key: String! { get }
  var keyspace: String! { get }
  var value: AnyObject! { get }
  var timestamp: NSTimeInterval { get }
  var allMetadata: [NSObject : AnyObject]! { get }
}
@available(iOS, introduced=4.0, deprecated=9.0)
let MPMoviePlayerTimedMetadataUpdatedNotification: String
@available(iOS, introduced=4.0, deprecated=9.0)
let MPMoviePlayerTimedMetadataUserInfoKey: String
@available(iOS, introduced=4.0, deprecated=9.0)
let MPMoviePlayerTimedMetadataKeyName: String
@available(iOS, introduced=4.0, deprecated=9.0)
let MPMoviePlayerTimedMetadataKeyInfo: String
@available(iOS, introduced=4.0, deprecated=9.0)
let MPMoviePlayerTimedMetadataKeyMIMEType: String
@available(iOS, introduced=4.0, deprecated=9.0)
let MPMoviePlayerTimedMetadataKeyDataType: String
@available(iOS, introduced=4.0, deprecated=9.0)
let MPMoviePlayerTimedMetadataKeyLanguageCode: String
extension MPMoviePlayerController {
  @available(iOS, introduced=4.3, deprecated=9.0)
  var accessLog: MPMovieAccessLog! { get }
  @available(iOS, introduced=4.3, deprecated=9.0)
  var errorLog: MPMovieErrorLog! { get }
}
@available(iOS 4.3, *)
@available(iOS, introduced=4.3, deprecated=9.0)
class MPMovieAccessLog : NSObject, NSCopying {
  var extendedLogData: NSData! { get }
  var extendedLogDataStringEncoding: UInt { get }
  var events: [AnyObject]! { get }
  @available(iOS 4.3, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(iOS 4.3, *)
@available(iOS, introduced=4.3, deprecated=9.0)
class MPMovieErrorLog : NSObject, NSCopying {
  var extendedLogData: NSData! { get }
  var extendedLogDataStringEncoding: UInt { get }
  var events: [AnyObject]! { get }
  @available(iOS 4.3, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(iOS 4.3, *)
@available(iOS, introduced=4.3, deprecated=9.0)
class MPMovieAccessLogEvent : NSObject, NSCopying {
  var numberOfSegmentsDownloaded: Int { get }
  var playbackStartDate: NSDate! { get }
  var URI: String! { get }
  var serverAddress: String! { get }
  var numberOfServerAddressChanges: Int { get }
  var playbackSessionID: String! { get }
  var playbackStartOffset: NSTimeInterval { get }
  var segmentsDownloadedDuration: NSTimeInterval { get }
  var durationWatched: NSTimeInterval { get }
  var numberOfStalls: Int { get }
  var numberOfBytesTransferred: Int64 { get }
  var observedBitrate: Double { get }
  var indicatedBitrate: Double { get }
  var numberOfDroppedVideoFrames: Int { get }
  @available(iOS 4.3, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(iOS 4.3, *)
@available(iOS, introduced=4.3, deprecated=9.0)
class MPMovieErrorLogEvent : NSObject, NSCopying {
  var date: NSDate! { get }
  var URI: String! { get }
  var serverAddress: String! { get }
  var playbackSessionID: String! { get }
  var errorStatusCode: Int { get }
  var errorDomain: String! { get }
  var errorComment: String! { get }
  @available(iOS 4.3, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
extension MPMoviePlayerController {
}
