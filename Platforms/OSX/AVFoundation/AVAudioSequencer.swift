
typealias AVMusicTimeStamp = Float64
@available(OSX 10.11, *)
struct AVMusicSequenceLoadOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var SMF_PreserveTracks: AVMusicSequenceLoadOptions { get }
  static var SMF_ChannelsToTracks: AVMusicSequenceLoadOptions { get }
}
struct _AVBeatRange {
  var start: AVMusicTimeStamp
  var length: AVMusicTimeStamp
  init()
  init(start: AVMusicTimeStamp, length: AVMusicTimeStamp)
}
typealias AVBeatRange = _AVBeatRange
func AVMakeBeatRange(startBeat: AVMusicTimeStamp, _ lengthInBeats: AVMusicTimeStamp) -> AVBeatRange
@available(OSX 10.11, *)
class AVAudioSequencer : Object {
  init()
  init(audioEngine engine: AVAudioEngine)
  func loadFrom(fileURL: URL, options: AVMusicSequenceLoadOptions = []) throws
  func loadFrom(data: Data, options: AVMusicSequenceLoadOptions = []) throws
  func writeTo(fileURL: URL, smpteResolution resolution: Int, replaceExisting replace: Bool) throws
  func dataWith(smpteResolution SMPTEResolution: Int, error outError: ErrorPointer) -> Data
  func secondsFor(beats beats: AVMusicTimeStamp) -> TimeInterval
  func beatsFor(seconds seconds: TimeInterval) -> AVMusicTimeStamp
  var tracks: [AVMusicTrack] { get }
  var tempoTrack: AVMusicTrack { get }
  var userInfo: [String : AnyObject] { get }
}
extension AVAudioSequencer {
  var currentPositionInSeconds: TimeInterval
  var currentPositionInBeats: TimeInterval
  var isPlaying: Bool { get }
  var rate: Float
  func hostTimeFor(beats inBeats: AVMusicTimeStamp, error outError: ErrorPointer) -> UInt64
  func beatsForHostTime(inHostTime: UInt64, error outError: ErrorPointer) -> AVMusicTimeStamp
  func prepareToPlay()
  func start() throws
  func stop()
}
@available(OSX 10.11, *)
class AVMusicTrack : Object {
  var destinationAudioUnit: AVAudioUnit?
  var destinationMIDIEndpoint: MIDIEndpointRef
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
@available(OSX 10.10, *)
enum AVMusicTrackLoopCount : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Forever
}
