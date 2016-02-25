
@available(OSX 10.10, *)
class AVAudioEngine : NSObject {
  func attachNode(_ node: AVAudioNode)
  func detachNode(_ node: AVAudioNode)
  func connect(_ node1: AVAudioNode, to node2: AVAudioNode, fromBus bus1: AVAudioNodeBus, toBus bus2: AVAudioNodeBus, format format: AVAudioFormat?)
  func connect(_ node1: AVAudioNode, to node2: AVAudioNode, format format: AVAudioFormat?)
  @available(OSX 10.11, *)
  func connect(_ sourceNode: AVAudioNode, toConnectionPoints destNodes: [AVAudioConnectionPoint], fromBus sourceBus: AVAudioNodeBus, format format: AVAudioFormat?)
  func disconnectNodeInput(_ node: AVAudioNode, bus bus: AVAudioNodeBus)
  func disconnectNodeInput(_ node: AVAudioNode)
  func disconnectNodeOutput(_ node: AVAudioNode, bus bus: AVAudioNodeBus)
  func disconnectNodeOutput(_ node: AVAudioNode)
  func prepare()
  func start() throws
  func pause()
  func reset()
  func stop()
  @available(OSX 10.11, *)
  func inputConnectionPointForNode(_ node: AVAudioNode, inputBus bus: AVAudioNodeBus) -> AVAudioConnectionPoint?
  @available(OSX 10.11, *)
  func outputConnectionPointsForNode(_ node: AVAudioNode, outputBus bus: AVAudioNodeBus) -> [AVAudioConnectionPoint]
  var musicSequence: MusicSequence
  var outputNode: AVAudioOutputNode { get }
  var inputNode: AVAudioInputNode? { get }
  var mainMixerNode: AVAudioMixerNode { get }
  var running: Bool { get }
}
@available(OSX 10.10, *)
let AVAudioEngineConfigurationChangeNotification: String
