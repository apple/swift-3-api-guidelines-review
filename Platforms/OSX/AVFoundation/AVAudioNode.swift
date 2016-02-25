
typealias AVAudioNodeTapBlock = (AVAudioPCMBuffer, AVAudioTime) -> Void
@available(OSX 10.10, *)
class AVAudioNode : NSObject {
  func reset()
  func inputFormatForBus(_ bus: AVAudioNodeBus) -> AVAudioFormat
  func outputFormatForBus(_ bus: AVAudioNodeBus) -> AVAudioFormat
  func nameForInputBus(_ bus: AVAudioNodeBus) -> String
  func nameForOutputBus(_ bus: AVAudioNodeBus) -> String
  func installTapOnBus(_ bus: AVAudioNodeBus, bufferSize bufferSize: AVAudioFrameCount, format format: AVAudioFormat?, block tapBlock: AVAudioNodeTapBlock)
  func removeTapOnBus(_ bus: AVAudioNodeBus)
  var engine: AVAudioEngine? { get }
  var numberOfInputs: Int { get }
  var numberOfOutputs: Int { get }
  var lastRenderTime: AVAudioTime? { get }
}
