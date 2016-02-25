
@available(iOS 8.0, *)
class AVAudioIONode : AVAudioNode {
  var presentationLatency: NSTimeInterval { get }
  var audioUnit: AudioUnit { get }
}
@available(iOS 8.0, *)
class AVAudioInputNode : AVAudioIONode, AVAudioMixing {
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
@available(iOS 8.0, *)
class AVAudioOutputNode : AVAudioIONode {
}
