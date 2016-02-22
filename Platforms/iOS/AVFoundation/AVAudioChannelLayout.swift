
@available(iOS 8.0, *)
class AVAudioChannelLayout : NSObject, NSSecureCoding {
  convenience init(layoutTag: AudioChannelLayoutTag)
  init(layout: UnsafePointer<AudioChannelLayout>)
  func isEqual(object: AnyObject) -> Bool
  var layoutTag: AudioChannelLayoutTag { get }
  var layout: UnsafePointer<AudioChannelLayout> { get }
  var channelCount: AVAudioChannelCount { get }
  convenience init()
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
