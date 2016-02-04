
@available(OSX 10.10, *)
enum AVAudioCommonFormat : UInt {
  init?(rawValue: UInt)
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
  init(standardFormatWithSampleRate sampleRate: Double, channels: AVAudioChannelCount)
  init(standardFormatWithSampleRate sampleRate: Double, channelLayout layout: AVAudioChannelLayout)
  init(commonFormat format: AVAudioCommonFormat, sampleRate: Double, channels: AVAudioChannelCount, interleaved: Bool)
  init(commonFormat format: AVAudioCommonFormat, sampleRate: Double, interleaved: Bool, channelLayout layout: AVAudioChannelLayout)
  init(settings: [String : AnyObject])
  @available(OSX 10.11, *)
  init(CMAudioFormatDescription formatDescription: CMAudioFormatDescription)
  func isEqual(object: AnyObject) -> Bool
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
  init()
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
