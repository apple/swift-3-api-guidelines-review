
enum AVPlayerStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case ReadyToPlay
  case Failed
}
@available(OSX 10.7, *)
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
  @available(OSX 10.7, *)
  func seekToDate(date: NSDate, completionHandler: (Bool) -> Void)
  func seekToTime(time: CMTime)
  func seekToTime(time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime)
  @available(OSX 10.7, *)
  func seekToTime(time: CMTime, completionHandler: (Bool) -> Void)
  @available(OSX 10.7, *)
  func seekToTime(time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime, completionHandler: (Bool) -> Void)
}
extension AVPlayer {
  @available(OSX 10.8, *)
  func setRate(rate: Float, time itemTime: CMTime, atHostTime hostClockTime: CMTime)
  @available(OSX 10.8, *)
  func prerollAtRate(rate: Float, completionHandler: ((Bool) -> Void)?)
  @available(OSX 10.8, *)
  func cancelPendingPrerolls()
  @available(OSX 10.8, *)
  var masterClock: CMClock?
}
extension AVPlayer {
  func addPeriodicTimeObserverForInterval(interval: CMTime, queue: dispatch_queue_t?, usingBlock block: (CMTime) -> Void) -> AnyObject
  func addBoundaryTimeObserverForTimes(times: [NSValue], queue: dispatch_queue_t?, usingBlock block: () -> Void) -> AnyObject
  func removeTimeObserver(observer: AnyObject)
}
extension AVPlayer {
  @available(OSX 10.7, *)
  var volume: Float
  @available(OSX 10.7, *)
  var muted: Bool
  var closedCaptionDisplayEnabled: Bool
}
extension AVPlayer {
  @available(OSX 10.9, *)
  var appliesMediaSelectionCriteriaAutomatically: Bool
  @available(OSX 10.9, *)
  func setMediaSelectionCriteria(criteria: AVPlayerMediaSelectionCriteria?, forMediaCharacteristic mediaCharacteristic: String)
  @available(OSX 10.9, *)
  func mediaSelectionCriteriaForMediaCharacteristic(mediaCharacteristic: String) -> AVPlayerMediaSelectionCriteria?
}
extension AVPlayer {
  @available(OSX 10.9, *)
  var audioOutputDeviceUniqueID: String?
}
extension AVPlayer {
  @available(OSX 10.11, *)
  var allowsExternalPlayback: Bool
  @available(OSX 10.11, *)
  var externalPlaybackActive: Bool { get }
}
@available(OSX 10.7, *)
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
