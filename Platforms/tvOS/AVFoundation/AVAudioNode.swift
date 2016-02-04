
typealias AVAudioNodeTapBlock = (AVAudioPCMBuffer, AVAudioTime) -> Void
@available(tvOS 8.0, *)
class AVAudioNode : NSObject {
  func reset()
  func inputFormatForBus(bus: AVAudioNodeBus) -> AVAudioFormat
  func outputFormatForBus(bus: AVAudioNodeBus) -> AVAudioFormat
  func nameForInputBus(bus: AVAudioNodeBus) -> String
  func nameForOutputBus(bus: AVAudioNodeBus) -> String
  func installTapOnBus(bus: AVAudioNodeBus, bufferSize: AVAudioFrameCount, format: AVAudioFormat?, block tapBlock: AVAudioNodeTapBlock)
  func removeTapOnBus(bus: AVAudioNodeBus)
  var engine: AVAudioEngine? { get }
  var numberOfInputs: Int { get }
  var numberOfOutputs: Int { get }
  var lastRenderTime: AVAudioTime? { get }
  init()
}
