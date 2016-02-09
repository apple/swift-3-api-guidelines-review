
enum AVAudioConverterPrimeMethod : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case pre
  case normal
  case none
}
struct AVAudioConverterPrimeInfo {
  var leadingFrames: AVAudioFrameCount
  var trailingFrames: AVAudioFrameCount
  init()
  init(leadingFrames: AVAudioFrameCount, trailingFrames: AVAudioFrameCount)
}
@available(OSX 10.11, *)
enum AVAudioConverterInputStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case haveData
  case noDataNow
  case endOfStream
}
@available(OSX 10.11, *)
enum AVAudioConverterOutputStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case haveData
  case inputRanDry
  case endOfStream
  case error
}
typealias AVAudioConverterInputBlock = (AVAudioPacketCount, UnsafeMutablePointer<AVAudioConverterInputStatus>) -> AVAudioBuffer?
@available(OSX 10.11, *)
class AVAudioConverter : Object {
  init(from fromFormat: AVAudioFormat, to toFormat: AVAudioFormat)
  func reset()
  var inputFormat: AVAudioFormat { get }
  var outputFormat: AVAudioFormat { get }
  var channelMap: [Number]
  var magicCookie: Data?
  var downmix: Bool
  var dither: Bool
  var sampleRateConverterQuality: Int
  var sampleRateConverterAlgorithm: String
  var primeMethod: AVAudioConverterPrimeMethod
  var primeInfo: AVAudioConverterPrimeInfo
  func convert(to outputBuffer: AVAudioPCMBuffer, from inputBuffer: AVAudioPCMBuffer) throws
  func convert(to outputBuffer: AVAudioBuffer, error outError: ErrorPointer, withInputFrom inputBlock: AVAudioConverterInputBlock) -> AVAudioConverterOutputStatus
  init()
}
extension AVAudioConverter {
  var bitRate: Int
  var bitRateStrategy: String?
  var maximumOutputPacketSize: Int { get }
  var availableEncodeBitRates: [Number]? { get }
  var applicableEncodeBitRates: [Number]? { get }
  var availableEncodeSampleRates: [Number]? { get }
  var applicableEncodeSampleRates: [Number]? { get }
  var availableEncodeChannelLayoutTags: [Number]? { get }
}
