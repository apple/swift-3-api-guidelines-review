
enum AVPlayerStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case ReadyToPlay
  case Failed
}
@available(tvOS 4.0, *)
class AVPlayer : NSObject {
  init(URL: NSURL)
  init(playerItem item: AVPlayerItem)
  var status: AVPlayerStatus { get }
  var error: NSError? { get }
  init()
}
extension AVPlayer {
  var rate: Float
  func play()
  func pause()
}
extension AVPlayer {
  var currentItem: AVPlayerItem? { get }
  func replaceCurrentItemWithPlayerItem(item: AVPlayerItem?)
  var actionAtItemEnd: AVPlayerActionAtItemEnd
}
enum AVPlayerActionAtItemEnd : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Advance
  case Pause
  case None
}
extension AVPlayer {
  func currentTime() -> CMTime
  func seekToDate(date: NSDate)
  @available(tvOS 5.0, *)
  func seekToDate(date: NSDate, completionHandler: (Bool) -> Void)
  func seekToTime(time: CMTime)
  func seekToTime(time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime)
  @available(tvOS 5.0, *)
  func seekToTime(time: CMTime, completionHandler: (Bool) -> Void)
  @available(tvOS 5.0, *)
  func seekToTime(time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime, completionHandler: (Bool) -> Void)
}
extension AVPlayer {
  @available(tvOS 6.0, *)
  func setRate(rate: Float, time itemTime: CMTime, atHostTime hostClockTime: CMTime)
  @available(tvOS 6.0, *)
  func prerollAtRate(rate: Float, completionHandler: ((Bool) -> Void)?)
  @available(tvOS 6.0, *)
  func cancelPendingPrerolls()
  @available(tvOS 6.0, *)
  var masterClock: CMClock?
}
extension AVPlayer {
  func addPeriodicTimeObserverForInterval(interval: CMTime, queue: dispatch_queue_t?, usingBlock block: (CMTime) -> Void) -> AnyObject
  func addBoundaryTimeObserverForTimes(times: [NSValue], queue: dispatch_queue_t?, usingBlock block: () -> Void) -> AnyObject
  func removeTimeObserver(observer: AnyObject)
}
extension AVPlayer {
  @available(tvOS 7.0, *)
  var volume: Float
  @available(tvOS 7.0, *)
  var muted: Bool
  var closedCaptionDisplayEnabled: Bool
}
extension AVPlayer {
  @available(tvOS 7.0, *)
  var appliesMediaSelectionCriteriaAutomatically: Bool
  @available(tvOS 7.0, *)
  func setMediaSelectionCriteria(criteria: AVPlayerMediaSelectionCriteria?, forMediaCharacteristic mediaCharacteristic: String)
  @available(tvOS 7.0, *)
  func mediaSelectionCriteriaForMediaCharacteristic(mediaCharacteristic: String) -> AVPlayerMediaSelectionCriteria?
}
extension AVPlayer {
}
extension AVPlayer {
  @available(tvOS 6.0, *)
  var allowsExternalPlayback: Bool
  @available(tvOS 6.0, *)
  var externalPlaybackActive: Bool { get }
  @available(tvOS 6.0, *)
  var usesExternalPlaybackWhileExternalScreenIsActive: Bool
  @available(tvOS 6.0, *)
  var externalPlaybackVideoGravity: String
}
extension AVPlayer {
}
extension AVPlayer {
  @available(tvOS 6.0, *)
  var outputObscuredDueToInsufficientExternalProtection: Bool { get }
}
@available(tvOS 4.1, *)
class AVQueuePlayer : AVPlayer {
  init(items: [AVPlayerItem])
  func items() -> [AVPlayerItem]
  func advanceToNextItem()
  func canInsertItem(item: AVPlayerItem, afterItem: AVPlayerItem?) -> Bool
  func insertItem(item: AVPlayerItem, afterItem: AVPlayerItem?)
  func removeItem(item: AVPlayerItem)
  func removeAllItems()
  init(URL: NSURL)
  init(playerItem item: AVPlayerItem)
  init()
}
