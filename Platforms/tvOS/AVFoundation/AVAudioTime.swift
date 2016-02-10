
@available(tvOS 8.0, *)
class AVAudioTime : Object {
  init(audioTimeStamp ts: UnsafePointer<AudioTimeStamp>, sampleRate: Double)
  init(hostTime: UInt64)
  init(sampleTime: AVAudioFramePosition, atRate sampleRate: Double)
  init(hostTime: UInt64, sampleTime: AVAudioFramePosition, atRate sampleRate: Double)
  class func hostTime(forSeconds seconds: TimeInterval) -> UInt64
  class func secondsForHostTime(hostTime: UInt64) -> TimeInterval
  func extrapolateTime(fromAnchor anchorTime: AVAudioTime) -> AVAudioTime
  var isHostTimeValid: Bool { get }
  var hostTime: UInt64 { get }
  var isSampleTimeValid: Bool { get }
  var sampleTime: AVAudioFramePosition { get }
  var sampleRate: Double { get }
  var audioTimeStamp: AudioTimeStamp { get }
  init()
}
