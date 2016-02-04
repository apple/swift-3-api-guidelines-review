
@available(OSX 10.10, *)
class AVAudioUnit : AVAudioNode {
  @available(OSX 10.11, *)
  class func instantiateWithComponentDescription(audioComponentDescription: AudioComponentDescription, options: AudioComponentInstantiationOptions, completionHandler: (AVAudioUnit?, NSError?) -> Void)
  func loadAudioUnitPresetAtURL(url: NSURL) throws
  var audioComponentDescription: AudioComponentDescription { get }
  var audioUnit: AudioUnit { get }
  @available(OSX 10.11, *)
  var AUAudioUnit: AUAudioUnit { get }
  var name: String { get }
  var manufacturerName: String { get }
  var version: Int { get }
  init()
}
