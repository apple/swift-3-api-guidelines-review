
typealias AVAudioNodeTapBlock = (AVAudioPCMBuffer, AVAudioTime) -> Void
@available(iOS 8.0, *)
class AVAudioNode : Object {
  func reset()
  func inputFormatFor(bus bus: AVAudioNodeBus) -> AVAudioFormat
  func outputFormatFor(bus bus: AVAudioNodeBus) -> AVAudioFormat
  func nameFor(inputBus bus: AVAudioNodeBus) -> String
  func nameFor(outputBus bus: AVAudioNodeBus) -> String
  func installTapOn(bus bus: AVAudioNodeBus, bufferSize: AVAudioFrameCount, format: AVAudioFormat?, block tapBlock: AVAudioNodeTapBlock)
  func removeTapOn(bus bus: AVAudioNodeBus)
  var engine: AVAudioEngine? { get }
  var numberOfInputs: Int { get }
  var numberOfOutputs: Int { get }
  var lastRenderTime: AVAudioTime? { get }
  init()
}
