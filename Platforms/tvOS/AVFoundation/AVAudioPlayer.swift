
@available(tvOS 2.2, *)
class AVAudioPlayer : Object {
  init(contentsOf url: URL) throws
  init(data: Data) throws
  @available(tvOS 7.0, *)
  init(contentsOf url: URL, fileTypeHint utiString: String?) throws
  @available(tvOS 7.0, *)
  init(data: Data, fileTypeHint utiString: String?) throws
  func prepareToPlay() -> Bool
  func play() -> Bool
  @available(tvOS 4.0, *)
  func playAtTime(time: TimeInterval) -> Bool
  func pause()
  func stop()
  var isPlaying: Bool { get }
  var numberOfChannels: Int { get }
  var duration: TimeInterval { get }
  unowned(unsafe) var delegate: @sil_unmanaged AVAudioPlayerDelegate?
  var url: URL? { get }
  var data: Data? { get }
  @available(tvOS 4.0, *)
  var pan: Float
  var volume: Float
  @available(tvOS 5.0, *)
  var enableRate: Bool
  @available(tvOS 5.0, *)
  var rate: Float
  var currentTime: TimeInterval
  @available(tvOS 4.0, *)
  var deviceCurrentTime: TimeInterval { get }
  var numberOfLoops: Int
  @available(tvOS 4.0, *)
  var settings: [String : AnyObject] { get }
  var isMeteringEnabled: Bool
  func updateMeters()
  func peakPower(forChannel channelNumber: Int) -> Float
  func averagePower(forChannel channelNumber: Int) -> Float
  @available(tvOS 7.0, *)
  var channelAssignments: [Number]?
  init()
}
protocol AVAudioPlayerDelegate : ObjectProtocol {
  @available(tvOS 2.2, *)
  optional func audioPlayerDidFinishPlaying(player: AVAudioPlayer, successfully flag: Bool)
  @available(tvOS 2.2, *)
  optional func audioPlayerDecodeErrorDidOccur(player: AVAudioPlayer, error: Error?)
  @available(tvOS, introduced=2.2, deprecated=8.0)
  optional func audioPlayerBeginInterruption(player: AVAudioPlayer)
  @available(tvOS, introduced=6.0, deprecated=8.0)
  optional func audioPlayerEndInterruption(player: AVAudioPlayer, withOptions flags: Int)
}
