
@available(OSX 10.10, *)
class AVAudioUnit : AVAudioNode {
  @available(OSX 10.11, *)
  class func instantiateWithComponentDescription(_ audioComponentDescription: AudioComponentDescription, options options: AudioComponentInstantiationOptions, completionHandler completionHandler: (AVAudioUnit?, NSError?) -> Void)
  func loadAudioUnitPresetAtURL(_ url: NSURL) throws
  var audioComponentDescription: AudioComponentDescription { get }
  var audioUnit: AudioUnit { get }
  @available(OSX 10.11, *)
  var AUAudioUnit: AUAudioUnit { get }
  var name: String { get }
  var manufacturerName: String { get }
  var version: Int { get }
}
