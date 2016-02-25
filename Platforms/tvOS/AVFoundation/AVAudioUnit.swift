
@available(tvOS 8.0, *)
class AVAudioUnit : AVAudioNode {
  @available(tvOS 9.0, *)
  class func instantiateWithComponentDescription(_ audioComponentDescription: AudioComponentDescription, options options: AudioComponentInstantiationOptions, completionHandler completionHandler: (AVAudioUnit?, NSError?) -> Void)
  func loadAudioUnitPresetAtURL(_ url: NSURL) throws
  var audioComponentDescription: AudioComponentDescription { get }
  var audioUnit: AudioUnit { get }
  @available(tvOS 9.0, *)
  var AUAudioUnit: AUAudioUnit { get }
  var name: String { get }
  var manufacturerName: String { get }
  var version: Int { get }
}
