
@available(OSX 10.10, *)
struct AVAudioPlayerNodeBufferOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Loops: AVAudioPlayerNodeBufferOptions { get }
  static var Interrupts: AVAudioPlayerNodeBufferOptions { get }
  static var InterruptsAtLoop: AVAudioPlayerNodeBufferOptions { get }
}
@available(OSX 10.10, *)
class AVAudioPlayerNode : AVAudioNode, AVAudioMixing {
  func scheduleBuffer(buffer: AVAudioPCMBuffer, completionHandler: AVAudioNodeCompletionHandler?)
  func scheduleBuffer(buffer: AVAudioPCMBuffer, atTime when: AVAudioTime?, options: AVAudioPlayerNodeBufferOptions, completionHandler: AVAudioNodeCompletionHandler?)
  func scheduleFile(file: AVAudioFile, atTime when: AVAudioTime?, completionHandler: AVAudioNodeCompletionHandler?)
  func scheduleSegment(file: AVAudioFile, startingFrame startFrame: AVAudioFramePosition, frameCount numberFrames: AVAudioFrameCount, atTime when: AVAudioTime?, completionHandler: AVAudioNodeCompletionHandler?)
  func stop()
  func prepareWithFrameCount(frameCount: AVAudioFrameCount)
  func play()
  func playAtTime(when: AVAudioTime?)
  func pause()
  func nodeTimeForPlayerTime(playerTime: AVAudioTime) -> AVAudioTime?
  func playerTimeForNodeTime(nodeTime: AVAudioTime) -> AVAudioTime?
  var playing: Bool { get }
  init()
  @available(OSX 10.11, *)
  func destinationForMixer(mixer: AVAudioNode, bus: AVAudioNodeBus) -> AVAudioMixingDestination?
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
