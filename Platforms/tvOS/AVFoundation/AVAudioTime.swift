
@available(tvOS 8.0, *)
class AVAudioTime : NSObject {
  init(audioTimeStamp ts: UnsafePointer<AudioTimeStamp>, sampleRate: Double)
  init(hostTime: UInt64)
  init(sampleTime: AVAudioFramePosition, atRate sampleRate: Double)
  init(hostTime: UInt64, sampleTime: AVAudioFramePosition, atRate sampleRate: Double)
  class func hostTime(forSeconds seconds: NSTimeInterval) -> UInt64
  class func seconds(forHostTime hostTime: UInt64) -> NSTimeInterval
  func extrapolateTime(fromAnchor anchorTime: AVAudioTime) -> AVAudioTime
  var isHostTimeValid: Bool { get }
  var hostTime: UInt64 { get }
  var isSampleTimeValid: Bool { get }
  var sampleTime: AVAudioFramePosition { get }
  var sampleRate: Double { get }
  var audioTimeStamp: AudioTimeStamp { get }
  init()
}
