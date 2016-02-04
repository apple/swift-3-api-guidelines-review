
@available(OSX 10.10, *)
class AVAudioUnitDelay : AVAudioUnitEffect {
  var delayTime: TimeInterval
  var feedback: Float
  var lowPassCutoff: Float
  var wetDryMix: Float
  init(audioComponentDescription: AudioComponentDescription)
  init()
}
