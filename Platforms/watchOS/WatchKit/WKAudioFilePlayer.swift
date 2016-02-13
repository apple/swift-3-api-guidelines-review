
@available(watchOS 2.0, *)
enum WKAudioFilePlayerStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case readyToPlay
  case failed
}
@available(watchOS 2.0, *)
class WKAudioFilePlayer : Object {
  convenience init(playerItem item: WKAudioFilePlayerItem)
  func play()
  func pause()
  func replaceCurrentItem(with item: WKAudioFilePlayerItem?)
  var currentItem: WKAudioFilePlayerItem? { get }
  var status: WKAudioFilePlayerStatus { get }
  var error: Error? { get }
  var rate: Float
  var currentTime: TimeInterval { get }
}
@available(watchOS 2.0, *)
class WKAudioFileQueuePlayer : WKAudioFilePlayer {
  convenience init(items: [WKAudioFilePlayerItem])
  func advanceToNextItem()
  func appendItem(item: WKAudioFilePlayerItem)
  func removeItem(item: WKAudioFilePlayerItem)
  func removeAllItems()
  var items: [WKAudioFilePlayerItem] { get }
  convenience init(playerItem item: WKAudioFilePlayerItem)
}
