
var kMusicEventType_NULL: UInt32 { get }
var kMusicEventType_ExtendedNote: UInt32 { get }
var kMusicEventType_ExtendedTempo: UInt32 { get }
var kMusicEventType_User: UInt32 { get }
var kMusicEventType_Meta: UInt32 { get }
var kMusicEventType_MIDINoteMessage: UInt32 { get }
var kMusicEventType_MIDIChannelMessage: UInt32 { get }
var kMusicEventType_MIDIRawData: UInt32 { get }
var kMusicEventType_Parameter: UInt32 { get }
var kMusicEventType_AUPreset: UInt32 { get }
typealias MusicEventType = UInt32
struct MusicSequenceLoadFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var smf_PreserveTracks: MusicSequenceLoadFlags { get }
  static var smf_ChannelsToTracks: MusicSequenceLoadFlags { get }
}
enum MusicSequenceType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case beats
  case seconds
  case samples
}
enum MusicSequenceFileTypeID : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case anyType
  case midiType
  case iMelodyType
}
struct MusicSequenceFileFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var `default`: MusicSequenceFileFlags { get }
  static var eraseFile: MusicSequenceFileFlags { get }
}
typealias MusicTimeStamp = Float64
var kMusicTimeStamp_EndOfTrack: Double { get }
struct MIDINoteMessage {
  var channel: UInt8
  var note: UInt8
  var velocity: UInt8
  var releaseVelocity: UInt8
  var duration: Float32
  init()
  init(channel: UInt8, note: UInt8, velocity: UInt8, releaseVelocity: UInt8, duration: Float32)
}
struct MIDIChannelMessage {
  var status: UInt8
  var data1: UInt8
  var data2: UInt8
  var reserved: UInt8
  init()
  init(status: UInt8, data1: UInt8, data2: UInt8, reserved: UInt8)
}
struct MIDIRawData {
  var length: UInt32
  var data: (UInt8)
  init()
  init(length: UInt32, data: (UInt8))
}
struct MIDIMetaEvent {
  var metaEventType: UInt8
  var unused1: UInt8
  var unused2: UInt8
  var unused3: UInt8
  var dataLength: UInt32
  var data: (UInt8)
  init()
  init(metaEventType: UInt8, unused1: UInt8, unused2: UInt8, unused3: UInt8, dataLength: UInt32, data: (UInt8))
}
struct MusicEventUserData {
  var length: UInt32
  var data: (UInt8)
  init()
  init(length: UInt32, data: (UInt8))
}
struct ExtendedNoteOnEvent {
  var instrumentID: MusicDeviceInstrumentID
  var groupID: MusicDeviceGroupID
  var duration: Float32
  var extendedParams: MusicDeviceNoteParams
  init()
  init(instrumentID: MusicDeviceInstrumentID, groupID: MusicDeviceGroupID, duration: Float32, extendedParams: MusicDeviceNoteParams)
}
struct ParameterEvent {
  var parameterID: AudioUnitParameterID
  var scope: AudioUnitScope
  var element: AudioUnitElement
  var value: AudioUnitParameterValue
  init()
  init(parameterID: AudioUnitParameterID, scope: AudioUnitScope, element: AudioUnitElement, value: AudioUnitParameterValue)
}
struct ExtendedTempoEvent {
  var bpm: Float64
  init()
  init(bpm: Float64)
}
struct AUPresetEvent {
  var scope: AudioUnitScope
  var element: AudioUnitElement
  var preset: Unmanaged<CFPropertyList>
}
struct CABarBeatTime {
  var bar: Int32
  var beat: UInt16
  var subbeat: UInt16
  var subbeatDivisor: UInt16
  var reserved: UInt16
  init()
  init(bar: Int32, beat: UInt16, subbeat: UInt16, subbeatDivisor: UInt16, reserved: UInt16)
}
typealias MusicPlayer = COpaquePointer
typealias MusicSequence = COpaquePointer
typealias MusicTrack = COpaquePointer
typealias MusicEventIterator = COpaquePointer
typealias MusicSequenceUserCallback = @convention(c) (UnsafeMutablePointer<Void>, MusicSequence, MusicTrack, MusicTimeStamp, UnsafePointer<MusicEventUserData>, MusicTimeStamp, MusicTimeStamp) -> Void
var kAudioToolboxErr_InvalidSequenceType: OSStatus { get }
var kAudioToolboxErr_TrackIndexError: OSStatus { get }
var kAudioToolboxErr_TrackNotFound: OSStatus { get }
var kAudioToolboxErr_EndOfTrack: OSStatus { get }
var kAudioToolboxErr_StartOfTrack: OSStatus { get }
var kAudioToolboxErr_IllegalTrackDestination: OSStatus { get }
var kAudioToolboxErr_NoSequence: OSStatus { get }
var kAudioToolboxErr_InvalidEventType: OSStatus { get }
var kAudioToolboxErr_InvalidPlayerState: OSStatus { get }
var kAudioToolboxErr_CannotDoInCurrentContext: OSStatus { get }
var kAudioToolboxError_NoTrackDestination: OSStatus { get }
var kSequenceTrackProperty_LoopInfo: UInt32 { get }
var kSequenceTrackProperty_OffsetTime: UInt32 { get }
var kSequenceTrackProperty_MuteStatus: UInt32 { get }
var kSequenceTrackProperty_SoloStatus: UInt32 { get }
var kSequenceTrackProperty_AutomatedParameters: UInt32 { get }
var kSequenceTrackProperty_TrackLength: UInt32 { get }
var kSequenceTrackProperty_TimeResolution: UInt32 { get }
struct MusicTrackLoopInfo {
  var loopDuration: MusicTimeStamp
  var numberOfLoops: Int32
  init()
  init(loopDuration: MusicTimeStamp, numberOfLoops: Int32)
}
@available(tvOS 5.0, *)
func NewMusicPlayer(outPlayer: UnsafeMutablePointer<MusicPlayer>) -> OSStatus
@available(tvOS 5.0, *)
func DisposeMusicPlayer(inPlayer: MusicPlayer) -> OSStatus
@available(tvOS 5.0, *)
func MusicPlayerSetSequence(inPlayer: MusicPlayer, _ inSequence: MusicSequence) -> OSStatus
@available(tvOS 5.0, *)
func MusicPlayerGetSequence(inPlayer: MusicPlayer, _ outSequence: UnsafeMutablePointer<MusicSequence>) -> OSStatus
@available(tvOS 5.0, *)
func MusicPlayerSetTime(inPlayer: MusicPlayer, _ inTime: MusicTimeStamp) -> OSStatus
@available(tvOS 5.0, *)
func MusicPlayerGetTime(inPlayer: MusicPlayer, _ outTime: UnsafeMutablePointer<MusicTimeStamp>) -> OSStatus
@available(tvOS 5.0, *)
func MusicPlayerGetHostTimeForBeats(inPlayer: MusicPlayer, _ inBeats: MusicTimeStamp, _ outHostTime: UnsafeMutablePointer<UInt64>) -> OSStatus
@available(tvOS 5.0, *)
func MusicPlayerGetBeatsForHostTime(inPlayer: MusicPlayer, _ inHostTime: UInt64, _ outBeats: UnsafeMutablePointer<MusicTimeStamp>) -> OSStatus
@available(tvOS 5.0, *)
func MusicPlayerPreroll(inPlayer: MusicPlayer) -> OSStatus
@available(tvOS 5.0, *)
func MusicPlayerStart(inPlayer: MusicPlayer) -> OSStatus
@available(tvOS 5.0, *)
func MusicPlayerStop(inPlayer: MusicPlayer) -> OSStatus
@available(tvOS 5.0, *)
func MusicPlayerIsPlaying(inPlayer: MusicPlayer, _ outIsPlaying: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(tvOS 5.0, *)
func MusicPlayerSetPlayRateScalar(inPlayer: MusicPlayer, _ inScaleRate: Float64) -> OSStatus
@available(tvOS 5.0, *)
func MusicPlayerGetPlayRateScalar(inPlayer: MusicPlayer, _ outScaleRate: UnsafeMutablePointer<Float64>) -> OSStatus
@available(tvOS 5.0, *)
func NewMusicSequence(outSequence: UnsafeMutablePointer<MusicSequence>) -> OSStatus
@available(tvOS 5.0, *)
func DisposeMusicSequence(inSequence: MusicSequence) -> OSStatus
@available(tvOS 5.0, *)
func MusicSequenceNewTrack(inSequence: MusicSequence, _ outTrack: UnsafeMutablePointer<MusicTrack>) -> OSStatus
@available(tvOS 5.0, *)
func MusicSequenceDisposeTrack(inSequence: MusicSequence, _ inTrack: MusicTrack) -> OSStatus
@available(tvOS 5.0, *)
func MusicSequenceGetTrackCount(inSequence: MusicSequence, _ outNumberOfTracks: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(tvOS 5.0, *)
func MusicSequenceGetIndTrack(inSequence: MusicSequence, _ inTrackIndex: UInt32, _ outTrack: UnsafeMutablePointer<MusicTrack>) -> OSStatus
@available(tvOS 5.0, *)
func MusicSequenceGetTrackIndex(inSequence: MusicSequence, _ inTrack: MusicTrack, _ outTrackIndex: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(tvOS 5.0, *)
func MusicSequenceGetTempoTrack(inSequence: MusicSequence, _ outTrack: UnsafeMutablePointer<MusicTrack>) -> OSStatus
@available(tvOS 5.0, *)
func MusicSequenceSetAUGraph(inSequence: MusicSequence, _ inGraph: AUGraph) -> OSStatus
@available(tvOS 5.0, *)
func MusicSequenceGetAUGraph(inSequence: MusicSequence, _ outGraph: UnsafeMutablePointer<AUGraph>) -> OSStatus
@available(tvOS 5.0, *)
func MusicSequenceSetSequenceType(inSequence: MusicSequence, _ inType: MusicSequenceType) -> OSStatus
@available(tvOS 5.0, *)
func MusicSequenceGetSequenceType(inSequence: MusicSequence, _ outType: UnsafeMutablePointer<MusicSequenceType>) -> OSStatus
@available(tvOS 5.0, *)
func MusicSequenceFileLoad(inSequence: MusicSequence, _ inFileRef: CFURL, _ inFileTypeHint: MusicSequenceFileTypeID, _ inFlags: MusicSequenceLoadFlags) -> OSStatus
@available(tvOS 5.0, *)
func MusicSequenceFileLoadData(inSequence: MusicSequence, _ inData: CFData, _ inFileTypeHint: MusicSequenceFileTypeID, _ inFlags: MusicSequenceLoadFlags) -> OSStatus
func MusicSequenceSetSMPTEResolution(fps: Int8, _ ticks: UInt8) -> Int16
func MusicSequenceGetSMPTEResolution(inRes: Int16, _ fps: UnsafeMutablePointer<Int8>, _ ticks: UnsafeMutablePointer<UInt8>)
@available(tvOS 5.0, *)
func MusicSequenceFileCreate(inSequence: MusicSequence, _ inFileRef: CFURL, _ inFileType: MusicSequenceFileTypeID, _ inFlags: MusicSequenceFileFlags, _ inResolution: Int16) -> OSStatus
@available(tvOS 5.0, *)
func MusicSequenceFileCreateData(inSequence: MusicSequence, _ inFileType: MusicSequenceFileTypeID, _ inFlags: MusicSequenceFileFlags, _ inResolution: Int16, _ outData: UnsafeMutablePointer<Unmanaged<CFData>?>) -> OSStatus
@available(tvOS 5.0, *)
func MusicSequenceReverse(inSequence: MusicSequence) -> OSStatus
@available(tvOS 5.0, *)
func MusicSequenceGetSecondsForBeats(inSequence: MusicSequence, _ inBeats: MusicTimeStamp, _ outSeconds: UnsafeMutablePointer<Float64>) -> OSStatus
@available(tvOS 5.0, *)
func MusicSequenceGetBeatsForSeconds(inSequence: MusicSequence, _ inSeconds: Float64, _ outBeats: UnsafeMutablePointer<MusicTimeStamp>) -> OSStatus
@available(tvOS 5.0, *)
func MusicSequenceSetUserCallback(inSequence: MusicSequence, _ inCallback: MusicSequenceUserCallback?, _ inClientData: UnsafeMutablePointer<Void>) -> OSStatus
@available(tvOS 5.0, *)
func MusicSequenceBeatsToBarBeatTime(inSequence: MusicSequence, _ inBeats: MusicTimeStamp, _ inSubbeatDivisor: UInt32, _ outBarBeatTime: UnsafeMutablePointer<CABarBeatTime>) -> OSStatus
@available(tvOS 5.0, *)
func MusicSequenceBarBeatTimeToBeats(inSequence: MusicSequence, _ inBarBeatTime: UnsafePointer<CABarBeatTime>, _ outBeats: UnsafeMutablePointer<MusicTimeStamp>) -> OSStatus
@available(tvOS 5.0, *)
func MusicSequenceGetInfoDictionary(inSequence: MusicSequence) -> CFDictionary
@available(tvOS 5.0, *)
func MusicTrackGetSequence(inTrack: MusicTrack, _ outSequence: UnsafeMutablePointer<MusicSequence>) -> OSStatus
@available(tvOS 5.0, *)
func MusicTrackSetDestNode(inTrack: MusicTrack, _ inNode: AUNode) -> OSStatus
@available(tvOS 5.0, *)
func MusicTrackGetDestNode(inTrack: MusicTrack, _ outNode: UnsafeMutablePointer<AUNode>) -> OSStatus
@available(tvOS 5.0, *)
func MusicTrackSetProperty(inTrack: MusicTrack, _ inPropertyID: UInt32, _ inData: UnsafeMutablePointer<Void>, _ inLength: UInt32) -> OSStatus
@available(tvOS 5.0, *)
func MusicTrackGetProperty(inTrack: MusicTrack, _ inPropertyID: UInt32, _ outData: UnsafeMutablePointer<Void>, _ ioLength: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(tvOS 5.0, *)
func MusicTrackMoveEvents(inTrack: MusicTrack, _ inStartTime: MusicTimeStamp, _ inEndTime: MusicTimeStamp, _ inMoveTime: MusicTimeStamp) -> OSStatus
@available(tvOS 5.0, *)
func MusicTrackClear(inTrack: MusicTrack, _ inStartTime: MusicTimeStamp, _ inEndTime: MusicTimeStamp) -> OSStatus
@available(tvOS 5.0, *)
func MusicTrackCut(inTrack: MusicTrack, _ inStartTime: MusicTimeStamp, _ inEndTime: MusicTimeStamp) -> OSStatus
@available(tvOS 5.0, *)
func MusicTrackCopyInsert(inSourceTrack: MusicTrack, _ inSourceStartTime: MusicTimeStamp, _ inSourceEndTime: MusicTimeStamp, _ inDestTrack: MusicTrack, _ inDestInsertTime: MusicTimeStamp) -> OSStatus
@available(tvOS 5.0, *)
func MusicTrackMerge(inSourceTrack: MusicTrack, _ inSourceStartTime: MusicTimeStamp, _ inSourceEndTime: MusicTimeStamp, _ inDestTrack: MusicTrack, _ inDestInsertTime: MusicTimeStamp) -> OSStatus
@available(tvOS 5.0, *)
func MusicTrackNewMIDINoteEvent(inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inMessage: UnsafePointer<MIDINoteMessage>) -> OSStatus
@available(tvOS 5.0, *)
func MusicTrackNewMIDIChannelEvent(inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inMessage: UnsafePointer<MIDIChannelMessage>) -> OSStatus
@available(tvOS 5.0, *)
func MusicTrackNewMIDIRawDataEvent(inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inRawData: UnsafePointer<MIDIRawData>) -> OSStatus
@available(tvOS 5.0, *)
func MusicTrackNewExtendedNoteEvent(inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inInfo: UnsafePointer<ExtendedNoteOnEvent>) -> OSStatus
@available(tvOS 5.0, *)
func MusicTrackNewParameterEvent(inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inInfo: UnsafePointer<ParameterEvent>) -> OSStatus
@available(tvOS 5.0, *)
func MusicTrackNewExtendedTempoEvent(inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inBPM: Float64) -> OSStatus
@available(tvOS 5.0, *)
func MusicTrackNewMetaEvent(inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inMetaEvent: UnsafePointer<MIDIMetaEvent>) -> OSStatus
@available(tvOS 5.0, *)
func MusicTrackNewUserEvent(inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inUserData: UnsafePointer<MusicEventUserData>) -> OSStatus
@available(tvOS 5.0, *)
func MusicTrackNewAUPresetEvent(inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inPresetEvent: UnsafePointer<AUPresetEvent>) -> OSStatus
@available(tvOS 5.0, *)
func NewMusicEventIterator(inTrack: MusicTrack, _ outIterator: UnsafeMutablePointer<MusicEventIterator>) -> OSStatus
@available(tvOS 5.0, *)
func DisposeMusicEventIterator(inIterator: MusicEventIterator) -> OSStatus
@available(tvOS 5.0, *)
func MusicEventIteratorSeek(inIterator: MusicEventIterator, _ inTimeStamp: MusicTimeStamp) -> OSStatus
@available(tvOS 5.0, *)
func MusicEventIteratorNextEvent(inIterator: MusicEventIterator) -> OSStatus
@available(tvOS 5.0, *)
func MusicEventIteratorPreviousEvent(inIterator: MusicEventIterator) -> OSStatus
@available(tvOS 5.0, *)
func MusicEventIteratorGetEventInfo(inIterator: MusicEventIterator, _ outTimeStamp: UnsafeMutablePointer<MusicTimeStamp>, _ outEventType: UnsafeMutablePointer<MusicEventType>, _ outEventData: UnsafeMutablePointer<UnsafePointer<Void>>, _ outEventDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(tvOS 5.0, *)
func MusicEventIteratorSetEventInfo(inIterator: MusicEventIterator, _ inEventType: MusicEventType, _ inEventData: UnsafePointer<Void>) -> OSStatus
@available(tvOS 5.0, *)
func MusicEventIteratorSetEventTime(inIterator: MusicEventIterator, _ inTimeStamp: MusicTimeStamp) -> OSStatus
@available(tvOS 5.0, *)
func MusicEventIteratorDeleteEvent(inIterator: MusicEventIterator) -> OSStatus
@available(tvOS 5.0, *)
func MusicEventIteratorHasPreviousEvent(inIterator: MusicEventIterator, _ outHasPrevEvent: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(tvOS 5.0, *)
func MusicEventIteratorHasNextEvent(inIterator: MusicEventIterator, _ outHasNextEvent: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(tvOS 5.0, *)
func MusicEventIteratorHasCurrentEvent(inIterator: MusicEventIterator, _ outHasCurEvent: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
