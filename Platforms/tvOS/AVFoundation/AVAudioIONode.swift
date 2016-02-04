
@available(tvOS 8.0, *)
class AVAudioIONode : AVAudioNode {
  var presentationLatency: NSTimeInterval { get }
  var audioUnit: AudioUnit { get }
  init()
}
@available(tvOS 8.0, *)
class AVAudioInputNode : AVAudioIONode, AVAudioMixing {
  init()
  @available(tvOS 9.0, *)
  func destinationForMixer(mixer: AVAudioNode, bus: AVAudioNodeBus) -> AVAudioMixingDestination?
  @available(tvOS 8.0, *)
  var volume: Float
  @available(tvOS 8.0, *)
  var pan: Float
  @available(tvOS 8.0, *)
  var renderingAlgorithm: AVAudio3DMixingRenderingAlgorithm
  @available(tvOS 8.0, *)
  var rate: Float
  @available(tvOS 8.0, *)
  var reverbBlend: Float
  @available(tvOS 8.0, *)
  var obstruction: Float
  @available(tvOS 8.0, *)
  var occlusion: Float
  @available(tvOS 8.0, *)
  var position: AVAudio3DPoint
}
@available(tvOS 8.0, *)
class AVAudioOutputNode : AVAudioIONode {
  init()
}