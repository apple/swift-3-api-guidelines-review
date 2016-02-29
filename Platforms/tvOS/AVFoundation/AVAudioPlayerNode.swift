
@available(tvOS 8.0, *)
struct AVAudioPlayerNodeBufferOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var loops: AVAudioPlayerNodeBufferOptions { get }
  static var interrupts: AVAudioPlayerNodeBufferOptions { get }
  static var interruptsAtLoop: AVAudioPlayerNodeBufferOptions { get }
}
@available(tvOS 8.0, *)
class AVAudioPlayerNode : AVAudioNode, AVAudioMixing {
  func scheduleBuffer(_ buffer: AVAudioPCMBuffer, completionHandler completionHandler: AVAudioNodeCompletionHandler? = nil)
  func scheduleBuffer(_ buffer: AVAudioPCMBuffer, at when: AVAudioTime?, options options: AVAudioPlayerNodeBufferOptions = [], completionHandler completionHandler: AVAudioNodeCompletionHandler? = nil)
  func scheduleFile(_ file: AVAudioFile, at when: AVAudioTime?, completionHandler completionHandler: AVAudioNodeCompletionHandler? = nil)
  func scheduleSegment(_ file: AVAudioFile, startingFrame startFrame: AVAudioFramePosition, frameCount numberFrames: AVAudioFrameCount, at when: AVAudioTime?, completionHandler completionHandler: AVAudioNodeCompletionHandler? = nil)
  func stop()
  func prepare(withFrameCount frameCount: AVAudioFrameCount)
  func play()
  func play(at when: AVAudioTime?)
  func pause()
  func nodeTime(forPlayerTime playerTime: AVAudioTime) -> AVAudioTime?
  func playerTime(forNodeTime nodeTime: AVAudioTime) -> AVAudioTime?
  var isPlaying: Bool { get }
  @available(tvOS 9.0, *)
  func destination(forMixer mixer: AVAudioNode, bus bus: AVAudioNodeBus) -> AVAudioMixingDestination?
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
