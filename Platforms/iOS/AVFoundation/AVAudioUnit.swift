
@available(iOS 8.0, *)
class AVAudioUnit : AVAudioNode {
  @available(iOS 9.0, *)
  class func instantiate(with audioComponentDescription: AudioComponentDescription, options: AudioComponentInstantiationOptions = [], completionHandler: (AVAudioUnit?, Error?) -> Void)
  func loadPreset(at url: URL) throws
  var audioComponentDescription: AudioComponentDescription { get }
  var audioUnit: AudioUnit { get }
  @available(iOS 9.0, *)
  var auAudioUnit: AUAudioUnit { get }
  var name: String { get }
  var manufacturerName: String { get }
  var version: Int { get }
  init()
}
