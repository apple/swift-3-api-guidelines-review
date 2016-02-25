
@available(OSX 10.10, *)
struct AVAudioPlayerNodeBufferOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var Loops: AVAudioPlayerNodeBufferOptions { get }
  static var Interrupts: AVAudioPlayerNodeBufferOptions { get }
  static var InterruptsAtLoop: AVAudioPlayerNodeBufferOptions { get }
}
@available(OSX 10.10, *)
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
  @available(OSX 10.11, *)
  func destinationForMixer(_ mixer: AVAudioNode, bus bus: AVAudioNodeBus) -> AVAudioMixingDestination?
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
