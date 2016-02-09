
@available(OSX 10.10, *)
class AVAudioFile : Object {
  init(forReading fileURL: URL) throws
  init(forReading fileURL: URL, commonFormat format: AVAudioCommonFormat, interleaved: Bool) throws
  init(forWriting fileURL: URL, settings: [String : AnyObject]) throws
  init(forWriting fileURL: URL, settings: [String : AnyObject], commonFormat format: AVAudioCommonFormat, interleaved: Bool) throws
  func read(into buffer: AVAudioPCMBuffer) throws
  func read(into buffer: AVAudioPCMBuffer, frameCount frames: AVAudioFrameCount) throws
  func write(from buffer: AVAudioPCMBuffer) throws
  var url: URL { get }
  var fileFormat: AVAudioFormat { get }
  var processingFormat: AVAudioFormat { get }
  var length: AVAudioFramePosition { get }
  var framePosition: AVAudioFramePosition
  init()
}
