
@available(OSX 10.10, *)
enum AVAudioCommonFormat : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case OtherFormat
  case PCMFormatFloat32
  case PCMFormatFloat64
  case PCMFormatInt16
  case PCMFormatInt32
}
@available(OSX 10.10, *)
class AVAudioFormat : NSObject, NSSecureCoding {
  init(streamDescription asbd: UnsafePointer<AudioStreamBasicDescription>)
  init(streamDescription asbd: UnsafePointer<AudioStreamBasicDescription>, channelLayout layout: AVAudioChannelLayout?)
  init(standardFormatWithSampleRate sampleRate: Double, channels channels: AVAudioChannelCount)
  init(standardFormatWithSampleRate sampleRate: Double, channelLayout layout: AVAudioChannelLayout)
  init(commonFormat format: AVAudioCommonFormat, sampleRate sampleRate: Double, channels channels: AVAudioChannelCount, interleaved interleaved: Bool)
  init(commonFormat format: AVAudioCommonFormat, sampleRate sampleRate: Double, interleaved interleaved: Bool, channelLayout layout: AVAudioChannelLayout)
  init(settings settings: [String : AnyObject])
  @available(OSX 10.11, *)
  init(CMAudioFormatDescription formatDescription: CMAudioFormatDescription)
  var standard: Bool { get }
  var commonFormat: AVAudioCommonFormat { get }
  var channelCount: AVAudioChannelCount { get }
  var sampleRate: Double { get }
  var interleaved: Bool { get }
  var streamDescription: UnsafePointer<AudioStreamBasicDescription> { get }
  var channelLayout: AVAudioChannelLayout? { get }
  var settings: [String : AnyObject] { get }
  @available(OSX 10.11, *)
  var formatDescription: CMAudioFormatDescription { get }
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
