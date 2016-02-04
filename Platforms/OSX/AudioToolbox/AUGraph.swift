
typealias AUGraph = COpaquePointer
typealias AUNode = Int32
var kAUGraphErr_NodeNotFound: OSStatus { get }
var kAUGraphErr_InvalidConnection: OSStatus { get }
var kAUGraphErr_OutputNodeErr: OSStatus { get }
var kAUGraphErr_CannotDoInCurrentContext: OSStatus { get }
var kAUGraphErr_InvalidAudioUnit: OSStatus { get }
@available(OSX 10.0, *)
func NewAUGraph(outGraph: UnsafeMutablePointer<AUGraph>) -> OSStatus
@available(OSX 10.0, *)
func DisposeAUGraph(inGraph: AUGraph) -> OSStatus
@available(OSX 10.5, *)
func AUGraphAddNode(inGraph: AUGraph, _ inDescription: UnsafePointer<AudioComponentDescription>, _ outNode: UnsafeMutablePointer<AUNode>) -> OSStatus
@available(OSX 10.0, *)
func AUGraphRemoveNode(inGraph: AUGraph, _ inNode: AUNode) -> OSStatus
@available(OSX 10.0, *)
func AUGraphGetNodeCount(inGraph: AUGraph, _ outNumberOfNodes: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(OSX 10.0, *)
func AUGraphGetIndNode(inGraph: AUGraph, _ inIndex: UInt32, _ outNode: UnsafeMutablePointer<AUNode>) -> OSStatus
@available(OSX 10.5, *)
func AUGraphNodeInfo(inGraph: AUGraph, _ inNode: AUNode, _ outDescription: UnsafeMutablePointer<AudioComponentDescription>, _ outAudioUnit: UnsafeMutablePointer<AudioUnit>) -> OSStatus
@available(OSX 10.2, *)
func AUGraphNewNodeSubGraph(inGraph: AUGraph, _ outNode: UnsafeMutablePointer<AUNode>) -> OSStatus
@available(OSX 10.2, *)
func AUGraphGetNodeInfoSubGraph(inGraph: AUGraph, _ inNode: AUNode, _ outSubGraph: UnsafeMutablePointer<AUGraph>) -> OSStatus
@available(OSX 10.2, *)
func AUGraphIsNodeSubGraph(inGraph: AUGraph, _ inNode: AUNode, _ outFlag: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
var kAUNodeInteraction_Connection: UInt32 { get }
var kAUNodeInteraction_InputCallback: UInt32 { get }
struct AudioUnitNodeConnection {
  var sourceNode: AUNode
  var sourceOutputNumber: UInt32
  var destNode: AUNode
  var destInputNumber: UInt32
  init()
  init(sourceNode: AUNode, sourceOutputNumber: UInt32, destNode: AUNode, destInputNumber: UInt32)
}
typealias AUNodeConnection = AudioUnitNodeConnection
struct AUNodeRenderCallback {
  var destNode: AUNode
  var destInputNumber: AudioUnitElement
  var cback: AURenderCallbackStruct
  init()
  init(destNode: AUNode, destInputNumber: AudioUnitElement, cback: AURenderCallbackStruct)
}
struct AUNodeInteraction {
  struct __Unnamed_union_nodeInteraction {
    var connection: AUNodeConnection
    var inputCallback: AUNodeRenderCallback
    init(connection: AUNodeConnection)
    init(inputCallback: AUNodeRenderCallback)
    init()
  }
  var nodeInteractionType: UInt32
  var nodeInteraction: AUNodeInteraction.__Unnamed_union_nodeInteraction
  init()
  init(nodeInteractionType: UInt32, nodeInteraction: AUNodeInteraction.__Unnamed_union_nodeInteraction)
}
@available(OSX 10.0, *)
func AUGraphConnectNodeInput(inGraph: AUGraph, _ inSourceNode: AUNode, _ inSourceOutputNumber: UInt32, _ inDestNode: AUNode, _ inDestInputNumber: UInt32) -> OSStatus
@available(OSX 10.5, *)
func AUGraphSetNodeInputCallback(inGraph: AUGraph, _ inDestNode: AUNode, _ inDestInputNumber: UInt32, _ inInputCallback: UnsafePointer<AURenderCallbackStruct>) -> OSStatus
@available(OSX 10.0, *)
func AUGraphDisconnectNodeInput(inGraph: AUGraph, _ inDestNode: AUNode, _ inDestInputNumber: UInt32) -> OSStatus
@available(OSX 10.0, *)
func AUGraphClearConnections(inGraph: AUGraph) -> OSStatus
@available(OSX 10.5, *)
func AUGraphGetNumberOfInteractions(inGraph: AUGraph, _ outNumInteractions: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(OSX 10.5, *)
func AUGraphGetInteractionInfo(inGraph: AUGraph, _ inInteractionIndex: UInt32, _ outInteraction: UnsafeMutablePointer<AUNodeInteraction>) -> OSStatus
@available(OSX 10.5, *)
func AUGraphCountNodeInteractions(inGraph: AUGraph, _ inNode: AUNode, _ outNumInteractions: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(OSX 10.5, *)
func AUGraphGetNodeInteractions(inGraph: AUGraph, _ inNode: AUNode, _ ioNumInteractions: UnsafeMutablePointer<UInt32>, _ outInteractions: UnsafeMutablePointer<AUNodeInteraction>) -> OSStatus
@available(OSX 10.0, *)
func AUGraphUpdate(inGraph: AUGraph, _ outIsUpdated: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.0, *)
func AUGraphOpen(inGraph: AUGraph) -> OSStatus
@available(OSX 10.0, *)
func AUGraphClose(inGraph: AUGraph) -> OSStatus
@available(OSX 10.0, *)
func AUGraphInitialize(inGraph: AUGraph) -> OSStatus
@available(OSX 10.0, *)
func AUGraphUninitialize(inGraph: AUGraph) -> OSStatus
@available(OSX 10.0, *)
func AUGraphStart(inGraph: AUGraph) -> OSStatus
@available(OSX 10.0, *)
func AUGraphStop(inGraph: AUGraph) -> OSStatus
@available(OSX 10.0, *)
func AUGraphIsOpen(inGraph: AUGraph, _ outIsOpen: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.0, *)
func AUGraphIsInitialized(inGraph: AUGraph, _ outIsInitialized: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.0, *)
func AUGraphIsRunning(inGraph: AUGraph, _ outIsRunning: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.1, *)
func AUGraphGetCPULoad(inGraph: AUGraph, _ outAverageCPULoad: UnsafeMutablePointer<Float32>) -> OSStatus
@available(OSX 10.3, *)
func AUGraphGetMaxCPULoad(inGraph: AUGraph, _ outMaxLoad: UnsafeMutablePointer<Float32>) -> OSStatus
@available(OSX 10.2, *)
func AUGraphAddRenderNotify(inGraph: AUGraph, _ inCallback: AURenderCallback, _ inRefCon: UnsafeMutablePointer<Void>) -> OSStatus
@available(OSX 10.2, *)
func AUGraphRemoveRenderNotify(inGraph: AUGraph, _ inCallback: AURenderCallback, _ inRefCon: UnsafeMutablePointer<Void>) -> OSStatus
