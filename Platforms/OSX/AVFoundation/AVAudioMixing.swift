
@available(OSX 10.10, *)
protocol AVAudioMixing : AVAudioStereoMixing, AVAudio3DMixing {
  @available(OSX 10.11, *)
  func destinationFor(mixer mixer: AVAudioNode, bus: AVAudioNodeBus) -> AVAudioMixingDestination?
  var volume: Float { get set }
}
@available(OSX 10.10, *)
protocol AVAudioStereoMixing : ObjectProtocol {
  var pan: Float { get set }
}
@available(OSX 10.10, *)
enum AVAudio3DMixingRenderingAlgorithm : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case EqualPowerPanning
  case SphericalHead
  case HRTF
  case SoundField
  case StereoPassThrough
}
protocol AVAudio3DMixing : ObjectProtocol {
  @available(OSX 10.10, *)
  var renderingAlgorithm: AVAudio3DMixingRenderingAlgorithm { get set }
  var rate: Float { get set }
  var reverbBlend: Float { get set }
  var obstruction: Float { get set }
  var occlusion: Float { get set }
  var position: AVAudio3DPoint { get set }
}
@available(OSX 10.11, *)
class AVAudioMixingDestination : Object, AVAudioMixing {
  var connectionPoint: AVAudioConnectionPoint { get }
  init()
  @available(OSX 10.11, *)
  func destinationFor(mixer mixer: AVAudioNode, bus: AVAudioNodeBus) -> AVAudioMixingDestination?
  @available(OSX 10.10, *)
  var volume: Float
  @available(OSX 10.10, *)
  var pan: Float
  @available(OSX 10.11, *)
  var renderingAlgorithm: AVAudio3DMixingRenderingAlgorithm
  @available(OSX 10.11, *)
  var rate: Float
  @available(OSX 10.11, *)
  var reverbBlend: Float
  @available(OSX 10.11, *)
  var obstruction: Float
  @available(OSX 10.11, *)
  var occlusion: Float
  @available(OSX 10.11, *)
  var position: AVAudio3DPoint
}
