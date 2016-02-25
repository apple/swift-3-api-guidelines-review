
@available(tvOS 8.0, *)
class AVAudioTime : NSObject {
  init(audioTimeStamp ts: UnsafePointer<AudioTimeStamp>, sampleRate sampleRate: Double)
  init(hostTime hostTime: UInt64)
  init(sampleTime sampleTime: AVAudioFramePosition, atRate sampleRate: Double)
  init(hostTime hostTime: UInt64, sampleTime sampleTime: AVAudioFramePosition, atRate sampleRate: Double)
  class func hostTimeForSeconds(_ seconds: NSTimeInterval) -> UInt64
  class func secondsForHostTime(_ hostTime: UInt64) -> NSTimeInterval
  func extrapolateTimeFromAnchor(_ anchorTime: AVAudioTime) -> AVAudioTime
  var hostTimeValid: Bool { get }
  var hostTime: UInt64 { get }
  var sampleTimeValid: Bool { get }
  var sampleTime: AVAudioFramePosition { get }
  var sampleRate: Double { get }
  var audioTimeStamp: AudioTimeStamp { get }
}
