
@available(iOS 8.0, *)
class AVAudioFile : NSObject {
  init(forReading fileURL: NSURL) throws
  init(forReading fileURL: NSURL, commonFormat format: AVAudioCommonFormat, interleaved: Bool) throws
  init(forWriting fileURL: NSURL, settings: [String : AnyObject]) throws
  init(forWriting fileURL: NSURL, settings: [String : AnyObject], commonFormat format: AVAudioCommonFormat, interleaved: Bool) throws
  func readIntoBuffer(buffer: AVAudioPCMBuffer) throws
  func readIntoBuffer(buffer: AVAudioPCMBuffer, frameCount frames: AVAudioFrameCount) throws
  func writeFromBuffer(buffer: AVAudioPCMBuffer) throws
  var url: NSURL { get }
  var fileFormat: AVAudioFormat { get }
  var processingFormat: AVAudioFormat { get }
  var length: AVAudioFramePosition { get }
  var framePosition: AVAudioFramePosition
  init()
}
