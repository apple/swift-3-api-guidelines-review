
typealias AVAudioNodeTapBlock = (AVAudioPCMBuffer, AVAudioTime) -> Void
@available(OSX 10.10, *)
class AVAudioNode : NSObject {
  func reset()
  func inputFormat(forBus bus: AVAudioNodeBus) -> AVAudioFormat
  func outputFormat(forBus bus: AVAudioNodeBus) -> AVAudioFormat
  func name(forInputBus bus: AVAudioNodeBus) -> String
  func name(forOutputBus bus: AVAudioNodeBus) -> String
  func installTap(onBus bus: AVAudioNodeBus, bufferSize bufferSize: AVAudioFrameCount, format format: AVAudioFormat?, block tapBlock: AVAudioNodeTapBlock)
  func removeTap(onBus bus: AVAudioNodeBus)
  var engine: AVAudioEngine? { get }
  var numberOfInputs: Int { get }
  var numberOfOutputs: Int { get }
  var lastRenderTime: AVAudioTime? { get }
}
