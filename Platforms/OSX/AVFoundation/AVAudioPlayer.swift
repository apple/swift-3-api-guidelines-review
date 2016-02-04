
@available(OSX 10.7, *)
class AVAudioPlayer : NSObject {
  init(contentsOfURL url: NSURL) throws
  init(data: NSData) throws
  @available(OSX 10.9, *)
  init(contentsOfURL url: NSURL, fileTypeHint utiString: String?) throws
  @available(OSX 10.9, *)
  init(data: NSData, fileTypeHint utiString: String?) throws
  func prepareToPlay() -> Bool
  func play() -> Bool
  @available(OSX 10.7, *)
  func playAtTime(time: NSTimeInterval) -> Bool
  func pause()
  func stop()
  var playing: Bool { get }
  var numberOfChannels: Int { get }
  var duration: NSTimeInterval { get }
  unowned(unsafe) var delegate: @sil_unmanaged AVAudioPlayerDelegate?
  var url: NSURL? { get }
  var data: NSData? { get }
  @available(OSX 10.7, *)
  var pan: Float
  var volume: Float
  @available(OSX 10.8, *)
  var enableRate: Bool
  @available(OSX 10.8, *)
  var rate: Float
  var currentTime: NSTimeInterval
  @available(OSX 10.7, *)
  var deviceCurrentTime: NSTimeInterval { get }
  var numberOfLoops: Int
  @available(OSX 10.7, *)
  var settings: [String : AnyObject] { get }
  var meteringEnabled: Bool
  func updateMeters()
  func peakPowerForChannel(channelNumber: Int) -> Float
  func averagePowerForChannel(channelNumber: Int) -> Float
  init()
}
protocol AVAudioPlayerDelegate : NSObjectProtocol {
  @available(OSX 10.7, *)
  optional func audioPlayerDidFinishPlaying(player: AVAudioPlayer, successfully flag: Bool)
  @available(OSX 10.7, *)
  optional func audioPlayerDecodeErrorDidOccur(player: AVAudioPlayer, error: NSError?)
}
