
@available(tvOS 8.0, *)
class AVAudioUnit : AVAudioNode {
  @available(tvOS 9.0, *)
  class func instantiateWith(audioComponentDescription: AudioComponentDescription, options: AudioComponentInstantiationOptions = [], completionHandler: (AVAudioUnit?, Error?) -> Void)
  func loadPresetAt(url: URL) throws
  var audioComponentDescription: AudioComponentDescription { get }
  var audioUnit: AudioUnit { get }
  @available(tvOS 9.0, *)
  var auAudioUnit: AUAudioUnit { get }
  var name: String { get }
  var manufacturerName: String { get }
  var version: Int { get }
  init()
}
