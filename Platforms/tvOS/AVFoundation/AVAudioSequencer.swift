
typealias AVMusicTimeStamp = Float64
@available(tvOS 9.0, *)
struct AVMusicSequenceLoadOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var smf_PreserveTracks: AVMusicSequenceLoadOptions { get }
  static var smf_ChannelsToTracks: AVMusicSequenceLoadOptions { get }
}
struct _AVBeatRange {
  var start: AVMusicTimeStamp
  var length: AVMusicTimeStamp
  init()
  init(start: AVMusicTimeStamp, length: AVMusicTimeStamp)
}
typealias AVBeatRange = _AVBeatRange
func AVMakeBeatRange(startBeat: AVMusicTimeStamp, _ lengthInBeats: AVMusicTimeStamp) -> AVBeatRange
@available(tvOS 9.0, *)
class AVAudioSequencer : Object {
  init(audioEngine engine: AVAudioEngine)
  func load(from fileURL: URL, options: AVMusicSequenceLoadOptions = []) throws
  func load(from data: Data, options: AVMusicSequenceLoadOptions = []) throws
  func write(to fileURL: URL, smpteResolution resolution: Int, replaceExisting replace: Bool) throws
  func data(smpteResolution SMPTEResolution: Int, error outError: ErrorPointer) -> Data
  func seconds(forBeats beats: AVMusicTimeStamp) -> TimeInterval
  func beats(forSeconds seconds: TimeInterval) -> AVMusicTimeStamp
  var tracks: [AVMusicTrack] { get }
  var tempoTrack: AVMusicTrack { get }
  var userInfo: [String : AnyObject] { get }
}
extension AVAudioSequencer {
  var currentPositionInSeconds: TimeInterval
  var currentPositionInBeats: TimeInterval
  var isPlaying: Bool { get }
  var rate: Float
  func hostTime(forBeats inBeats: AVMusicTimeStamp, error outError: ErrorPointer) -> UInt64
  func beats(forHostTime inHostTime: UInt64, error outError: ErrorPointer) -> AVMusicTimeStamp
  func prepareToPlay()
  func start() throws
  func stop()
}
@available(tvOS 9.0, *)
class AVMusicTrack : Object {
  var destinationAudioUnit: AVAudioUnit?
  var loopRange: AVBeatRange
  var isLoopingEnabled: Bool
  var numberOfLoops: Int
  var offsetTime: AVMusicTimeStamp
  var isMuted: Bool
  var isSoloed: Bool
  var lengthInBeats: AVMusicTimeStamp
  var lengthInSeconds: TimeInterval
  var timeResolution: Int { get }
  init()
}
@available(tvOS 8.0, *)
enum AVMusicTrackLoopCount : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case forever
}
