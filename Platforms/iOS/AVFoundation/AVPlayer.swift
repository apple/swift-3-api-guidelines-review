
enum AVPlayerStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case readyToPlay
  case failed
}
@available(iOS 4.0, *)
class AVPlayer : Object {
  init(url URL: URL)
  init(playerItem item: AVPlayerItem)
  var status: AVPlayerStatus { get }
  var error: Error? { get }
  init()
}
extension AVPlayer {
  var rate: Float
  func play()
  func pause()
}
extension AVPlayer {
  var currentItem: AVPlayerItem? { get }
  func replaceCurrentItem(item: AVPlayerItem?)
  var actionAtItemEnd: AVPlayerActionAtItemEnd
}
enum AVPlayerActionAtItemEnd : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case advance
  case pause
  case none
}
extension AVPlayer {
  func currentTime() -> CMTime
  func seekTo(date: Date)
  @available(iOS 5.0, *)
  func seekTo(date: Date, completionHandler: (Bool) -> Void)
  func seekTo(time: CMTime)
  func seekTo(time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime)
  @available(iOS 5.0, *)
  func seekTo(time: CMTime, completionHandler: (Bool) -> Void)
  @available(iOS 5.0, *)
  func seekTo(time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime, completionHandler: (Bool) -> Void)
}
extension AVPlayer {
  @available(iOS 6.0, *)
  func setRate(rate: Float, time itemTime: CMTime, atHostTime hostClockTime: CMTime)
  @available(iOS 6.0, *)
  func prerollAt(rate rate: Float, completionHandler: ((Bool) -> Void)? = nil)
  @available(iOS 6.0, *)
  func cancelPendingPrerolls()
  @available(iOS 6.0, *)
  var masterClock: CMClock?
}
extension AVPlayer {
  func addPeriodicTimeObserverFor(interval interval: CMTime, queue: dispatch_queue_t?, usingBlock block: (CMTime) -> Void) -> AnyObject
  func addBoundaryTimeObserverFor(times times: [Value], queue: dispatch_queue_t?, usingBlock block: () -> Void) -> AnyObject
  func removeTimeObserver(observer: AnyObject)
}
extension AVPlayer {
  @available(iOS 7.0, *)
  var volume: Float
  @available(iOS 7.0, *)
  var isMuted: Bool
  var isClosedCaptionDisplayEnabled: Bool
}
extension AVPlayer {
  @available(iOS 7.0, *)
  var appliesMediaSelectionCriteriaAutomatically: Bool
  @available(iOS 7.0, *)
  func setMediaSelectionCriteria(criteria: AVPlayerMediaSelectionCriteria?, forMediaCharacteristic mediaCharacteristic: String)
  @available(iOS 7.0, *)
  func mediaSelectionCriteriaFor(mediaCharacteristic mediaCharacteristic: String) -> AVPlayerMediaSelectionCriteria?
}
extension AVPlayer {
}
extension AVPlayer {
  @available(iOS 6.0, *)
  var allowsExternalPlayback: Bool
  @available(iOS 6.0, *)
  var isExternalPlaybackActive: Bool { get }
  @available(iOS 6.0, *)
  var usesExternalPlaybackWhileExternalScreenIsActive: Bool
  @available(iOS 6.0, *)
  var externalPlaybackVideoGravity: String
}
extension AVPlayer {
}
extension AVPlayer {
  @available(iOS 6.0, *)
  var outputObscuredDueToInsufficientExternalProtection: Bool { get }
}
@available(iOS 4.1, *)
class AVQueuePlayer : AVPlayer {
  init(items: [AVPlayerItem])
  func items() -> [AVPlayerItem]
  func advanceToNextItem()
  func canInsertItem(item: AVPlayerItem, after afterItem: AVPlayerItem?) -> Bool
  func insertItem(item: AVPlayerItem, after afterItem: AVPlayerItem?)
  func removeItem(item: AVPlayerItem)
  func removeAllItems()
  init(url URL: URL)
  init(playerItem item: AVPlayerItem)
  init()
}
