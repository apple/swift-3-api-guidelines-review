
@available(iOS 8.0, *)
class AVAudioUnitGenerator : AVAudioUnit, AVAudioMixing {
  init(audioComponentDescription audioComponentDescription: AudioComponentDescription)
  var bypass: Bool
  @available(iOS 9.0, *)
  func destination(forMixer mixer: AVAudioNode, bus bus: AVAudioNodeBus) -> AVAudioMixingDestination?
  @available(iOS 8.0, *)
  var volume: Float
  @available(iOS 8.0, *)
  var pan: Float
  @available(iOS 8.0, *)
  var renderingAlgorithm: AVAudio3DMixingRenderingAlgorithm
  @available(iOS 8.0, *)
  var rate: Float
  @available(iOS 8.0, *)
  var reverbBlend: Float
  @available(iOS 8.0, *)
  var obstruction: Float
  @available(iOS 8.0, *)
  var occlusion: Float
  @available(iOS 8.0, *)
  var position: AVAudio3DPoint
}
