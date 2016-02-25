
@available(tvOS 8.0, *)
class AVAudioChannelLayout : NSObject, NSSecureCoding {
  convenience init(layoutTag layoutTag: AudioChannelLayoutTag)
  init(layout layout: UnsafePointer<AudioChannelLayout>)
  var layoutTag: AudioChannelLayoutTag { get }
  var layout: UnsafePointer<AudioChannelLayout> { get }
  var channelCount: AVAudioChannelCount { get }
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
