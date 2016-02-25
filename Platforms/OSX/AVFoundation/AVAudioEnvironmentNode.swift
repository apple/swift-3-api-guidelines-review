
@available(OSX 10.10, *)
enum AVAudioEnvironmentDistanceAttenuationModel : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case exponential
  case inverse
  case linear
}
@available(OSX 10.10, *)
class AVAudioEnvironmentDistanceAttenuationParameters : NSObject {
  var distanceAttenuationModel: AVAudioEnvironmentDistanceAttenuationModel
  var referenceDistance: Float
  var maximumDistance: Float
  var rolloffFactor: Float
}
@available(OSX 10.10, *)
class AVAudioEnvironmentReverbParameters : NSObject {
  var enable: Bool
  var level: Float
  var filterParameters: AVAudioUnitEQFilterParameters { get }
  func loadFactoryReverbPreset(_ preset: AVAudioUnitReverbPreset)
}
@available(OSX 10.10, *)
class AVAudioEnvironmentNode : AVAudioNode, AVAudioMixing {
  var outputVolume: Float
  var nextAvailableInputBus: AVAudioNodeBus { get }
  var listenerPosition: AVAudio3DPoint
  var listenerVectorOrientation: AVAudio3DVectorOrientation
  var listenerAngularOrientation: AVAudio3DAngularOrientation
  var distanceAttenuationParameters: AVAudioEnvironmentDistanceAttenuationParameters { get }
  var reverbParameters: AVAudioEnvironmentReverbParameters { get }
  var applicableRenderingAlgorithms: [NSNumber] { get }
  @available(OSX 10.11, *)
  func destination(forMixer mixer: AVAudioNode, bus bus: AVAudioNodeBus) -> AVAudioMixingDestination?
  @available(OSX 10.10, *)
  var volume: Float
  @available(OSX 10.10, *)
  var pan: Float
  @available(OSX 10.10, *)
  var renderingAlgorithm: AVAudio3DMixingRenderingAlgorithm
  @available(OSX 10.10, *)
  var rate: Float
  @available(OSX 10.10, *)
  var reverbBlend: Float
  @available(OSX 10.10, *)
  var obstruction: Float
  @available(OSX 10.10, *)
  var occlusion: Float
  @available(OSX 10.10, *)
  var position: AVAudio3DPoint
}
