
@available(OSX 10.10, *)
class AVAudioFile : NSObject {
  init(forReading fileURL: NSURL) throws
  init(forReading fileURL: NSURL, commonFormat format: AVAudioCommonFormat, interleaved: Bool) throws
  init(forWriting fileURL: NSURL, settings: [String : AnyObject]) throws
  init(forWriting fileURL: NSURL, settings: [String : AnyObject], commonFormat format: AVAudioCommonFormat, interleaved: Bool) throws
  func read(into buffer: AVAudioPCMBuffer) throws
  func read(into buffer: AVAudioPCMBuffer, frameCount frames: AVAudioFrameCount) throws
  func write(from buffer: AVAudioPCMBuffer) throws
  var url: NSURL { get }
  var fileFormat: AVAudioFormat { get }
  var processingFormat: AVAudioFormat { get }
  var length: AVAudioFramePosition { get }
  var framePosition: AVAudioFramePosition
  init()
}
