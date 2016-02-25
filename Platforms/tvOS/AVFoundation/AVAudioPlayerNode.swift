
@available(tvOS 8.0, *)
struct AVAudioPlayerNodeBufferOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var Loops: AVAudioPlayerNodeBufferOptions { get }
  static var Interrupts: AVAudioPlayerNodeBufferOptions { get }
  static var InterruptsAtLoop: AVAudioPlayerNodeBufferOptions { get }
}
@available(tvOS 8.0, *)
class AVAudioPlayerNode : AVAudioNode, AVAudioMixing {
  func scheduleBuffer(_ buffer: AVAudioPCMBuffer, completionHandler completionHandler: AVAudioNodeCompletionHandler?)
  func scheduleBuffer(_ buffer: AVAudioPCMBuffer, atTime when: AVAudioTime?, options options: AVAudioPlayerNodeBufferOptions, completionHandler completionHandler: AVAudioNodeCompletionHandler?)
  func scheduleFile(_ file: AVAudioFile, atTime when: AVAudioTime?, completionHandler completionHandler: AVAudioNodeCompletionHandler?)
  func scheduleSegment(_ file: AVAudioFile, startingFrame startFrame: AVAudioFramePosition, frameCount numberFrames: AVAudioFrameCount, atTime when: AVAudioTime?, completionHandler completionHandler: AVAudioNodeCompletionHandler?)
  func stop()
  func prepareWithFrameCount(_ frameCount: AVAudioFrameCount)
  func play()
  func playAtTime(_ when: AVAudioTime?)
  func pause()
  func nodeTimeForPlayerTime(_ playerTime: AVAudioTime) -> AVAudioTime?
  func playerTimeForNodeTime(_ nodeTime: AVAudioTime) -> AVAudioTime?
  var playing: Bool { get }
  @available(tvOS 9.0, *)
  func destinationForMixer(_ mixer: AVAudioNode, bus bus: AVAudioNodeBus) -> AVAudioMixingDestination?
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
