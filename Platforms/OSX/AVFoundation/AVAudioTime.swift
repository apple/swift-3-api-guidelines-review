
@available(OSX 10.10, *)
class AVAudioTime : NSObject {
  init(audioTimeStamp ts: UnsafePointer<AudioTimeStamp>, sampleRate: Double)
  init(hostTime: UInt64)
  init(sampleTime: AVAudioFramePosition, atRate sampleRate: Double)
  init(hostTime: UInt64, sampleTime: AVAudioFramePosition, atRate sampleRate: Double)
  class func hostTimeForSeconds(seconds: NSTimeInterval) -> UInt64
  class func secondsForHostTime(hostTime: UInt64) -> NSTimeInterval
  func extrapolateTimeFromAnchor(anchorTime: AVAudioTime) -> AVAudioTime
  var hostTimeValid: Bool { get }
  var hostTime: UInt64 { get }
  var sampleTimeValid: Bool { get }
  var sampleTime: AVAudioFramePosition { get }
  var sampleRate: Double { get }
  var audioTimeStamp: AudioTimeStamp { get }
  init()
}
