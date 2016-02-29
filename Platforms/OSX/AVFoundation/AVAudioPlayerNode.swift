
@available(OSX 10.10, *)
struct AVAudioPlayerNodeBufferOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var loops: AVAudioPlayerNodeBufferOptions { get }
  static var interrupts: AVAudioPlayerNodeBufferOptions { get }
  static var interruptsAtLoop: AVAudioPlayerNodeBufferOptions { get }
}
@available(OSX 10.10, *)
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
