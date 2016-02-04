
@available(tvOS 8.0, *)
class AVAudioUnitDelay : AVAudioUnitEffect {
  var delayTime: TimeInterval
  var feedback: Float
  var lowPassCutoff: Float
  var wetDryMix: Float
  init(audioComponentDescription: AudioComponentDescription)
  init()
}
