
@available(OSX 10.10, *)
class AVAudioChannelLayout : Object, SecureCoding {
  convenience init(layoutTag: AudioChannelLayoutTag)
  init(layout: UnsafePointer<AudioChannelLayout>)
  func isEqual(object: AnyObject) -> Bool
  var layoutTag: AudioChannelLayoutTag { get }
  var layout: UnsafePointer<AudioChannelLayout> { get }
  var channelCount: AVAudioChannelCount { get }
  convenience init()
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
