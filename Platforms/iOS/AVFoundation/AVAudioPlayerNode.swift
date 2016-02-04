
@available(iOS 8.0, *)
struct AVAudioPlayerNodeBufferOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Loops: AVAudioPlayerNodeBufferOptions { get }
  static var Interrupts: AVAudioPlayerNodeBufferOptions { get }
  static var InterruptsAtLoop: AVAudioPlayerNodeBufferOptions { get }
}
@available(iOS 8.0, *)
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
  @available(iOS 9.0, *)
  func destinationForMixer(mixer: AVAudioNode, bus: AVAudioNodeBus) -> AVAudioMixingDestination?
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
