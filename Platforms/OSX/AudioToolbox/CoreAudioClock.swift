
enum CAClockPropertyID : UInt32 {
  init?(rawValue rawValue: UInt32)
  var rawValue: UInt32 { get }
  case internalTimebase
  case timebaseSource
  case syncMode
  case syncSource
  case smpteFormat
  case smpteOffset
  case midiClockDestinations
  case mtcDestinations
  case mtcFreewheelTime
  case tempoMap
  case meterTrack
  case name
  case sendMIDISPP
}
enum CAClockTimebase : UInt32 {
  init?(rawValue rawValue: UInt32)
  var rawValue: UInt32 { get }
  case hostTime
  case audioDevice
  case audioOutputUnit
}
enum CAClockSyncMode : UInt32 {
  init?(rawValue rawValue: UInt32)
  var rawValue: UInt32 { get }
  case `internal`
  case midiClockTransport
  case mtcTransport
}
typealias CAClockSMPTEFormat = SMPTETimeType
enum CAClockMessage : UInt32 {
  init?(rawValue rawValue: UInt32)
  var rawValue: UInt32 { get }
  case startTimeSet
  case started
  case stopped
  case armed
  case disarmed
  case propertyChanged
  case wrongSMPTEFormat
}
enum CAClockTimeFormat : UInt32 {
  init?(rawValue rawValue: UInt32)
  var rawValue: UInt32 { get }
  case hostTime
  case samples
  case beats
  case seconds
  case smpteSeconds
  case smpteTime
  case absoluteSeconds
}
var kCAClock_UnknownPropertyError: OSStatus { get }
var kCAClock_InvalidPropertySizeError: OSStatus { get }
var kCAClock_InvalidTimeFormatError: OSStatus { get }
var kCAClock_InvalidSyncModeError: OSStatus { get }
var kCAClock_InvalidSyncSourceError: OSStatus { get }
var kCAClock_InvalidTimebaseError: OSStatus { get }
var kCAClock_InvalidTimebaseSourceError: OSStatus { get }
var kCAClock_InvalidSMPTEFormatError: OSStatus { get }
var kCAClock_InvalidSMPTEOffsetError: OSStatus { get }
var kCAClock_InvalidUnitError: OSStatus { get }
var kCAClock_InvalidPlayRateError: OSStatus { get }
var kCAClock_CannotSetTimeError: OSStatus { get }
typealias CAClockRef = COpaquePointer
typealias CAClockBeats = Float64
typealias CAClockTempo = Float64
typealias CAClockSamples = Float64
typealias CAClockSeconds = Float64
typealias CAClockListenerProc = @convention(c) (UnsafeMutablePointer<Void>, CAClockMessage, UnsafePointer<Void>) -> Void
struct CAClockTime {
  struct __Unnamed_union_time {
    var hostTime: UInt64
    var samples: CAClockSamples
    var beats: CAClockBeats
    var seconds: CAClockSeconds
    var smpte: SMPTETime
    init(hostTime hostTime: UInt64)
    init(samples samples: CAClockSamples)
    init(beats beats: CAClockBeats)
    init(seconds seconds: CAClockSeconds)
    init(smpte smpte: SMPTETime)
    init()
  }
  var format: CAClockTimeFormat
  var reserved: UInt32
  var time: CAClockTime.__Unnamed_union_time
  init()
  init(format format: CAClockTimeFormat, reserved reserved: UInt32, time time: CAClockTime.__Unnamed_union_time)
}
struct CABarBeatTime {
  var bar: Int32
  var beat: UInt16
  var subbeat: UInt16
  var subbeatDivisor: UInt16
  var reserved: UInt16
  init()
  init(bar bar: Int32, beat beat: UInt16, subbeat subbeat: UInt16, subbeatDivisor subbeatDivisor: UInt16, reserved reserved: UInt16)
}
struct CATempoMapEntry {
  var beats: CAClockBeats
  var tempoBPM: CAClockTempo
  init()
  init(beats beats: CAClockBeats, tempoBPM tempoBPM: CAClockTempo)
}
struct CAMeterTrackEntry {
  var beats: CAClockBeats
  var meterNumer: UInt16
  var meterDenom: UInt16
  init()
  init(beats beats: CAClockBeats, meterNumer meterNumer: UInt16, meterDenom meterDenom: UInt16)
}
@available(OSX 10.4, *)
func CAClockNew(_ inReservedFlags: UInt32, _ outCAClock: UnsafeMutablePointer<CAClockRef>) -> OSStatus
@available(OSX 10.4, *)
func CAClockDispose(_ inCAClock: CAClockRef) -> OSStatus
@available(OSX 10.4, *)
func CAClockGetPropertyInfo(_ inCAClock: CAClockRef, _ inPropertyID: CAClockPropertyID, _ outSize: UnsafeMutablePointer<UInt32>, _ outWritable: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.4, *)
func CAClockGetProperty(_ inCAClock: CAClockRef, _ inPropertyID: CAClockPropertyID, _ ioPropertyDataSize: UnsafeMutablePointer<UInt32>, _ outPropertyData: UnsafeMutablePointer<Void>) -> OSStatus
@available(OSX 10.4, *)
func CAClockSetProperty(_ inCAClock: CAClockRef, _ inPropertyID: CAClockPropertyID, _ inPropertyDataSize: UInt32, _ inPropertyData: UnsafePointer<Void>) -> OSStatus
@available(OSX 10.4, *)
func CAClockAddListener(_ inCAClock: CAClockRef, _ inListenerProc: CAClockListenerProc, _ inUserData: UnsafeMutablePointer<Void>) -> OSStatus
@available(OSX 10.4, *)
func CAClockRemoveListener(_ inCAClock: CAClockRef, _ inListenerProc: CAClockListenerProc, _ inUserData: UnsafeMutablePointer<Void>) -> OSStatus
@available(OSX 10.4, *)
func CAClockSetCurrentTime(_ inCAClock: CAClockRef, _ inTime: UnsafePointer<CAClockTime>) -> OSStatus
@available(OSX 10.4, *)
func CAClockGetCurrentTime(_ inCAClock: CAClockRef, _ inTimeFormat: CAClockTimeFormat, _ outTime: UnsafeMutablePointer<CAClockTime>) -> OSStatus
@available(OSX 10.4, *)
func CAClockGetStartTime(_ inCAClock: CAClockRef, _ inTimeFormat: CAClockTimeFormat, _ outTime: UnsafeMutablePointer<CAClockTime>) -> OSStatus
@available(OSX 10.4, *)
func CAClockTranslateTime(_ inCAClock: CAClockRef, _ inTime: UnsafePointer<CAClockTime>, _ inOutputTimeFormat: CAClockTimeFormat, _ outTime: UnsafeMutablePointer<CAClockTime>) -> OSStatus
@available(OSX 10.4, *)
func CAClockStart(_ inCAClock: CAClockRef) -> OSStatus
@available(OSX 10.4, *)
func CAClockStop(_ inCAClock: CAClockRef) -> OSStatus
@available(OSX 10.4, *)
func CAClockArm(_ inCAClock: CAClockRef) -> OSStatus
@available(OSX 10.4, *)
func CAClockDisarm(_ inCAClock: CAClockRef) -> OSStatus
@available(OSX 10.4, *)
func CAClockSetPlayRate(_ inCAClock: CAClockRef, _ inPlayRate: Float64) -> OSStatus
@available(OSX 10.4, *)
func CAClockGetPlayRate(_ inCAClock: CAClockRef, _ outPlayRate: UnsafeMutablePointer<Float64>) -> OSStatus
@available(OSX 10.4, *)
func CAClockGetCurrentTempo(_ inCAClock: CAClockRef, _ outTempo: UnsafeMutablePointer<CAClockTempo>, _ outTimestamp: UnsafeMutablePointer<CAClockTime>) -> OSStatus
@available(OSX 10.4, *)
func CAClockSetCurrentTempo(_ inCAClock: CAClockRef, _ inTempo: CAClockTempo, _ inTimestamp: UnsafePointer<CAClockTime>) -> OSStatus
@available(OSX 10.4, *)
func CAClockSecondsToSMPTETime(_ inCAClock: CAClockRef, _ inSeconds: CAClockSeconds, _ inSubframeDivisor: UInt16, _ outSMPTETime: UnsafeMutablePointer<SMPTETime>) -> OSStatus
@available(OSX 10.4, *)
func CAClockSMPTETimeToSeconds(_ inCAClock: CAClockRef, _ inSMPTETime: UnsafePointer<SMPTETime>, _ outSeconds: UnsafeMutablePointer<CAClockSeconds>) -> OSStatus
@available(OSX 10.4, *)
func CAClockBeatsToBarBeatTime(_ inCAClock: CAClockRef, _ inBeats: CAClockBeats, _ inSubbeatDivisor: UInt16, _ outBarBeatTime: UnsafeMutablePointer<CABarBeatTime>) -> OSStatus
@available(OSX 10.4, *)
func CAClockBarBeatTimeToBeats(_ inCAClock: CAClockRef, _ inBarBeatTime: UnsafePointer<CABarBeatTime>, _ outBeats: UnsafeMutablePointer<CAClockBeats>) -> OSStatus
@available(OSX 10.5, *)
func CAClockParseMIDI(_ inCAClock: CAClockRef, _ inMIDIPacketList: UnsafePointer<MIDIPacketList>) -> OSStatus
