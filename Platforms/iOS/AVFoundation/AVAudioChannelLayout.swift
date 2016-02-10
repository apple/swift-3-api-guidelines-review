
@available(iOS 8.0, *)
class AVAudioChannelLayout : Object, SecureCoding {
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
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
