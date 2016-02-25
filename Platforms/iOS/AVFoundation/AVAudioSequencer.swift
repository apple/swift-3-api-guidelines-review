
typealias AVMusicTimeStamp = Float64
@available(iOS 9.0, *)
struct AVMusicSequenceLoadOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var smf_PreserveTracks: AVMusicSequenceLoadOptions { get }
  static var smf_ChannelsToTracks: AVMusicSequenceLoadOptions { get }
}
struct _AVBeatRange {
  var start: AVMusicTimeStamp
  var length: AVMusicTimeStamp
  init()
  init(start start: AVMusicTimeStamp, length length: AVMusicTimeStamp)
}
typealias AVBeatRange = _AVBeatRange
func AVMakeBeatRange(_ startBeat: AVMusicTimeStamp, _ lengthInBeats: AVMusicTimeStamp) -> AVBeatRange
@available(iOS 9.0, *)
class AVAudioSequencer : NSObject {
  init(audioEngine engine: AVAudioEngine)
  func load(from fileURL: NSURL, options options: AVMusicSequenceLoadOptions = []) throws
  func load(from data: NSData, options options: AVMusicSequenceLoadOptions = []) throws
  func write(to fileURL: NSURL, smpteResolution resolution: Int, replaceExisting replace: Bool) throws
  func data(withSMPTEResolution SMPTEResolution: Int, error outError: NSErrorPointer) -> NSData
  func seconds(forBeats beats: AVMusicTimeStamp) -> NSTimeInterval
  func beats(forSeconds seconds: NSTimeInterval) -> AVMusicTimeStamp
  var tracks: [AVMusicTrack] { get }
  var tempoTrack: AVMusicTrack { get }
  var userInfo: [String : AnyObject] { get }
}
extension AVAudioSequencer {
  var currentPositionInSeconds: NSTimeInterval
  var currentPositionInBeats: NSTimeInterval
  var isPlaying: Bool { get }
  var rate: Float
  func hostTime(forBeats inBeats: AVMusicTimeStamp, error outError: NSErrorPointer) -> UInt64
  func beats(forHostTime inHostTime: UInt64, error outError: NSErrorPointer) -> AVMusicTimeStamp
  func prepareToPlay()
  func start() throws
  func stop()
}
@available(iOS 9.0, *)
class AVMusicTrack : NSObject {
  var destinationAudioUnit: AVAudioUnit?
  var destinationMIDIEndpoint: MIDIEndpointRef
  var loopRange: AVBeatRange
  var isLoopingEnabled: Bool
  var numberOfLoops: Int
  var offsetTime: AVMusicTimeStamp
  var isMuted: Bool
  var isSoloed: Bool
  var lengthInBeats: AVMusicTimeStamp
  var lengthInSeconds: NSTimeInterval
  var timeResolution: Int { get }
}
@available(iOS 8.0, *)
enum AVMusicTrackLoopCount : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case forever
}
