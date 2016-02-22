
@available(tvOS 8.0, *)
class AVAudioEngine : NSObject {
  init()
  func attach(node: AVAudioNode)
  func detach(node: AVAudioNode)
  func connect(node1: AVAudioNode, to node2: AVAudioNode, fromBus bus1: AVAudioNodeBus, toBus bus2: AVAudioNodeBus, format: AVAudioFormat?)
  func connect(node1: AVAudioNode, to node2: AVAudioNode, format: AVAudioFormat?)
  @available(tvOS 9.0, *)
  func connect(sourceNode: AVAudioNode, to destNodes: [AVAudioConnectionPoint], fromBus sourceBus: AVAudioNodeBus, format: AVAudioFormat?)
  func disconnectNodeInput(node: AVAudioNode, bus: AVAudioNodeBus)
  func disconnectNodeInput(node: AVAudioNode)
  func disconnectNodeOutput(node: AVAudioNode, bus: AVAudioNodeBus)
  func disconnectNodeOutput(node: AVAudioNode)
  func prepare()
  func start() throws
  func pause()
  func reset()
  func stop()
  @available(tvOS 9.0, *)
  func inputConnectionPoint(for node: AVAudioNode, inputBus bus: AVAudioNodeBus) -> AVAudioConnectionPoint?
  @available(tvOS 9.0, *)
  func outputConnectionPoints(for node: AVAudioNode, outputBus bus: AVAudioNodeBus) -> [AVAudioConnectionPoint]
  var musicSequence: MusicSequence
  var outputNode: AVAudioOutputNode { get }
  var mainMixerNode: AVAudioMixerNode { get }
  var isRunning: Bool { get }
}
@available(tvOS 8.0, *)
let AVAudioEngineConfigurationChangeNotification: String
