
@available(OSX 10.7, *)
class AVAudioPlayer : Object {
  init(contentsOf url: URL) throws
  init(data: Data) throws
  @available(OSX 10.9, *)
  init(contentsOf url: URL, fileTypeHint utiString: String?) throws
  @available(OSX 10.9, *)
  init(data: Data, fileTypeHint utiString: String?) throws
  func prepareToPlay() -> Bool
  func play() -> Bool
  @available(OSX 10.7, *)
  func play(atTime time: TimeInterval) -> Bool
  func pause()
  func stop()
  var isPlaying: Bool { get }
  var numberOfChannels: Int { get }
  var duration: TimeInterval { get }
  unowned(unsafe) var delegate: @sil_unmanaged AVAudioPlayerDelegate?
  var url: URL? { get }
  var data: Data? { get }
  @available(OSX 10.7, *)
  var pan: Float
  var volume: Float
  @available(OSX 10.8, *)
  var enableRate: Bool
  @available(OSX 10.8, *)
  var rate: Float
  var currentTime: TimeInterval
  @available(OSX 10.7, *)
  var deviceCurrentTime: TimeInterval { get }
  var numberOfLoops: Int
  @available(OSX 10.7, *)
  var settings: [String : AnyObject] { get }
  var isMeteringEnabled: Bool
  func updateMeters()
  func peakPower(forChannel channelNumber: Int) -> Float
  func averagePower(forChannel channelNumber: Int) -> Float
  init()
}
protocol AVAudioPlayerDelegate : ObjectProtocol {
  @available(OSX 10.7, *)
  optional func audioPlayerDidFinishPlaying(player: AVAudioPlayer, successfully flag: Bool)
  @available(OSX 10.7, *)
  optional func audioPlayerDecodeErrorDidOccur(player: AVAudioPlayer, error: Error?)
}
