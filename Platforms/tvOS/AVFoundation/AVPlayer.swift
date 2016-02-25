
enum AVPlayerStatus : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case ReadyToPlay
  case Failed
}
@available(tvOS 4.0, *)
class AVPlayer : NSObject {
  init(URL URL: NSURL)
  init(playerItem item: AVPlayerItem)
  var status: AVPlayerStatus { get }
  var error: NSError? { get }
}
extension AVPlayer {
  var rate: Float
  func play()
  func pause()
}
extension AVPlayer {
  var currentItem: AVPlayerItem? { get }
  func replaceCurrentItemWithPlayerItem(_ item: AVPlayerItem?)
  var actionAtItemEnd: AVPlayerActionAtItemEnd
}
enum AVPlayerActionAtItemEnd : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Advance
  case Pause
  case None
}
extension AVPlayer {
  func currentTime() -> CMTime
  func seekToDate(_ date: NSDate)
  @available(tvOS 5.0, *)
  func seekToDate(_ date: NSDate, completionHandler completionHandler: (Bool) -> Void)
  func seekToTime(_ time: CMTime)
  func seekToTime(_ time: CMTime, toleranceBefore toleranceBefore: CMTime, toleranceAfter toleranceAfter: CMTime)
  @available(tvOS 5.0, *)
  func seekToTime(_ time: CMTime, completionHandler completionHandler: (Bool) -> Void)
  @available(tvOS 5.0, *)
  func seekToTime(_ time: CMTime, toleranceBefore toleranceBefore: CMTime, toleranceAfter toleranceAfter: CMTime, completionHandler completionHandler: (Bool) -> Void)
}
extension AVPlayer {
  @available(tvOS 6.0, *)
  func setRate(_ rate: Float, time itemTime: CMTime, atHostTime hostClockTime: CMTime)
  @available(tvOS 6.0, *)
  func prerollAtRate(_ rate: Float, completionHandler completionHandler: ((Bool) -> Void)?)
  @available(tvOS 6.0, *)
  func cancelPendingPrerolls()
  @available(tvOS 6.0, *)
  var masterClock: CMClock?
}
extension AVPlayer {
  func addPeriodicTimeObserverForInterval(_ interval: CMTime, queue queue: dispatch_queue_t?, usingBlock block: (CMTime) -> Void) -> AnyObject
  func addBoundaryTimeObserverForTimes(_ times: [NSValue], queue queue: dispatch_queue_t?, usingBlock block: () -> Void) -> AnyObject
  func removeTimeObserver(_ observer: AnyObject)
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
  func setMediaSelectionCriteria(_ criteria: AVPlayerMediaSelectionCriteria?, forMediaCharacteristic mediaCharacteristic: String)
  @available(tvOS 7.0, *)
  func mediaSelectionCriteriaForMediaCharacteristic(_ mediaCharacteristic: String) -> AVPlayerMediaSelectionCriteria?
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
  init(items items: [AVPlayerItem])
  func items() -> [AVPlayerItem]
  func advanceToNextItem()
  func canInsertItem(_ item: AVPlayerItem, afterItem afterItem: AVPlayerItem?) -> Bool
  func insertItem(_ item: AVPlayerItem, afterItem afterItem: AVPlayerItem?)
  func removeItem(_ item: AVPlayerItem)
  func removeAllItems()
}
