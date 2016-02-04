
typealias AVMusicTimeStamp = Float64
@available(tvOS 9.0, *)
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
@available(tvOS 9.0, *)
class AVAudioSequencer : NSObject {
  init(audioEngine engine: AVAudioEngine)
  func loadFromURL(fileURL: NSURL, options: AVMusicSequenceLoadOptions) throws
  func loadFromData(data: NSData, options: AVMusicSequenceLoadOptions) throws
  func writeToURL(fileURL: NSURL, SMPTEResolution resolution: Int, replaceExisting replace: Bool) throws
  func dataWithSMPTEResolution(SMPTEResolution: Int, error outError: NSErrorPointer) -> NSData
  func secondsForBeats(beats: AVMusicTimeStamp) -> NSTimeInterval
  func beatsForSeconds(seconds: NSTimeInterval) -> AVMusicTimeStamp
  var tracks: [AVMusicTrack] { get }
  var tempoTrack: AVMusicTrack { get }
  var userInfo: [String : AnyObject] { get }
}
extension AVAudioSequencer {
  var currentPositionInSeconds: NSTimeInterval
  var currentPositionInBeats: NSTimeInterval
  var playing: Bool { get }
  var rate: Float
  func hostTimeForBeats(inBeats: AVMusicTimeStamp, error outError: NSErrorPointer) -> UInt64
  func beatsForHostTime(inHostTime: UInt64, error outError: NSErrorPointer) -> AVMusicTimeStamp
  func prepareToPlay()
  func start() throws
  func stop()
}
@available(tvOS 9.0, *)
class AVMusicTrack : NSObject {
  var destinationAudioUnit: AVAudioUnit?
  var loopRange: AVBeatRange
  var loopingEnabled: Bool
  var numberOfLoops: Int
  var offsetTime: AVMusicTimeStamp
  var muted: Bool
  var soloed: Bool
  var lengthInBeats: AVMusicTimeStamp
  var lengthInSeconds: NSTimeInterval
  var timeResolution: Int { get }
  init()
}
@available(tvOS 8.0, *)
enum AVMusicTrackLoopCount : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Forever
}
