
@available(OSX 10.10, *)
class AVAudioEngine : NSObject {
  init()
  func attachNode(node: AVAudioNode)
  func detachNode(node: AVAudioNode)
  func connect(node1: AVAudioNode, to node2: AVAudioNode, fromBus bus1: AVAudioNodeBus, toBus bus2: AVAudioNodeBus, format: AVAudioFormat?)
  func connect(node1: AVAudioNode, to node2: AVAudioNode, format: AVAudioFormat?)
  @available(OSX 10.11, *)
  func connect(sourceNode: AVAudioNode, toConnectionPoints destNodes: [AVAudioConnectionPoint], fromBus sourceBus: AVAudioNodeBus, format: AVAudioFormat?)
  func disconnectNodeInput(node: AVAudioNode, bus: AVAudioNodeBus)
  func disconnectNodeInput(node: AVAudioNode)
  func disconnectNodeOutput(node: AVAudioNode, bus: AVAudioNodeBus)
  func disconnectNodeOutput(node: AVAudioNode)
  func prepare()
  func start() throws
  func pause()
  func reset()
  func stop()
  @available(OSX 10.11, *)
  func inputConnectionPointForNode(node: AVAudioNode, inputBus bus: AVAudioNodeBus) -> AVAudioConnectionPoint?
  @available(OSX 10.11, *)
  func outputConnectionPointsForNode(node: AVAudioNode, outputBus bus: AVAudioNodeBus) -> [AVAudioConnectionPoint]
  var musicSequence: MusicSequence
  var outputNode: AVAudioOutputNode { get }
  var inputNode: AVAudioInputNode? { get }
  var mainMixerNode: AVAudioMixerNode { get }
  var running: Bool { get }
}
@available(OSX 10.10, *)
let AVAudioEngineConfigurationChangeNotification: String
