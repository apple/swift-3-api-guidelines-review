
@available(tvOS 2.2, *)
class AVAudioPlayer : NSObject {
  init(contentsOfURL url: NSURL) throws
  init(data: NSData) throws
  @available(tvOS 7.0, *)
  init(contentsOfURL url: NSURL, fileTypeHint utiString: String?) throws
  @available(tvOS 7.0, *)
  init(data: NSData, fileTypeHint utiString: String?) throws
  func prepareToPlay() -> Bool
  func play() -> Bool
  @available(tvOS 4.0, *)
  func playAtTime(time: NSTimeInterval) -> Bool
  func pause()
  func stop()
  var playing: Bool { get }
  var numberOfChannels: Int { get }
  var duration: NSTimeInterval { get }
  unowned(unsafe) var delegate: @sil_unmanaged AVAudioPlayerDelegate?
  var url: NSURL? { get }
  var data: NSData? { get }
  @available(tvOS 4.0, *)
  var pan: Float
  var volume: Float
  @available(tvOS 5.0, *)
  var enableRate: Bool
  @available(tvOS 5.0, *)
  var rate: Float
  var currentTime: NSTimeInterval
  @available(tvOS 4.0, *)
  var deviceCurrentTime: NSTimeInterval { get }
  var numberOfLoops: Int
  @available(tvOS 4.0, *)
  var settings: [String : AnyObject] { get }
  var meteringEnabled: Bool
  func updateMeters()
  func peakPowerForChannel(channelNumber: Int) -> Float
  func averagePowerForChannel(channelNumber: Int) -> Float
  @available(tvOS 7.0, *)
  var channelAssignments: [NSNumber]?
  init()
}
protocol AVAudioPlayerDelegate : NSObjectProtocol {
  @available(tvOS 2.2, *)
  optional func audioPlayerDidFinishPlaying(player: AVAudioPlayer, successfully flag: Bool)
  @available(tvOS 2.2, *)
  optional func audioPlayerDecodeErrorDidOccur(player: AVAudioPlayer, error: NSError?)
  @available(tvOS, introduced=2.2, deprecated=8.0)
  optional func audioPlayerBeginInterruption(player: AVAudioPlayer)
  @available(tvOS, introduced=6.0, deprecated=8.0)
  optional func audioPlayerEndInterruption(player: AVAudioPlayer, withOptions flags: Int)
}
