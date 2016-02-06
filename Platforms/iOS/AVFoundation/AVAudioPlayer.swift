
@available(iOS 2.2, *)
class AVAudioPlayer : Object {
  init(contentsOf url: URL) throws
  init(data: Data) throws
  @available(iOS 7.0, *)
  init(contentsOf url: URL, fileTypeHint utiString: String?) throws
  @available(iOS 7.0, *)
  init(data: Data, fileTypeHint utiString: String?) throws
  func prepareToPlay() -> Bool
  func play() -> Bool
  @available(iOS 4.0, *)
  func playAtTime(time: TimeInterval) -> Bool
  func pause()
  func stop()
  var isPlaying: Bool { get }
  var numberOfChannels: Int { get }
  var duration: TimeInterval { get }
  unowned(unsafe) var delegate: @sil_unmanaged AVAudioPlayerDelegate?
  var url: URL? { get }
  var data: Data? { get }
  @available(iOS 4.0, *)
  var pan: Float
  var volume: Float
  @available(iOS 5.0, *)
  var enableRate: Bool
  @available(iOS 5.0, *)
  var rate: Float
  var currentTime: TimeInterval
  @available(iOS 4.0, *)
  var deviceCurrentTime: TimeInterval { get }
  var numberOfLoops: Int
  @available(iOS 4.0, *)
  var settings: [String : AnyObject] { get }
  var isMeteringEnabled: Bool
  func updateMeters()
  func peakPowerFor(channel channelNumber: Int) -> Float
  func averagePowerFor(channel channelNumber: Int) -> Float
  @available(iOS 7.0, *)
  var channelAssignments: [Number]?
  init()
}
protocol AVAudioPlayerDelegate : ObjectProtocol {
  @available(iOS 2.2, *)
  optional func audioPlayerDidFinishPlaying(player: AVAudioPlayer, successfully flag: Bool)
  @available(iOS 2.2, *)
  optional func audioPlayerDecodeErrorDidOccur(player: AVAudioPlayer, error: Error?)
  @available(iOS, introduced=2.2, deprecated=8.0)
  optional func audioPlayerBeginInterruption(player: AVAudioPlayer)
  @available(iOS, introduced=6.0, deprecated=8.0)
  optional func audioPlayerEndInterruption(player: AVAudioPlayer, withOptions flags: Int)
}
