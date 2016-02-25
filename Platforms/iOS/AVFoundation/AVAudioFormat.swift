
@available(iOS 8.0, *)
enum AVAudioCommonFormat : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case OtherFormat
  case PCMFormatFloat32
  case PCMFormatFloat64
  case PCMFormatInt16
  case PCMFormatInt32
}
@available(iOS 8.0, *)
class AVAudioFormat : NSObject, NSSecureCoding {
  init(streamDescription asbd: UnsafePointer<AudioStreamBasicDescription>)
  init(streamDescription asbd: UnsafePointer<AudioStreamBasicDescription>, channelLayout layout: AVAudioChannelLayout?)
  init(standardFormatWithSampleRate sampleRate: Double, channels channels: AVAudioChannelCount)
  init(standardFormatWithSampleRate sampleRate: Double, channelLayout layout: AVAudioChannelLayout)
  init(commonFormat format: AVAudioCommonFormat, sampleRate sampleRate: Double, channels channels: AVAudioChannelCount, interleaved interleaved: Bool)
  init(commonFormat format: AVAudioCommonFormat, sampleRate sampleRate: Double, interleaved interleaved: Bool, channelLayout layout: AVAudioChannelLayout)
  init(settings settings: [String : AnyObject])
  @available(iOS 9.0, *)
  init(CMAudioFormatDescription formatDescription: CMAudioFormatDescription)
  var standard: Bool { get }
  var commonFormat: AVAudioCommonFormat { get }
  var channelCount: AVAudioChannelCount { get }
  var sampleRate: Double { get }
  var interleaved: Bool { get }
  var streamDescription: UnsafePointer<AudioStreamBasicDescription> { get }
  var channelLayout: AVAudioChannelLayout? { get }
  var settings: [String : AnyObject] { get }
  @available(iOS 9.0, *)
  var formatDescription: CMAudioFormatDescription { get }
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
