
var AUDIO_TOOLBOX_VERSION: Int32 { get }
@available(OSX 10.2, *)
func CAShow(inObject: UnsafeMutablePointer<Void>)
@available(OSX 10.2, *)
func CAShowFile(inObject: UnsafeMutablePointer<Void>, _ inFile: UnsafeMutablePointer<FILE>)

/*!
    @function		CopyNameFromSoundBank
	 
    @discussion		This will return the name of a sound bank from a DLS or SF2 bank.
					The name should be released by the caller.

    @param			inURL
						The URL for the sound bank.
    @param			outName
						A pointer to a CFStringRef to be created and returned by the function.
    @result			returns noErr if successful.
*/
@available(OSX 10.5, *)
func CopyNameFromSoundBank(inURL: CFURL, _ outName: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus

/*!
    @function		CopyInstrumentInfoFromSoundBank
	 
    @discussion		This will return a CFArray of CFDictionaries, one per instrument found in the DLS or SF2 bank.
					Each dictionary will contain four items accessed via CFStringRef versions of the keys kInstrumentInfoKey_MSB,
 					kInstrumentInfoKey_LSB, kInstrumentInfoKey_Program, and kInstrumentInfoKey_Name.
 						MSB: An NSNumberRef for the most-significant byte of the bank number.  GM melodic banks will return 120 (0x78).
 							 GM percussion banks will return 121 (0x79).  Custom banks will return their literal value.
						LSB: An NSNumberRef for the least-significant byte of the bank number.  All GM banks will return
							 the bank variation number (0-127).
 						Program Number: An NSNumberRef for the program number (0-127) of an instrument within a particular bank.
 						Name: A CFStringRef containing the name of the instrument.
 
					Using these MSB, LSB, and Program values will guarantee that the correct instrument is loaded by the DLS synth
					or Sampler Audio Unit.
					The CFArray should be released by the caller.

    @param			inURL
	 					The URL for the sound bank.
    @param			outInstrumentInfo
						A pointer to a CFArrayRef to be created and returned by the function.
    @result			returns noErr if successful.
*/
@available(OSX 10.8, *)
func CopyInstrumentInfoFromSoundBank(inURL: CFURL, _ outInstrumentInfo: UnsafeMutablePointer<Unmanaged<CFArray>?>) -> OSStatus
var kInstrumentInfoKey_Name: String { get }
var kInstrumentInfoKey_MSB: String { get }
var kInstrumentInfoKey_LSB: String { get }
var kInstrumentInfoKey_Program: String { get }

/*!
	@typedef	AUGraph
	@abstract	A reference to an AUGraph object.
*/
typealias AUGraph = COpaquePointer

/*!
	@typedef	AUNode
	@abstract	Used to represent a member of an AUGraph
*/
typealias AUNode = Int32
var kAUGraphErr_NodeNotFound: OSStatus { get }
var kAUGraphErr_InvalidConnection: OSStatus { get }
var kAUGraphErr_OutputNodeErr: OSStatus { get }
var kAUGraphErr_CannotDoInCurrentContext: OSStatus { get }
var kAUGraphErr_InvalidAudioUnit: OSStatus { get }

/*!
    @function	NewAUGraph
    @abstract   creates a new AUGraph
    @discussion	creates a new AUGraph
    @param		outGraph		the new AUGraph object
*/
@available(OSX 10.0, *)
func NewAUGraph(outGraph: UnsafeMutablePointer<AUGraph>) -> OSStatus

/*!
    @function	DisposeAUGraph
    @abstract   dispose an AUGraph
    @discussion	deallocates the AUGraph along with its nodes and their resources.
    @param		inGraph		the AUGraph object to be disposed
*/
@available(OSX 10.0, *)
func DisposeAUGraph(inGraph: AUGraph) -> OSStatus

/*!
    @function	AUGraphAddNode
    @abstract   Add a node to an AUGraph
    @discussion	This creates a node in the graph that is an AudioUnit, using the supplied
				AudioComponentDescription to find and open that unit.
    @param		inGraph			the AUGraph object
    @param		inDescription	the AudioComponentDescription used to find and open the AudioUnit
    @param		outNode			the newly added node
*/
@available(OSX 10.5, *)
func AUGraphAddNode(inGraph: AUGraph, _ inDescription: UnsafePointer<AudioComponentDescription>, _ outNode: UnsafeMutablePointer<AUNode>) -> OSStatus

/*!
    @function	AUGraphRemoveNode
    @abstract   Remove a node from an AUGraph
    @discussion	Nodes can be removed from any thread context. The output node of
				the AUGraph cannot be removed while the graph is running.
    @param		inGraph			the AUGraph object
    @param		inNode			the node to be removed
*/
@available(OSX 10.0, *)
func AUGraphRemoveNode(inGraph: AUGraph, _ inNode: AUNode) -> OSStatus

/*!
    @function	AUGraphGetNodeCount
    @abstract   The number of nodes in an AUGraph
    @discussion	The number of nodes in an AUGraph
    @param		inGraph				the AUGraph object
    @param		outNumberOfNodes	the number of nodes
*/
@available(OSX 10.0, *)
func AUGraphGetNodeCount(inGraph: AUGraph, _ outNumberOfNodes: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
    @function	AUGraphGetIndNode
    @abstract   Returns the node at a given index
    @discussion	By using AUGraphGetNodeCount in conjunction with this call, you can
				iterate through the nodes of an AUGraph.
    @param		inGraph				the AUGraph object
    @param		inIndex				the index of the node to retrieve
	@param		outNode				the node at that index
*/
@available(OSX 10.0, *)
func AUGraphGetIndNode(inGraph: AUGraph, _ inIndex: UInt32, _ outNode: UnsafeMutablePointer<AUNode>) -> OSStatus

/*!
    @function	AUGraphNodeInfo
    @abstract   Returns information about a particular AUNode
    @discussion	You can pass in NULL for any of the out parameters if you're not interested
				in that value.
    @param		inGraph				the AUGraph object
	@param		inNode				the node to query
    @param		outDescription		the component description that would describe the AudioUnit of this node
	@param		outAudioUnit		the AudioUnit of this node
*/
@available(OSX 10.5, *)
func AUGraphNodeInfo(inGraph: AUGraph, _ inNode: AUNode, _ outDescription: UnsafeMutablePointer<AudioComponentDescription>, _ outAudioUnit: UnsafeMutablePointer<AudioUnit>) -> OSStatus

/*! 
	@functiongroup Sub Graph Nodes
*/
/*!
    @function	AUGraphNewNodeSubGraph
    @abstract   Create a node that will represent a sub graph
	@discussion	This will create a node that represents a contained or member AUGraph.
				The AUGraph can be retrieved through the GetNodeInfoSubGraph call.
				The member AUGraph is owned by the parent graph and will be disposed when
				either:
				(1) The parent graph is disposed
				(2) The node is removed from the parent AUGraph
    @param		inGraph				the AUGraph object
	@param		outNode				the node that is used to refer to the sub-graph
*/
@available(OSX 10.2, *)
func AUGraphNewNodeSubGraph(inGraph: AUGraph, _ outNode: UnsafeMutablePointer<AUNode>) -> OSStatus

/*!
    @function	AUGraphGetNodeInfoSubGraph
    @abstract   Return an AUGraph represented by this node
	@discussion	This will return the sub graph represented by this AUNode.
    @param		inGraph				the AUGraph object
	@param		inNode				the node to query
	@param		outSubGraph			the sub-graph
*/
@available(OSX 10.2, *)
func AUGraphGetNodeInfoSubGraph(inGraph: AUGraph, _ inNode: AUNode, _ outSubGraph: UnsafeMutablePointer<AUGraph>) -> OSStatus

/*!
    @function	AUGraphIsNodeSubGraph
    @abstract   Does the node represent a sub graph
	@discussion	This will return true if the specified node represents a subgraph, false if not.
    @param		inGraph				the AUGraph object
	@param		inNode				the node to query
	@param		outFlag				true if the node is a subgraph, false if not
*/
@available(OSX 10.2, *)
func AUGraphIsNodeSubGraph(inGraph: AUGraph, _ inNode: AUNode, _ outFlag: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
var kAUNodeInteraction_Connection: UInt32 { get }
var kAUNodeInteraction_InputCallback: UInt32 { get }

/*! 
	@struct		AudioUnitNodeConnection
	@abstract	A connection between two nodes
	@field		sourceNode
	@field		sourceOutputNumber
	@field		destNode
	@field		destInputNumber
*/
struct AudioUnitNodeConnection {
  var sourceNode: AUNode
  var sourceOutputNumber: UInt32
  var destNode: AUNode
  var destInputNumber: UInt32
  init()
  init(sourceNode: AUNode, sourceOutputNumber: UInt32, destNode: AUNode, destInputNumber: UInt32)
}
typealias AUNodeConnection = AudioUnitNodeConnection

/*! 
	@struct		AUNodeRenderCallback
	@abstract	A callback used to provide input to an audio unit
	@discussion	Used to contain information when a callback is used
				to provide input to the specific node's specified input
	@field		destNode
	@field		destInputNumber
	@field		cback
*/
struct AUNodeRenderCallback {
  var destNode: AUNode
  var destInputNumber: AudioUnitElement
  var cback: AURenderCallbackStruct
  init()
  init(destNode: AUNode, destInputNumber: AudioUnitElement, cback: AURenderCallbackStruct)
}

/*! 
	@struct		AUNodeInteraction
	@abstract	Used to describe the interaction between/with a node
	@discussion	This structure contains information about the interaction between
				two nodes (in the case of a connection), or the input to a node
				(in the case of a callback). 
				
				The type of the interaction is used to determine how to interpret the contents 
				of the following union.

				There may be other nodal interactions in the future, so NO ASSUMPTIONS should be made
				that these are the only 2 nodal interaction types; you must always check the 
				nodeInteractionType and only act on those types you understand
	
				Arrays of these structs can be returned, the addition of new members to the
				nodeInteraction union will NOT change the size of this structure
				
	@field		nodeInteractionType		the interaction type
	@field		nodeInteraction			a union providing information about the specified interaction
*/
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

/*! 
	@function	AUGraphConnectNodeInput
	@abstract	connect a node's output to a node's input
*/
@available(OSX 10.0, *)
func AUGraphConnectNodeInput(inGraph: AUGraph, _ inSourceNode: AUNode, _ inSourceOutputNumber: UInt32, _ inDestNode: AUNode, _ inDestInputNumber: UInt32) -> OSStatus

/*! 
	@function	AUGraphSetNodeInputCallback
	@abstract	Set a callback for the specified node's specified input.
	@param		inGraph
	@param		inDestNode
	@param		inDestInputNumber
	@param		inInputCallback		The callback that will provide input data to the node
*/
@available(OSX 10.5, *)
func AUGraphSetNodeInputCallback(inGraph: AUGraph, _ inDestNode: AUNode, _ inDestInputNumber: UInt32, _ inInputCallback: UnsafePointer<AURenderCallbackStruct>) -> OSStatus

/*! 
	@function	AUGraphDisconnectNodeInput
	@abstract	disconnect a node's input
	@discussion	This can be used to disconnect either a connection or callback interaction
				to the specified node input
	@param		inGraph
	@param		inDestNode
	@param		inDestInputNumber
*/
@available(OSX 10.0, *)
func AUGraphDisconnectNodeInput(inGraph: AUGraph, _ inDestNode: AUNode, _ inDestInputNumber: UInt32) -> OSStatus

/*! 
	@function	AUGraphClearConnections
	@abstract	clear all of the interactions in a graph
	@discussion	This will clear all connections and callback interactions of the nodes of a graph
	@param		inGraph
*/
@available(OSX 10.0, *)
func AUGraphClearConnections(inGraph: AUGraph) -> OSStatus

/*! 
	@function	AUGraphGetNumberOfInteractions
	@abstract	Retrieve the number of interactions of a graph
	@discussion	The number of node interactions currently being managed by the graph
	@param		inGraph
	@param		outNumInteractions
*/
@available(OSX 10.5, *)
func AUGraphGetNumberOfInteractions(inGraph: AUGraph, _ outNumInteractions: UnsafeMutablePointer<UInt32>) -> OSStatus

/*! 
	@function	AUGraphGetInteractionInfo
	@abstract	Retrieve information about a particular interaction in a graph
	@discussion	Returns information about a particular interaction. 
				inInteractionIndex is based on the outNumInteractions value and is only valid if no 
				edits to the graph's state have been made.
				
				An app can iterate through the interactions (as with the nodes) of a graph by retrieving
				the number of interactions, and then iterating an index from 0 < numInteractions
	@param		inGraph
	@param		inInteractionIndex
	@param		outInteraction		the interaction information at the specified index
*/
@available(OSX 10.5, *)
func AUGraphGetInteractionInfo(inGraph: AUGraph, _ inInteractionIndex: UInt32, _ outInteraction: UnsafeMutablePointer<AUNodeInteraction>) -> OSStatus

/*! 
	@function	AUGraphCountNodeInteractions
	@abstract	Retrieve the number of interactions of a graph's node
	@discussion	The number of node interactions currently being managed by the graph for the specified node
	@param		inGraph
	@param		inNode
	@param		outNumInteractions
*/
@available(OSX 10.5, *)
func AUGraphCountNodeInteractions(inGraph: AUGraph, _ inNode: AUNode, _ outNumInteractions: UnsafeMutablePointer<UInt32>) -> OSStatus

/*! 
	@function	AUGraphGetNodeInteractions
	@abstract	Retrieve information about the interactions in a graph for a given node
	@discussion	Retrieve information about the interactions in a graph for a given node 
	@param		inGraph
	@param		inNode
	@param		ioNumInteractions	
					on input, specifies the number of interactions that can be returned
					on output, specifies the number of interactions returned.
	@param		outInteractions		the interactions the specified node is involved in
*/
@available(OSX 10.5, *)
func AUGraphGetNodeInteractions(inGraph: AUGraph, _ inNode: AUNode, _ ioNumInteractions: UnsafeMutablePointer<UInt32>, _ outInteractions: UnsafeMutablePointer<AUNodeInteraction>) -> OSStatus

/*! 
	@functiongroup Updating an AUGraph
*/
/*! 
	@function	AUGraphUpdate
	@abstract	Updates the state of a running AUGraph
	
	@discussion
	Call this after performing a series of "edits" on the AUGraph with calls 
	such as AUGraphConnectNodeInput() to finalize those edits.
	The call will be synchronous if outIsUpdated is NULL, 
	meaning it will block until the changes are incorporated
	into the graph OR an error is returned from the update process
	if outIsUpdated is non-NULL, then AUGraphUpdate() will return 
	immediately and outIsUpdated will equal "true" if the changes 
	were already made (no more changes to make) or "false" if changes are still
	outstanding.

	Calling from the AUGraphRenderNotification callback:
	Connection and Disconnection events can be completely processed
	in the render notification callback of the AUGraph
	Nodes can also be removed (except for the output node or a sub-graph of the AUGraph)
	as well. 

	Getting kAUGraphErr_CannotDoInCurrentContext as a result code:
	If AUGraphUpdate returns this result, then it means it was
	unable to process the update, due to an inability to safely
	alter the state of the graph (because another thread was accessing
	a call that relies on the graph's state having integrity).
	This result code is only a transitory state, which will pass as soon
	as your other thread's call to AUGraph (that has the lock) completes.

	If an error is encountered in the process of an update (say an invalid connection
	is attempted, a disconnection between nodes that are not connected, etc) on a running graph, 	
	then the call will return that error code. It only process events whilst it receives
	no error results. Thus, if an error is encountered, other events will not be
	processed until AUGraphUpdate is called again. This is done, in cases where
	the state of the graph could become inconsistent if further events were processed, so
	this decision is left up to you. The same applies to the "cant do" error - you have
	to explicitly call AUGraphUpdate again to have the processing of the events occur.

	@param		inGraph
	@param		outIsUpdated	if specified returns true if all of the edits were applied to the graph
*/
@available(OSX 10.0, *)
func AUGraphUpdate(inGraph: AUGraph, _ outIsUpdated: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus

/*! 
	@functiongroup AUGraph state management
*/
/*!
	@function	AUGraphOpen
	@abstract	Open a graph
	@discussion AudioUnits are open but not initialized (no resource allocation occurs here)
	@param		inGraph
*/
@available(OSX 10.0, *)
func AUGraphOpen(inGraph: AUGraph) -> OSStatus

/*!
	@function	AUGraphClose
	@abstract	Close a graph
	@discussion all AudioUnits are closed - leaving only its nodal representation
	@param		inGraph
*/
@available(OSX 10.0, *)
func AUGraphClose(inGraph: AUGraph) -> OSStatus

/*!
	@function	AUGraphInitialize
	@abstract	Initialise a graph
	@discussion AudioUnitInitialize() is called on each opened node/AudioUnit
				(get ready to render) and SubGraph that are involved in a
				interaction. If the node is not involved, it is initialised
				after it becomes involved in an interaction.
				
				A graph must be opened before it can be initialised.
	@param		inGraph
*/
@available(OSX 10.0, *)
func AUGraphInitialize(inGraph: AUGraph) -> OSStatus

/*!
	@function	AUGraphUninitialize
	@abstract	Uninitialise a graph
	@discussion The member of the graph are uninitialised 
	@param		inGraph
*/
@available(OSX 10.0, *)
func AUGraphUninitialize(inGraph: AUGraph) -> OSStatus

/*!
	@function	AUGraphStart
	@abstract	Start a graph
	@discussion Start() is called on the "head" node(s) of the AUGraph	(now rendering starts) 
				
				The graph must be initialised before it can be started
	@param		inGraph
*/
@available(OSX 10.0, *)
func AUGraphStart(inGraph: AUGraph) -> OSStatus

/*!
	@function	AUGraphStop
	@abstract	Stop a graph
	@discussion Stop() is called on the "head" node(s) of the AUGraph	(rendering is stopped)
*/
@available(OSX 10.0, *)
func AUGraphStop(inGraph: AUGraph) -> OSStatus

/*!
	@function	AUGraphIsOpen
	@abstract	Is the graph open
*/
@available(OSX 10.0, *)
func AUGraphIsOpen(inGraph: AUGraph, _ outIsOpen: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus

/*!
	@function	AUGraphIsInitialized
	@abstract	Is the graph initialised
*/
@available(OSX 10.0, *)
func AUGraphIsInitialized(inGraph: AUGraph, _ outIsInitialized: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus

/*!
	@function	AUGraphIsRunning
	@abstract	Is the graph running (has it been started)
*/
@available(OSX 10.0, *)
func AUGraphIsRunning(inGraph: AUGraph, _ outIsRunning: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus

/*! 
	@functiongroup AUGraph utilities
*/
/*!
	@function	AUGraphGetCPULoad
	@abstract	The CPU load of the graph
	@discussion	Returns a short-term running average of the current CPU load
				of the graph.		
*/
@available(OSX 10.1, *)
func AUGraphGetCPULoad(inGraph: AUGraph, _ outAverageCPULoad: UnsafeMutablePointer<Float32>) -> OSStatus

/*!
	@function	AUGraphGetMaxCPULoad
	@abstract	The Maximum CPU load of the graph
	@discussion	Returns the max CPU load of the graph since this call was last made 
				or the graph was last started.
*/
@available(OSX 10.3, *)
func AUGraphGetMaxCPULoad(inGraph: AUGraph, _ outMaxLoad: UnsafeMutablePointer<Float32>) -> OSStatus

/*!
	@function	AUGraphAddRenderNotify
	@abstract	Add a notification callback
	@discussion	Add a callback that the graph will call every time the
				graph renders. The callback will be called once before the graph's render
				operation, and once after the render operation is complete.
*/
@available(OSX 10.2, *)
func AUGraphAddRenderNotify(inGraph: AUGraph, _ inCallback: AURenderCallback, _ inRefCon: UnsafeMutablePointer<Void>) -> OSStatus

/*!
	@function	AUGraphRemoveRenderNotify
	@abstract	Remove a notification callback
	@discussion	Remove a previously added callback. You must provide both the callback
				and the refCon that was used previously to add the callback.
*/
@available(OSX 10.2, *)
func AUGraphRemoveRenderNotify(inGraph: AUGraph, _ inCallback: AURenderCallback, _ inRefCon: UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @typedef    AudioConverterRef
    @abstract   A reference to an AudioConverter object.
*/
typealias AudioConverterRef = COpaquePointer
typealias AudioConverterPropertyID = UInt32
var kAudioConverterPropertyMinimumInputBufferSize: AudioConverterPropertyID { get }
var kAudioConverterPropertyMinimumOutputBufferSize: AudioConverterPropertyID { get }
var kAudioConverterPropertyMaximumInputBufferSize: AudioConverterPropertyID { get }
var kAudioConverterPropertyMaximumInputPacketSize: AudioConverterPropertyID { get }
var kAudioConverterPropertyMaximumOutputPacketSize: AudioConverterPropertyID { get }
var kAudioConverterPropertyCalculateInputBufferSize: AudioConverterPropertyID { get }
var kAudioConverterPropertyCalculateOutputBufferSize: AudioConverterPropertyID { get }
var kAudioConverterPropertyInputCodecParameters: AudioConverterPropertyID { get }
var kAudioConverterPropertyOutputCodecParameters: AudioConverterPropertyID { get }
var kAudioConverterSampleRateConverterAlgorithm: AudioConverterPropertyID { get }
var kAudioConverterSampleRateConverterComplexity: AudioConverterPropertyID { get }
var kAudioConverterSampleRateConverterQuality: AudioConverterPropertyID { get }
var kAudioConverterSampleRateConverterInitialPhase: AudioConverterPropertyID { get }
var kAudioConverterCodecQuality: AudioConverterPropertyID { get }
var kAudioConverterPrimeMethod: AudioConverterPropertyID { get }
var kAudioConverterPrimeInfo: AudioConverterPropertyID { get }
var kAudioConverterChannelMap: AudioConverterPropertyID { get }
var kAudioConverterDecompressionMagicCookie: AudioConverterPropertyID { get }
var kAudioConverterCompressionMagicCookie: AudioConverterPropertyID { get }
var kAudioConverterEncodeBitRate: AudioConverterPropertyID { get }
var kAudioConverterEncodeAdjustableSampleRate: AudioConverterPropertyID { get }
var kAudioConverterInputChannelLayout: AudioConverterPropertyID { get }
var kAudioConverterOutputChannelLayout: AudioConverterPropertyID { get }
var kAudioConverterApplicableEncodeBitRates: AudioConverterPropertyID { get }
var kAudioConverterAvailableEncodeBitRates: AudioConverterPropertyID { get }
var kAudioConverterApplicableEncodeSampleRates: AudioConverterPropertyID { get }
var kAudioConverterAvailableEncodeSampleRates: AudioConverterPropertyID { get }
var kAudioConverterAvailableEncodeChannelLayoutTags: AudioConverterPropertyID { get }
var kAudioConverterCurrentOutputStreamDescription: AudioConverterPropertyID { get }
var kAudioConverterCurrentInputStreamDescription: AudioConverterPropertyID { get }
var kAudioConverterPropertySettings: AudioConverterPropertyID { get }
var kAudioConverterPropertyBitDepthHint: AudioConverterPropertyID { get }
var kAudioConverterPropertyFormatList: AudioConverterPropertyID { get }
var kAudioConverterPropertyDithering: AudioConverterPropertyID { get }
var kAudioConverterPropertyDitherBitDepth: AudioConverterPropertyID { get }
var kDitherAlgorithm_TPDF: UInt32 { get }
var kDitherAlgorithm_NoiseShaping: UInt32 { get }
var kAudioConverterQuality_Max: UInt32 { get }
var kAudioConverterQuality_High: UInt32 { get }
var kAudioConverterQuality_Medium: UInt32 { get }
var kAudioConverterQuality_Low: UInt32 { get }
var kAudioConverterQuality_Min: UInt32 { get }
var kAudioConverterSampleRateConverterComplexity_Linear: UInt32 { get }
var kAudioConverterSampleRateConverterComplexity_Normal: UInt32 { get }
var kAudioConverterSampleRateConverterComplexity_Mastering: UInt32 { get }
var kConverterPrimeMethod_Pre: UInt32 { get }
var kConverterPrimeMethod_Normal: UInt32 { get }
var kConverterPrimeMethod_None: UInt32 { get }

/*!
    @struct     AudioConverterPrimeInfo
    @abstract   Specifies priming information.
    
    @field      leadingFrames
        Specifies the number of leading (previous) input frames, relative to the normal/desired
        start input frame, required by the converter to perform a high quality conversion. If
        using kConverterPrimeMethod_Pre, the client should "pre-seek" the input stream provided
        through the input proc by leadingFrames. If no frames are available previous to the
        desired input start frame (because, for example, the desired start frame is at the very
        beginning of available audio), then provide "leadingFrames" worth of initial zero frames
        in the input proc.  Do not "pre-seek" in the default case of
        kConverterPrimeMethod_Normal or when using kConverterPrimeMethod_None.

    @field      trailingFrames
        Specifies the number of trailing input frames (past the normal/expected end input frame)
        required by the converter to perform a high quality conversion.  The client should be
        prepared to provide this number of additional input frames except when using
        kConverterPrimeMethod_None. If no more frames of input are available in the input stream
        (because, for example, the desired end frame is at the end of an audio file), then zero
        (silent) trailing frames will be synthesized for the client.
            
    @discussion
        When using AudioConverterFillComplexBuffer() (either a single call or a series of calls), some
        conversions, particularly involving sample-rate conversion, ideally require a certain
        number of input frames previous to the normal start input frame and beyond the end of
        the last expected input frame in order to yield high-quality results.
        
        These are expressed in the leadingFrames and trailingFrames members of the structure.
        
        The very first call to AudioConverterFillComplexBuffer(), or first call after
        AudioConverterReset(), will request additional input frames beyond those normally
        expected in the input proc callback to fulfill this first AudioConverterFillComplexBuffer()
        request. The number of additional frames requested, depending on the prime method, will
        be approximately:

        <pre>
            kConverterPrimeMethod_Pre       leadingFrames + trailingFrames
            kConverterPrimeMethod_Normal    trailingFrames
            kConverterPrimeMethod_None      0
        </pre>

        Thus, in effect, the first input proc callback(s) may provide not only the leading
        frames, but also may "read ahead" by an additional number of trailing frames depending
        on the prime method.

        kConverterPrimeMethod_None is useful in a real-time application processing live input,
        in which case trailingFrames (relative to input sample rate) of through latency will be
        seen at the beginning of the output of the AudioConverter.  In other real-time
        applications such as DAW systems, it may be possible to provide these initial extra
        audio frames since they are stored on disk or in memory somewhere and
        kConverterPrimeMethod_Pre may be preferable.  The default method is
        kConverterPrimeMethod_Normal, which requires no pre-seeking of the input stream and
        generates no latency at the output.
*/
struct AudioConverterPrimeInfo {
  var leadingFrames: UInt32
  var trailingFrames: UInt32
  init()
  init(leadingFrames: UInt32, trailingFrames: UInt32)
}
var kAudioConverterErr_FormatNotSupported: OSStatus { get }
var kAudioConverterErr_OperationNotSupported: OSStatus { get }
var kAudioConverterErr_PropertyNotSupported: OSStatus { get }
var kAudioConverterErr_InvalidInputSize: OSStatus { get }
var kAudioConverterErr_InvalidOutputSize: OSStatus { get }
var kAudioConverterErr_UnspecifiedError: OSStatus { get }
var kAudioConverterErr_BadPropertySizeError: OSStatus { get }
var kAudioConverterErr_RequiresPacketDescriptionsError: OSStatus { get }
var kAudioConverterErr_InputSampleRateOutOfRange: OSStatus { get }
var kAudioConverterErr_OutputSampleRateOutOfRange: OSStatus { get }

/*!
    @function   AudioConverterNew
    @abstract   Create a new AudioConverter.

    @param      inSourceFormat
                    The format of the source audio to be converted.
    @param      inDestinationFormat
                    The destination format to which the audio is to be converted.
    @param      outAudioConverter
                    On successful return, points to a new AudioConverter instance.
    @result     An OSStatus result code.
    
    @discussion
                For a pair of linear PCM formats, the following conversions
                are supported:
                
                <ul>
                <li>addition and removal of channels, when the stream descriptions'
                mChannelsPerFrame does not match. Channels may also be reordered and removed
                using the kAudioConverterChannelMap property.</li>
                <li>sample rate conversion</li>
                <li>interleaving/deinterleaving, when the stream descriptions' (mFormatFlags &
                kAudioFormatFlagIsNonInterleaved) does not match.</li>
                <li>conversion between any pair of the following formats:</li>
                    <ul>
                    <li>8 bit integer, signed or unsigned</li>
                    <li>16, 24, or 32-bit integer, big- or little-endian. Other integral
                    bit depths, if high-aligned and non-packed, are also supported</li>
                    <li>32 and 64-bit float, big- or little-endian.</li>
                    </ul>
                </ul>
                
                Also, encoding and decoding between linear PCM and compressed formats is
                supported. Functions in AudioToolbox/AudioFormat.h return information about the
                supported formats. When using a codec, you can use any supported PCM format (as
                above); the converter will perform any necessary additional conversion between
                your PCM format and the one created or consumed by the codec.
*/
@available(OSX 10.1, *)
func AudioConverterNew(inSourceFormat: UnsafePointer<AudioStreamBasicDescription>, _ inDestinationFormat: UnsafePointer<AudioStreamBasicDescription>, _ outAudioConverter: UnsafeMutablePointer<AudioConverterRef>) -> OSStatus

/*!
    @function   AudioConverterNewSpecific
    @abstract   Create a new AudioConverter using specific codecs.

    @param      inSourceFormat
                    The format of the source audio to be converted.
    @param      inDestinationFormat
                    The destination format to which the audio is to be converted.
    @param      inNumberClassDescriptions
                    The number of class descriptions.
    @param      inClassDescriptions
                    AudioClassDescriptions specifiying the codec to instantiate.
    @param      outAudioConverter
                    On successful return, points to a new AudioConverter instance.
    @result     An OSStatus result code.
    
    @discussion
                This function is identical to AudioConverterNew(), except that the client may
                explicitly choose which codec to instantiate if there is more than one choice.
*/
@available(OSX 10.4, *)
func AudioConverterNewSpecific(inSourceFormat: UnsafePointer<AudioStreamBasicDescription>, _ inDestinationFormat: UnsafePointer<AudioStreamBasicDescription>, _ inNumberClassDescriptions: UInt32, _ inClassDescriptions: UnsafePointer<AudioClassDescription>, _ outAudioConverter: UnsafeMutablePointer<AudioConverterRef>) -> OSStatus

/*!
    @function   AudioConverterDispose
    @abstract   Destroy an AudioConverter.

    @param      inAudioConverter
                    The AudioConverter to dispose.
    @result     An OSStatus result code.
*/
@available(OSX 10.1, *)
func AudioConverterDispose(inAudioConverter: AudioConverterRef) -> OSStatus

/*!
    @function   AudioConverterReset
    @abstract   Reset an AudioConverter

    @param      inAudioConverter
                    The AudioConverter to reset.
    @result     An OSStatus result code.
    
    @discussion
                Should be called whenever there is a discontinuity in the source audio stream
                being provided to the converter. This will flush any internal buffers in the
                converter.
*/
@available(OSX 10.1, *)
func AudioConverterReset(inAudioConverter: AudioConverterRef) -> OSStatus

/*!
    @function   AudioConverterGetPropertyInfo
    @abstract   Returns information about an AudioConverter property.

    @param      inAudioConverter
                    The AudioConverter to query.
    @param      inPropertyID
                    The property to query.
    @param      outSize
                    If non-null, on exit, the maximum size of the property value in bytes.
    @param      outWritable
                    If non-null, on exit, indicates whether the property value is writable.
    @result     An OSStatus result code.
*/
@available(OSX 10.1, *)
func AudioConverterGetPropertyInfo(inAudioConverter: AudioConverterRef, _ inPropertyID: AudioConverterPropertyID, _ outSize: UnsafeMutablePointer<UInt32>, _ outWritable: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus

/*!
    @function   AudioConverterGetProperty
    @abstract   Returns an AudioConverter property value.

    @param      inAudioConverter
                    The AudioConverter to query.
    @param      inPropertyID
                    The property to fetch.
    @param      ioPropertyDataSize
                    On entry, the size of the memory pointed to by outPropertyData. On 
                    successful exit, the size of the property value.
    @param      outPropertyData
                    On exit, the property value.
    @result     An OSStatus result code.
*/
@available(OSX 10.1, *)
func AudioConverterGetProperty(inAudioConverter: AudioConverterRef, _ inPropertyID: AudioConverterPropertyID, _ ioPropertyDataSize: UnsafeMutablePointer<UInt32>, _ outPropertyData: UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @function   AudioConverterSetProperty
    @abstract   Sets an AudioConverter property value.

    @param      inAudioConverter
                    The AudioConverter to modify.
    @param      inPropertyID
                    The property to set.
    @param      inPropertyDataSize
                    The size in bytes of the property value.
    @param      inPropertyData
                    Points to the new property value.
    @result     An OSStatus result code.
*/
@available(OSX 10.1, *)
func AudioConverterSetProperty(inAudioConverter: AudioConverterRef, _ inPropertyID: AudioConverterPropertyID, _ inPropertyDataSize: UInt32, _ inPropertyData: UnsafePointer<Void>) -> OSStatus

/*!
    @typedef    AudioConverterInputDataProc
    @abstract   Callback function for supplying input data to AudioConverterFillBuffer.

    @param      inAudioConverter
                    The AudioConverter requesting input.
    @param      ioDataSize
                    On entry, the minimum number of bytes of audio data the converter
                    would like in order to fulfill its current FillBuffer request.
                    On exit, the number of bytes of audio data actually being provided
                    for input, or 0 if there is no more input.
    @param      outData
                    On exit, *outData should point to the audio data being provided
                    for input.
    @param      inUserData
                    The inInputDataProcUserData parameter passed to AudioConverterFillBuffer().
    @result     An OSStatus result code.
    
    @discussion
                <b>NOTE:</b> This API is now deprecated, 
                use AudioConverterFillComplexBuffer instead.

                This callback function supplies input to AudioConverterFillBuffer.
                
                The AudioConverter requests a minimum amount of data (*ioDataSize). The callback
                may return any amount of data. If it is less than than the minimum, the callback
                will simply be called again in the near future.

                The callback supplies a pointer to a buffer of audio data. The callback is
                responsible for not freeing or altering this buffer until it is called again.
                
                If the callback returns an error, it must return zero bytes of data.
                AudioConverterFillBuffer will stop producing output and return whatever output
                has already been produced to its caller, along with the error code. This
                mechanism can be used when an input proc has temporarily run out of data, but
                has not yet reached end of stream.
*/
typealias AudioConverterInputDataProc = @convention(c) (AudioConverterRef, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<UnsafeMutablePointer<Void>>, UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @function   AudioConverterConvertBuffer
    @abstract   Converts data from an input buffer to an output buffer.

    @param      inAudioConverter
                    The AudioConverter to use.
    @param      inInputDataSize
                    The size of the buffer inInputData.
    @param      inInputData
                    The input audio data buffer.
    @param      ioOutputDataSize
                    On entry, the size of the buffer outOutputData. On exit, the number of bytes
                    written to outOutputData.
    @param      outOutputData
                    The output data buffer.
    @result
                Produces a buffer of output data from an AudioConverter, using the supplied
                input buffer.
    @discussion
                <b>WARNING:</b> this function will fail for any conversion where there is a
                variable relationship between the input and output data buffer sizes. This
                includes sample rate conversions and most compressed formats. In these cases,
                use AudioConverterFillComplexBuffer. Generally this function is only appropriate for
                PCM-to-PCM conversions where there is no sample rate conversion.
*/
@available(OSX 10.1, *)
func AudioConverterConvertBuffer(inAudioConverter: AudioConverterRef, _ inInputDataSize: UInt32, _ inInputData: UnsafePointer<Void>, _ ioOutputDataSize: UnsafeMutablePointer<UInt32>, _ outOutputData: UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @typedef    AudioConverterComplexInputDataProc
    @abstract   Callback function for supplying input data to AudioConverterFillComplexBuffer.

    @param      inAudioConverter
                    The AudioConverter requesting input.
    @param      ioNumberDataPackets
                    On entry, the minimum number of packets of input audio data the converter
                    would like in order to fulfill its current FillBuffer request. On exit, the
                    number of packets of audio data actually being provided for input, or 0 if
                    there is no more input.
    @param      ioData
                    On exit, the members of ioData should be set to point to the audio data
                    being provided for input.
    @param      outDataPacketDescription
                    If non-null, on exit, the callback is expected to fill this in with
                    an AudioStreamPacketDescription for each packet of input data being provided.
    @param      inUserData
                    The inInputDataProcUserData parameter passed to AudioConverterFillComplexBuffer().
    @result     An OSStatus result code.
    
    @discussion
                This callback function supplies input to AudioConverterFillComplexBuffer.
                
                The AudioConverter requests a minimum number of packets (*ioNumberDataPackets).
                The callback may return one or more packets. If this is less than the minimum,
                the callback will simply be called again in the near future.

                The callback manipulates the members of ioData to point to one or more buffers
                of audio data (multiple buffers are used with non-interleaved PCM data). The
                callback is responsible for not freeing or altering this buffer until it is
                called again.

                If the callback returns an error, it must return zero packets of data.
                AudioConverterFillComplexBuffer will stop producing output and return whatever
                output has already been produced to its caller, along with the error code. This
                mechanism can be used when an input proc has temporarily run out of data, but
                has not yet reached end of stream.
*/
typealias AudioConverterComplexInputDataProc = @convention(c) (AudioConverterRef, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<AudioBufferList>, UnsafeMutablePointer<UnsafeMutablePointer<AudioStreamPacketDescription>>, UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @function   AudioConverterFillComplexBuffer
    @abstract   Converts data supplied by an input callback function, supporting non-interleaved
                and packetized formats.

    @param      inAudioConverter
                    The AudioConverter to use.
    @param      inInputDataProc
                    A callback function which supplies the input data.
    @param      inInputDataProcUserData
                    A value for the use of the callback function.
    @param      ioOutputDataPacketSize
                    On entry, the capacity of outOutputData expressed in packets in the
                    converter's output format. On exit, the number of packets of converted
                    data that were written to outOutputData.
    @param      outOutputData
                    The converted output data is written to this buffer.
    @param      outPacketDescription
                    If non-null, and the converter's output uses packet descriptions, then
                    packet descriptions are written to this array. It must point to a memory
                    block capable of holding *ioOutputDataPacketSize packet descriptions.
                    (See AudioFormat.h for ways to determine whether an audio format
                    uses packet descriptions).
    @result     An OSStatus result code.

    @discussion
                Produces a buffer list of output data from an AudioConverter. The supplied input
                callback function is called whenever necessary.
*/
@available(OSX 10.2, *)
func AudioConverterFillComplexBuffer(inAudioConverter: AudioConverterRef, _ inInputDataProc: AudioConverterComplexInputDataProc, _ inInputDataProcUserData: UnsafeMutablePointer<Void>, _ ioOutputDataPacketSize: UnsafeMutablePointer<UInt32>, _ outOutputData: UnsafeMutablePointer<AudioBufferList>, _ outPacketDescription: UnsafeMutablePointer<AudioStreamPacketDescription>) -> OSStatus

/*!
    @function   AudioConverterConvertComplexBuffer
    @abstract   Converts PCM data from an input buffer list to an output buffer list.

    @param      inAudioConverter
                    The AudioConverter to use.
    @param      inNumberPCMFrames
                    The number of PCM frames to convert.
    @param      inInputData
                    The source audio buffer list.
    @param      outOutputData
                    The converted output data is written to this buffer list.
    @result     An OSStatus result code.
    @discussion
                <b>WARNING:</b> this function will fail for any conversion where there is a
                variable relationship between the input and output data buffer sizes. This
                includes sample rate conversions and most compressed formats. In these cases,
                use AudioConverterFillComplexBuffer. Generally this function is only appropriate for
                PCM-to-PCM conversions where there is no sample rate conversion.
*/
@available(OSX 10.7, *)
func AudioConverterConvertComplexBuffer(inAudioConverter: AudioConverterRef, _ inNumberPCMFrames: UInt32, _ inInputData: UnsafePointer<AudioBufferList>, _ outOutputData: UnsafeMutablePointer<AudioBufferList>) -> OSStatus

/*!
	@typedef	AudioFileTypeID
	@abstract	Identifier for an audio file type.
*/
typealias AudioFileTypeID = UInt32
var kAudioFileAIFFType: AudioFileTypeID { get }
var kAudioFileAIFCType: AudioFileTypeID { get }
var kAudioFileWAVEType: AudioFileTypeID { get }
var kAudioFileSoundDesigner2Type: AudioFileTypeID { get }
var kAudioFileNextType: AudioFileTypeID { get }
var kAudioFileMP3Type: AudioFileTypeID { get }
var kAudioFileMP2Type: AudioFileTypeID { get }
var kAudioFileMP1Type: AudioFileTypeID { get }
var kAudioFileAC3Type: AudioFileTypeID { get }
var kAudioFileAAC_ADTSType: AudioFileTypeID { get }
var kAudioFileMPEG4Type: AudioFileTypeID { get }
var kAudioFileM4AType: AudioFileTypeID { get }
var kAudioFileM4BType: AudioFileTypeID { get }
var kAudioFileCAFType: AudioFileTypeID { get }
var kAudioFile3GPType: AudioFileTypeID { get }
var kAudioFile3GP2Type: AudioFileTypeID { get }
var kAudioFileAMRType: AudioFileTypeID { get }
var kAudioFileUnspecifiedError: OSStatus { get }
var kAudioFileUnsupportedFileTypeError: OSStatus { get }
var kAudioFileUnsupportedDataFormatError: OSStatus { get }
var kAudioFileUnsupportedPropertyError: OSStatus { get }
var kAudioFileBadPropertySizeError: OSStatus { get }
var kAudioFilePermissionsError: OSStatus { get }
var kAudioFileNotOptimizedError: OSStatus { get }
var kAudioFileInvalidChunkError: OSStatus { get }
var kAudioFileDoesNotAllow64BitDataSizeError: OSStatus { get }
var kAudioFileInvalidPacketOffsetError: OSStatus { get }
var kAudioFileInvalidFileError: OSStatus { get }
var kAudioFileOperationNotSupportedError: OSStatus { get }
var kAudioFileNotOpenError: OSStatus { get }
var kAudioFileEndOfFileError: OSStatus { get }
var kAudioFilePositionError: OSStatus { get }
var kAudioFileFileNotFoundError: OSStatus { get }

/*!
    @enum AudioFileFlags
    @abstract   These are flags that can be used with the CreateURL API call
    @constant   kAudioFileFlags_EraseFile 
		If set, then the CreateURL call will erase the contents of an existing file
		If not set, then the CreateURL call will fail if the file already exists
    @constant   kAudioFileFlags_DontPageAlignAudioData 
		Normally, newly created and optimized files will have padding added in order to page align 
		the data to 4KB boundaries. This makes reading the data more efficient. 
		When disk space is a concern, this flag can be set so that the padding will not be added.
*/
struct AudioFileFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var EraseFile: AudioFileFlags { get }
  static var DontPageAlignAudioData: AudioFileFlags { get }
}
enum AudioFilePermissions : Int8 {
  init?(rawValue: Int8)
  var rawValue: Int8 { get }
  case ReadPermission
  case WritePermission
  case ReadWritePermission
}

/*!
    @typedef	AudioFileID
    @abstract   An opaque reference to an AudioFile object.
*/
typealias AudioFileID = COpaquePointer

/*!
    @typedef	AudioFilePropertyID
    @abstract   A constant for an AudioFile property.
*/
typealias AudioFilePropertyID = UInt32
var kAudioFileLoopDirection_NoLooping: UInt32 { get }
var kAudioFileLoopDirection_Forward: UInt32 { get }
var kAudioFileLoopDirection_ForwardAndBackward: UInt32 { get }
var kAudioFileLoopDirection_Backward: UInt32 { get }

/*!
    @struct		AudioFile_SMPTE_Time
    @abstract   A struct for describing a SMPTE time.
    @field      mHours						The hours.
    @field      mMinutes					The minutes.
    @field      mSeconds					The seconds.
    @field      mFrames						The frames.
    @field      mSubFrameSampleOffset		The sample offset within a frame.
*/
struct AudioFile_SMPTE_Time {
  var mHours: Int8
  var mMinutes: UInt8
  var mSeconds: UInt8
  var mFrames: UInt8
  var mSubFrameSampleOffset: UInt32
  init()
  init(mHours: Int8, mMinutes: UInt8, mSeconds: UInt8, mFrames: UInt8, mSubFrameSampleOffset: UInt32)
}
var kAudioFileMarkerType_Generic: UInt32 { get }

/*!
    @struct		AudioFileMarker
    @abstract   A marker annotates a position in an audio file with additional information.
    @discussion (description)
    @field      mFramePosition	The frame in the file counting from the start of the audio data.
    @field      mName			The name of this marker.
    @field      mMarkerID		A unique ID for this marker.
    @field      mSMPTETime		The SMPTE time for this marker.
    @field      mType			The marker type.
    @field      mReserved		A reserved field. Set to zero.
    @field      mChannel		The channel number that the marker refers to. Set to zero if marker applies to all channels.
*/
struct AudioFileMarker {
  var mFramePosition: Float64
  var mName: Unmanaged<CFString>?
  var mMarkerID: Int32
  var mSMPTETime: AudioFile_SMPTE_Time
  var mType: UInt32
  var mReserved: UInt16
  var mChannel: UInt16
  init()
  init(mFramePosition: Float64, mName: Unmanaged<CFString>?, mMarkerID: Int32, mSMPTETime: AudioFile_SMPTE_Time, mType: UInt32, mReserved: UInt16, mChannel: UInt16)
}

/*!
    @struct		AudioFileMarkerList
    @abstract   A list of AudioFileMarker.
    @field      mSMPTE_TimeType
					This defines the SMPTE timing scheme used in the marker list. See CAFFile.h for the values used here.
    @field      mNumberMarkers
					The number of markers in the mMarkers list.
    @field      mMarkers
					A list of AudioFileMarker.
*/
struct AudioFileMarkerList {
  var mSMPTE_TimeType: UInt32
  var mNumberMarkers: UInt32
  var mMarkers: (AudioFileMarker)
  init()
  init(mSMPTE_TimeType: UInt32, mNumberMarkers: UInt32, mMarkers: (AudioFileMarker))
}
func NumBytesToNumAudioFileMarkers(inNumBytes: Int) -> Int
func NumAudioFileMarkersToNumBytes(inNumMarkers: Int) -> Int

/*!
    @enum		AudioFileRegionFlags
    @abstract   These are flags for an AudioFileRegion that specify a playback direction.
    @discussion One or multiple of these flags can be set. For example, if both kAudioFileRegionFlag_LoopEnable and 
				kAudioFileRegionFlag_PlayForward are set, then the region will play as a forward loop. If only 
				kAudioFileRegionFlag_PlayForward is set, then the region will be played forward once.
    @constant   kAudioFileRegionFlag_LoopEnable
					If this flag is set, the region will be looped. One or both of the following must also be set.
    @constant   kAudioFileRegionFlag_PlayForward
					If this flag is set, the region will be played forward.
    @constant   kAudioFileRegionFlag_PlayBackward
					If this flag is set, the region will be played backward.
*/
struct AudioFileRegionFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var LoopEnable: AudioFileRegionFlags { get }
  static var PlayForward: AudioFileRegionFlags { get }
  static var PlayBackward: AudioFileRegionFlags { get }
}

/*!
    @struct		AudioFileRegion
    @abstract   An AudioFileRegion specifies a segment of audio data.
    @discussion Generally a region consists of at least two markers marking the beginning and end of the segment.
				There may also be other markers defining other meta information such as sync point.
    @field      mRegionID 
					each region must have a unique ID.
    @field      mName 
					The name of the region.
    @field      mFlags 
					AudioFileRegionFlags.
    @field      mNumberMarkers 
					The number of markers in the mMarkers array.
    @field      mMarkers 
					A variable length array of AudioFileMarkers.
*/
struct AudioFileRegion {
  var mRegionID: UInt32
  var mName: Unmanaged<CFString>
  var mFlags: AudioFileRegionFlags
  var mNumberMarkers: UInt32
  var mMarkers: (AudioFileMarker)
}

/*!
    @struct		AudioFileRegionList
    @abstract   A list of the AudioFileRegions in a file.
    @discussion This is the struct used by the kAudioFilePropertyRegionList property.
    @field      mSMPTE_TimeType
					This defines the SMPTE timing scheme used in the file. See CAFFile.h for the values used here.
    @field      mNumberRegions
					The number of regions in the mRegions list.
    @field      mRegions
					A list of AudioFileRegions. Note that AudioFileMarkers are variable length, so this list cannot 
					be accessed as an array. Use the NextAudioFileRegion macro for traversing the list instead.
*/
struct AudioFileRegionList {
  var mSMPTE_TimeType: UInt32
  var mNumberRegions: UInt32
  var mRegions: (AudioFileRegion)
  init()
  init(mSMPTE_TimeType: UInt32, mNumberRegions: UInt32, mRegions: (AudioFileRegion))
}
func NextAudioFileRegion(inAFRegionPtr: UnsafePointer<AudioFileRegion>) -> UnsafeMutablePointer<AudioFileRegion>

/*!
    @struct		AudioFramePacketTranslation
    @abstract   used for properties kAudioFilePropertyPacketToFrame and kAudioFilePropertyFrameToPacket
    @discussion See description of kAudioFilePropertyPacketToFrame and kAudioFilePropertyFrameToPacket
    @field      mFrame		a frame number.
    @field      mPacket		a packet number.
    @field      mFrameOffsetInPacket		a frame offset in a packet.
*/
struct AudioFramePacketTranslation {
  var mFrame: Int64
  var mPacket: Int64
  var mFrameOffsetInPacket: UInt32
  init()
  init(mFrame: Int64, mPacket: Int64, mFrameOffsetInPacket: UInt32)
}

/*!
    @enum		AudioBytePacketTranslation Flags
	
    @abstract   flags for the AudioBytePacketTranslation mFlags field
    @discussion		There is currently only one flag.
					
    @constant   kBytePacketTranslationFlag_IsEstimate
					If the set then the result value is an estimate.
*/
struct AudioBytePacketTranslationFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var BytePacketTranslationFlag_IsEstimate: AudioBytePacketTranslationFlags { get }
}

/*!
    @struct		AudioBytePacketTranslation
    @abstract   used for properties kAudioFileByteToPacket and kAudioFilePacketToByte
    @discussion See description of kAudioFileByteToPacket and kAudioFilePacketToByte
    @field      mByte		a byte number.
    @field      mPacket		a packet number.
    @field      mByteOffsetInPacket		a byte offset in a packet.
    @field      mFlags		if kBytePacketTranslationFlag_IsEstimate is set, then the value is an estimate.
*/
struct AudioBytePacketTranslation {
  var mByte: Int64
  var mPacket: Int64
  var mByteOffsetInPacket: UInt32
  var mFlags: AudioBytePacketTranslationFlags
  init()
  init(mByte: Int64, mPacket: Int64, mByteOffsetInPacket: UInt32, mFlags: AudioBytePacketTranslationFlags)
}

/*!
    @struct		AudioFilePacketTableInfo
    @abstract   This contains information about the number of valid frames in a file and where they begin and end.
    @discussion	Some data formats may have packets whose contents are not completely valid, but represent priming or remainder 
				frames that are not meant to be played. For example a file with 100 packets of AAC is nominally 1024 * 100 = 102400 frames
				of data. However the first 2112 frames of that may be priming frames and there may be some 
				number of remainder frames added to pad out to a full packet of 1024 frames. The priming and remainder frames should be 
				discarded. The total number of packets in the file times the frames per packet (or counting each packet's frames 
				individually for a variable frames per packet format) minus mPrimingFrames, minus mRemainderFrames, should 
				equal mNumberValidFrames.
    @field      mNumberValidFrames the number of valid frames in the file.
    @field      mPrimingFrames the number of invalid frames at the beginning of the file.
    @field      mRemainderFrames the number of invalid frames at the end of the file.
*/
struct AudioFilePacketTableInfo {
  var mNumberValidFrames: Int64
  var mPrimingFrames: Int32
  var mRemainderFrames: Int32
  init()
  init(mNumberValidFrames: Int64, mPrimingFrames: Int32, mRemainderFrames: Int32)
}
var kAFInfoDictionary_Artist: String { get }
var kAFInfoDictionary_Album: String { get }
var kAFInfoDictionary_Tempo: String { get }
var kAFInfoDictionary_KeySignature: String { get }
var kAFInfoDictionary_TimeSignature: String { get }
var kAFInfoDictionary_TrackNumber: String { get }
var kAFInfoDictionary_Year: String { get }
var kAFInfoDictionary_Composer: String { get }
var kAFInfoDictionary_Lyricist: String { get }
var kAFInfoDictionary_Genre: String { get }
var kAFInfoDictionary_Title: String { get }
var kAFInfoDictionary_RecordedDate: String { get }
var kAFInfoDictionary_Comments: String { get }
var kAFInfoDictionary_Copyright: String { get }
var kAFInfoDictionary_SourceEncoder: String { get }
var kAFInfoDictionary_EncodingApplication: String { get }
var kAFInfoDictionary_NominalBitRate: String { get }
var kAFInfoDictionary_ChannelLayout: String { get }
var kAFInfoDictionary_ApproximateDurationInSeconds: String { get }
var kAFInfoDictionary_SourceBitDepth: String { get }
var kAFInfoDictionary_ISRC: String { get }
var kAFInfoDictionary_SubTitle: String { get }

/*!
    @function	AudioFileCreateWithURL
    @abstract   creates a new audio file (or initialises an existing file)
    @discussion	creates a new (or initialises an existing) audio file specified by the URL.
					Upon success, an AudioFileID is returned which can be used for subsequent calls 
					to the AudioFile APIs.
    @param inFileRef		an CFURLRef fully specifying the path of the file to create/initialise
    @param inFileType		an AudioFileTypeID indicating the type of audio file to create.
    @param inFormat			an AudioStreamBasicDescription describing the data format that will be
							added to the audio file.
    @param inFlags			relevant flags for creating/opening the file. 
								if kAudioFileFlags_EraseFile is set, it will erase an existing file
								 if not set, then the Create call will fail if the URL is an existing file
    @param outAudioFile		if successful, an AudioFileID that can be used for subsequent AudioFile calls.
    @result					returns noErr if successful.
*/
@available(OSX 10.5, *)
func AudioFileCreateWithURL(inFileRef: CFURL, _ inFileType: AudioFileTypeID, _ inFormat: UnsafePointer<AudioStreamBasicDescription>, _ inFlags: AudioFileFlags, _ outAudioFile: UnsafeMutablePointer<AudioFileID>) -> OSStatus

/*!
    @function				AudioFileOpenURL
    @abstract				Open an existing audio file.
    @discussion				Open an existing audio file for reading or reading and writing.
    @param inFileRef		the CFURLRef of an existing audio file.
    @param inPermissions	use the permission constants
    @param inFileTypeHint	For files which have no filename extension and whose type cannot be easily or
							uniquely determined from the data (ADTS,AC3), this hint can be used to indicate the file type. 
							Otherwise you can pass zero for this. The hint is only used on OS versions 10.3.1 or greater.
							For OS versions prior to that, opening files of the above description will fail.
    @param outAudioFile		upon success, an AudioFileID that can be used for subsequent
							AudioFile calls.
    @result					returns noErr if successful.
*/
@available(OSX 10.5, *)
func AudioFileOpenURL(inFileRef: CFURL, _ inPermissions: AudioFilePermissions, _ inFileTypeHint: AudioFileTypeID, _ outAudioFile: UnsafeMutablePointer<AudioFileID>) -> OSStatus

/*!
    @typedef	AudioFile_ReadProc
    @abstract   A callback for reading data. used with AudioFileOpenWithCallbacks or AudioFileInitializeWithCallbacks.
    @discussion a function that will be called when AudioFile needs to read data.
    @param      inClientData	A pointer to the client data as set in the inClientData parameter to AudioFileXXXWithCallbacks.
    @param      inPosition		An offset into the data from which to read.
    @param      requestCount	The number of bytes to read.
    @param      buffer			The buffer in which to put the data read.
    @param      actualCount		The callback should set this to the number of bytes successfully read.
    @result						The callback should return noErr on success, or an appropriate error code on failure.
*/
typealias AudioFile_ReadProc = @convention(c) (UnsafeMutablePointer<Void>, Int64, UInt32, UnsafeMutablePointer<Void>, UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
    @typedef	AudioFile_WriteProc
    @abstract   A callback for writing data. used with AudioFileOpenWithCallbacks or AudioFileInitializeWithCallbacks.
    @discussion a function that will be called when AudioFile needs to write data.
    @param      inClientData	A pointer to the client data as set in the inClientData parameter to AudioFileXXXWithCallbacks.
    @param      inPosition		An offset into the data from which to read.
    @param      requestCount	The number of bytes to write.
    @param      buffer			The buffer containing the data to write.
    @param      actualCount		The callback should set this to the number of bytes successfully written.
    @result						The callback should return noErr on success, or an appropriate error code on failure.
*/
typealias AudioFile_WriteProc = @convention(c) (UnsafeMutablePointer<Void>, Int64, UInt32, UnsafePointer<Void>, UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
    @typedef	AudioFile_GetSizeProc
    @abstract   A callback for getting the size of the file data. used with AudioFileOpenWithCallbacks or AudioFileInitializeWithCallbacks.
    @discussion a function that will be called when AudioFile needs to determine the size of the file data. This size is for all of the 
				data in the file, not just the audio data.
    @param      inClientData	A pointer to the client data as set in the inClientData parameter to AudioFileXXXWithCallbacks.
    @result						The callback should return the size of the data.
*/
typealias AudioFile_GetSizeProc = @convention(c) (UnsafeMutablePointer<Void>) -> Int64

/*!
    @typedef	AudioFile_SetSizeProc
    @abstract   A callback for setting the size of the file data. used with AudioFileOpenWithCallbacks or AudioFileInitializeWithCallbacks.
    @discussion a function that will be called when AudioFile needs to set the size of the file data. This size is for all of the 
				data in the file, not just the audio data. This will only be called if the file is written to.
    @param      inClientData	A pointer to the client data as set in the inClientData parameter to AudioFileXXXWithCallbacks.
    @result						The callback should return the size of the data.
*/
typealias AudioFile_SetSizeProc = @convention(c) (UnsafeMutablePointer<Void>, Int64) -> OSStatus

/*!
    @function	AudioFileInitializeWithCallbacks
    @abstract   Wipe clean an existing file. You provide callbacks that the AudioFile API
				will use to get the data.
    @param inClientData		a constant that will be passed to your callbacks.
	@param inReadFunc		a function that will be called when AudioFile needs to read data.
	@param inWriteFunc		a function that will be called when AudioFile needs to write data.
	@param inGetSizeFunc	a function that will be called when AudioFile needs to know the file size.
	@param inSetSizeFunc	a function that will be called when AudioFile needs to set the file size.
	
    @param inFileType 		an AudioFileTypeID indicating the type of audio file to which to initialize the file. 
    @param inFormat 		an AudioStreamBasicDescription describing the data format that will be
							added to the audio file.
    @param inFlags			flags for creating/opening the file. Currently zero.
    @param outAudioFile		upon success, an AudioFileID that can be used for subsequent
							AudioFile calls.
    @result					returns noErr if successful.
*/
@available(OSX 10.3, *)
func AudioFileInitializeWithCallbacks(inClientData: UnsafeMutablePointer<Void>, _ inReadFunc: AudioFile_ReadProc, _ inWriteFunc: AudioFile_WriteProc, _ inGetSizeFunc: AudioFile_GetSizeProc, _ inSetSizeFunc: AudioFile_SetSizeProc, _ inFileType: AudioFileTypeID, _ inFormat: UnsafePointer<AudioStreamBasicDescription>, _ inFlags: AudioFileFlags, _ outAudioFile: UnsafeMutablePointer<AudioFileID>) -> OSStatus

/*!
    @function	AudioFileOpenWithCallbacks
    @abstract   Open an existing file. You provide callbacks that the AudioFile API
				will use to get the data.
    @param inClientData					a constant that will be passed to your callbacks.
	@param inReadFunc					a function that will be called when AudioFile needs to read data.
	@param inWriteFunc					a function that will be called when AudioFile needs to write data.
	@param inGetSizeFunc				a function that will be called when AudioFile needs to know the total file size.
	@param inSetSizeFunc				a function that will be called when AudioFile needs to set the file size.
	
    @param inFileTypeHint	For files which have no filename extension and whose type cannot be easily or
							uniquely determined from the data (ADTS,AC3), this hint can be used to indicate the file type. 
							Otherwise you can pass zero for this. The hint is only used on OS versions 10.3.1 or greater.
							For OS versions prior to that, opening files of the above description will fail.
    @param outAudioFile		upon success, an AudioFileID that can be used for subsequent
							AudioFile calls.
    @result					returns noErr if successful.
*/
@available(OSX 10.3, *)
func AudioFileOpenWithCallbacks(inClientData: UnsafeMutablePointer<Void>, _ inReadFunc: AudioFile_ReadProc, _ inWriteFunc: AudioFile_WriteProc?, _ inGetSizeFunc: AudioFile_GetSizeProc, _ inSetSizeFunc: AudioFile_SetSizeProc?, _ inFileTypeHint: AudioFileTypeID, _ outAudioFile: UnsafeMutablePointer<AudioFileID>) -> OSStatus

/*!
    @function	AudioFileClose
    @abstract   Close an existing audio file.
    @param      inAudioFile		an AudioFileID.
    @result						returns noErr if successful.
*/
@available(OSX 10.2, *)
func AudioFileClose(inAudioFile: AudioFileID) -> OSStatus

/*!
    @function	AudioFileOptimize
    @abstract   Move the audio data to the end of the file and other internal optimizations of the file structure.
	@discussion			Optimize the file so additional audio data can be appended to 
                        the existing data. Generally, this will place the audio data at 
                        the end of the file so additional writes can be placed to the 
                        file end. This can be a potentially expensive and time-consuming operation 
                        and should not be used during time critical operations. There is 
                        a kAudioFilePropertyIsOptimized property for checking on the optimized state 
                        of the file.
    @param      inAudioFile		an AudioFileID.
    @result						returns noErr if successful.
*/
@available(OSX 10.2, *)
func AudioFileOptimize(inAudioFile: AudioFileID) -> OSStatus

/*!
    @function	AudioFileReadBytes
    @abstract   Read bytes of audio data from the audio file. 
				
    @discussion				Returns kAudioFileEndOfFileError when read encounters end of file.
    @param inAudioFile		an AudioFileID.
    @param inUseCache 		true if it is desired to cache the data upon read, else false
    @param inStartingByte	the byte offset of the audio data desired to be returned
    @param ioNumBytes 		on input, the number of bytes to read, on output, the number of
							bytes actually read.
    @param outBuffer 		outBuffer should be a void * to user allocated memory large enough for the requested bytes. 
    @result					returns noErr if successful.
*/
@available(OSX 10.2, *)
func AudioFileReadBytes(inAudioFile: AudioFileID, _ inUseCache: Bool, _ inStartingByte: Int64, _ ioNumBytes: UnsafeMutablePointer<UInt32>, _ outBuffer: UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @function				AudioFileWriteBytes
    @abstract				Write bytes of audio data to the audio file.
    @param inAudioFile		an AudioFileID.
    @param inUseCache 		true if it is desired to cache the data upon write, else false
    @param inStartingByte	the byte offset where the audio data should be written
    @param ioNumBytes 		on input, the number of bytes to write, on output, the number of
							bytes actually written.
    @param inBuffer 		inBuffer should be a void * containing the bytes to be written 
    @result					returns noErr if successful.
*/
@available(OSX 10.2, *)
func AudioFileWriteBytes(inAudioFile: AudioFileID, _ inUseCache: Bool, _ inStartingByte: Int64, _ ioNumBytes: UnsafeMutablePointer<UInt32>, _ inBuffer: UnsafePointer<Void>) -> OSStatus

/*!
    @function	AudioFileReadPacketData
    @abstract   Read packets of audio data from the audio file.
    @discussion AudioFileReadPacketData reads as many of the requested number of packets
				as will fit in the buffer size given by ioNumPackets.
				Unlike the deprecated AudioFileReadPackets, ioNumPackets must be initialized.
				If the byte size of the number packets requested is 
				less than the buffer size, ioNumBytes will be reduced.
				If the buffer is too small for the number of packets 
				requested, ioNumPackets and ioNumBytes will be reduced 
				to the number of packets that can be accommodated and their byte size.
				Returns kAudioFileEndOfFileError when read encounters end of file.
				For all uncompressed formats, packets == frames.

    @param inAudioFile				an AudioFileID.
    @param inUseCache 				true if it is desired to cache the data upon read, else false
    @param ioNumBytes				on input the size of outBuffer in bytes. 
									on output, the number of bytes actually returned.
    @param outPacketDescriptions 	An array of packet descriptions describing the packets being returned. 
									The size of the array must be greater or equal to the number of packets requested. 
									On return the packet description will be filled out with the packet offsets and sizes.
									Packet descriptions are ignored for CBR data.   
    @param inStartingPacket 		The packet index of the first packet desired to be returned
    @param ioNumPackets 			on input, the number of packets to read, on output, the number of
									packets actually read.
    @param outBuffer 				outBuffer should be a pointer to user allocated memory.
    @result							returns noErr if successful.
*/
@available(OSX 10.6, *)
func AudioFileReadPacketData(inAudioFile: AudioFileID, _ inUseCache: Bool, _ ioNumBytes: UnsafeMutablePointer<UInt32>, _ outPacketDescriptions: UnsafeMutablePointer<AudioStreamPacketDescription>, _ inStartingPacket: Int64, _ ioNumPackets: UnsafeMutablePointer<UInt32>, _ outBuffer: UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @function	AudioFileReadPackets
    @abstract   Read packets of audio data from the audio file.
    @discussion AudioFileReadPackets is DEPRECATED. Use AudioFileReadPacketData instead.
				READ THE HEADER DOC FOR AudioFileReadPacketData. It is not a drop-in replacement.
				In particular, for AudioFileReadPacketData ioNumBytes must be initialized to the buffer size.
				AudioFileReadPackets assumes you have allocated your buffer to ioNumPackets times the maximum packet size.
				For many compressed formats this will only use a portion of the buffer since the ratio of the maximum 
				packet size to the typical packet size can be large. Use AudioFileReadPacketData instead.
	
    @param inAudioFile				an AudioFileID.
    @param inUseCache 				true if it is desired to cache the data upon read, else false
    @param outNumBytes				on output, the number of bytes actually returned
    @param outPacketDescriptions 	on output, an array of packet descriptions describing
									the packets being returned. NULL may be passed for this
									parameter. Nothing will be returned for linear pcm data.   
    @param inStartingPacket 		the packet index of the first packet desired to be returned
    @param ioNumPackets 			on input, the number of packets to read, on output, the number of
									packets actually read.
    @param outBuffer 				outBuffer should be a pointer to user allocated memory of size: 
									number of packets requested times file's maximum (or upper bound on)
									packet size.
    @result							returns noErr if successful.
*/
@available(OSX, introduced=10.2, deprecated=10.10)
func AudioFileReadPackets(inAudioFile: AudioFileID, _ inUseCache: Bool, _ outNumBytes: UnsafeMutablePointer<UInt32>, _ outPacketDescriptions: UnsafeMutablePointer<AudioStreamPacketDescription>, _ inStartingPacket: Int64, _ ioNumPackets: UnsafeMutablePointer<UInt32>, _ outBuffer: UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @function	AudioFileWritePackets
    @abstract   Write packets of audio data to the audio file.
    @discussion For all uncompressed formats, packets == frames.
    @param inAudioFile				an AudioFileID.
    @param inUseCache 				true if it is desired to cache the data upon write, else false
    @param inNumBytes				the number of bytes being provided for write
    @param inPacketDescriptions 	an array of packet descriptions describing the packets being 
									provided. Not all formats require packet descriptions to be 
									provided. NULL may be passed if no descriptions are required.   
    @param inStartingPacket 		the packet index of where the first packet provided should be placed.
    @param ioNumPackets 			on input, the number of packets to write, on output, the number of
									packets actually written.
    @param inBuffer 				a void * to user allocated memory containing the packets to write.
    @result							returns noErr if successful.
*/
@available(OSX 10.2, *)
func AudioFileWritePackets(inAudioFile: AudioFileID, _ inUseCache: Bool, _ inNumBytes: UInt32, _ inPacketDescriptions: UnsafePointer<AudioStreamPacketDescription>, _ inStartingPacket: Int64, _ ioNumPackets: UnsafeMutablePointer<UInt32>, _ inBuffer: UnsafePointer<Void>) -> OSStatus

/*!
    @function	AudioFileCountUserData
    @abstract   Get the number of user data items with a certain ID in the file
    @discussion		"User Data" refers to chunks in AIFF, CAF and WAVE files, or resources 
					in Sound Designer II files, and possibly other things in other files.
					For simplicity, referred to below as "chunks".
    @param      inAudioFile			an AudioFileID.
    @param      inUserDataID		the four char code of the chunk.
    @param      outNumberItems		on output, if successful, number of chunks of this type in the file.
    @result							returns noErr if successful.
*/
@available(OSX 10.4, *)
func AudioFileCountUserData(inAudioFile: AudioFileID, _ inUserDataID: UInt32, _ outNumberItems: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
    @function	AudioFileGetUserDataSize
    @abstract   Get the size of user data in a file
    @param      inAudioFile			an AudioFileID.
    @param      inUserDataID		the four char code of the chunk.
    @param      inIndex				an index specifying which chunk if there are more than one.
    @param      outUserDataSize		on output, if successful, the size of the user data chunk.
    @result							returns noErr if successful.
*/
@available(OSX 10.4, *)
func AudioFileGetUserDataSize(inAudioFile: AudioFileID, _ inUserDataID: UInt32, _ inIndex: UInt32, _ outUserDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
    @function	AudioFileGetUserData
    @abstract   Get the data of a chunk in a file.
    @param      inAudioFile			an AudioFileID.
    @param      inUserDataID		the four char code of the chunk.
    @param      inIndex				an index specifying which chunk if there are more than one.
	@param		ioUserDataSize		the size of the buffer on input, size of bytes copied to buffer on output 
    @param      outUserData			a pointer to a buffer in which to copy the chunk data.
    @result							returns noErr if successful.
*/
@available(OSX 10.4, *)
func AudioFileGetUserData(inAudioFile: AudioFileID, _ inUserDataID: UInt32, _ inIndex: UInt32, _ ioUserDataSize: UnsafeMutablePointer<UInt32>, _ outUserData: UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @function	AudioFileSetUserData
    @abstract   Set the data of a chunk in a file.
    @param      inAudioFile			an AudioFileID.
    @param      inUserDataID		the four char code of the chunk.
    @param      inIndex				an index specifying which chunk if there are more than one.
	@param		inUserDataSize		on input the size of the data to copy, on output, size of bytes copied from the buffer  
    @param      inUserData			a pointer to a buffer from which to copy the chunk data 
									(only the contents of the chunk, not including the chunk header).
    @result							returns noErr if successful.
*/
@available(OSX 10.4, *)
func AudioFileSetUserData(inAudioFile: AudioFileID, _ inUserDataID: UInt32, _ inIndex: UInt32, _ inUserDataSize: UInt32, _ inUserData: UnsafePointer<Void>) -> OSStatus

/*!
    @function	AudioFileRemoveUserData
    @abstract   Remove a user chunk in a file.
    @param      inAudioFile			an AudioFileID.
    @param      inUserDataID		the four char code of the chunk.
    @param      inIndex				an index specifying which chunk if there are more than one.
    @result							returns noErr if successful.
*/
@available(OSX 10.5, *)
func AudioFileRemoveUserData(inAudioFile: AudioFileID, _ inUserDataID: UInt32, _ inIndex: UInt32) -> OSStatus
var kAudioFilePropertyFileFormat: AudioFilePropertyID { get }
var kAudioFilePropertyDataFormat: AudioFilePropertyID { get }
var kAudioFilePropertyIsOptimized: AudioFilePropertyID { get }
var kAudioFilePropertyMagicCookieData: AudioFilePropertyID { get }
var kAudioFilePropertyAudioDataByteCount: AudioFilePropertyID { get }
var kAudioFilePropertyAudioDataPacketCount: AudioFilePropertyID { get }
var kAudioFilePropertyMaximumPacketSize: AudioFilePropertyID { get }
var kAudioFilePropertyDataOffset: AudioFilePropertyID { get }
var kAudioFilePropertyChannelLayout: AudioFilePropertyID { get }
var kAudioFilePropertyDeferSizeUpdates: AudioFilePropertyID { get }
var kAudioFilePropertyDataFormatName: AudioFilePropertyID { get }
var kAudioFilePropertyMarkerList: AudioFilePropertyID { get }
var kAudioFilePropertyRegionList: AudioFilePropertyID { get }
var kAudioFilePropertyPacketToFrame: AudioFilePropertyID { get }
var kAudioFilePropertyFrameToPacket: AudioFilePropertyID { get }
var kAudioFilePropertyPacketToByte: AudioFilePropertyID { get }
var kAudioFilePropertyByteToPacket: AudioFilePropertyID { get }
var kAudioFilePropertyChunkIDs: AudioFilePropertyID { get }
var kAudioFilePropertyInfoDictionary: AudioFilePropertyID { get }
var kAudioFilePropertyPacketTableInfo: AudioFilePropertyID { get }
var kAudioFilePropertyFormatList: AudioFilePropertyID { get }
var kAudioFilePropertyPacketSizeUpperBound: AudioFilePropertyID { get }
var kAudioFilePropertyReserveDuration: AudioFilePropertyID { get }
var kAudioFilePropertyEstimatedDuration: AudioFilePropertyID { get }
var kAudioFilePropertyBitRate: AudioFilePropertyID { get }
var kAudioFilePropertyID3Tag: AudioFilePropertyID { get }
var kAudioFilePropertySourceBitDepth: AudioFilePropertyID { get }
var kAudioFilePropertyAlbumArtwork: AudioFilePropertyID { get }
var kAudioFilePropertyAudioTrackCount: AudioFilePropertyID { get }
var kAudioFilePropertyUseAudioTrack: AudioFilePropertyID { get }

/*!
    @function	AudioFileGetPropertyInfo
    @abstract   Get information about the size of a property of an AudioFile  and whether it can be set.
    @param      inAudioFile			an AudioFileID.
    @param      inPropertyID		an AudioFileProperty constant.
    @param      outDataSize			the size in bytes of the current value of the property. In order to get the property value, 
									you will need a buffer of this size.
    @param      isWritable			will be set to 1 if writable, or 0 if read only.
    @result							returns noErr if successful.
*/
@available(OSX 10.2, *)
func AudioFileGetPropertyInfo(inAudioFile: AudioFileID, _ inPropertyID: AudioFilePropertyID, _ outDataSize: UnsafeMutablePointer<UInt32>, _ isWritable: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
    @function	AudioFileGetProperty
    @abstract   Copies the value for a property of an AudioFile into a buffer.
    @param      inAudioFile			an AudioFileID.
    @param      inPropertyID		an AudioFileProperty constant.
    @param      ioDataSize			on input the size of the outPropertyData buffer. On output the number of bytes written to the buffer.
    @param      outPropertyData		the buffer in which to write the property data.
    @result							returns noErr if successful.
*/
@available(OSX 10.2, *)
func AudioFileGetProperty(inAudioFile: AudioFileID, _ inPropertyID: AudioFilePropertyID, _ ioDataSize: UnsafeMutablePointer<UInt32>, _ outPropertyData: UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @function	AudioFileSetProperty
    @abstract   Sets the value for a property of an AudioFile .
    @param      inAudioFile			an AudioFileID.
    @param      inPropertyID		an AudioFileProperty constant.
    @param      inDataSize			the size of the property data.
    @param      inPropertyData		the buffer containing the property data.
    @result							returns noErr if successful.
*/
@available(OSX 10.2, *)
func AudioFileSetProperty(inAudioFile: AudioFileID, _ inPropertyID: AudioFilePropertyID, _ inDataSize: UInt32, _ inPropertyData: UnsafePointer<Void>) -> OSStatus
var kAudioFileGlobalInfo_ReadableTypes: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_WritableTypes: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_FileTypeName: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_AvailableStreamDescriptionsForFormat: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_AvailableFormatIDs: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_AllExtensions: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_AllHFSTypeCodes: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_AllUTIs: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_AllMIMETypes: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_ExtensionsForType: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_HFSTypeCodesForType: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_UTIsForType: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_MIMETypesForType: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_TypesForMIMEType: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_TypesForUTI: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_TypesForHFSTypeCode: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_TypesForExtension: AudioFilePropertyID { get }

/*!
    @struct		AudioFileTypeAndFormatID
    @abstract   This is used as a specifier for kAudioFileGlobalInfo_AvailableStreamDescriptions
    @discussion This struct is used to specify a desired audio file type and data format ID  so
				that a list of stream descriptions of available formats can be obtained.
    @field      mFileType
					a four char code for the file type such as kAudioFileAIFFType, kAudioFileCAFType, etc.
    @field      mFormatID
					a four char code for the format ID such as kAudioFormatLinearPCM, kAudioFormatMPEG4AAC, etc.
*/
struct AudioFileTypeAndFormatID {
  var mFileType: AudioFileTypeID
  var mFormatID: UInt32
  init()
  init(mFileType: AudioFileTypeID, mFormatID: UInt32)
}

/*!
    @function	AudioFileGetGlobalInfoSize
    @abstract   Get the size of a global property.
    @param      inPropertyID		an AudioFileGlobalInfo property constant.
    @param      inSpecifierSize		The size of the specifier data.
    @param      inSpecifier			A specifier is a buffer of data used as an input argument to some of the global info properties.
    @param      outDataSize			the size in bytes of the current value of the property. In order to get the property value, 
									you will need a buffer of this size.
    @result							returns noErr if successful.
*/
@available(OSX 10.3, *)
func AudioFileGetGlobalInfoSize(inPropertyID: AudioFilePropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafeMutablePointer<Void>, _ outDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
    @function	AudioFileGetGlobalInfo
    @abstract   Copies the value for a global property into a buffer.
    @param      inPropertyID		an AudioFileGlobalInfo property constant.
    @param      inSpecifierSize		The size of the specifier data.
    @param      inSpecifier			A specifier is a buffer of data used as an input argument to some of the global info properties.
    @param      ioDataSize			on input the size of the outPropertyData buffer. On output the number of bytes written to the buffer.
    @param      outPropertyData		the buffer in which to write the property data.
    @result							returns noErr if successful.
*/
@available(OSX 10.3, *)
func AudioFileGetGlobalInfo(inPropertyID: AudioFilePropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafeMutablePointer<Void>, _ ioDataSize: UnsafeMutablePointer<UInt32>, _ outPropertyData: UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @typedef	AudioFileComponent
    @abstract		represents an instance of an AudioFileComponent.
*/
typealias AudioFileComponent = AudioComponentInstance

/*!
    @typedef	AudioFileComponentPropertyID
    @abstract		a four char code for a property ID.
*/
typealias AudioFileComponentPropertyID = UInt32

/*!
    @function	AudioFileComponentCreateURL
    @abstract   creates a new (or initialises an existing) audio file specified by the URL.
    @discussion	creates a new (or initialises an existing) audio file specified by the URL.
    @param inComponent		an AudioFileComponent
    @param inFileRef		an CFURLRef fully specifying the path of the file to create/initialise
    @param inFormat			an AudioStreamBasicDescription describing the data format that will be
							added to the audio file.
    @param inFlags			relevant flags for creating/opening the file. 
								if kAudioFileFlags_EraseFile is set, it will erase an existing file
								 if not set, then the Create call will fail if the URL is an existing file
    @result					returns noErr if successful.
*/
@available(OSX 10.5, *)
func AudioFileComponentCreateURL(inComponent: AudioFileComponent, _ inFileRef: CFURL, _ inFormat: UnsafePointer<AudioStreamBasicDescription>, _ inFlags: UInt32) -> OSStatus

/*!
    @function				AudioFileComponentOpenURL
    @abstract				Open an existing audio file.
    @discussion				Open an existing audio file for reading or reading and writing.
    @param inComponent		an AudioFileComponent.
    @param inFileRef		the CFURLRef of an existing audio file.
    @param inPermissions	use the permission constants.
    @param inFileDescriptor	an open file descriptor.
    @result					returns noErr if successful.
*/
@available(OSX 10.5, *)
func AudioFileComponentOpenURL(inComponent: AudioFileComponent, _ inFileRef: CFURL, _ inPermissions: Int8, _ inFileDescriptor: Int32) -> OSStatus

/*!
    @function	AudioFileComponentOpenWithCallbacks
    @abstract   implements AudioFileOpenWithCallbacks
    @param inComponent		an AudioFileComponent
    @param inClientData 	a constant that will be passed to your callbacks.
	@param inReadFunc		a function that will be called when AudioFile needs to read data.
	@param inWriteFunc		a function that will be called when AudioFile needs to write data.
	@param inGetSizeFunc	a function that will be called when AudioFile needs to know the file size.
	@param inSetSizeFunc	a function that will be called when AudioFile needs to set the file size.
    @result					returns noErr if successful.
*/
@available(OSX 10.4, *)
func AudioFileComponentOpenWithCallbacks(inComponent: AudioFileComponent, _ inClientData: UnsafeMutablePointer<Void>, _ inReadFunc: AudioFile_ReadProc, _ inWriteFunc: AudioFile_WriteProc, _ inGetSizeFunc: AudioFile_GetSizeProc, _ inSetSizeFunc: AudioFile_SetSizeProc) -> OSStatus

/*!
    @function	AudioFileComponentInitializeWithCallbacks
    @abstract   implements AudioFileInitializeWithCallbacks
    @param inComponent		an AudioFileComponent
    @param inClientData 	a constant that will be passed to your callbacks.
	@param inReadFunc		a function that will be called when AudioFile needs to read data.
	@param inWriteFunc		a function that will be called when AudioFile needs to write data.
	@param inGetSizeFunc	a function that will be called when AudioFile needs to know the file size.
	@param inSetSizeFunc	a function that will be called when AudioFile needs to set the file size.
    @param inFileType 		an AudioFileTypeID indicating the type of audio file to which to initialize the file. 
    @param inFormat			an AudioStreamBasicDescription describing the data format that will be
							added to the audio file.
    @param inFlags			relevant flags for creating/opening the file. Currently zero.
    @result					returns noErr if successful.
*/
@available(OSX 10.4, *)
func AudioFileComponentInitializeWithCallbacks(inComponent: AudioFileComponent, _ inClientData: UnsafeMutablePointer<Void>, _ inReadFunc: AudioFile_ReadProc, _ inWriteFunc: AudioFile_WriteProc, _ inGetSizeFunc: AudioFile_GetSizeProc, _ inSetSizeFunc: AudioFile_SetSizeProc, _ inFileType: UInt32, _ inFormat: UnsafePointer<AudioStreamBasicDescription>, _ inFlags: UInt32) -> OSStatus

/*!
    @function	AudioFileComponentCloseFile
    @abstract   implements AudioFileClose.
    @param inComponent		an AudioFileComponent
    @result					returns noErr if successful.
*/
@available(OSX 10.4, *)
func AudioFileComponentCloseFile(inComponent: AudioFileComponent) -> OSStatus

/*!
    @function	AudioFileComponentOptimize
    @abstract   implements AudioFileOptimize.
    @param inComponent		an AudioFileComponent
    @result					returns noErr if successful.
*/
@available(OSX 10.4, *)
func AudioFileComponentOptimize(inComponent: AudioFileComponent) -> OSStatus

/*!
    @function	AudioFileComponentReadBytes
    @abstract   implements AudioFileReadBytes. 
				
    @discussion				Returns kAudioFileEndOfFileError when read encounters end of file.
    @param inComponent		an AudioFileComponent
    @param inUseCache 		true if it is desired to cache the data upon read, else false
    @param inStartingByte	the byte offset of the audio data desired to be returned
    @param ioNumBytes 		on input, the number of bytes to read, on output, the number of
							bytes actually read.
    @param outBuffer 		outBuffer should be a void * to user allocated memory large enough for the requested bytes. 
    @result					returns noErr if successful.
*/
@available(OSX 10.4, *)
func AudioFileComponentReadBytes(inComponent: AudioFileComponent, _ inUseCache: Bool, _ inStartingByte: Int64, _ ioNumBytes: UnsafeMutablePointer<UInt32>, _ outBuffer: UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @function				AudioFileComponentWriteBytes
    @abstract				implements AudioFileWriteBytes.
    @param inComponent		an AudioFileComponent
    @param inUseCache 		true if it is desired to cache the data upon write, else false
    @param inStartingByte	the byte offset where the audio data should be written
    @param ioNumBytes 		on input, the number of bytes to write, on output, the number of
							bytes actually written.
    @param inBuffer 		inBuffer should be a void * containing the bytes to be written 
    @result					returns noErr if successful.
*/
@available(OSX 10.4, *)
func AudioFileComponentWriteBytes(inComponent: AudioFileComponent, _ inUseCache: Bool, _ inStartingByte: Int64, _ ioNumBytes: UnsafeMutablePointer<UInt32>, _ inBuffer: UnsafePointer<Void>) -> OSStatus

/*!
    @function	AudioFileComponentReadPackets
    @abstract   implements AudioFileReadPackets.
    @discussion For all uncompressed formats, packets == frames.
				ioNumPackets less than requested indicates end of file.

    @param inComponent				an AudioFileComponent
    @param inUseCache 				true if it is desired to cache the data upon read, else false
    @param outNumBytes				on output, the number of bytes actually returned
    @param outPacketDescriptions 	on output, an array of packet descriptions describing
									the packets being returned. NULL may be passed for this
									parameter. Nothing will be returned for linear pcm data.   
    @param inStartingPacket 		the packet index of the first packet desired to be returned
    @param ioNumPackets 			on input, the number of packets to read, on output, the number of
									packets actually read.
    @param outBuffer 				outBuffer should be a pointer to user allocated memory of size: 
									number of packets requested times file's maximum (or upper bound on)
									packet size.
    @result							returns noErr if successful.
*/
@available(OSX 10.4, *)
func AudioFileComponentReadPackets(inComponent: AudioFileComponent, _ inUseCache: Bool, _ outNumBytes: UnsafeMutablePointer<UInt32>, _ outPacketDescriptions: UnsafeMutablePointer<AudioStreamPacketDescription>, _ inStartingPacket: Int64, _ ioNumPackets: UnsafeMutablePointer<UInt32>, _ outBuffer: UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @function	AudioFileComponentReadPacketData
    @abstract   implements AudioFileReadPacketData.
    @discussion For all uncompressed formats, packets == frames.
				If the byte size of the number packets requested is 
				less than the buffer size, ioNumBytes will be reduced.
				If the buffer is too small for the number of packets 
				requested, ioNumPackets and ioNumBytes will be reduced 
				to the number of packets that can be accommodated and their byte size.
				Returns kAudioFileEndOfFileError when read encounters end of file.

    @param inComponent				an AudioFileComponent
    @param inUseCache 				true if it is desired to cache the data upon read, else false
    @param ioNumBytes				on input the size of outBuffer in bytes. 
									on output, the number of bytes actually returned.
    @param outPacketDescriptions 	on output, an array of packet descriptions describing
									the packets being returned. NULL may be passed for this
									parameter. Nothing will be returned for linear pcm data.   
    @param inStartingPacket 		the packet index of the first packet desired to be returned
    @param ioNumPackets 			on input, the number of packets to read, on output, the number of
									packets actually read.
    @param outBuffer 				outBuffer should be a pointer to user allocated memory.
    @result							returns noErr if successful.
*/
@available(OSX 10.4, *)
func AudioFileComponentReadPacketData(inComponent: AudioFileComponent, _ inUseCache: Bool, _ ioNumBytes: UnsafeMutablePointer<UInt32>, _ outPacketDescriptions: UnsafeMutablePointer<AudioStreamPacketDescription>, _ inStartingPacket: Int64, _ ioNumPackets: UnsafeMutablePointer<UInt32>, _ outBuffer: UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @function	AudioFileComponentWritePackets
    @abstract   implements AudioFileWritePackets.
    @discussion For all uncompressed formats, packets == frames.
    @param inComponent				an AudioFileComponent
    @param inUseCache 				true if it is desired to cache the data upon write, else false
    @param inNumBytes				the number of bytes being provided for write
    @param inPacketDescriptions 	an array of packet descriptions describing the packets being 
									provided. Not all formats require packet descriptions to be 
									provided. NULL may be passed if no descriptions are required.   
    @param inStartingPacket 		the packet index of where the first packet provided should be placed.
    @param ioNumPackets 			on input, the number of packets to write, on output, the number of
									packets actually written.
    @param inBuffer 				a void * to user allocated memory containing the packets to write.
    @result							returns noErr if successful.
*/
@available(OSX 10.4, *)
func AudioFileComponentWritePackets(inComponent: AudioFileComponent, _ inUseCache: Bool, _ inNumBytes: UInt32, _ inPacketDescriptions: UnsafePointer<AudioStreamPacketDescription>, _ inStartingPacket: Int64, _ ioNumPackets: UnsafeMutablePointer<UInt32>, _ inBuffer: UnsafePointer<Void>) -> OSStatus

/*!
    @function	AudioFileComponentGetPropertyInfo
    @abstract   implements AudioFileGetPropertyInfo.
    @param		inComponent			an AudioFileComponent
    @param      inPropertyID		an AudioFileProperty constant.
    @param      outPropertySize		the size in bytes of the current value of the property. In order to get the property value, 
									you will need a buffer of this size.
    @param      outWritable			will be set to 1 if writable, or 0 if read only.
    @result							returns noErr if successful.
*/
@available(OSX 10.4, *)
func AudioFileComponentGetPropertyInfo(inComponent: AudioFileComponent, _ inPropertyID: AudioFileComponentPropertyID, _ outPropertySize: UnsafeMutablePointer<UInt32>, _ outWritable: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
    @function	AudioFileComponentGetProperty
    @abstract   implements AudioFileGetProperty.
    @param		inComponent			an AudioFileComponent
    @param      inPropertyID		an AudioFileProperty constant.
    @param      ioPropertyDataSize	on input the size of the outPropertyData buffer. On output the number of bytes written to the buffer.
    @param      outPropertyData		the buffer in which to write the property data.
    @result							returns noErr if successful.
*/
@available(OSX 10.4, *)
func AudioFileComponentGetProperty(inComponent: AudioFileComponent, _ inPropertyID: AudioFileComponentPropertyID, _ ioPropertyDataSize: UnsafeMutablePointer<UInt32>, _ outPropertyData: UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @function	AudioFileComponentSetProperty
    @abstract   implements AudioFileSetProperty.
    @param		inComponent			an AudioFileComponent
    @param      inPropertyID		an AudioFileProperty constant.
    @param      inPropertyDataSize	the size of the property data.
    @param      inPropertyData		the buffer containing the property data.
    @result							returns noErr if successful.
*/
@available(OSX 10.4, *)
func AudioFileComponentSetProperty(inComponent: AudioFileComponent, _ inPropertyID: AudioFileComponentPropertyID, _ inPropertyDataSize: UInt32, _ inPropertyData: UnsafePointer<Void>) -> OSStatus

/*!
    @function	AudioFileComponentCountUserData
    @abstract   implements AudioFileCountUserData
    @discussion		"User Data" refers to chunks in AIFF, CAF and WAVE files, or resources 
					in Sound Designer II files, and possibly other things in other files.
					For simplicity, referred to below as "chunks".
    @param inComponent				an AudioFileComponent
    @param inUserDataID				the four char code of the chunk.
    @param outNumberItems			on output, if successful, number of chunks of this type in the file.
    @result							returns noErr if successful.
*/
@available(OSX 10.4, *)
func AudioFileComponentCountUserData(inComponent: AudioFileComponent, _ inUserDataID: UInt32, _ outNumberItems: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
    @function	AudioFileComponentGetUserDataSize
    @abstract   implements AudioFileGetUserDataSize
    @param inComponent				an AudioFileComponent
    @param inUserDataID				the four char code of the chunk.
    @param inIndex					an index specifying which chunk if there are more than one.
    @param outUserDataSize			on output, if successful, the size of the user data chunk.
    @result							returns noErr if successful.
*/
@available(OSX 10.4, *)
func AudioFileComponentGetUserDataSize(inComponent: AudioFileComponent, _ inUserDataID: UInt32, _ inIndex: UInt32, _ outUserDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
    @function	AudioFileGetUserData
    @abstract   implements AudioFileGetUserData.
    @param		inComponent			an AudioFileComponent
    @param      inUserDataID		the four char code of the chunk.
    @param      inIndex				an index specifying which chunk if there are more than one.
	@param		ioUserDataSize		the size of the buffer on input, size of bytes copied to buffer on output 
    @param      outUserData			a pointer to a buffer in which to copy the chunk data.
    @result							returns noErr if successful.
*/
@available(OSX 10.4, *)
func AudioFileComponentGetUserData(inComponent: AudioFileComponent, _ inUserDataID: UInt32, _ inIndex: UInt32, _ ioUserDataSize: UnsafeMutablePointer<UInt32>, _ outUserData: UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @function	AudioFileComponentSetUserData
    @abstract   implements AudioFileSetUserData.
    @param		inComponent			an AudioFileComponent
    @param      inUserDataID		the four char code of the chunk.
    @param      inIndex				an index specifying which chunk if there are more than one.
	@param		inUserDataSize		on input the size of the data to copy, on output, size of bytes copied from the buffer  
    @param      inUserData			a pointer to a buffer from which to copy the chunk data 
									(only the contents of the chunk, not including the chunk header).
    @result							returns noErr if successful.
*/
@available(OSX 10.4, *)
func AudioFileComponentSetUserData(inComponent: AudioFileComponent, _ inUserDataID: UInt32, _ inIndex: UInt32, _ inUserDataSize: UInt32, _ inUserData: UnsafePointer<Void>) -> OSStatus

/*!
    @function	AudioFileComponentRemoveUserData
    @abstract   implements AudioFileRemoveUserData.
    @param		inComponent			an AudioFileComponent
    @param      inUserDataID		the four char code of the chunk.
    @param      inIndex				an index specifying which chunk if there are more than one.
    @result							returns noErr if successful.
*/
@available(OSX 10.5, *)
func AudioFileComponentRemoveUserData(inComponent: AudioFileComponent, _ inUserDataID: UInt32, _ inIndex: UInt32) -> OSStatus

/*!
    @function	AudioFileComponentExtensionIsThisFormat
    @abstract   used by the AudioFile API to determine if this component is appropriate for handling a file.
    @param		inComponent			an AudioFileComponent
    @param      inExtension			a CFString containing a file name extension.
    @param      outResult			on output, is set to 1 if the extension is recognized by this component, 0 if not.
    @result							returns noErr if successful.
*/
@available(OSX 10.4, *)
func AudioFileComponentExtensionIsThisFormat(inComponent: AudioFileComponent, _ inExtension: CFString, _ outResult: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
    @function	AudioFileComponentFileDataIsThisFormat
    @abstract   used by the AudioFile API to determine if this component is appropriate for handling a file.
    @param		inComponent			an AudioFileComponent
    @param      inDataByteSize		the size of inData in bytes.
    @param      inData				a pointer to a buffer of audio file data.
    @param      outResult			on output, is set to 1 if the file is recognized by this component, 0 if not.
    @result							returns noErr if successful.
*/
@available(OSX 10.4, *)
func AudioFileComponentFileDataIsThisFormat(inComponent: AudioFileComponent, _ inDataByteSize: UInt32, _ inData: UnsafePointer<Void>, _ outResult: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
    @function	AudioFileComponentGetGlobalInfoSize
    @abstract   implements AudioFileGetGlobalInfoSize.
    @param		inComponent			an AudioFileComponent
    @param      inPropertyID		an AudioFileGlobalInfo property constant.
    @param      inSpecifierSize		The size of the specifier data.
    @param      inSpecifier			A specifier is a buffer of data used as an input argument to some of the global info properties.
    @param      outPropertySize		the size in bytes of the current value of the property. In order to get the property value, 
									you will need a buffer of this size.
    @result							returns noErr if successful.
*/
@available(OSX 10.4, *)
func AudioFileComponentGetGlobalInfoSize(inComponent: AudioFileComponent, _ inPropertyID: AudioFileComponentPropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafePointer<Void>, _ outPropertySize: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
    @function	AudioFileComponentGetGlobalInfo
    @abstract   implements AudioFileGetGlobalInfo.
    @param		inComponent			an AudioFileComponent
    @param      inPropertyID		an AudioFileGlobalInfo property constant.
    @param      inSpecifierSize		The size of the specifier data.
    @param      inSpecifier			A specifier is a buffer of data used as an input argument to some of the global info properties.
    @param      ioPropertyDataSize	on input the size of the outPropertyData buffer. On output the number of bytes written to the buffer.
    @param      outPropertyData		the buffer in which to write the property data.
    @result							returns noErr if successful.
*/
@available(OSX 10.4, *)
func AudioFileComponentGetGlobalInfo(inComponent: AudioFileComponent, _ inPropertyID: AudioFileComponentPropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafePointer<Void>, _ ioPropertyDataSize: UnsafeMutablePointer<UInt32>, _ outPropertyData: UnsafeMutablePointer<Void>) -> OSStatus
var kAudioFileComponent_CanRead: AudioFilePropertyID { get }
var kAudioFileComponent_CanWrite: AudioFilePropertyID { get }
var kAudioFileComponent_FileTypeName: AudioFilePropertyID { get }
var kAudioFileComponent_UTIsForType: AudioFilePropertyID { get }
var kAudioFileComponent_MIMETypesForType: AudioFilePropertyID { get }
var kAudioFileComponent_ExtensionsForType: AudioFilePropertyID { get }
var kAudioFileComponent_AvailableFormatIDs: AudioFilePropertyID { get }
var kAudioFileComponent_AvailableStreamDescriptionsForFormat: AudioFilePropertyID { get }
var kAudioFileComponent_FastDispatchTable: AudioFilePropertyID { get }
var kAudioFileComponent_HFSTypeCodesForType: AudioFilePropertyID { get }
var kAudioFileCreateSelect: Int { get }
var kAudioFileOpenSelect: Int { get }
var kAudioFileInitializeSelect: Int { get }
var kAudioFileOpenWithCallbacksSelect: Int { get }
var kAudioFileInitializeWithCallbacksSelect: Int { get }
var kAudioFileCloseSelect: Int { get }
var kAudioFileOptimizeSelect: Int { get }
var kAudioFileReadBytesSelect: Int { get }
var kAudioFileWriteBytesSelect: Int { get }
var kAudioFileReadPacketsSelect: Int { get }
var kAudioFileWritePacketsSelect: Int { get }
var kAudioFileGetPropertyInfoSelect: Int { get }
var kAudioFileGetPropertySelect: Int { get }
var kAudioFileSetPropertySelect: Int { get }
var kAudioFileExtensionIsThisFormatSelect: Int { get }
var kAudioFileFileIsThisFormatSelect: Int { get }
var kAudioFileDataIsThisFormatSelect: Int { get }
var kAudioFileGetGlobalInfoSizeSelect: Int { get }
var kAudioFileGetGlobalInfoSelect: Int { get }
var kAudioFileCountUserDataSelect: Int { get }
var kAudioFileGetUserDataSizeSelect: Int { get }
var kAudioFileGetUserDataSelect: Int { get }
var kAudioFileSetUserDataSelect: Int { get }
var kAudioFileRemoveUserDataSelect: Int { get }
var kAudioFileCreateURLSelect: Int { get }
var kAudioFileOpenURLSelect: Int { get }
var kAudioFileFileDataIsThisFormatSelect: Int { get }
var kAudioFileReadPacketDataSelect: Int { get }
typealias ReadBytesFDF = @convention(c) (UnsafeMutablePointer<Void>, DarwinBoolean, Int64, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<Void>) -> OSStatus
typealias WriteBytesFDF = @convention(c) (UnsafeMutablePointer<Void>, DarwinBoolean, Int64, UnsafeMutablePointer<UInt32>, UnsafePointer<Void>) -> OSStatus
typealias ReadPacketsFDF = @convention(c) (UnsafeMutablePointer<Void>, DarwinBoolean, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<AudioStreamPacketDescription>, Int64, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<Void>) -> OSStatus
typealias ReadPacketDataFDF = @convention(c) (UnsafeMutablePointer<Void>, DarwinBoolean, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<AudioStreamPacketDescription>, Int64, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<Void>) -> OSStatus
typealias WritePacketsFDF = @convention(c) (UnsafeMutablePointer<Void>, DarwinBoolean, UInt32, UnsafePointer<AudioStreamPacketDescription>, Int64, UnsafeMutablePointer<UInt32>, UnsafePointer<Void>) -> OSStatus
typealias GetPropertyInfoFDF = @convention(c) (UnsafeMutablePointer<Void>, AudioFilePropertyID, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<UInt32>) -> OSStatus
typealias GetPropertyFDF = @convention(c) (UnsafeMutablePointer<Void>, AudioFilePropertyID, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<Void>) -> OSStatus
typealias SetPropertyFDF = @convention(c) (UnsafeMutablePointer<Void>, AudioFilePropertyID, UInt32, UnsafePointer<Void>) -> OSStatus
typealias CountUserDataFDF = @convention(c) (UnsafeMutablePointer<Void>, UInt32, UnsafeMutablePointer<UInt32>) -> OSStatus
typealias GetUserDataSizeFDF = @convention(c) (UnsafeMutablePointer<Void>, UInt32, UInt32, UnsafeMutablePointer<UInt32>) -> OSStatus
typealias GetUserDataFDF = @convention(c) (UnsafeMutablePointer<Void>, UInt32, UInt32, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<Void>) -> OSStatus
typealias SetUserDataFDF = @convention(c) (UnsafeMutablePointer<Void>, UInt32, UInt32, UInt32, UnsafePointer<Void>) -> OSStatus
typealias AudioFileComponentCreateURLProc = @convention(c) (UnsafeMutablePointer<Void>, CFURL, UnsafePointer<AudioStreamBasicDescription>, UInt32) -> OSStatus
typealias AudioFileComponentOpenURLProc = @convention(c) (UnsafeMutablePointer<Void>, CFURL, Int8, Int32) -> OSStatus
typealias AudioFileComponentOpenWithCallbacksProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, AudioFile_ReadProc, AudioFile_WriteProc, AudioFile_GetSizeProc, AudioFile_SetSizeProc) -> OSStatus
typealias AudioFileComponentInitializeWithCallbacksProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, AudioFile_ReadProc, AudioFile_WriteProc, AudioFile_GetSizeProc, AudioFile_SetSizeProc, UInt32, UnsafePointer<AudioStreamBasicDescription>, UInt32) -> OSStatus
typealias AudioFileComponentCloseProc = @convention(c) (UnsafeMutablePointer<Void>) -> OSStatus
typealias AudioFileComponentOptimizeProc = @convention(c) (UnsafeMutablePointer<Void>) -> OSStatus
typealias AudioFileComponentReadBytesProc = @convention(c) (UnsafeMutablePointer<Void>, DarwinBoolean, Int64, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<Void>) -> OSStatus
typealias AudioFileComponentWriteBytesProc = @convention(c) (UnsafeMutablePointer<Void>, DarwinBoolean, Int64, UnsafeMutablePointer<UInt32>, UnsafePointer<Void>) -> OSStatus
typealias AudioFileComponentReadPacketsProc = @convention(c) (UnsafeMutablePointer<Void>, DarwinBoolean, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<AudioStreamPacketDescription>, Int64, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<Void>) -> OSStatus
typealias AudioFileComponentReadPacketDataProc = @convention(c) (UnsafeMutablePointer<Void>, DarwinBoolean, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<AudioStreamPacketDescription>, Int64, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<Void>) -> OSStatus
typealias AudioFileComponentWritePacketsProc = @convention(c) (UnsafeMutablePointer<Void>, DarwinBoolean, UInt32, UnsafePointer<AudioStreamPacketDescription>, Int64, UnsafeMutablePointer<UInt32>, UnsafePointer<Void>) -> OSStatus
typealias AudioFileComponentGetPropertyInfoProc = @convention(c) (UnsafeMutablePointer<Void>, AudioFileComponentPropertyID, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<UInt32>) -> OSStatus
typealias AudioFileComponentGetPropertyProc = @convention(c) (UnsafeMutablePointer<Void>, AudioFileComponentPropertyID, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<Void>) -> OSStatus
typealias AudioFileComponentSetPropertyProc = @convention(c) (UnsafeMutablePointer<Void>, AudioFileComponentPropertyID, UInt32, UnsafePointer<Void>) -> OSStatus
typealias AudioFileComponentCountUserDataProc = @convention(c) (UnsafeMutablePointer<Void>, UInt32, UnsafeMutablePointer<UInt32>) -> OSStatus
typealias AudioFileComponentGetUserDataSizeProc = @convention(c) (UnsafeMutablePointer<Void>, UInt32, UInt32, UnsafeMutablePointer<UInt32>) -> OSStatus
typealias AudioFileComponentGetUserDataProc = @convention(c) (UnsafeMutablePointer<Void>, UInt32, UInt32, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<Void>) -> OSStatus
typealias AudioFileComponentSetUserDataProc = @convention(c) (UnsafeMutablePointer<Void>, UInt32, UInt32, UInt32, UnsafePointer<Void>) -> OSStatus
typealias AudioFileComponentRemoveUserDataProc = @convention(c) (UnsafeMutablePointer<Void>, UInt32, UInt32) -> OSStatus
typealias AudioFileComponentExtensionIsThisFormatProc = @convention(c) (UnsafeMutablePointer<Void>, CFString, UnsafeMutablePointer<UInt32>) -> OSStatus
typealias AudioFileComponentFileDataIsThisFormatProc = @convention(c) (UnsafeMutablePointer<Void>, UInt32, UnsafePointer<Void>, UnsafeMutablePointer<UInt32>) -> OSStatus
typealias AudioFileComponentGetGlobalInfoSizeProc = @convention(c) (UnsafeMutablePointer<Void>, AudioFileComponentPropertyID, UInt32, UnsafePointer<Void>, UnsafeMutablePointer<UInt32>) -> OSStatus
typealias AudioFileComponentGetGlobalInfoProc = @convention(c) (UnsafeMutablePointer<Void>, AudioFileComponentPropertyID, UInt32, UnsafePointer<Void>, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @enum AudioFileStreamPropertyFlags
    @constant   kAudioFileStreamPropertyFlag_PropertyIsCached 
		This flag is set in a call to AudioFileStream_PropertyListenerProc when the value of the property
		can be obtained at any later time. If this flag is not set, then you should either get the value of 
		the property from within this callback or set the flag kAudioFileStreamPropertyFlag_CacheProperty in order to signal
		to the parser to begin caching the property data. Otherwise the value may not be available in the future.
		
    @constant   kAudioFileStreamPropertyFlag_CacheProperty 
		This flag can be set by a property listener in order to signal to the parser that the client is
		interested in the value of the property and that it should be cached until the full value of the property is available.
*/
struct AudioFileStreamPropertyFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var PropertyIsCached: AudioFileStreamPropertyFlags { get }
  static var CacheProperty: AudioFileStreamPropertyFlags { get }
}

/*!	@enum	AudioFileStreamParseFlags
    @constant   kAudioFileStreamParseFlag_Discontinuity 
		This flag is passed in to AudioFileStreamParseBytes to signal a discontinuity. Any partial packet straddling a buffer
		boundary will be discarded. This is necessary to avoid being called with a corrupt packet. After a discontinuity occurs
		seeking may be approximate in some data formats.
*/
struct AudioFileStreamParseFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Discontinuity: AudioFileStreamParseFlags { get }
}

/*!	@enum	AudioFileStreamParseFlags
    @constant   kAudioFileStreamSeekFlag_OffsetIsEstimated 
		This flag may be returned from AudioFileStreamSeek if the byte offset is only an estimate, not exact.
*/
struct AudioFileStreamSeekFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var OffsetIsEstimated: AudioFileStreamSeekFlags { get }
}
typealias AudioFileStreamPropertyID = UInt32
typealias AudioFileStreamID = COpaquePointer
typealias AudioFileStream_PropertyListenerProc = @convention(c) (UnsafeMutablePointer<Void>, AudioFileStreamID, AudioFileStreamPropertyID, UnsafeMutablePointer<AudioFileStreamPropertyFlags>) -> Void
typealias AudioFileStream_PacketsProc = @convention(c) (UnsafeMutablePointer<Void>, UInt32, UInt32, UnsafePointer<Void>, UnsafeMutablePointer<AudioStreamPacketDescription>) -> Void
var kAudioFileStreamError_UnsupportedFileType: OSStatus { get }
var kAudioFileStreamError_UnsupportedDataFormat: OSStatus { get }
var kAudioFileStreamError_UnsupportedProperty: OSStatus { get }
var kAudioFileStreamError_BadPropertySize: OSStatus { get }
var kAudioFileStreamError_NotOptimized: OSStatus { get }
var kAudioFileStreamError_InvalidPacketOffset: OSStatus { get }
var kAudioFileStreamError_InvalidFile: OSStatus { get }
var kAudioFileStreamError_ValueUnknown: OSStatus { get }
var kAudioFileStreamError_DataUnavailable: OSStatus { get }
var kAudioFileStreamError_IllegalOperation: OSStatus { get }
var kAudioFileStreamError_UnspecifiedError: OSStatus { get }
var kAudioFileStreamError_DiscontinuityCantRecover: OSStatus { get }
var kAudioFileStreamProperty_ReadyToProducePackets: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_FileFormat: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_DataFormat: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_FormatList: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_MagicCookieData: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_AudioDataByteCount: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_AudioDataPacketCount: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_MaximumPacketSize: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_DataOffset: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_ChannelLayout: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_PacketToFrame: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_FrameToPacket: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_PacketToByte: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_ByteToPacket: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_PacketTableInfo: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_PacketSizeUpperBound: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_AverageBytesPerPacket: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_BitRate: AudioFileStreamPropertyID { get }
var kAudioFileStreamProperty_InfoDictionary: AudioFileStreamPropertyID { get }

/*!
	@function		AudioFileStreamOpen

	@discussion		Create a new audio file stream parser.
					The client provides the parser with data and the parser calls
					callbacks when interesting things are found in the data, such as properties and 
					audio packets.

    @param			inClientData					
						a constant that will be passed to your callbacks.
	@param			inPropertyListenerProc
						Whenever the value of a property is parsed in the data, this function will be called.
						You can then get the value of the property from in the callback. In some cases, due to 
						boundaries in the input data, the property may return kAudioFileStreamError_DataUnavailable.
						When unavailable data is requested from within the property listener, the parser will begin 
						caching the property value and will call the property listener again when the property is
						available. For property values for which kAudioFileStreamPropertyFlag_PropertyIsCached is unset, this 
						will be the only opportunity to get the value of the property, since the data will be 
						disposed upon return of the property listener callback. 
	@param			inPacketsProc
						Whenever packets are parsed in the data, a pointer to the packets is passed to the client 
						using this callback. At times only a single packet may be passed due to boundaries in the 
						input data.
    @param 			inFileTypeHint	
						For files whose type cannot be easily or uniquely determined from the data (ADTS,AC3), 
						this hint can be used to indicate the file type. 
						Otherwise if you do not know the file type, you can pass zero. 
	@param			outAudioFileStream 
						A new file stream ID for use in other AudioFileStream API calls.
*/
@available(OSX 10.5, *)
func AudioFileStreamOpen(inClientData: UnsafeMutablePointer<Void>, _ inPropertyListenerProc: AudioFileStream_PropertyListenerProc, _ inPacketsProc: AudioFileStream_PacketsProc, _ inFileTypeHint: AudioFileTypeID, _ outAudioFileStream: UnsafeMutablePointer<AudioFileStreamID>) -> OSStatus

/*!
	@function		AudioFileStreamParseBytes

	@discussion		This call is the means for streams to supply data to the parser. 
					Data is expected to be passed in sequentially from the beginning of the file, without gaps.
					In the course of parsing, the client's property and/or packets callbacks may be called.

	@param			inAudioFileStream 
						The file stream ID
	@param			inDataByteSize 
						The number of bytes passed in for parsing.
	@param			inData 
						The data passed in to be parsed. 
	@param			inFlags 
						If there is a data discontinuity, then kAudioFileStreamParseFlag_Discontinuity should be set true. 
*/
@available(OSX 10.5, *)
func AudioFileStreamParseBytes(inAudioFileStream: AudioFileStreamID, _ inDataByteSize: UInt32, _ inData: UnsafePointer<Void>, _ inFlags: AudioFileStreamParseFlags) -> OSStatus

/*!
	@function		AudioFileStreamSeek

	@discussion		This call is used to seek in the data stream. The client passes in a packet 
					offset to seek to and the parser passes back a byte offset from which to
					get the data to satisfy that request. The data passed to the next call to 
					AudioFileParseBytes will be assumed to be from that byte offset.
					For file formats which do not contain packet tables the byte offset may 
					be an estimate. If so, the flag kAudioFileStreamSeekFlag_OffsetIsEstimated will be true.

	@param			inAudioFileStream 
						The file stream ID
	@param			inPacketOffset 
						The offset from the beginning of the file of the packet to which to seek.
	@param			outDataByteOffset 
						The byte offset of the data from the file's data offset returned. 
						You need to add the value of kAudioFileStreamProperty_DataOffset to get an absolute byte offset in the file.
	@param			ioFlags
						If outDataByteOffset is an estimate, then kAudioFileStreamSeekFlag_OffsetIsEstimated will be set on output.
						There are currently no flags defined for passing into this call.
*/
@available(OSX 10.5, *)
func AudioFileStreamSeek(inAudioFileStream: AudioFileStreamID, _ inPacketOffset: Int64, _ outDataByteOffset: UnsafeMutablePointer<Int64>, _ ioFlags: UnsafeMutablePointer<AudioFileStreamSeekFlags>) -> OSStatus

/*!
	@function		AudioFileStreamGetPropertyInfo
 
	@discussion		Retrieve the info about the given property. The outSize argument
					will return the size in bytes of the current value of the property.
 
	@param			inAudioFileStream 
						The file stream ID
	@param			inPropertyID
						Property ID whose value should be read
	@param			outPropertyDataSize
						Size in bytes of the property
	@param			outWritable
						whether the property is writable
 
	@result			an OSStatus return code
*/
@available(OSX 10.5, *)
func AudioFileStreamGetPropertyInfo(inAudioFileStream: AudioFileStreamID, _ inPropertyID: AudioFileStreamPropertyID, _ outPropertyDataSize: UnsafeMutablePointer<UInt32>, _ outWritable: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus

/*!
	@function		AudioFileStreamGetProperty
 
	@discussion		Retrieve the indicated property data. 
 
	@param			inAudioFileStream 
						The file stream ID
	@param			inPropertyID
						Property ID whose value should be read
	@param			ioPropertyDataSize
						On input, the size of the buffer pointed to by outPropertyData. On output, 
						the number of bytes written.
	@param			outPropertyData
						Pointer to the property data buffer

	@result			an OSStatus return code
*/
@available(OSX 10.5, *)
func AudioFileStreamGetProperty(inAudioFileStream: AudioFileStreamID, _ inPropertyID: AudioFileStreamPropertyID, _ ioPropertyDataSize: UnsafeMutablePointer<UInt32>, _ outPropertyData: UnsafeMutablePointer<Void>) -> OSStatus

/*!
	@function		AudioFileStreamSetProperty
 
	@discussion		Set the value of the property. There are currently no settable properties.
 
	@param			inAudioFileStream 
						The file stream ID
	@param			inPropertyID
						Property ID whose value should be set
	@param			inPropertyDataSize
						Size in bytes of the property data
	@param			inPropertyData
						Pointer to the property data buffer

	@result			an OSStatus return code
*/
@available(OSX 10.5, *)
func AudioFileStreamSetProperty(inAudioFileStream: AudioFileStreamID, _ inPropertyID: AudioFileStreamPropertyID, _ inPropertyDataSize: UInt32, _ inPropertyData: UnsafePointer<Void>) -> OSStatus

/*!
	@function		AudioFileStreamClose
 
	@discussion		Close and deallocate the file stream object.

	@param			inAudioFileStream 
						The file stream ID
*/
@available(OSX 10.5, *)
func AudioFileStreamClose(inAudioFileStream: AudioFileStreamID) -> OSStatus

/*!
    @typedef	AudioFormatPropertyID
    @abstract   A type for four char codes for property IDs
*/
typealias AudioFormatPropertyID = UInt32

/*!
    @enum		PanningMode
    @abstract   Different panning algorithms.
    @constant   kPanningMode_SoundField
					Sound field panning algorithm
    @constant   kPanningMode_VectorBasedPanning
					Vector based panning algorithm
*/
enum AudioPanningMode : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case PanningMode_SoundField
  case PanningMode_VectorBasedPanning
}

/*!
    @struct		AudioPanningInfo
    @abstract   This struct is for use with kAudioFormatProperty_PanningMatrix.
    @field      mPanningMode			the PanningMode to be used for the pan
    @field      mCoordinateFlags		the coordinates are specified as in the AudioChannelDescription struct in CoreAudioTypes.h
    @field      mCoordinates			the coordinates are specified as in the AudioChannelDescription struct in CoreAudioTypes.h
    @field      mGainScale				
					mGainScale is used to multiply the panning values.
					In typical usage you are applying an existing volume.
					value in 0 -> 1 (where 1 is unity gain) to the panned values.
					1 would give you panning at unity.
					0 would give you back a matrix of zeroes.
    @field      mOutputChannelMap				
					This is the channel map that is going to be used to determine channel volumes for this pan.
*/
struct AudioPanningInfo {
  var mPanningMode: AudioPanningMode
  var mCoordinateFlags: UInt32
  var mCoordinates: (Float32, Float32, Float32)
  var mGainScale: Float32
  var mOutputChannelMap: UnsafePointer<AudioChannelLayout>
}

/*!
    @enum		AudioBalanceFadeType
    @abstract   used for mType field of AudioBalanceFade struct
    @constant   kAudioBalanceFadeType_MaxUnityGain
					the gain value never exceeds 1.0, the opposite channel fades out. 
					This can reduce overall loudness when the balance or fade is not in the center.
    @constant   kAudioBalanceFadeType_EqualPower
					The overall loudness remains constant, but gain can exceed 1.0.
					the gain value is 1.0 when the balance and fade are in the center.
					From there they can increase to +3dB (1.414) and decrease to -inf dB (0.0).
*/
enum AudioBalanceFadeType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case MaxUnityGain
  case EqualPower
}

/*!
    @struct		AudioBalanceFade
    @abstract   this struct is used with kAudioFormatProperty_BalanceFade
    @field      mLeftRightBalance 
					-1 is full left, 0 is center, +1 is full right
    @field      mBackFrontFade 
					-1 is full rear, 0 is center, +1 is full front
    @field      mType 
					an AudioBalanceFadeType constant
    @field      mChannelLayout 
					a pointer to an AudioChannelLayout
*/
struct AudioBalanceFade {
  var mLeftRightBalance: Float32
  var mBackFrontFade: Float32
  var mType: AudioBalanceFadeType
  var mChannelLayout: UnsafePointer<AudioChannelLayout>
}

/*!
    @struct		AudioFormatInfo
    @abstract   this struct is used as a specifier for the kAudioFormatProperty_FormatList property
    @field      mASBD 
					an AudioStreamBasicDescription
    @field      mMagicCookie 
					a pointer to the decompression info for the data described in mASBD
    @field      mMagicCookieSize 
					the size in bytes of mMagicCookie
*/
struct AudioFormatInfo {
  var mASBD: AudioStreamBasicDescription
  var mMagicCookie: UnsafePointer<Void>
  var mMagicCookieSize: UInt32
}

/*!
    @struct		ExtendedAudioFormatInfo
    @abstract   this struct is used as a specifier for the kAudioFormatProperty_FormatList property
    @field      mASBD 
					an AudioStreamBasicDescription
    @field      mMagicCookie 
					a pointer to the decompression info for the data described in mASBD
    @field      mMagicCookieSize 
					the size in bytes of mMagicCookie
	@field		mClassDescription
					an AudioClassDescription specifying the codec to be used in answering the question.
*/
struct ExtendedAudioFormatInfo {
  var mASBD: AudioStreamBasicDescription
  var mMagicCookie: UnsafePointer<Void>
  var mMagicCookieSize: UInt32
  var mClassDescription: AudioClassDescription
}

/*!
    @struct		AudioFormatListItem
    @abstract   this struct is used as output from the kAudioFormatProperty_FormatList property
    @field      mASBD 
					an AudioStreamBasicDescription
    @field      mChannelLayoutTag 
					an AudioChannelLayoutTag
*/
struct AudioFormatListItem {
  var mASBD: AudioStreamBasicDescription
  var mChannelLayoutTag: AudioChannelLayoutTag
  init()
  init(mASBD: AudioStreamBasicDescription, mChannelLayoutTag: AudioChannelLayoutTag)
}
var kAudioFormatProperty_FormatInfo: AudioFormatPropertyID { get }
var kAudioFormatProperty_FormatName: AudioFormatPropertyID { get }
var kAudioFormatProperty_EncodeFormatIDs: AudioFormatPropertyID { get }
var kAudioFormatProperty_DecodeFormatIDs: AudioFormatPropertyID { get }
var kAudioFormatProperty_FormatList: AudioFormatPropertyID { get }
var kAudioFormatProperty_ASBDFromESDS: AudioFormatPropertyID { get }
var kAudioFormatProperty_ChannelLayoutFromESDS: AudioFormatPropertyID { get }
var kAudioFormatProperty_OutputFormatList: AudioFormatPropertyID { get }
var kAudioFormatProperty_FirstPlayableFormatFromList: AudioFormatPropertyID { get }
var kAudioFormatProperty_FormatIsVBR: AudioFormatPropertyID { get }
var kAudioFormatProperty_FormatIsExternallyFramed: AudioFormatPropertyID { get }
var kAudioFormatProperty_FormatIsEncrypted: AudioFormatPropertyID { get }
var kAudioFormatProperty_Encoders: AudioFormatPropertyID { get }
var kAudioFormatProperty_Decoders: AudioFormatPropertyID { get }
var kAudioFormatProperty_AvailableEncodeBitRates: AudioFormatPropertyID { get }
var kAudioFormatProperty_AvailableEncodeSampleRates: AudioFormatPropertyID { get }
var kAudioFormatProperty_AvailableEncodeChannelLayoutTags: AudioFormatPropertyID { get }
var kAudioFormatProperty_AvailableEncodeNumberChannels: AudioFormatPropertyID { get }
var kAudioFormatProperty_ASBDFromMPEGPacket: AudioFormatPropertyID { get }
var kAudioFormatProperty_BitmapForLayoutTag: AudioFormatPropertyID { get }
var kAudioFormatProperty_MatrixMixMap: AudioFormatPropertyID { get }
var kAudioFormatProperty_ChannelMap: AudioFormatPropertyID { get }
var kAudioFormatProperty_NumberOfChannelsForLayout: AudioFormatPropertyID { get }
var kAudioFormatProperty_AreChannelLayoutsEquivalent: AudioFormatPropertyID { get }
var kAudioFormatProperty_ChannelLayoutHash: AudioFormatPropertyID { get }
var kAudioFormatProperty_ValidateChannelLayout: AudioFormatPropertyID { get }
var kAudioFormatProperty_ChannelLayoutForTag: AudioFormatPropertyID { get }
var kAudioFormatProperty_TagForChannelLayout: AudioFormatPropertyID { get }
var kAudioFormatProperty_ChannelLayoutName: AudioFormatPropertyID { get }
var kAudioFormatProperty_ChannelLayoutSimpleName: AudioFormatPropertyID { get }
var kAudioFormatProperty_ChannelLayoutForBitmap: AudioFormatPropertyID { get }
var kAudioFormatProperty_ChannelName: AudioFormatPropertyID { get }
var kAudioFormatProperty_ChannelShortName: AudioFormatPropertyID { get }
var kAudioFormatProperty_TagsForNumberOfChannels: AudioFormatPropertyID { get }
var kAudioFormatProperty_PanningMatrix: AudioFormatPropertyID { get }
var kAudioFormatProperty_BalanceFade: AudioFormatPropertyID { get }
var kAudioFormatProperty_ID3TagSize: AudioFormatPropertyID { get }
var kAudioFormatProperty_ID3TagToDictionary: AudioFormatPropertyID { get }

/*!
    @function	AudioFormatGetPropertyInfo
    @abstract   Retrieve information about the given property
    @param      inPropertyID		an AudioFormatPropertyID constant.
    @param      inSpecifierSize		The size of the specifier data.
    @param      inSpecifier			A specifier is a buffer of data used as an input argument to some of the properties.
    @param      outPropertyDataSize	The size in bytes of the current value of the property. In order to get the property value,
									you will need a buffer of this size.
    @result     returns noErr if successful.
*/
@available(OSX 10.3, *)
func AudioFormatGetPropertyInfo(inPropertyID: AudioFormatPropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafePointer<Void>, _ outPropertyDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
    @function	AudioFormatGetProperty
    @abstract   Retrieve the indicated property data
    @param      inPropertyID		an AudioFormatPropertyID constant.
    @param      inSpecifierSize		The size of the specifier data.
    @param      inSpecifier			A specifier is a buffer of data used as an input argument to some of the properties.
    @param      ioPropertyDataSize	on input the size of the outPropertyData buffer. On output the number of bytes written to the buffer.
    @param      outPropertyData		the buffer in which to write the property data. If outPropertyData is NULL and ioPropertyDataSize is
									not, the amount that would have been written will be reported.
    @result     returns noErr if successful.
*/
@available(OSX 10.3, *)
func AudioFormatGetProperty(inPropertyID: AudioFormatPropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafePointer<Void>, _ ioPropertyDataSize: UnsafeMutablePointer<UInt32>, _ outPropertyData: UnsafeMutablePointer<Void>) -> OSStatus
var kAudioFormatUnspecifiedError: OSStatus { get }
var kAudioFormatUnsupportedPropertyError: OSStatus { get }
var kAudioFormatBadPropertySizeError: OSStatus { get }
var kAudioFormatBadSpecifierSizeError: OSStatus { get }
var kAudioFormatUnsupportedDataFormatError: OSStatus { get }
var kAudioFormatUnknownFormatError: OSStatus { get }

/*!
    @typedef    AudioQueuePropertyID
    @abstract   A value that uniquely identifies an audio queue property.
*/
typealias AudioQueuePropertyID = UInt32

/*!
    @typedef    AudioQueueParameterID
    @abstract   A value that uniquely identifies an audio queue parameter.
*/
typealias AudioQueueParameterID = UInt32

/*!
    @typedef    AudioQueueParameterID
    @abstract   A value for an audio queue parameter.
*/
typealias AudioQueueParameterValue = Float32

/*!
    @typedef    AudioQueueRef
    @abstract   Defines an opaque data type that represents an audio queue.
*/
typealias AudioQueueRef = COpaquePointer

/*!
    @typedef    AudioQueueTimelineRef
    @abstract   Defines an opaque data type that represents an audio queue timeline.
    @discussion
        You can use this object to observe any overloads in the audio device associated with the
        audio queue. A timeline object receives notifications of discontinuities in the audio
        hardware's sample timeline--for instance, a period of silence when sound was expected.
        Causes of discontinuities include changes in the device state or processing overloads.
        See Technical Q & A: QA 1467 for a discussion of Core Audio overload warnings. These
        warnings indicate you are taking too long to process audio data and the system has cut
        you off. You query a timeline object by passing it as a parameter to
        AudioQueueGetCurrentTime, which means a discontinuity has occurred.
*/
typealias AudioQueueTimelineRef = COpaquePointer
var kAudioQueueErr_InvalidBuffer: OSStatus { get }
var kAudioQueueErr_BufferEmpty: OSStatus { get }
var kAudioQueueErr_DisposalPending: OSStatus { get }
var kAudioQueueErr_InvalidProperty: OSStatus { get }
var kAudioQueueErr_InvalidPropertySize: OSStatus { get }
var kAudioQueueErr_InvalidParameter: OSStatus { get }
var kAudioQueueErr_CannotStart: OSStatus { get }
var kAudioQueueErr_InvalidDevice: OSStatus { get }
var kAudioQueueErr_BufferInQueue: OSStatus { get }
var kAudioQueueErr_InvalidRunState: OSStatus { get }
var kAudioQueueErr_InvalidQueueType: OSStatus { get }
var kAudioQueueErr_Permissions: OSStatus { get }
var kAudioQueueErr_InvalidPropertyValue: OSStatus { get }
var kAudioQueueErr_PrimeTimedOut: OSStatus { get }
var kAudioQueueErr_CodecNotFound: OSStatus { get }
var kAudioQueueErr_InvalidCodecAccess: OSStatus { get }
var kAudioQueueErr_QueueInvalidated: OSStatus { get }
var kAudioQueueErr_TooManyTaps: OSStatus { get }
var kAudioQueueErr_InvalidTapContext: OSStatus { get }
var kAudioQueueErr_RecordUnderrun: OSStatus { get }
var kAudioQueueErr_InvalidTapType: OSStatus { get }
var kAudioQueueErr_BufferEnqueuedTwice: OSStatus { get }
var kAudioQueueErr_EnqueueDuringReset: OSStatus { get }
var kAudioQueueErr_InvalidOfflineMode: OSStatus { get }
var kAudioQueueProperty_IsRunning: AudioQueuePropertyID { get }
var kAudioQueueDeviceProperty_SampleRate: AudioQueuePropertyID { get }
var kAudioQueueDeviceProperty_NumberChannels: AudioQueuePropertyID { get }
var kAudioQueueProperty_CurrentDevice: AudioQueuePropertyID { get }
var kAudioQueueProperty_MagicCookie: AudioQueuePropertyID { get }
var kAudioQueueProperty_MaximumOutputPacketSize: AudioQueuePropertyID { get }
var kAudioQueueProperty_StreamDescription: AudioQueuePropertyID { get }
var kAudioQueueProperty_ChannelLayout: AudioQueuePropertyID { get }
var kAudioQueueProperty_EnableLevelMetering: AudioQueuePropertyID { get }
var kAudioQueueProperty_CurrentLevelMeter: AudioQueuePropertyID { get }
var kAudioQueueProperty_CurrentLevelMeterDB: AudioQueuePropertyID { get }
var kAudioQueueProperty_DecodeBufferSizeFrames: AudioQueuePropertyID { get }
var kAudioQueueProperty_ConverterError: AudioQueuePropertyID { get }
var kAudioQueueProperty_EnableTimePitch: AudioQueuePropertyID { get }
var kAudioQueueProperty_TimePitchAlgorithm: AudioQueuePropertyID { get }
var kAudioQueueProperty_TimePitchBypass: AudioQueuePropertyID { get }
var kAudioQueueTimePitchAlgorithm_Spectral: UInt32 { get }
var kAudioQueueTimePitchAlgorithm_TimeDomain: UInt32 { get }
var kAudioQueueTimePitchAlgorithm_Varispeed: UInt32 { get }
var kAudioQueueParam_Volume: AudioQueueParameterID { get }
var kAudioQueueParam_PlayRate: AudioQueueParameterID { get }
var kAudioQueueParam_Pitch: AudioQueueParameterID { get }
var kAudioQueueParam_VolumeRampTime: AudioQueueParameterID { get }
var kAudioQueueParam_Pan: AudioQueueParameterID { get }

/*!
    @enum       AudioQueueProcessingTap flags
    @abstract   Flags used in conjunction with processing taps

    @discussion
        In the flags passed to AudioQueueProcessingTapNew, either the PreEffects
        or PostEffects flag must be set, but not both. 

    @constant   kAudioQueueProcessingTap_PreEffects
        Signifies that the processing tap is inserted before any effects.
        Passed to AudioQueueProcessingTapNew and to the callback.
    @constant   kAudioQueueProcessingTap_PostEffects
        Signifies that the processing tap is inserted after any effects.
        Passed to AudioQueueProcessingTapNew and to the callback.
    @constant   kAudioQueueProcessingTap_Siphon
        Signifies that the processing tap is a siphon; it does not call
        GetSourceAudio. The callback instead receives the source audio
        and may not modify it. Passed to AudioQueueProcessingTapNew and to the callback.
    @constant   kAudioQueueProcessingTap_StartOfStream
        Signifies that the source audio is the beginning of a continuous stream,
        i.e. following the beginning or resumption of playback or recording.
        Returned from GetSourceAudio.
    @constant   kAudioQueueProcessingTap_EndOfStream
        Signifies that the source audio is past the end of stream. This happens when
        the audio queue is being stopped asynchronously and has finished playing
        all of its data. Returned from GetSourceAudio and should be propagated
        on return from the callback.
*/
struct AudioQueueProcessingTapFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var PreEffects: AudioQueueProcessingTapFlags { get }
  static var PostEffects: AudioQueueProcessingTapFlags { get }
  static var Siphon: AudioQueueProcessingTapFlags { get }
  static var StartOfStream: AudioQueueProcessingTapFlags { get }
  static var EndOfStream: AudioQueueProcessingTapFlags { get }
}

/*!
    @struct     AudioQueueBuffer
    @abstract   Defines a buffer of audio data to be managed by an audio queue.
    @discussion 
        Each audio queue has an associated set of audio queue buffers. You can request that a
        queue allocate buffers using the AudioQueueAllocateBuffer function and dispose of them
        using the AudioQueueFreeBuffer function.
        
        You may also use AudioQueueAllocateBufferWithPacketDescriptions to allocate buffers
        with space for AudioPacketDescriptions, as used in VBR formats. The 
        mPacketDescriptionCapacity, mmPacketDescriptions, and mPacketDescriptionCount
        fields may only be used with buffers allocated with this function.
        
    @field      mAudioDataBytesCapacity
        The size of the buffer, in bytes. This size is set when the buffer is allocated and
        cannot be changed.
    @field      mAudioData
       A pointer to the audio data in the buffer. Although you can write data to this buffer,
       you cannot make it point to another address.
    @field      mAudioDataByteSize
        The number of bytes of valid audio data in the buffer. You set this value when providing
        data for playback; the audio queue sets this value when recording data from a recording
        queue.
    @field      mUserData
        A value you may specify to identify the buffer when it is passed back in recording or
        playback callback functions.
    @field      mPacketDescriptionCapacity
        The maximum number of packet descriptions that can be stored in mPacketDescriptions.
    @field      mPacketDescriptions
        An array of AudioStreamPacketDescriptions associated with the buffer.
    @field      mPacketDescriptionCount
        The number of valid packet descriptions in the buffer. You set this value when providing
        buffers for playback; the audio queue sets this value when returning buffers from
        a recording queue.
*/
struct AudioQueueBuffer {
  var mAudioDataBytesCapacity: UInt32
  var mAudioData: UnsafeMutablePointer<Void>
  var mAudioDataByteSize: UInt32
  var mUserData: UnsafeMutablePointer<Void>
  var mPacketDescriptionCapacity: UInt32
  var mPacketDescriptions: UnsafeMutablePointer<AudioStreamPacketDescription>
  var mPacketDescriptionCount: UInt32
}

/*!
    @typedef    AudioQueueBufferRef
    @abstract   An pointer to an AudioQueueBuffer.
*/
typealias AudioQueueBufferRef = UnsafeMutablePointer<AudioQueueBuffer>

/*!
    @struct     AudioQueueParameterEvent
    @abstract   Specifies a value for an audio queue parameter.
    @discussion
        Two ways are available to supply an audio queue with parameters:
        
        <ul>
        <li>    Provide one or more parameters by calling the
                AudioQueueEnqueueBufferWithParameters function. In this case, the parameters are
                applied to the specified buffer when it is played.</li>
        <li>    Assign a parameter value immediately to an audio queue by calling the
                AudioQueueSetParameter function.</li>
        </ul>
        
        Note that the AudioQueueGetParameter function always returns the actual value of the
        parameter.

        In Mac OS X v10.5, audio queues have one parameter available: kAudioQueueParam_Volume,
        which controls the queue's playback volume.
        
    @field      mID
        The parameter.
    @field      mValue
        The value of the specified parameter.
*/
struct AudioQueueParameterEvent {
  var mID: AudioQueueParameterID
  var mValue: AudioQueueParameterValue
  init()
  init(mID: AudioQueueParameterID, mValue: AudioQueueParameterValue)
}

/*!
    @struct     AudioQueueLevelMeterState
    @abstract   Specifies the current level metering information for one channel of an audio queue.
    @discussion
    @field      mAveragePower
        The audio channel's average RMS power.
    @field      mPeakPower
        The audio channel's peak RMS power
*/
struct AudioQueueLevelMeterState {
  var mAveragePower: Float32
  var mPeakPower: Float32
  init()
  init(mAveragePower: Float32, mPeakPower: Float32)
}

/*!
    @typedef    AudioQueueProcessingTapRef
    @abstract   An object for intercepting and processing audio within an audio queue.
*/
typealias AudioQueueProcessingTapRef = COpaquePointer

/*!
    @typedef    AudioQueueOutputCallbackBlock
    @abstract   Defines a pointer to a block that is called when a playback audio
                queue has finished taking data from a buffer.

    @discussion
        A playback buffer callback is invoked when the audio queue has finished with the data to
        be played and the buffer is available to your application for reuse. Your application
        might want to immediately refill and re-enqueue the completed buffer at this time.
    @param      inAQ
        The audio queue that invoked the callback.
    @param      inBuffer
        The audio queue buffer made available by the audio queue.
*/
typealias AudioQueueOutputCallbackBlock = (AudioQueueRef, AudioQueueBufferRef) -> Void

/*!
    @typedef    AudioQueueInputCallbackBlock
    @abstract   Defines a pointer to a block that is called when a recording audio
                queue has finished filling a buffer.
    @discussion
        You specify a recording buffer callback when calling AudioQueueNewInput. Your callback
        is invoked each time the recording audio queue has filled a buffer with input data.
        Typically, your callback should write the audio queue buffer's data to a file or other
        buffer, and then re-queue the audio queue buffer to receive more data.
        
    @param      inAQ
        The audio queue that invoked the callback.
    @param      inBuffer
        An audio queue buffer, newly filled by the audio queue, containing the new audio data
        your callback needs to write.
    @param      inStartTime
        A pointer to an audio time stamp structure corresponding to the first sample contained
        in the buffer. This contains the sample time of the first sample in the buffer.
    @param      inNumberPacketDescriptions
        The number of audio packets contained in the data provided to the callback
    @param      inPacketDescs
        For compressed formats which require packet descriptions, the packet descriptions
        produced by the encoder for the incoming buffer.
*/
typealias AudioQueueInputCallbackBlock = (AudioQueueRef, AudioQueueBufferRef, UnsafePointer<AudioTimeStamp>, UInt32, UnsafePointer<AudioStreamPacketDescription>) -> Void

/*!
    @typedef    AudioQueueOutputCallback
    @abstract   Defines a pointer to a callback function that is called when a playback audio
                queue has finished taking data from a buffer.

    @discussion
        A playback buffer callback is invoked when the audio queue has finished with the data to
        be played and the buffer is available to your application for reuse. Your application
        might want to immediately refill and re-enqueue the completed buffer at this time.
    @param      inUserData
        The value specified by the inUserData parameter of the AudioQueueNewOutput function.
    @param      inAQ
        The audio queue that invoked the callback.
    @param      inBuffer
        The audio queue buffer made available by the audio queue.
*/
typealias AudioQueueOutputCallback = @convention(c) (UnsafeMutablePointer<Void>, AudioQueueRef, AudioQueueBufferRef) -> Void

/*!
    @typedef    AudioQueueInputCallback
    @abstract   Defines a pointer to a callback function that is called when a recording audio
                queue has finished filling a buffer.
    @discussion
        You specify a recording buffer callback when calling AudioQueueNewInput. Your callback
        is invoked each time the recording audio queue has filled a buffer with input data.
        Typically, your callback should write the audio queue buffer's data to a file or other
        buffer, and then re-queue the audio queue buffer to receive more data.
        
    @param      inUserData
        The value you've specified in the inUserData parameter of the AudioQueueNewInput
        function.
    @param      inAQ
        The audio queue that invoked the callback.
    @param      inBuffer
        An audio queue buffer, newly filled by the audio queue, containing the new audio data
        your callback needs to write.
    @param      inStartTime
        A pointer to an audio time stamp structure corresponding to the first sample contained
        in the buffer. This contains the sample time of the first sample in the buffer.
    @param      inNumberPacketDescriptions
        The number of audio packets contained in the data provided to the callback
    @param      inPacketDescs
        For compressed formats which require packet descriptions, the packet descriptions
        produced by the encoder for the incoming buffer.
*/
typealias AudioQueueInputCallback = @convention(c) (UnsafeMutablePointer<Void>, AudioQueueRef, AudioQueueBufferRef, UnsafePointer<AudioTimeStamp>, UInt32, UnsafePointer<AudioStreamPacketDescription>) -> Void

/*!
    @typedef    AudioQueuePropertyListenerProc
    @abstract   Defines a pointer to a callback function that is called when a specified
                property changes value.
    @discussion
        You assign a property listener callback when calling AudioQueueAddPropertyListener.
        
    @param      inUserData
        A pointer to the data specified by the inUserData parameter of the
        AudioQueueAddPropertyListener function.
    @param      inAQ
        The audio queue that invoked the callback.
    @param      inID
        The ID of the property that invoked the callback.
*/
typealias AudioQueuePropertyListenerProc = @convention(c) (UnsafeMutablePointer<Void>, AudioQueueRef, AudioQueuePropertyID) -> Void

/*!
@typedef    AudioQueueProcessingTapCallback
@abstract   A function called when an audio queue has data to be processed by its tap

@discussion
    A processing callback is invoked when the audio queue has data that can be processed by a given
    tap.

    The audio queue will call the processing callback when it has sufficient data to provide for
    processing.

    In the case of a siphoning tap, the callback function can inspect the audio data in ioData, but
    should not otherwise modify it. The callback should not call
    AudioQueueProcessingTapGetSourceAudio.

    A non-siphoning callback should call AudioQueueProcessingTapGetSourceAudio to request from the
    queue as much source data as it needs in order to produce the requested number of output
    samples. When the callback requests source data it may receive less data than it requests.

    In the case of a tap on an audio output queue, the tap must emit the exact number of sample
    frames that the queue requests. In normal circumstances, the tap's requests for source data will
    be satisfied (as the client running the audio queue is also providing the queue with the audio
    source material). If there is insufficient source data available (this is indicated by the
    outNumberFrames from the GetSource call), then the processing tap should deal as best as it can;
    it can either return less data than was requested or insert silence, noise, etc. itself. If it
    returns less data than requested, the hosting audio queue will fill in the remainder with
    silence.

    In the case of a tap on an audio input queue, the tap may provide back less audio data than is
    being requested. Typically this will occur because the tap will ask for source data that is not
    available at this time (the audio input hasn't arrived yet), so the tap should cache the source
    data that it needs and return as many processed samples as it can. If the processing tap falls
    behind and is not providing data quickly enough silence will be generated in the data provided
    to the client (and there is no signal about this either).

    A processing tap executes in a semi-real-time context, so the general limitations for real-time
    processing apply. Avoid using API's which may block. In particular, it is not safe to call the
    audio queue on which the tap was installed, with the exceptions of
    AudioQueueProcessingTapGetSourceAudio and AudioQueueProcessingTapGetQueueTime.

    In normal operation the source data will be continuous from the last time the callback was
    called and the processed samples should be continuous from the previous samples returned. If
    there is any discontinuity between the last samples provided for processing the audio queue will
    set the bit for kAudioQueueProcessing_StartOfStream in the inFlags. After a discontinuity the
    first sample that the processing tap outputs should correspond to the first sample that was
    provided in the source samples (so a reset and then consequent process serves to re-anchor a
    relationship between the processing tap's source and processed samples). In this case the
    processing tap will typically discard any previous state (for instance, if a processing tap was
    adding a reverb to a signal, then the discontinuity flag would act the same as AudioUnitReset;
    any previous source information in the processing tap should be discarded).

    The caller is responsible for absorbing any processing delays. For example, if the processing is
    to be done by an audio unit that reports a processing latency, then the caller should remove
    those latency samples from the audio unit's rendering and not return them to the audio queue.

    The processing tap is able to operate on the provided source data in place (that is, it can do
    "in place processing") and return pointers to that buffer rather than its own. This works in a
    similar way as AudioUnit render operations.

    When an output audio queue is being stopped asynchronously, the processing tap will see the
    kAudioQueueProcessingTap_EndOfStream bit set on return from GetSourceAudio, and is responsible
    for propagating this bit from the callback when its processing has reached this point.

    A processing tap will NEVER see the same source data again, so, it should keep its own copy if
    it needs to keep it for further reference past the duration of this call. It also cannot assume
    that the pointers to the source data that it retrieves will remain valid AFTER the processing
    tap has executed.

    The processing tap should ensure that the data pointers it provides in outProcessedData remain
    valid until the tap is executed again.

    A processing tap is destroyed implicitly when its audio queue is disposed. It may also be
    removed explicitly, via AudioQueueProcessingTapDispose.

    @param      inClientData
                    the client data pointer passed to AudioQueueProcessingTapNew
    @param      inAQ
                    The audio queue that invoked the callback.
    @param      inAQTap
                    The tap for this callback.
    @param      inNumberFrames
                    The requested number of sample frames to be rendered.
    @param      ioFlags
                    On entry, the flags passed at construction time are provided. On exit,
                    the start/end of stream flags should be set when appropriate.
    @param      ioAudioTimeStamp
                    On an input audio queue, the timestamp must be returned from this function.
                    On an output audio queue, the callback is provided a continuous timestamp.
    @param      outNumberFrames
                    The number of frames of audio data provided in the processed data. Can be 0.
    @param      ioData
                    For non-siphoning taps, on entry, the buffer pointers are null and the lengths
                    are zero. On exit, they should contain the tap's output.
                    
                    Siphoning taps receive valid buffers which they must not alter.
*/
typealias AudioQueueProcessingTapCallback = @convention(c) (UnsafeMutablePointer<Void>, AudioQueueProcessingTapRef, UInt32, UnsafeMutablePointer<AudioTimeStamp>, UnsafeMutablePointer<AudioQueueProcessingTapFlags>, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<AudioBufferList>) -> Void

/*!
    @function   AudioQueueNewOutput
    @abstract   Creates a new audio queue for playing audio data.
    @discussion
        To create an playback audio queue, you allocate buffers, then queue buffers (using
        AudioQueueEnqueueBuffer). The callback receives buffers and typically queues them again.
        To schedule a buffer for playback, providing parameter and start time information, call
        AudioQueueEnqueueBufferWithParameters.
       
    @param      inFormat
        A pointer to a structure describing the format of the audio data to be played. For
        linear PCM, only interleaved formats are supported. Compressed formats are supported.
    @param      inCallbackProc
        A pointer to a callback function to be called when the audio queue has finished playing
        a buffer.
    @param      inUserData
        A value or pointer to data that you specify to be passed to the callback function.
    @param      inCallbackRunLoop
        The event loop on which inCallbackProc is to be called. If you specify NULL, the
        callback is called on one of the audio queue's internal threads.
    @param      inCallbackRunLoopMode
        The run loop mode in which to call the callback. Typically, you pass
        kCFRunLoopCommonModes. (NULL also specifies kCFRunLoopCommonModes). Other
        possibilities are implementation specific. You can choose to create your own thread with
        your own run loops. For more information on run loops, see Run Loops or CFRunLoop
        Reference.
    @param      inFlags
        Reserved for future use. Pass 0.
    @param      outAQ
        On return, this variable contains a pointer to the newly created playback audio queue
        object.
    @result     An OSStatus result code.
*/
@available(OSX 10.5, *)
func AudioQueueNewOutput(inFormat: UnsafePointer<AudioStreamBasicDescription>, _ inCallbackProc: AudioQueueOutputCallback, _ inUserData: UnsafeMutablePointer<Void>, _ inCallbackRunLoop: CFRunLoop?, _ inCallbackRunLoopMode: CFString?, _ inFlags: UInt32, _ outAQ: UnsafeMutablePointer<AudioQueueRef>) -> OSStatus

/*!
    @function   AudioQueueNewInput
    @abstract   Creates a new audio queue for recording audio data.
    @discussion
        
        Outline of how to use the queue for input:
        
        - create input queue
        - allocate buffers
        - enqueue buffers (AudioQueueEnqueueBuffer, not with parameters, no packet descriptions)
        - the callback receives buffers and re-enqueues them
        
    @param      inFormat
        A pointer to a structure describing the format of the audio data to be recorded. For
        linear PCM, only interleaved formats are supported. Compressed formats are supported.
    @param      inCallbackProc
        A pointer to a callback function to be called when the audio queue has finished filling
        a buffer.
    @param      inUserData
        A value or pointer to data that you specify to be passed to the callback function.
    @param      inCallbackRunLoop
        The event loop on which inCallbackProc is to be called. If you specify NULL, the
        callback is called on one of the audio queue's internal threads.
    @param      inCallbackRunLoopMode
        The run loop mode in which to call the callback. Typically, you pass
        kCFRunLoopCommonModes. (NULL also specifies kCFRunLoopCommonModes). Other
        possibilities are implementation specific. You can choose to create your own thread with
        your own run loops. For more information on run loops, see Run Loops or CFRunLoop
        Reference.
    @param      inFlags
        Reserved for future use. Pass 0.
    @param      outAQ
        On return, this variable contains a pointer to the newly created recording audio queue
        object.
    @result     An OSStatus result code.
*/
@available(OSX 10.5, *)
func AudioQueueNewInput(inFormat: UnsafePointer<AudioStreamBasicDescription>, _ inCallbackProc: AudioQueueInputCallback, _ inUserData: UnsafeMutablePointer<Void>, _ inCallbackRunLoop: CFRunLoop?, _ inCallbackRunLoopMode: CFString?, _ inFlags: UInt32, _ outAQ: UnsafeMutablePointer<AudioQueueRef>) -> OSStatus

/*!
    @function   AudioQueueNewOutputWithDispatchQueue
    @abstract   Creates a new audio queue for playing audio data.
    @discussion
        To create an playback audio queue, you allocate buffers, then queue buffers (using
        AudioQueueEnqueueBuffer). The callback receives buffers and typically queues them again.
        To schedule a buffer for playback, providing parameter and start time information, call
        AudioQueueEnqueueBufferWithParameters.
       
    @param      outAQ
        On return, this variable contains a pointer to the newly created playback audio queue
        object.
    @param      inFormat
        A pointer to a structure describing the format of the audio data to be played. For
        linear PCM, only interleaved formats are supported. Compressed formats are supported.
    @param      inFlags
        Reserved for future use. Pass 0.
    @param      inCallbackDispatchQueue
        The dispatch queue from which inCallbackBlock is to be called.
    @param      inCallbackBlock
        A pointer to a callback block to be called when the audio queue has finished playing
        a buffer.
    @result     An OSStatus result code.
*/
@available(OSX 10.6, *)
func AudioQueueNewOutputWithDispatchQueue(outAQ: UnsafeMutablePointer<AudioQueueRef>, _ inFormat: UnsafePointer<AudioStreamBasicDescription>, _ inFlags: UInt32, _ inCallbackDispatchQueue: dispatch_queue_t, _ inCallbackBlock: AudioQueueOutputCallbackBlock) -> OSStatus

/*!
    @function   AudioQueueNewInputWithDispatchQueue
    @abstract   Creates a new audio queue for recording audio data.
    @discussion
        
        Outline of how to use the queue for input:
        
        - create input queue
        - allocate buffers
        - enqueue buffers (AudioQueueEnqueueBuffer, not with parameters, no packet descriptions)
        - the callback receives buffers and re-enqueues them
        
    @param      outAQ
        On return, this variable contains a pointer to the newly created recording audio queue
        object.
    @param      inFormat
        A pointer to a structure describing the format of the audio data to be recorded. For
        linear PCM, only interleaved formats are supported. Compressed formats are supported.
    @param      inFlags
        Reserved for future use. Pass 0.
    @param      inCallbackDispatchQueue
        The dispatch queue from which inCallbackBlock is to be called.
    @param      inCallbackBlock
        A pointer to a callback block to be called when the audio queue has finished filling
        a buffer.
    @result     An OSStatus result code.
*/
@available(OSX 10.6, *)
func AudioQueueNewInputWithDispatchQueue(outAQ: UnsafeMutablePointer<AudioQueueRef>, _ inFormat: UnsafePointer<AudioStreamBasicDescription>, _ inFlags: UInt32, _ inCallbackDispatchQueue: dispatch_queue_t, _ inCallbackBlock: AudioQueueInputCallbackBlock) -> OSStatus

/*!
    @function   AudioQueueDispose
    @abstract   Disposes an existing audio queue.
    @discussion
        Disposing of the audio queue also disposes of all its resources, including its buffers.
    @param      inAQ
        The audio queue you want to dispose of
    @param      inImmediate
        If you pass true, the audio queue is disposed of immediately (that is, synchronously).
        If you pass false, disposal does not take place until all enqueued buffers are
        processed. Whether you call AudioQueueDispose synchronously or asynchronously, you can
        no longer interact with the queue, and the queue no longer invokes any callbacks to your
        application after the function returns.
		
		Note that if AudioQueueDispose is called from a buffer completion callback or property
		listener, you may receive further callbacks afterwards.
    @result     An OSStatus result code.
*/
@available(OSX 10.5, *)
func AudioQueueDispose(inAQ: AudioQueueRef, _ inImmediate: Bool) -> OSStatus

/*!
    @function   AudioQueueAllocateBuffer
    @abstract   Asks an audio queue to allocate a buffer.
    @discussion
        Once allocated, the pointer to the buffer and the buffer's size are fixed and cannot be
        changed. The mAudioDataByteSize field in the audio queue buffer structure,
        AudioQueueBuffer, is initially set to 0.
        
    @param      inAQ
        The audio queue you want to allocate a buffer.
    @param      inBufferByteSize
        The desired size of the new buffer, in bytes. An appropriate buffer size depends on the
        processing you will perform on the data as well as on the audio data format.
    @param      outBuffer
        On return, points to the newly created audio buffer. The mAudioDataByteSize field in the
        audio queue buffer structure, AudioQueueBuffer, is initially set to 0.
    @result     An OSStatus result code.
*/
@available(OSX 10.5, *)
func AudioQueueAllocateBuffer(inAQ: AudioQueueRef, _ inBufferByteSize: UInt32, _ outBuffer: UnsafeMutablePointer<AudioQueueBufferRef>) -> OSStatus

/*!
    @function   AudioQueueAllocateBuffer
    @abstract   Asks an audio queue to allocate a buffer.
    @discussion
        Once allocated, the pointer to the buffer and the buffer's size are fixed and cannot be
        changed. The mAudioDataByteSize field in the audio queue buffer structure,
        AudioQueueBuffer, is initially set to 0.
        
    @param      inAQ
        The audio queue you want to allocate a buffer.
    @param      inBufferByteSize
        The desired size of the new buffer, in bytes. An appropriate buffer size depends on the
        processing you will perform on the data as well as on the audio data format.
    @param      inNumberPacketDescriptions
        The desired capacity of the packet description array in the new buffer.
    @param      outBuffer
        On return, points to the newly created audio buffer. The mAudioDataByteSize field in the
        audio queue buffer structure, AudioQueueBuffer, is initially set to 0.
    @result     An OSStatus result code.
*/
@available(OSX 10.6, *)
func AudioQueueAllocateBufferWithPacketDescriptions(inAQ: AudioQueueRef, _ inBufferByteSize: UInt32, _ inNumberPacketDescriptions: UInt32, _ outBuffer: UnsafeMutablePointer<AudioQueueBufferRef>) -> OSStatus

/*!
    @function   AudioQueueFreeBuffer
    @abstract   Disposes of an audio queue buffer.
    @discussion
        This function disposes of the buffer allocated by AudioQueueAllocateBuffer. Disposing of
        an audio queue also automatically disposes of any associated buffers and timeline
        objects. Call this function only if you want to dispose of a particular buffer while
        continuing to use an audio queue. You can dispose of buffers only when the associated
        queue is stopped (that is, not processing audio data).
    @param      inAQ
        The queue from which the buffer was allocated.
    @param      inBuffer
        The buffer to be disposed.
    @result     An OSStatus result code.
*/
@available(OSX 10.5, *)
func AudioQueueFreeBuffer(inAQ: AudioQueueRef, _ inBuffer: AudioQueueBufferRef) -> OSStatus

/*!
    @function   AudioQueueEnqueueBuffer
    @abstract   Assigns a buffer to an audio queue for recording or playback.
    @discussion
        If the buffer was allocated with AudioQueueAllocateBufferWithPacketDescriptions,
        the client should provide packet descriptions in the buffer's mPacketDescriptions
        and mPacketDescriptionCount fields rather than in inPacketDescs and
        inNumPacketDescs, which should be NULL and 0, respectively, in this case.
        
        For an input queue, pass 0 and NULL for inNumPacketDescs and inPacketDescs,
        respectively. Your callback will receive packet descriptions owned by the audio queue.

    @param      inAQ
        The audio queue you are assigning the buffer to.
    @param      inBuffer
        The buffer to queue (that is, to be recorded into or played from).
    @param      inNumPacketDescs
        The number of packet descriptions pointed to by the inPacketDescs pointer. Applicable
        only for output queues and required only for variable-bit-rate (VBR) audio formats. Pass
        0 for input queues (no packet descriptions are required).
    @param      inPacketDescs
        An array of packet descriptions. Applicable only for output queues and required only for
        variable-bit-rate (VBR) audio formats. Pass NULL for input queues (no packet
        descriptions are required).
    @result     An OSStatus result code.
*/
@available(OSX 10.5, *)
func AudioQueueEnqueueBuffer(inAQ: AudioQueueRef, _ inBuffer: AudioQueueBufferRef, _ inNumPacketDescs: UInt32, _ inPacketDescs: UnsafePointer<AudioStreamPacketDescription>) -> OSStatus

/*!
    @function   AudioQueueEnqueueBufferWithParameters
    @abstract   Assigns a buffer to an audio queue for playback, providing parameters
                and start time information.
    @discussion
        You can exert some control of the buffer queue by using this function. You can assign
        audio queue settings that are in effect carried by an audio queue buffer as you enqueue
        it. Hence, these changes only take effect when an audio queue buffer begins playing.
        
        This function queues a buffer for playback only, not for recording. Audio queues for
        recording have no parameters, do not support variable-bit-rate (VBR) formats (which
        might require trimming), and have a different way to handle timing. When queued for
        playback, the buffer must contain the audio data to be played back. See
        AudioQueueEnqueueBuffer for details on queuing a buffer for recording.

        If the buffer was allocated with AudioQueueAllocateBufferWithPacketDescriptions,
        the client should provide packet descriptions in the buffer's mPacketDescriptions
        and mPacketDescriptionCount fields rather than in inPacketDescs and
        inNumPacketDescs, which should be NULL and 0, respectively, in this case.
    @param      inAQ
        The audio queue associated with the buffer.
    @param      inBuffer
        The buffer to be played from.
    @param      inNumPacketDescs
        The number of packet descriptions pointed to by the inPacketDescs parameter. Required
        only for variable-bit-rate (VBR) audio formats. Pass 0 if no packet descriptions are
        required.
    @param      inPacketDescs
        A pointer to an array of audio stream packet descriptions. Required only for VBR audio
        formats. Pass NULL if no packet descriptions are required.
    @param      inTrimFramesAtStart
        The number of priming frames to skip at the start of the buffer.
    @param      inTrimFramesAtEnd
        The number of frames to skip at the end of the buffer.
    @param      inNumParamValues
        The number of parameter values pointed to by the inParamValues parameter.
    @param      inParamValues
        An array of parameter values. (In Mac OS X v10.5, there is only one parameter,
        kAudioQueueParam_Volume.) These values are set before buffer playback and cannot be
        changed while the buffer is playing. How accurately changes in parameters can be
        scheduled depends on the size of the buffer. If there are no parameters to set
        (inNumParamValues = 0), pass NULL.
    @param      inStartTime
        A pointer to a structure containing the desired start time for playing the buffer. If
        you specify the time using the mSampleTime field of the AudioTimeStamp structure, the
        sample time is relative to the time the queue started. If you pass NULL for the start
        time, the buffer starts immediately after the previously queued buffer, or as soon as
        possible if no buffers are queued ahead of it. Buffers are played in the order they are
        queued. If multiple buffers are queued, their times must be in ascending order or NULL;
        otherwise, an error occurs. The start time indicates when the actual audio data in the
        buffer is to be played (that is, the trim frames are not counted).
        
        Note: When specifying a start time for a buffer, if the buffer is not the first enqueued
        since AudioQueueStop or AudioQueueReset, it is normally necessary to call AudioQueueFlush
        before AudioQueueEnqueueBufferWithParameters.
    @param      outActualStartTime
        On return, points to an AudioTimeStamp structure indicating when the buffer will
        actually play.
    @result     An OSStatus result code.
*/
@available(OSX 10.5, *)
func AudioQueueEnqueueBufferWithParameters(inAQ: AudioQueueRef, _ inBuffer: AudioQueueBufferRef, _ inNumPacketDescs: UInt32, _ inPacketDescs: UnsafePointer<AudioStreamPacketDescription>, _ inTrimFramesAtStart: UInt32, _ inTrimFramesAtEnd: UInt32, _ inNumParamValues: UInt32, _ inParamValues: UnsafePointer<AudioQueueParameterEvent>, _ inStartTime: UnsafePointer<AudioTimeStamp>, _ outActualStartTime: UnsafeMutablePointer<AudioTimeStamp>) -> OSStatus

/*!
    @function   AudioQueueStart
    @abstract   Begins playing or recording audio.
    @discussion
        If the audio hardware is not already running, this function starts it.
    @param      inAQ
        The audio queue to start.
    @param      inStartTime
        A pointer to the time at which the audio queue should start. If you specify the time
        using the mSampleTime field of the AudioTimeStamp structure, the sample time is
        referenced to the sample frame timeline of the associated audio device. May be NULL.
    @result     An OSStatus result code.
*/
@available(OSX 10.5, *)
func AudioQueueStart(inAQ: AudioQueueRef, _ inStartTime: UnsafePointer<AudioTimeStamp>) -> OSStatus

/*!
    @function   AudioQueuePrime
    @abstract   Begins decoding buffers in preparation for playback.
    @discussion
        This function begins decoding buffers in preparation for playback. It returns when at
        least the number of audio sample frames are decoded and ready to play or when all
        enqueued buffers have been completely decoded. To ensure that a buffer has been decoded
        and is completely ready for playback, before playback:
            1.  Call AudioQueueEnqueueBuffer.
            2.  Call AudioQueuePrime, which waits if you pass 0 to have a default number of
                frames decoded.
            3.  Call AudioQueueStart.

        Calls to AudioQueuePrime following AudioQueueStart/AudioQueuePrime, and before
        AudioQueueReset/AudioQueueStop, will have no useful effect. In this situation,
        outNumberOfFramesPrepared will not have a useful return value.
    @param      inAQ
        The audio queue to be primed.
    @param      inNumberOfFramesToPrepare
        The number of frames to decode before returning. Pass 0 to decode all enqueued buffers.
    @param      outNumberOfFramesPrepared
        If not NULL, on return, a pointer to the number of frames actually decoded and prepared
        for playback.
    @result     An OSStatus result code.
*/
@available(OSX 10.5, *)
func AudioQueuePrime(inAQ: AudioQueueRef, _ inNumberOfFramesToPrepare: UInt32, _ outNumberOfFramesPrepared: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
    @function   AudioQueueStop
    @abstract   Stops playing or recording audio.
    @discussion
        This function resets the audio queue and stops the audio hardware associated with the
        queue if it is not in use by other audio services. Synchronous stops occur immediately,
        regardless of previously buffered audio data. Asynchronous stops occur after all queued
        buffers have been played or recorded.
    @param      inAQ
        The audio queue to stop.
    @param      inImmediate
        If you pass true, the stop request occurs immediately (that is, synchronously), and the
        function returns when the audio queue has stopped. Buffer callbacks are invoked during
        the stopping. If you pass false, the function returns immediately, but the queue does
        not stop until all its queued buffers are played or filled (that is, the stop occurs
        asynchronously). Buffer callbacks are invoked as necessary until the queue actually
        stops. Also, a playback audio queue callback calls this function when there is no more
        audio to play.

        Note that when stopping immediately, all pending buffer callbacks are normally invoked
        during the process of stopping. But if the calling thread is responding to a buffer
        callback, then it is possible for additional buffer callbacks to occur after
        AudioQueueStop returns.
    @result     An OSStatus result code.
*/
@available(OSX 10.5, *)
func AudioQueueStop(inAQ: AudioQueueRef, _ inImmediate: Bool) -> OSStatus

/*!
    @function   AudioQueuePause
    @abstract   Pauses audio playback or recording.
    @discussion
        Pausing the queue does not affect buffers or reset the audio queue. To resume playback
        or recording using the audio queue, call AudioQueueStart.
    @param      inAQ
        The queue to be paused.
    @result     An OSStatus result code.
*/
@available(OSX 10.5, *)
func AudioQueuePause(inAQ: AudioQueueRef) -> OSStatus

/*!
    @function   AudioQueueFlush
    @abstract   Resets the audio queue's decoder state.
    @discussion
        After all queued buffers have been played, the function cleans up all decoder state
        information. You must call this function following a sequence of buffers of encoded
        audio; otherwise, some of the audio might not play in the next set of queued buffers.
        The only time it is not necessary to call AudioQueueFlush is following AudioQueueStop
        with inImmediate=false. (This action internally calls AudioQueueFlush.)
        
        Also, you might wish to call this function before calling AudioQueueStop depending on
        whether you want to stop immediately regardless of what has played or whether you want
        to ensure that all buffered data and all data that is in the middle of processing gets
        recorded or played before stopping.
        
    @param      inAQ
        The audio queue to be flushed.
        
    @result     An OSStatus result code.
*/
@available(OSX 10.5, *)
func AudioQueueFlush(inAQ: AudioQueueRef) -> OSStatus

/*!
    @function   AudioQueueReset
    @abstract   Resets an audio queue.
    @discussion
        This function immediately resets an audio queue, flushes any queued buffer, removes all
        buffers from previously scheduled use, and resets any decoder and digital signal
        processing (DSP) state information. It also invokes callbacks for any flushed buffers.
        If you queue any buffers after calling this function, processing does not occur until
        the decoder and DSP state information is reset. Hence, a discontinuity (that is, a
        "glitch") might occur.

        Note that when resetting, all pending buffer callbacks are normally invoked
        during the process of resetting. But if the calling thread is responding to a buffer
        callback, then it is possible for additional buffer callbacks to occur after
        AudioQueueReset returns.
    @param      inAQ
        The audio queue to reset.

    @result     An OSStatus result code.
*/
@available(OSX 10.5, *)
func AudioQueueReset(inAQ: AudioQueueRef) -> OSStatus

/*!
    @function   AudioQueueGetParameter
    @abstract   Obtains an audio queue parameter value.
    @discussion
        You can access the current parameter values for an audio queue at any time with this
        function.
    @param      inAQ
        The audio queue whose parameter value you want to obtain.
    @param      inParamID
        The ID of the parameter you want to obtain. In Mac OS X v10.5, audio queues have one
        parameter available: kAudioQueueParam_Volume, which controls the queue's playback
        volume.
    @param      outValue
        On return, points to the current value of the specified parameter.
    @result
        An OSStatus result code.
*/
@available(OSX 10.5, *)
func AudioQueueGetParameter(inAQ: AudioQueueRef, _ inParamID: AudioQueueParameterID, _ outValue: UnsafeMutablePointer<AudioQueueParameterValue>) -> OSStatus

/*!
    @function   AudioQueueSetParameter
    @abstract   Sets an audio queue parameter value.
    @discussion
    @param      inAQ
        The audio queue whose parameter value you want to set.
    @param      inParamID
        The ID of the parameter you want to set.
    @param      inValue
        The parameter value to set.
    @result
        An OSStatus result code.
*/
@available(OSX 10.5, *)
func AudioQueueSetParameter(inAQ: AudioQueueRef, _ inParamID: AudioQueueParameterID, _ inValue: AudioQueueParameterValue) -> OSStatus

/*!
    @function   AudioQueueGetProperty
    @abstract   Obtains an audio queue property value.
    @discussion 
    @param      inAQ
        The audio queue whose property value you want to obtain.
    @param      inID
        The ID of the property you want to obtain. See "Audio Queue Property IDs."
    @param      outData
        On return, points to the desired property value.
    @param      ioDataSize
        A pointer to the size of the property data. On input, points to the maximum bytes of
        space the caller expects to receive. On return, points to the actual data size.
    @result
        An OSStatus result code.
*/
@available(OSX 10.5, *)
func AudioQueueGetProperty(inAQ: AudioQueueRef, _ inID: AudioQueuePropertyID, _ outData: UnsafeMutablePointer<Void>, _ ioDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
    @function   AudioQueueSetProperty
    @abstract   Sets an audio queue property value.
    @discussion 
    @param      inAQ
        The audio queue whose property value you want to set.
    @param      inID
        The ID of the property you want to set. See "Audio Queue Property IDs" for the various
        audio queue properties.
    @param      inData
        A pointer to the property value to set.
    @param      inDataSize
        The size of the property data.
    @result
        An OSStatus result code.
*/
@available(OSX 10.5, *)
func AudioQueueSetProperty(inAQ: AudioQueueRef, _ inID: AudioQueuePropertyID, _ inData: UnsafePointer<Void>, _ inDataSize: UInt32) -> OSStatus

/*!
    @function   AudioQueueGetPropertySize
    @abstract   Obtains the size of an audio queue property.
    @discussion 
    @param      inAQ
        The audio queue containing the property value whose size you want to obtain.
    @param      inID
        The ID of the property value whose size you want to obtain. See "Audio Queue Property
        IDs" for possible values.
    @param      outDataSize
        On return, points to the size of the specified property value.
    @result
        An OSStatus result code.
*/
@available(OSX 10.5, *)
func AudioQueueGetPropertySize(inAQ: AudioQueueRef, _ inID: AudioQueuePropertyID, _ outDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
    @function   AudioQueueAddPropertyListener
    @abstract   Adds a listener callback for a property.
    @discussion 
        This callback is used to act upon a change in an audio queue property such as
        kAudioQueueProperty_IsRunning. For instance, if your application has a user interface
        with a Play/Stop button, and kAudioQueueProperty_IsRunning changes, you need to update
        your button.
    @param      inAQ
        The audio queue that owns the property you want to assign the listener callback to.
    @param      inID
        The ID of the property to which you want to assign a listener callback. See "Audio Queue Property IDs".
    @param      inProc
        The listener callback to be called when the property value changes.
    @param      inUserData
        A value to be passed to the listener callback when it is called.
    @result
        An OSStatus result code.
*/
@available(OSX 10.5, *)
func AudioQueueAddPropertyListener(inAQ: AudioQueueRef, _ inID: AudioQueuePropertyID, _ inProc: AudioQueuePropertyListenerProc, _ inUserData: UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @function   AudioQueueRemovePropertyListener
    @abstract   Removes a listener callback for a property.
    @discussion 
    @param      inAQ
        The audio queue that owns the property from which you want to remove a listener.
    @param      inID
        The ID of the property from which you want to remove a listener.
    @param      inProc
        The listener being removed.
    @param      inUserData
        The same inUserData value that was previously passed to AudioQueueAddPropertyListener.
    @result
        An OSStatus result code.
*/
@available(OSX 10.5, *)
func AudioQueueRemovePropertyListener(inAQ: AudioQueueRef, _ inID: AudioQueuePropertyID, _ inProc: AudioQueuePropertyListenerProc, _ inUserData: UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @function   AudioQueueCreateTimeline
    @abstract   Creates a timeline object.
    @discussion
        You need to instantiate a timeline object if you want to know about any timeline
        discontinuities. See AudioQueueGetCurrentTime for more details.
    @param      inAQ
        The audio queue to associate with the new timeline object.
    @param      outTimeline
        On return, points to the newly created timeline object.
    @result
        An OSStatus result code.
*/
@available(OSX 10.5, *)
func AudioQueueCreateTimeline(inAQ: AudioQueueRef, _ outTimeline: UnsafeMutablePointer<AudioQueueTimelineRef>) -> OSStatus

/*!
    @function   AudioQueueDisposeTimeline
    @abstract   Disposes of a timeline object.
    @discussion
        Disposing of an audio queue automatically disposes of any associated timeline objects.
        Call this function only if you want to dispose of a timeline object and not the audio
        queue associated with it.
    @param      inAQ
        The audio queue associated with the timeline object you want to dispose of.
    @param      inTimeline
        The timeline object to dispose of.
    @result
        An OSStatus result code.
*/
@available(OSX 10.5, *)
func AudioQueueDisposeTimeline(inAQ: AudioQueueRef, _ inTimeline: AudioQueueTimelineRef) -> OSStatus

/*!
    @function   AudioQueueGetCurrentTime
    @abstract   Obtains the current audio queue time.
    @discussion
        You must specify a timeline object if you want to be notified about any timeline
        discontinuities in the outTimelineDiscontinuity parameter. If you don't care about
        discontinuities, pass NULL in the inTimeLine and outTimelineDiscontinuity parameters.
    @param      inAQ
        The audio queue whose current time you want to obtain.
    @param      inTimeline
        The audio queue timeline object to which any timeline discontinuities are reported. May
        be NULL.
    @param      outTimeStamp
        On return, points to an audio timestamp structure containing the current audio queue
        time. The mSampleTime field is in terms of the audio queue's sample rate, and relative
        to the time at which the queue has started or will start.
    @param      outTimelineDiscontinuity
        Can be NULL. On return, only set to true or false if the inTimeLine parameter is not
        NULL. Set to true if a discontinuity has occurred in the sample timeline of the audio
        queue. For instance, the device's sample rate changed and a gap occurred in playback or
        recording, or the audio queue was unable to prepare and playback in time because it was
        late.
    @result
        An OSStatus result code.
*/
@available(OSX 10.5, *)
func AudioQueueGetCurrentTime(inAQ: AudioQueueRef, _ inTimeline: AudioQueueTimelineRef, _ outTimeStamp: UnsafeMutablePointer<AudioTimeStamp>, _ outTimelineDiscontinuity: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus

/*!
    @function   AudioQueueDeviceGetCurrentTime
    @abstract   Obtains the current time of the audio device associated with an audio queue.
    @discussion
        If the audio device associated with the audio queue is not running, the only valid field
        in the audio timestamp structure is mHostTime. This result differentiates the action of
        this function from that of the AudioDeviceGetCurrentTime function, (declared in
        AudioHardware.h) which returns an error if the audio device is not running.
    @param      inAQ
        The audio queue whose audio device is to be queried.
    @param      outTimeStamp
        A pointer to a structure that, on return, contains the current time of the audio device
        associated with the audio queue.
    @result
        An OSStatus result code.
*/
@available(OSX 10.5, *)
func AudioQueueDeviceGetCurrentTime(inAQ: AudioQueueRef, _ outTimeStamp: UnsafeMutablePointer<AudioTimeStamp>) -> OSStatus

/*!
    @function   AudioQueueDeviceTranslateTime
    @abstract   Converts the time in the time base of the associated audio device from one
                representation to another.
    @discussion
        This function converts from one time representation to another (for example, from sample
        time to host time or vice versa):
        
        <ul>
        <li>    Sample time is the absolute sample frame time.
        Sample numbers are the count of the samples on the audio device.</li>
        <li>    Host time is the
        time base of the host machine such as the time of the bus clock on the CPU.</li>
        </ul>

        The mSampleTime field in the AudioTimestamp structure (described in Core Audio Data
        Types Reference) is always in device time, not in audio queue time. Audio queue time is
        relative to the audio queue's start time. The associated audio device has to be running
        for the AudioQueueDeviceTranslateTime function to provide a result.
    @param      inAQ
        The queue whose audio device is to perform the requested time translation.
    @param      inTime
        A pointer to a structure containing the time to be translated.
    @param      outTime
        A pointer to the the translated time.
    @result
        An OSStatus result code.
*/
@available(OSX 10.5, *)
func AudioQueueDeviceTranslateTime(inAQ: AudioQueueRef, _ inTime: UnsafePointer<AudioTimeStamp>, _ outTime: UnsafeMutablePointer<AudioTimeStamp>) -> OSStatus

/*!
    @function   AudioQueueDeviceGetNearestStartTime
    @abstract   Obtains an audio device's start time that is closest to a requested start time.
    @discussion
    @param      inAQ
        The audio queue whose device's nearest start time you want to obtain.
    @param      ioRequestedStartTime
        On entry, points to the requested start time. On return, points to the actual start time.
    @param      inFlags
        Reserved for future use. Pass 0.
    @result
        An OSStatus result code.
*/
@available(OSX 10.5, *)
func AudioQueueDeviceGetNearestStartTime(inAQ: AudioQueueRef, _ ioRequestedStartTime: UnsafeMutablePointer<AudioTimeStamp>, _ inFlags: UInt32) -> OSStatus

/*!
    @function   AudioQueueSetOfflineRenderFormat
    @abstract   Specify an audio format to which the queue will perform subsequent offline rendering,
                or disable offline rendering.
    @discussion
                An output queue's audio playback can be redirected for capture to an audio file,
                to support an export function, for example. AudioQueueSetOfflineRenderFormat switches
                a queue between normal and offline rendering modes.
    @param      inAQ
        The output queue whose offline rendering mode is to be changed.
    @param      inFormat
        The desired format for offline rendering. Pass NULL to disable offline rendering and return the
        queue to normal output to an audio device. This format must be linear PCM and (if not mono)
        interleaved.
    @param      inLayout
        The desired channel layout for offline rendering; also NULL when disabling offline rendering.
    @result
        An OSStatus result code.
*/
@available(OSX 10.5, *)
func AudioQueueSetOfflineRenderFormat(inAQ: AudioQueueRef, _ inFormat: UnsafePointer<AudioStreamBasicDescription>, _ inLayout: UnsafePointer<AudioChannelLayout>) -> OSStatus

/*!
    @function   AudioQueueOfflineRender
    @abstract   Obtain a buffer of audio output from a queue in offline rendering mode.
    @discussion
    @param      inAQ
        The output queue from which to obtain output.
    @param      inTimestamp
        The point in time corresponding to the beginning of the output buffer. Only mSampleTime
        is used. mFlags must include kAudioTimeStampSampleTimeValid.
    @param      ioBuffer
        The buffer into which the queue will render.
    @param      inNumberFrames
        The number of frames of audio to render. Note that fewer frames than requested may be returned.
        This can happen if insufficient data was enqueued.
    @result
        An OSStatus result code.
*/
@available(OSX 10.5, *)
func AudioQueueOfflineRender(inAQ: AudioQueueRef, _ inTimestamp: UnsafePointer<AudioTimeStamp>, _ ioBuffer: AudioQueueBufferRef, _ inNumberFrames: UInt32) -> OSStatus

/*!
    @function   AudioQueueProcessingTapNew
    @abstract   Create a new processing tap
    @discussion
                This function creates a processing tap on a given audio queue. A
                processing tap can only be established (or removed) on an audio queue that is
                stopped (paused is not sufficient). The processing tap will then be used to
                process either decoded data in the case of an output queue, or input data
                (before it is encoded) in the case of an input queue.

                The processing is performed on audio either before or after any effects or other
                processing (varispeed, etc) is applied by the audio queue, depending on inFlags.
    
    @param      inAQ    
                    The audio queue from which to create the processing tap
    @param      inCallback
                    A callback which the queue will call to process the audio
    @param      inClientData
                    Client data provided to the callback
    @param      inFlags
                    Flags that are used to control aspects of the processing tap.
                    Valid flags are:
                        - kAudioQueueProcessingTap_PreEffects: processing is done before any
                            further effects are applied by the audio queue to the audio
                        - kAudioQueueProcessingTap_PostEffects: processing is done after all
                            processing is done, including that of other taps.
                        - kAudioQueueProcessingTap_Siphon
    @param      outMaxFrames
                    The maximum number of sample frames that can be requested of a processing
                    tap at any one time. Typically this will be approximately 50 msec of audio
                    (2048 samples @ 44.1kHz)
    @param      outProcessingFormat
                    The format in which the client will receive the audio data to be processed.
                    This will always be the same sample rate as the client format and usually
                    the same number of channels as the client format of the audio queue. (NOTE:
                    the number of channels may be different in some cases if the client format
                    has some channel count restrictions, for instance the client provides 5.1
                    AAC, but the decoder can only produce stereo). The channel order, if the
                    same as the client format, will be the same as the client channel order. If
                    the channel count is changed, it will be to either 1 (mono) or 2 (stereo, in
                    which case the first channel is left, the second right).

                    If the data is not in a convenient format for the client to process in, then
                    the client should convert the data to and from that format. This is the most
                    efficient mechanism to use (as the audio queue can chose a format that is
                    most efficient from its playback (or recording) requirement.
    @param      outAQTap
                    The processing tap object.
                    
    @result     An OSStatus result code.
*/
@available(OSX 10.7, *)
func AudioQueueProcessingTapNew(inAQ: AudioQueueRef, _ inCallback: AudioQueueProcessingTapCallback, _ inClientData: UnsafeMutablePointer<Void>, _ inFlags: AudioQueueProcessingTapFlags, _ outMaxFrames: UnsafeMutablePointer<UInt32>, _ outProcessingFormat: UnsafeMutablePointer<AudioStreamBasicDescription>, _ outAQTap: UnsafeMutablePointer<AudioQueueProcessingTapRef>) -> OSStatus

/*!
    @function   AudioQueueProcessingTapDispose
    @abstract   Dispose a processing tap object
    @discussion 
                As with AudioQueueProcessingTapNew, this call can only be made on an
                audio queue that is stopped (paused is not sufficient)
    
    @param      inAQTap
                    The processing tap to dispose.

   @result     An OSStatus result code.
*/
@available(OSX 10.7, *)
func AudioQueueProcessingTapDispose(inAQTap: AudioQueueProcessingTapRef) -> OSStatus

/*!
    @function   AudioQueueProcessingTapGetSourceAudio
    @abstract   Used by a processing tap to retrieve source audio.
    @discussion 
        This function may only be called from the processing tap's callback.
    
    @param      inAQTap
                    the processing tap
    @param      inNumberFrames
                    the number of frames the processing tap requires for its processing
    @param      ioTimeStamp
                    On an input audio queue, the timestamp is returned from this function.
                    On an output audio queue, the caller must provide a continuous timestamp.
    @param      outFlags
                    flags to describe state about the input requested, e.g.
                    discontinuity/complete
    @param      outNumberFrames
                    the number of source frames that have been provided by the parent audio
                    queue. This can be less than the number of requested frames specified in
                    inNumberFrames
    @param      ioData
                    the audio buffer list which will contain the source data. The audio queue owns
                    the buffer pointers if NULL pointers were provided (recommended). In this case
                    the source buffers are only valid for the duration of the processing tap
                    callback. If the buffer pointers are non-NULL, then they must be big enough to
                    hold inNumberFrames, and the audio queue will copy its source data into those
                    buffers.
                    
   @result     An OSStatus result code.
*/
@available(OSX 10.7, *)
func AudioQueueProcessingTapGetSourceAudio(inAQTap: AudioQueueProcessingTapRef, _ inNumberFrames: UInt32, _ ioTimeStamp: UnsafeMutablePointer<AudioTimeStamp>, _ outFlags: UnsafeMutablePointer<AudioQueueProcessingTapFlags>, _ outNumberFrames: UnsafeMutablePointer<UInt32>, _ ioData: UnsafeMutablePointer<AudioBufferList>) -> OSStatus

/*!
    @function   AudioQueueProcessingTapGetQueueTime
    @abstract   Used by a processing tap to retrieve the queue's current time.
    @discussion 
        This function may only be called from the processing tap's callback, and only
        for audio output queues. It must be called after calling
        AudioQueueProcessingTapGetSourceAudio.
    
    @param      inAQTap
                    the processing tap
    @param      outQueueSampleTime
                    the current sample time of the audio queue. This will appear to be stationary
                    if the queue is paused.
    @param      outQueueFrameCount
                    the number of sample frames of queue time corresponding to the current chunk of
                    audio being processed by the tap. This will differ from the frame count passed
                    to the tap if the queue's playback rate is currently other than 1.0, due to the
                    use of time compression/expansion. The frame count can also be 0 if the queue is
                    paused.
                    
   @result     An OSStatus result code.
*/
@available(OSX 10.8, *)
func AudioQueueProcessingTapGetQueueTime(inAQTap: AudioQueueProcessingTapRef, _ outQueueSampleTime: UnsafeMutablePointer<Float64>, _ outQueueFrameCount: UnsafeMutablePointer<UInt32>) -> OSStatus
var kAudioServicesNoError: OSStatus { get }
var kAudioServicesUnsupportedPropertyError: OSStatus { get }
var kAudioServicesBadPropertySizeError: OSStatus { get }
var kAudioServicesBadSpecifierSizeError: OSStatus { get }
var kAudioServicesSystemSoundUnspecifiedError: OSStatus { get }
var kAudioServicesSystemSoundClientTimedOutError: OSStatus { get }

/*!
    @typedef        SystemSoundID
    @abstract       SystemSoundIDs are created by the System Sound client application
                    for playback of a provided AudioFile.
*/
typealias SystemSoundID = UInt32

/*!
    @typedef        AudioServicesPropertyID
    @abstract       Type used for specifying an AudioServices property.
*/
typealias AudioServicesPropertyID = UInt32

/*!
    @typedef        AudioServicesSystemSoundCompletionProc
    @abstract       A function to be executed when a SystemSoundID finishes playing.
    @discussion     AudioServicesSystemSoundCompletionProc may be provided by client application to be
                    called when a SystemSoundID has completed playback.
    @param          ssID
                        The SystemSoundID that completed playback
    @param          userData
                        Client application user data
*/
typealias AudioServicesSystemSoundCompletionProc = @convention(c) (SystemSoundID, UnsafeMutablePointer<Void>) -> Void
var kSystemSoundID_UserPreferredAlert: SystemSoundID { get }
var kSystemSoundID_FlashScreen: SystemSoundID { get }
var kUserPreferredAlert: SystemSoundID { get }
var kAudioServicesPropertyIsUISound: AudioServicesPropertyID { get }
var kAudioServicesPropertyCompletePlaybackIfAppDies: AudioServicesPropertyID { get }

/*!
    @function       AudioServicesCreateSystemSoundID
    @abstract       Allows the application to designate an audio file for playback by the System Sound server.
    @discussion     SystemSoundIDs are used passed to
                    AudioServicesPlayAlertSound() & AudioServicesPlaySystemSound(),
                    designating the audio data to be played by the System Sound server.
    @param          inFileURL
                        A CFURLRef for an AudioFile.
    @param          outSystemSoundID
                        Returns a SystemSoundID.
*/
@available(OSX 10.5, *)
func AudioServicesCreateSystemSoundID(inFileURL: CFURL, _ outSystemSoundID: UnsafeMutablePointer<SystemSoundID>) -> OSStatus

/*!
    @function       AudioServicesDisposeSystemSoundID
    @abstract       Allows the System Sound server to dispose any resources needed for the provided
                    SystemSoundID.
    @discussion     Allows the application to tell the System Sound server that the resources for the
                    associated audio file are no longer required.
    @param          inSystemSoundID
                        A SystemSoundID that the application no longer needs to use.
*/
@available(OSX 10.5, *)
func AudioServicesDisposeSystemSoundID(inSystemSoundID: SystemSoundID) -> OSStatus

/*!
    @function       AudioServicesPlayAlertSoundWithCompletion
    @abstract       Play an alert sound
    @discussion     Play the sound designated by the provided SystemSoundID with alert sound behavior.
    @param          inSystemSoundID
                        The SystemSoundID to be played. On the desktop the kSystemSoundID_UserPreferredAlert
                        constant can be passed in to play back the alert sound selected by the user
                        in System Preferences. On iOS there is no preferred user alert sound.
    @param          inCompletionBlock
                        The completion block gets executed for every attempt to play a system sound irrespective
                        of success or failure. The callbacks are issued on a serial queue and the client is
                        responsible for handling thread safety.
*/
@available(OSX 10.11, *)
func AudioServicesPlayAlertSoundWithCompletion(inSystemSoundID: SystemSoundID, _ inCompletionBlock: (() -> Void)?)

/*!
    @function       AudioServicesPlaySystemSoundWithCompletion
    @abstract       Play a system sound
    @discussion     Play the sound designated by the provided SystemSoundID.
    @param          inSystemSoundID
                        The SystemSoundID to be played.
    @param          inCompletionBlock
                        The completion block gets executed for every attempt to play a system sound irrespective 
                        of success or failure. The callbacks are issued on a serial queue and the client is 
                        responsible for handling thread safety.
*/
@available(OSX 10.11, *)
func AudioServicesPlaySystemSoundWithCompletion(inSystemSoundID: SystemSoundID, _ inCompletionBlock: (() -> Void)?)

/*!
    @function       AudioServicesGetPropertyInfo
    @abstract       Get information about the size of an AudioServices property and whether it can
                    be set.
    @param          inPropertyID
                        a AudioServicesPropertyID constant.
    @param          inSpecifierSize
                        The size of the specifier data.
    @param          inSpecifier
                        A specifier is a buffer of data used as an input argument to some of the
                        properties.
    @param          outPropertyDataSize
                        The size in bytes of the current value of the property. In order to get the
                        property value, you will need a buffer of this size.
    @param          outWritable
                        Will be set to 1 if writable, or 0 if read only.
    @result         returns kAudioServicesNoError if successful.
*/
@available(OSX 10.5, *)
func AudioServicesGetPropertyInfo(inPropertyID: AudioServicesPropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafePointer<Void>, _ outPropertyDataSize: UnsafeMutablePointer<UInt32>, _ outWritable: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus

/*!
    @function       AudioServicesGetProperty
    @abstract       Retrieve the indicated property data
    @param          inPropertyID
                        a AudioServicesPropertyID constant.
    @param          inSpecifierSize
                        The size of the specifier data.
    @param          inSpecifier
                        A specifier is a buffer of data used as an input argument to some of the
                        properties.
    @param          ioPropertyDataSize
                        On input, the size of the outPropertyData buffer. On output the number of
                        bytes written to the buffer.
    @param          outPropertyData
                        The buffer in which to write the property data. May be NULL if caller only
                        wants ioPropertyDataSize to be filled with the amount that would have been
                        written.
    @result         returns kAudioServicesNoError if successful.
*/
@available(OSX 10.5, *)
func AudioServicesGetProperty(inPropertyID: AudioServicesPropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafePointer<Void>, _ ioPropertyDataSize: UnsafeMutablePointer<UInt32>, _ outPropertyData: UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @function       AudioServicesSetProperty
    @abstract       Set the indicated property data
    @param          inPropertyID
                        a AudioServicesPropertyID constant.
    @param          inSpecifierSize
                        The size of the specifier data.
    @param          inSpecifier
                        A specifier is a buffer of data used as an input argument to some of the
                        properties.
    @param          inPropertyDataSize
                        The size of the inPropertyData buffer.
    @param          inPropertyData
                        The buffer containing the property data.
    @result         returns kAudioServicesNoError if successful.
*/
@available(OSX 10.5, *)
func AudioServicesSetProperty(inPropertyID: AudioServicesPropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafePointer<Void>, _ inPropertyDataSize: UInt32, _ inPropertyData: UnsafePointer<Void>) -> OSStatus

/*!
    This function will be deprecated in a future release. Use AudioServicesPlayAlertSoundWithCompletion instead.
 
    @function       AudioServicesPlayAlertSound
    @abstract       Play an Alert Sound
    @discussion     Play the provided SystemSoundID with AlertSound behavior.
    @param          inSystemSoundID
                        A SystemSoundID for the System Sound server to play. On the desktop you
                        can pass the kSystemSoundID_UserPreferredAlert constant to playback the alert sound 
                        selected by the user in System Preferences. On iOS there is no preferred user alert sound.
*/
@available(OSX 10.5, *)
func AudioServicesPlayAlertSound(inSystemSoundID: SystemSoundID)

/*!
    This function will be deprecated in a future release. Use AudioServicesPlaySystemSoundWithCompletion instead.
 
    @function       AudioServicesPlaySystemSound
    @abstract       Play the sound designated by the provided SystemSoundID.
    @discussion     A SystemSoundID indicating the desired System Sound to be played.
    @param          inSystemSoundID
                        A SystemSoundID for the System Sound server to play.
*/
@available(OSX 10.5, *)
func AudioServicesPlaySystemSound(inSystemSoundID: SystemSoundID)

/*!
    This function will be deprecated in a future release. Use AudioServicesPlayAlertSoundWithCompletion 
    or AudioServicesPlaySystemSoundWithCompletion instead.
 
    @function       AudioServicesAddSystemSoundCompletion
    @abstract       Call the provided Completion Routine when provided SystemSoundID
                    finishes playing.
    @discussion     Once set, the System Sound server will send a message to the System Sound client
                    indicating which SystemSoundID has finished playing.
    @param          inSystemSoundID
                        The SystemSoundID to associate with the provided completion
                        routine.
    @param          inRunLoop
                        A CFRunLoopRef indicating the desired run loop the completion routine should
                        be run on. Pass NULL to use the main run loop.
    @param          inRunLoopMode
                        A CFStringRef indicating the run loop mode for the runloop where the
                        completion routine will be executed. Pass NULL to use kCFRunLoopDefaultMode.
    @param          inCompletionRoutine
                        An AudioServicesSystemSoundCompletionProc to be called when the provided
                        SystemSoundID has completed playing in the server.
    @param          inClientData
                        A void* to pass client data to the completion routine.
*/
@available(OSX 10.5, *)
func AudioServicesAddSystemSoundCompletion(inSystemSoundID: SystemSoundID, _ inRunLoop: CFRunLoop?, _ inRunLoopMode: CFString?, _ inCompletionRoutine: AudioServicesSystemSoundCompletionProc, _ inClientData: UnsafeMutablePointer<Void>) -> OSStatus

/*!
    This function will be deprecated in a future release. Use AudioServicesPlayAlertSoundWithCompletion
    or AudioServicesPlaySystemSoundWithCompletion instead.
 
    @function       AudioServicesRemoveSystemSoundCompletion
    @abstract       Disassociate any completion proc for the specified SystemSoundID
    @discussion     Tells the SystemSound client to remove any completion proc associated with the
                    provided SystemSoundID
    @param          inSystemSoundID
                        The SystemSoundID for which completion routines should be
                        removed.
*/
@available(OSX 10.5, *)
func AudioServicesRemoveSystemSoundCompletion(inSystemSoundID: SystemSoundID)
var kAudioHardwareServiceProperty_ServiceRestarted: AudioObjectPropertySelector { get }
var kAudioHardwareServiceDeviceProperty_VirtualMasterVolume: AudioObjectPropertySelector { get }
var kAudioHardwareServiceDeviceProperty_VirtualMasterBalance: AudioObjectPropertySelector { get }

/*!
    @function       AudioHardwareServiceHasProperty
    @abstract       Queries an AudioObject about whether or not it has the given property.
    @param          inObjectID
                        The AudioObject to query.
    @param          inAddress
                        An AudioObjectPropertyAddress indicating which property is being queried.
    @result         A Boolean indicating whether or not the AudioObject has the given property.
*/
@available(OSX, introduced=10.5, deprecated=10.11)
func AudioHardwareServiceHasProperty(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>) -> Bool

/*!
    @function       AudioHardwareServiceIsPropertySettable
    @abstract       Queries an AudioObject about whether or not the given property can be set using
                    AudioHardwareServiceSetPropertyData.
    @param          inObjectID
                        The AudioObject to query.
    @param          inAddress
                        An AudioObjectPropertyAddress indicating which property is being queried.
    @param          outIsSettable
                        A Boolean indicating whether or not the property can be set.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX, introduced=10.5, deprecated=10.11)
func AudioHardwareServiceIsPropertySettable(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ outIsSettable: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus

/*!
    @function       AudioHardwareServiceGetPropertyDataSize
    @abstract       Queries an AudioObject to find the size of the data for the given property.
    @param          inObjectID
                        The AudioObject to query.
    @param          inAddress
                        An AudioObjectPropertyAddress indicating which property is being queried.
    @param          inQualifierDataSize
                        A UInt32 indicating the size of the buffer pointed to by inQualifierData.
                        Note that not all properties require qualification, in which case this
                        value will be 0.
    @param          inQualifierData
                        A buffer of data to be used in determining the data of the property being
                        queried. Note that not all properties require qualification, in which case
                        this value will be NULL.
    @param          outDataSize
                        A UInt32 indicating how many bytes the data for the given property occupies.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX, introduced=10.5, deprecated=10.11)
func AudioHardwareServiceGetPropertyDataSize(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inQualifierDataSize: UInt32, _ inQualifierData: UnsafePointer<Void>, _ outDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
    @function       AudioHardwareServiceGetPropertyData
    @abstract       Queries an AudioObject to get the data of the given property and places it in
                    the provided buffer.
    @param          inObjectID
                        The AudioObject to query.
    @param          inAddress
                        An AudioObjectPropertyAddress indicating which property is being queried.
    @param          inQualifierDataSize
                        A UInt32 indicating the size of the buffer pointed to by inQualifierData.
                        Note that not all properties require qualification, in which case this
                        value will be 0.
    @param          inQualifierData
                        A buffer of data to be used in determining the data of the property being
                        queried. Note that not all properties require qualification, in which case
                        this value will be NULL.
    @param          ioDataSize
                        A UInt32 which on entry indicates the size of the buffer pointed to by
                        outData and on exit indicates how much of the buffer was used.
    @param          outData
                        The buffer into which the AudioObject will put the data for the given
                        property.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX, introduced=10.5, deprecated=10.11)
func AudioHardwareServiceGetPropertyData(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inQualifierDataSize: UInt32, _ inQualifierData: UnsafePointer<Void>, _ ioDataSize: UnsafeMutablePointer<UInt32>, _ outData: UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @function       AudioHardwareServiceSetPropertyData
    @abstract       Tells an AudioObject to change the value of the given property using the
                    provided data.
    @discussion     Note that the value of the property should not be considered changed until the
                    HAL has called the listeners as many properties values are changed
                    asynchronously.
    @param          inObjectID
                        The AudioObject to change.
    @param          inAddress
                        An AudioObjectPropertyAddress indicating which property is being changed.
    @param          inQualifierDataSize
                        A UInt32 indicating the size of the buffer pointed to by inQualifierData.
                        Note that not all properties require qualification, in which case this
                        value will be 0.
    @param          inQualifierData
                        A buffer of data to be used in determining the data of the property being
                        queried. Note that not all properties require qualification, in which case
                        this value will be NULL.
    @param          inDataSize
                        A UInt32 indicating the size of the buffer pointed to by inData.
    @param          inData
                        The buffer containing the data to be used to change the property's value.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX, introduced=10.5, deprecated=10.11)
func AudioHardwareServiceSetPropertyData(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inQualifierDataSize: UInt32, _ inQualifierData: UnsafePointer<Void>, _ inDataSize: UInt32, _ inData: UnsafePointer<Void>) -> OSStatus

/*!
    @function       AudioHardwareServiceAddPropertyListener
    @abstract       Registers the given AudioObjectPropertyListenerProc to receive notifications
                    when the given properties change.
    @param          inObjectID
                        The AudioObject to register the listener with.
    @param          inAddress
                        The AudioObjectPropertyAddresses indicating which property the listener
                        should be notified about.
    @param          inListener
                        The AudioObjectPropertyListenerProc to call.
    @param          inClientData
                        A pointer to client data that is passed to the listener when it is called.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX, introduced=10.5, deprecated=10.11)
func AudioHardwareServiceAddPropertyListener(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inListener: AudioObjectPropertyListenerProc, _ inClientData: UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @function       AudioHardwareServiceRemovePropertyListener
    @abstract       Unregisters the given AudioObjectPropertyListenerProc from receiving
                    notifications when the given properties change.
    @param          inObjectID
                        The AudioObject to unregister the listener from.
    @param          inAddress
                        The AudioObjectPropertyAddresses indicating which property the listener
                        will stop being notified about.
    @param          inListener
                        The AudioObjectPropertyListenerProc being removed.
    @param          inClientData
                        A pointer to client data that is passed to the listener when it is called.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX, introduced=10.5, deprecated=10.11)
func AudioHardwareServiceRemovePropertyListener(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inListener: AudioObjectPropertyListenerProc, _ inClientData: UnsafeMutablePointer<Void>) -> OSStatus
var kAUParameterListener_AnyParameter: AudioUnitParameterID { get }

/*!
    @enum       AudioUnitEventType
    
    @abstract   Types of Audio Unit Events.
    
    @constant   kAudioUnitEvent_ParameterValueChange
                    The event is a change to a parameter value
    @constant   kAudioUnitEvent_BeginParameterChangeGesture
                    The event signifies a gesture (e.g. mouse-down) beginning a potential series of
                    related parameter value change events.
    @constant   kAudioUnitEvent_EndParameterChangeGesture
                    The event signifies a gesture (e.g. mouse-up) ending a series of related
                    parameter value change events.
    @constant   kAudioUnitEvent_PropertyChange
                    The event is a change to a property value.
*/
enum AudioUnitEventType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case ParameterValueChange
  case BeginParameterChangeGesture
  case EndParameterChangeGesture
  case PropertyChange
}

/*!
    @typedef        AUParameterListenerRef
    @abstract       An object which receives notifications of Audio Unit parameter value changes.
    @discussion
*/
typealias AUParameterListenerRef = COpaquePointer

/*!
    @typedef        AUEventListenerRef
    @abstract       An object which receives Audio Unit events.
    @discussion     An AUEventListenerRef may be passed to API's taking an AUEventListenerRef
                    as an argument.
*/
typealias AUEventListenerRef = AUParameterListenerRef

/*!
    @struct     AudioUnitEvent
    @abstract   Describes a change to an Audio Unit's state.
    @field      mEventType
        The type of event.
    @field      mArgument
        Specifies the parameter or property which has changed.
*/
struct AudioUnitEvent {
  struct __Unnamed_union_mArgument {
    var mParameter: AudioUnitParameter
    var mProperty: AudioUnitProperty
    init(mParameter: AudioUnitParameter)
    init(mProperty: AudioUnitProperty)
    init()
  }
  var mEventType: AudioUnitEventType
  var mArgument: AudioUnitEvent.__Unnamed_union_mArgument
  init()
  init(mEventType: AudioUnitEventType, mArgument: AudioUnitEvent.__Unnamed_union_mArgument)
}

/*!
    @typedef    AUParameterListenerBlock
    @abstract   A block called when a parameter value changes.
    @param  inObject
                The object which generated the parameter change.
    @param  inParameter
                Signifies the parameter whose value changed.
    @param  inValue
                The parameter's new value.
*/
typealias AUParameterListenerBlock = (UnsafeMutablePointer<Void>, UnsafePointer<AudioUnitParameter>, AudioUnitParameterValue) -> Void

/*!
    @typedef    AUEventListenerBlock
    @abstract   A block called when an Audio Unit event occurs.
    @param  inObject
                The object which generated the parameter change.
    @param  inEvent
                The event which occurred.
    @param  inEventHostTime
                The host time at which the event occurred.
    @param  inParameterValue
                If the event is parameter change, the parameter's new value (otherwise, undefined).
*/
typealias AUEventListenerBlock = (UnsafeMutablePointer<Void>, UnsafePointer<AudioUnitEvent>, UInt64, AudioUnitParameterValue) -> Void

/*!
    @typedef    AUParameterListenerProc
    @abstract   A function called when a parameter value changes.
    @param  inUserData
                The value passed to AUListenerCreate when the callback function was installed.
    @param  inObject
                The object which generated the parameter change.
    @param  inParameter
                Signifies the parameter whose value changed.
    @param  inValue
                The parameter's new value.
*/
typealias AUParameterListenerProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, UnsafePointer<AudioUnitParameter>, AudioUnitParameterValue) -> Void

/*!
    @typedef    AUEventListenerProc
    @abstract   A function called when an Audio Unit event occurs.
    @param  inUserData
                The value passed to AUListenerCreate when the callback function was installed.
    @param  inObject
                The object which generated the parameter change.
    @param  inEvent
                The event which occurred.
    @param  inEventHostTime
                The host time at which the event occurred.
    @param  inParameterValue
                If the event is parameter change, the parameter's new value (otherwise, undefined).
*/
typealias AUEventListenerProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, UnsafePointer<AudioUnitEvent>, UInt64, AudioUnitParameterValue) -> Void

/*!
    @function   AUListenerCreateWithDispatchQueue
    @abstract   Create an object for fielding notifications when AudioUnit parameter values change.
    @param      outListener
                    On successful return, an AUParameterListenerRef.
    @param      inNotificationInterval
                    The minimum time interval, in seconds, at which the callback will be called.
                    If multiple parameter value changes occur within this time interval, the
                    listener will only receive a notification for the last value change that
                    occurred before the callback.  If inNotificationInterval is 0, the inRunLoop
                    and inRunLoopMode arguments are ignored, and the callback will be issued
                    immediately, on the thread on which the parameter was changed.
    @param      inDispatchQueue
                    Dispatch queue on which the callback is called.
    @param      inBlock
                    Block called when the parameter's value changes.
    @discussion 
        Note that only parameter changes issued through AUParameterSet will generate
        notifications to listeners; thus, in most cases, AudioUnit clients should use
        AUParameterSet in preference to AudioUnitSetParameterValue.
*/
@available(OSX 10.6, *)
func AUListenerCreateWithDispatchQueue(outListener: UnsafeMutablePointer<AUParameterListenerRef>, _ inNotificationInterval: Float32, _ inDispatchQueue: dispatch_queue_t, _ inBlock: AUParameterListenerBlock) -> OSStatus

/*!
    @function   AUListenerCreate
    @abstract   Create an object for fielding notifications when AudioUnit parameter values change.
    @param      inProc
                    Function called when the parameter's value changes.
    @param      inUserData
                    A reference value for the use of the callback function.
    @param      inRunLoop
                    The run loop on which the callback is called.  If NULL,
                    CFRunLoopGetCurrent() is used.
    @param      inRunLoopMode
                    The run loop mode in which the callback's underlying run loop source will be
                    attached.  If NULL, kCFRunLoopDefaultMode is used.
    @param      inNotificationInterval
                    The minimum time interval, in seconds, at which the callback will be called.
                    If multiple parameter value changes occur within this time interval, the
                    listener will only receive a notification for the last value change that
                    occurred before the callback.  If inNotificationInterval is 0, the inRunLoop
                    and inRunLoopMode arguments are ignored, and the callback will be issued
                    immediately, on the thread on which the parameter was changed.
    @param      outListener
                    On successful return, an AUParameterListenerRef.
    @discussion 
        Note that only parameter changes issued through AUParameterSet will generate
        notifications to listeners; thus, in most cases, AudioUnit clients should use
        AUParameterSet in preference to AudioUnitSetParameter.
*/
@available(OSX 10.2, *)
func AUListenerCreate(inProc: AUParameterListenerProc, _ inUserData: UnsafeMutablePointer<Void>, _ inRunLoop: CFRunLoop?, _ inRunLoopMode: CFString?, _ inNotificationInterval: Float32, _ outListener: UnsafeMutablePointer<AUParameterListenerRef>) -> OSStatus

/*!
    @function   AUListenerDispose
    @abstract   Dispose a parameter listener object.
    @param      inListener
                    The parameter listener to dispose.
    @discussion 
*/
@available(OSX 10.2, *)
func AUListenerDispose(inListener: AUParameterListenerRef) -> OSStatus

/*!
    @function   AUListenerAddParameter
    @abstract   Connect a parameter to a listener.
    @param      inListener
                    The parameter listener which will receive the callback.
    @param      inObject
                    The object which is interested in the value of the parameter.  This will be
                    passed as the inObject parameter to the listener callback function when the
                    parameter changes.
    @param      inParameter
                    The parameter whose value changes are to generate callbacks.
    @discussion 
        Associates an arbitrary object (often a user interface widget) with an
        AudioUnitParameter, and delivers notifications to the specified listener, telling it
        that the object needs to be informed of the parameter's value change.
*/
@available(OSX 10.2, *)
func AUListenerAddParameter(inListener: AUParameterListenerRef, _ inObject: UnsafeMutablePointer<Void>, _ inParameter: UnsafePointer<AudioUnitParameter>) -> OSStatus

/*!
    @function   AUListenerRemoveParameter
    @abstract   Remove a parameter/listener connection.
    @param      inListener
                    The parameter listener to stop receiving callbacks.
    @param      inObject
                    The object which is no longer interested in the value of the parameter.
    @param      inParameter
                    The parameter whose value changes are to stop generating callbacks.
    @discussion 
*/
@available(OSX 10.2, *)
func AUListenerRemoveParameter(inListener: AUParameterListenerRef, _ inObject: UnsafeMutablePointer<Void>, _ inParameter: UnsafePointer<AudioUnitParameter>) -> OSStatus

/*!
    @function   AUParameterSet
    @abstract   Set an AudioUnit parameter value and notify listeners.
    @param      inSendingListener
                    A parameter listener generating the change and which does not want to
                    receive a callback as a result of it. May be NULL.
    @param      inSendingObject
                    The object generating the change and which does not want to receive a
                    callback as a result of it. NULL is treated specially when inListener is
                    non-null; it signifies that none of the specified listener's objects will
                    receive notifications.
    @param      inParameter
                    The parameter being changed.
    @param      inValue
                    The new value of the parameter.
	@param		inBufferOffsetInFrames
					The offset into the next rendered buffer at which the parameter change will take
					effect.
    @discussion 
        Calls AudioUnitSetParameter, and performs/schedules notification callbacks to all
        parameter listeners, for that parameter -- except that no callback will be generated to
        the inListener/inObject pair.
*/
@available(OSX 10.2, *)
func AUParameterSet(inSendingListener: AUParameterListenerRef, _ inSendingObject: UnsafeMutablePointer<Void>, _ inParameter: UnsafePointer<AudioUnitParameter>, _ inValue: AudioUnitParameterValue, _ inBufferOffsetInFrames: UInt32) -> OSStatus

/*!
    @function   AUParameterListenerNotify
    @abstract   Notify listeners of a past parameter change.
    @param      inSendingListener
                    A parameter listener generating the change and which does not want to
                    receive a callback as a result of it. May be NULL.
    @param      inSendingObject
                    The object generating the change and which does not want to receive a
                    callback as a result of it. NULL is treated specially when inListener is
                    non-null; it signifies that none of the specified listener's objects will
                    receive notifications.
    @param      inParameter
                    The parameter which was changed.
    @discussion 
        Performs and schedules the notification callbacks of AUParameterSet, without
        actually setting an AudioUnit parameter value.
        
        Clients scheduling ramped parameter changes to AudioUnits must make this call
        dynamically during playback in order for AudioUnitViews to be updated.  When the view's
        listener receives a notification, it will be passed the current value of the parameter.

        A special meaning is applied if the mParameterID value of inParameter is equal to
        kAUParameterListener_AnyParameter. In this case, ANY listener for ANY parameter value
        changes on the specified AudioUnit will be notified of the current value of that
        parameter.
*/
@available(OSX 10.2, *)
func AUParameterListenerNotify(inSendingListener: AUParameterListenerRef, _ inSendingObject: UnsafeMutablePointer<Void>, _ inParameter: UnsafePointer<AudioUnitParameter>) -> OSStatus

/*!
    @function   AUEventListenerCreateWithDispatchQueue
    @abstract   Creates an Audio Unit event listener.
    @param      outListener
                    On successful return, an AUEventListenerRef.
    @param      inNotificationInterval
                    The minimum time interval, in seconds, at which the callback will be called.
    @param      inValueChangeGranularity
                    Determines how parameter value changes occurring within this interval are
                    queued; when an event follows a previous one by a smaller time interval than
                    the granularity, then the listener will only be notified for the second
                    parameter change.
    @param      inDispatchQueue
                    The dispatch queue on which the callback is called.
    @param      inBlock
                    Block called when an event occurs.
    
    @discussion
        AUEventListener is a specialization of AUParameterListener; use AUListenerDispose to
        dispose of an AUEventListener. You may use AUListenerAddParameter and
        AUListenerRemoveParameter with AUEventListerRef's, in addition to
        AUEventListenerAddEventType / AUEventListenerRemoveEventType.

        Some examples illustrating inNotificationInterval and inValueChangeGranularity:

        [1] a UI receiver: inNotificationInterval = 100 ms, inValueChangeGranularity = 100 ms.
            User interfaces almost never care about previous values, only the current one,
            and don't wish to perform redraws too often.

        [2] An automation recorder: inNotificationInterval = 200 ms, inValueChangeGranularity = 10 ms.
            Automation systems typically wish to record events with a high degree of timing precision,
            but do not need to be woken up for each event.
        
        In case [1], the listener will be called within 100 ms (the notification interval) of an
        event. It will only receive one notification for any number of value changes to the
        parameter concerned, occurring within a 100 ms window (the granularity).

        In case [2], the listener will be received within 200 ms (the notification interval) of
        an event It can receive more than one notification per parameter, for the last of each
        group of value changes occurring within a 10 ms window (the granularity).

        In both cases, thread scheduling latencies may result in more events being delivered to
        the listener callback than the theoretical maximum (notification interval /
        granularity).
*/
@available(OSX 10.6, *)
func AUEventListenerCreateWithDispatchQueue(outListener: UnsafeMutablePointer<AUEventListenerRef>, _ inNotificationInterval: Float32, _ inValueChangeGranularity: Float32, _ inDispatchQueue: dispatch_queue_t, _ inBlock: AUEventListenerBlock) -> OSStatus

/*!
    @function   AUEventListenerCreate
    @abstract   Creates an Audio Unit event listener.
    @param      inProc
                    Function called when an event occurs.
    @param      inUserData
                    A reference value for the use of the callback function.
    @param      inRunLoop
                    The run loop on which the callback is called.  If NULL,
                    CFRunLoopGetCurrent() is used.
    @param      inRunLoopMode
                    The run loop mode in which the callback's underlying run loop source will be
                    attached.  If NULL, kCFRunLoopDefaultMode is used.
    @param      inNotificationInterval
                    The minimum time interval, in seconds, at which the callback will be called.
    @param      inValueChangeGranularity
                    Determines how parameter value changes occurring within this interval are
                    queued; when an event follows a previous one by a smaller time interval than
                    the granularity, then the listener will only be notified for the second
                    parameter change.
    @param      outListener
                    On successful return, an AUEventListenerRef.
    
    @discussion
        See the discussion of AUEventListenerCreateWithDispatchQueue.
*/
@available(OSX 10.3, *)
func AUEventListenerCreate(inProc: AUEventListenerProc, _ inUserData: UnsafeMutablePointer<Void>, _ inRunLoop: CFRunLoop?, _ inRunLoopMode: CFString?, _ inNotificationInterval: Float32, _ inValueChangeGranularity: Float32, _ outListener: UnsafeMutablePointer<AUEventListenerRef>) -> OSStatus

/*!
    @function   AUEventListenerAddEventType
    @abstract   Begin delivering a particular type of events to a listener.
    @param      inListener
                    The parameter listener which will receive the events.
    @param      inObject
                    The object which is interested in the value of the parameter.  This will be
                    passed as the inObject parameter to the listener callback function when the
                    parameter changes.
    @param      inEvent
                    The type of event to listen for.
    @result     An OSStatus error code.
*/
@available(OSX 10.3, *)
func AUEventListenerAddEventType(inListener: AUEventListenerRef, _ inObject: UnsafeMutablePointer<Void>, _ inEvent: UnsafePointer<AudioUnitEvent>) -> OSStatus

/*!
    @function   AUEventListenerRemoveEventType
    @abstract   Stop delivering a particular type of events to a listener.
    @param      inListener
                    The parameter listener to stop receiving events.
    @param      inObject
                    The object which is no longer interested in the value of the parameter.
    @param      inEvent
                    The type of event to stop listening for.
    @result     An OSStatus error code.
*/
@available(OSX 10.3, *)
func AUEventListenerRemoveEventType(inListener: AUEventListenerRef, _ inObject: UnsafeMutablePointer<Void>, _ inEvent: UnsafePointer<AudioUnitEvent>) -> OSStatus

/*!
    @function   AUEventListenerNotify
    @abstract   Deliver an AudioUnitEvent to all listeners registered to receive it.
    @discussion This is only to be used for notifications about parameter changes (and gestures).
                It can not be used for notifying changes to property values as these are 
                internal to an audio unit and should not be issued outside of the audio unit itself.
    @param      inSendingListener
                    A parameter listener generating the change and which does not want to
                    receive a callback as a result of it. May be NULL.
    @param      inSendingObject
                    The object generating the change and which does not want to receive a
                    callback as a result of it. NULL is treated specially when inListener is
                    non-null; it signifies that none of the specified listener's objects will
                    receive notifications.
    @param      inEvent
                    The event to be delivered.
    @result     An OSStatus error code.
*/
@available(OSX 10.3, *)
func AUEventListenerNotify(inSendingListener: AUEventListenerRef, _ inSendingObject: UnsafeMutablePointer<Void>, _ inEvent: UnsafePointer<AudioUnitEvent>) -> OSStatus

/*!
    @function   AUParameterValueFromLinear
    @abstract   Converts a linear value to a parameter value according to the parameter's units.
    
    @param      inLinearValue
                    The linear value (0.0-1.0) to convert.
    @param      inParameter
                    The parameter, including its Audio Unit, that will define the conversion of
                    the supplied linear value to a value that is natural to that parameter.
    @result
                The converted parameter value, in the parameter's natural units.
    @discussion 
*/
@available(OSX 10.2, *)
func AUParameterValueFromLinear(inLinearValue: Float32, _ inParameter: UnsafePointer<AudioUnitParameter>) -> AudioUnitParameterValue

/*!
    @function   AUParameterValueToLinear
    @abstract   Converts a parameter value to a linear value according to the parameter's units.
    
    @param      inParameterValue
                    The value in the natural units of the specified parameter.
        
    @param      inParameter
                    The parameter, including its Audio Unit, that will define the conversion of
                    the supplied parameter value to a corresponding linear value.
    @result
                A number 0.0-1.0.
    @discussion 
*/
@available(OSX 10.2, *)
func AUParameterValueToLinear(inParameterValue: AudioUnitParameterValue, _ inParameter: UnsafePointer<AudioUnitParameter>) -> Float32

/*!
    @function   AUParameterFormatValue
    @abstract   Format a parameter value into a string.
    @param      inParameterValue
                    The parameter value to be formatted.
    @param      inParameter
                    The Audio Unit, scope, element, and parameter whose value this is.
    @param      inTextBuffer
                    The character array to receive the formatted text.  Should be at least 32
                    characters.
    @param      inDigits
                    The resolution of the string (see example above).
    @result
                <tt>inTextBuffer</tt>
    @discussion 
        Formats a floating point value into a string.  Computes a power of 10 to which the value
        will be rounded and displayed as follows:  if the the parameter is logarithmic (Hertz),
        the number of significant digits is inDigits - pow10(inParameterValue) + 1.  Otherwise,
        it is inDigits - pow10(maxValue - minValue) + 1.

        Example for inDigits=3:
<pre>
        pow10   range           digits after decimal place display
        -2      .0100-.0999     4
        -1      .100-.999       3
        0       1.00-9.99       2
        1       10.0-99.9       1
        2       100-999         0
        3       1000-9990       -1
        4       10000-99900     -2</pre>
*/
@available(OSX 10.2, *)
func AUParameterFormatValue(inParameterValue: Float64, _ inParameter: UnsafePointer<AudioUnitParameter>, _ inTextBuffer: UnsafeMutablePointer<Int8>, _ inDigits: UInt32) -> UnsafeMutablePointer<Int8>
var kCAF_FileType: UInt32 { get }
var kCAF_FileVersion_Initial: UInt32 { get }
var kCAF_StreamDescriptionChunkID: UInt32 { get }
var kCAF_AudioDataChunkID: UInt32 { get }
var kCAF_ChannelLayoutChunkID: UInt32 { get }
var kCAF_FillerChunkID: UInt32 { get }
var kCAF_MarkerChunkID: UInt32 { get }
var kCAF_RegionChunkID: UInt32 { get }
var kCAF_InstrumentChunkID: UInt32 { get }
var kCAF_MagicCookieID: UInt32 { get }
var kCAF_InfoStringsChunkID: UInt32 { get }
var kCAF_EditCommentsChunkID: UInt32 { get }
var kCAF_PacketTableChunkID: UInt32 { get }
var kCAF_StringsChunkID: UInt32 { get }
var kCAF_UUIDChunkID: UInt32 { get }
var kCAF_PeakChunkID: UInt32 { get }
var kCAF_OverviewChunkID: UInt32 { get }
var kCAF_MIDIChunkID: UInt32 { get }
var kCAF_UMIDChunkID: UInt32 { get }
var kCAF_FormatListID: UInt32 { get }
var kCAF_iXMLChunkID: UInt32 { get }
struct CAFFileHeader {
  var mFileType: UInt32
  var mFileVersion: UInt16
  var mFileFlags: UInt16
  init()
  init(mFileType: UInt32, mFileVersion: UInt16, mFileFlags: UInt16)
}
struct CAFChunkHeader {
  var mChunkType: UInt32
  var mChunkSize: Int64
  init()
  init(mChunkType: UInt32, mChunkSize: Int64)
}
struct CAF_UUID_ChunkHeader {
  var mHeader: CAFChunkHeader
  var mUUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(mHeader: CAFChunkHeader, mUUID: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct CAFFormatFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var LinearPCMFormatFlagIsFloat: CAFFormatFlags { get }
  static var LinearPCMFormatFlagIsLittleEndian: CAFFormatFlags { get }
}
struct CAFAudioDescription {
  var mSampleRate: Float64
  var mFormatID: UInt32
  var mFormatFlags: CAFFormatFlags
  var mBytesPerPacket: UInt32
  var mFramesPerPacket: UInt32
  var mChannelsPerFrame: UInt32
  var mBitsPerChannel: UInt32
  init()
  init(mSampleRate: Float64, mFormatID: UInt32, mFormatFlags: CAFFormatFlags, mBytesPerPacket: UInt32, mFramesPerPacket: UInt32, mChannelsPerFrame: UInt32, mBitsPerChannel: UInt32)
}
struct CAFAudioFormatListItem {
  var mFormat: CAFAudioDescription
  var mChannelLayoutTag: UInt32
  init()
  init(mFormat: CAFAudioDescription, mChannelLayoutTag: UInt32)
}
struct CAFPacketTableHeader {
  var mNumberPackets: Int64
  var mNumberValidFrames: Int64
  var mPrimingFrames: Int32
  var mRemainderFrames: Int32
  var mPacketDescriptions: (UInt8)
  init()
  init(mNumberPackets: Int64, mNumberValidFrames: Int64, mPrimingFrames: Int32, mRemainderFrames: Int32, mPacketDescriptions: (UInt8))
}
struct CAFDataChunk {
  var mEditCount: UInt32
  var mData: (UInt8)
  init()
  init(mEditCount: UInt32, mData: (UInt8))
}
var kCAFMarkerType_Generic: UInt32 { get }
var kCAFMarkerType_ProgramStart: UInt32 { get }
var kCAFMarkerType_ProgramEnd: UInt32 { get }
var kCAFMarkerType_TrackStart: UInt32 { get }
var kCAFMarkerType_TrackEnd: UInt32 { get }
var kCAFMarkerType_Index: UInt32 { get }
var kCAFMarkerType_RegionStart: UInt32 { get }
var kCAFMarkerType_RegionEnd: UInt32 { get }
var kCAFMarkerType_RegionSyncPoint: UInt32 { get }
var kCAFMarkerType_SelectionStart: UInt32 { get }
var kCAFMarkerType_SelectionEnd: UInt32 { get }
var kCAFMarkerType_EditSourceBegin: UInt32 { get }
var kCAFMarkerType_EditSourceEnd: UInt32 { get }
var kCAFMarkerType_EditDestinationBegin: UInt32 { get }
var kCAFMarkerType_EditDestinationEnd: UInt32 { get }
var kCAFMarkerType_SustainLoopStart: UInt32 { get }
var kCAFMarkerType_SustainLoopEnd: UInt32 { get }
var kCAFMarkerType_ReleaseLoopStart: UInt32 { get }
var kCAFMarkerType_ReleaseLoopEnd: UInt32 { get }
var kCAFMarkerType_SavedPlayPosition: UInt32 { get }
var kCAFMarkerType_Tempo: UInt32 { get }
var kCAFMarkerType_TimeSignature: UInt32 { get }
var kCAFMarkerType_KeySignature: UInt32 { get }
var kCAF_SMPTE_TimeTypeNone: UInt32 { get }
var kCAF_SMPTE_TimeType24: UInt32 { get }
var kCAF_SMPTE_TimeType25: UInt32 { get }
var kCAF_SMPTE_TimeType30Drop: UInt32 { get }
var kCAF_SMPTE_TimeType30: UInt32 { get }
var kCAF_SMPTE_TimeType2997: UInt32 { get }
var kCAF_SMPTE_TimeType2997Drop: UInt32 { get }
var kCAF_SMPTE_TimeType60: UInt32 { get }
var kCAF_SMPTE_TimeType5994: UInt32 { get }
var kCAF_SMPTE_TimeType60Drop: UInt32 { get }
var kCAF_SMPTE_TimeType5994Drop: UInt32 { get }
var kCAF_SMPTE_TimeType50: UInt32 { get }
var kCAF_SMPTE_TimeType2398: UInt32 { get }
struct CAF_SMPTE_Time {
  var mHours: Int8
  var mMinutes: Int8
  var mSeconds: Int8
  var mFrames: Int8
  var mSubFrameSampleOffset: UInt32
  init()
  init(mHours: Int8, mMinutes: Int8, mSeconds: Int8, mFrames: Int8, mSubFrameSampleOffset: UInt32)
}
struct CAFMarker {
  var mType: UInt32
  var mFramePosition: Float64
  var mMarkerID: UInt32
  var mSMPTETime: CAF_SMPTE_Time
  var mChannel: UInt32
  init()
  init(mType: UInt32, mFramePosition: Float64, mMarkerID: UInt32, mSMPTETime: CAF_SMPTE_Time, mChannel: UInt32)
}
struct CAFMarkerChunk {
  var mSMPTE_TimeType: UInt32
  var mNumberMarkers: UInt32
  var mMarkers: (CAFMarker)
  init()
  init(mSMPTE_TimeType: UInt32, mNumberMarkers: UInt32, mMarkers: (CAFMarker))
}
struct CAFRegionFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var LoopEnable: CAFRegionFlags { get }
  static var PlayForward: CAFRegionFlags { get }
  static var PlayBackward: CAFRegionFlags { get }
}
struct CAFRegion {
  var mRegionID: UInt32
  var mFlags: CAFRegionFlags
  var mNumberMarkers: UInt32
  var mMarkers: (CAFMarker)
  init()
  init(mRegionID: UInt32, mFlags: CAFRegionFlags, mNumberMarkers: UInt32, mMarkers: (CAFMarker))
}
struct CAFRegionChunk {
  var mSMPTE_TimeType: UInt32
  var mNumberRegions: UInt32
  var mRegions: (CAFRegion)
  init()
  init(mSMPTE_TimeType: UInt32, mNumberRegions: UInt32, mRegions: (CAFRegion))
}
struct CAFInstrumentChunk {
  var mBaseNote: Float32
  var mMIDILowNote: UInt8
  var mMIDIHighNote: UInt8
  var mMIDILowVelocity: UInt8
  var mMIDIHighVelocity: UInt8
  var mdBGain: Float32
  var mStartRegionID: UInt32
  var mSustainRegionID: UInt32
  var mReleaseRegionID: UInt32
  var mInstrumentID: UInt32
  init()
  init(mBaseNote: Float32, mMIDILowNote: UInt8, mMIDIHighNote: UInt8, mMIDILowVelocity: UInt8, mMIDIHighVelocity: UInt8, mdBGain: Float32, mStartRegionID: UInt32, mSustainRegionID: UInt32, mReleaseRegionID: UInt32, mInstrumentID: UInt32)
}
struct CAFStringID {
  var mStringID: UInt32
  var mStringStartByteOffset: Int64
  init()
  init(mStringID: UInt32, mStringStartByteOffset: Int64)
}
struct CAFStrings {
  var mNumEntries: UInt32
  var mStringsIDs: (CAFStringID)
  init()
  init(mNumEntries: UInt32, mStringsIDs: (CAFStringID))
}
struct CAFInfoStrings {
  var mNumEntries: UInt32
  init()
  init(mNumEntries: UInt32)
}
struct CAFPositionPeak {
  var mValue: Float32
  var mFrameNumber: UInt64
  init()
  init(mValue: Float32, mFrameNumber: UInt64)
}
struct CAFPeakChunk {
  var mEditCount: UInt32
  var mPeaks: (CAFPositionPeak)
  init()
  init(mEditCount: UInt32, mPeaks: (CAFPositionPeak))
}
struct CAFOverviewSample {
  var mMinValue: Int16
  var mMaxValue: Int16
  init()
  init(mMinValue: Int16, mMaxValue: Int16)
}
struct CAFOverviewChunk {
  var mEditCount: UInt32
  var mNumFramesPerOVWSample: UInt32
  var mData: (CAFOverviewSample)
  init()
  init(mEditCount: UInt32, mNumFramesPerOVWSample: UInt32, mData: (CAFOverviewSample))
}
struct CAFUMIDChunk {
  var mBytes: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(mBytes: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}

/*!
	@enum		CAClockPropertyID
	
	@abstract	The properties of a CoreAudioClock, accessible via CAClockGetProperty and
				CAClockSetProperty.

	@constant	kCAClockProperty_InternalTimebase
					Type: CAClockTimebase. Selects the internal time reference for the clock
					(currently, host time, an audio device, or audio output unit).
	@constant	kCAClockProperty_TimebaseSource
					Type: according to the internal timebase. If the timebase is
					kCAClockTimebase_AudioDevice, the value is an AudioDeviceID. For
					kCAClockTimebase_AudioOutputUnit, the value is an AudioUnit.
	@constant	kCAClockProperty_SyncMode
					Type: CAClockSyncMode. Selects between internal synchronization and multiple
					external synchronization modes such as MIDI Time Code and MIDI beat clock.
	@constant	kCAClockProperty_SyncSource
					Type: according to the sync mode. For kCAClockSyncMode_MIDIClockTransport or 
					kCAClockSyncMode_MTCTransport, the value is a MIDIEndpointRef.
	@constant	kCAClockProperty_SMPTEFormat
					Type: CAClockSMPTEFormat. Specifies the SMPTE format (fps, drop or non-drop)
					expected for received SMPTE messages, and used for transmitted SMPTE
					messages and SMPTE time representations.
	@constant	kCAClockProperty_SMPTEOffset
					Type: CAClockSeconds. The SMPTE time, represented in seconds since
					00:00:00:00, corresponding to a timeline position of 0 seconds.
	@constant	kCAClockProperty_MIDIClockDestinations
					Type: array of MIDIEndpointRef. When non-empty, the clock will transmit
					MIDI beat clock to the MIDI endpoints in this list. (As of MacOS X 10.6,
					the endpoints may be virtual sources. Previously, they had to be destinations.)
	@constant	kCAClockProperty_MTCDestinations
					Type: array of MIDIEndpointRef. When non-empty, the clock will transmit
					MIDI Time Code to the MIDI endpoints in this list. (As of MacOS X 10.6,
					the endpoints may be virtual sources. Previously, they had to be destinations.)
	@constant	kCAClockProperty_MTCFreewheelTime
					Type: CAClockSeconds. When the sync mode is MIDI Time Code, this controls
					how long the reader will keep running after the last MTC message is received
					before stopping (default: 1 sec). Should be at least ~4 SMPTE frames in
					duration.
	@constant	kCAClockProperty_TempoMap
					Type: array of CATempoMapEntry. Specifies a tempo map for the clock,
					defining the relationship between timeline positions in seconds and musical
					beats. Defaults to a constant tempo of 120 bpm.
	@constant	kCAClockProperty_MeterTrack
					Type: array of CAMeterTrackEntry. Specifies the positions of musical time 
					signature changes in the timeline. Used only for converting between beats
					and CABarBeatTime's (a display representation of a beat time).
	@constant	kCAClockProperty_Name
					Type: CFStringRef. Sets a name for the clock. When a client sets the
					property, the clock retains a reference to the string. When a client gets
					the property, it receives a borrowed reference (i.e. the client must not
					release the string).
	@constant	kCAClockProperty_SendMIDISPP
					Type: UInt32. Specifies whether MIDI Song Position Pointer messages are
					sent to the clock's MIDI clock destinations (if any). Available starting
					in MacOS X 10.6.
*/
enum CAClockPropertyID : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case InternalTimebase
  case TimebaseSource
  case SyncMode
  case SyncSource
  case SMPTEFormat
  case SMPTEOffset
  case MIDIClockDestinations
  case MTCDestinations
  case MTCFreewheelTime
  case TempoMap
  case MeterTrack
  case Name
  case SendMIDISPP
}

/*!
	@enum		CAClockTimebase
	
	@abstract	The available internal hardware time references for a clock.
	
	@constant	kCAClockTimebase_HostTime
					The clock's reference time is host time (as returned
					by <code>mach_absolute_time()</code> or
					<code>HostTime()</code>).
	@constant	kCAClockTimebase_AudioDevice
					The clock's reference time is derived from an audio
					device.
	@constant	kCAClockTimebase_AudioOutputUnit
					The clock's reference time is derived from the audio
					device addressed by an output Audio Unit.
*/
enum CAClockTimebase : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case HostTime
  case AudioDevice
  case AudioOutputUnit
}

/*!
	@enum		CAClockSyncMode
	
	@abstract	Specifies internal synchronization, or an external sync source type.
	
	@constant	kCAClockSyncMode_Internal
					The clock is not driven by an external sync source.
	@constant	kCAClockSyncMode_MIDIClockTransport
					The clock is driven by MIDI beat clock received from a CoreMIDI source
					endpoint.
	@constant	kCAClockSyncMode_MTCTransport
					The clock is driven by MIDI Time Code received from a CoreMIDI source
					endpoint.
*/
enum CAClockSyncMode : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Internal
  case MIDIClockTransport
  case MTCTransport
}

/*!
	@typedef		CAClockSMPTEFormat
	@abstract		A SMPTE format, specifying the frames per second (fps) and
					whether it is drop frame.
	@discussion		
					The possible values of a CAClockSMPTEFormat are found in
					<code>&lt;CoreAudio/CoreAudioTypes.h&gt;</code>. Values include
					kSMPTETimeType30, kSMPTETimeType30Drop, etc. Note that formats with more
					than 30 fps are not usable with MIDI Time Code.
*/
typealias CAClockSMPTEFormat = SMPTETimeType

/*!
	@enum		CAClockMessage
	@abstract	The messages sent to a CAClockListenerProc to notify the client of
				changes to the clock's state.
	
	@constant	kCAClockMessage_StartTimeSet
					A new start time was set or received from an external sync source.
	@constant	kCAClockMessage_Started
					The clock's time has started moving.
	@constant	kCAClockMessage_Stopped
					The clock's time has stopped moving.
	@constant	kCAClockMessage_Armed
					The client has called CAClockArm().
	@constant	kCAClockMessage_Disarmed
					The client has called CAClockDisarm().
	@constant	kCAClockMessage_PropertyChanged
					A clock property has been changed.
	@constant	kCAClockMessage_WrongSMPTEFormat
					The clock is receiving SMPTE (MTC) messages in a SMPTE format that does not
					match the clock's SMPTE format.
*/
enum CAClockMessage : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case StartTimeSet
  case Started
  case Stopped
  case Armed
  case Disarmed
  case PropertyChanged
  case WrongSMPTEFormat
}

/*!
	@enum		CAClockTimeFormat
	@abstract	The various units in which a clock can represent and report time.
	
	@constant	kCAClockTimeFormat_HostTime
					Absolute host time, as returned by <code>mach_absolute_time()</code>.
	@constant	kCAClockTimeFormat_Samples
					Absolute audio samples, as a Float64. Available when the internal timebase
					is an audio device (or audio output unit). The units are in arbitrary sample
					numbers, corresponding to the audio device's current time, and at the
					device's current sample rate.
	@constant	kCAClockTimeFormat_Beats
					Musical beats, as a Float64. This is a position on the clock's timeline.
	@constant	kCAClockTimeFormat_Seconds
					Seconds, as a Float64. This is a position on the clock's timeline.
	@constant	kCAClockTimeFormat_SMPTESeconds
					Seconds, as a Float64. This is the same as kCAClockTimeFormat_Seconds,
					except that the clock's SMPTE offset has been applied.
	@constant	kCAClockTimeFormat_SMPTETime
					SMPTETime structure.
*/
enum CAClockTimeFormat : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case HostTime
  case Samples
  case Beats
  case Seconds
  case SMPTESeconds
  case SMPTETime
  case AbsoluteSeconds
}
var kCAClock_UnknownPropertyError: OSStatus { get }
var kCAClock_InvalidPropertySizeError: OSStatus { get }
var kCAClock_InvalidTimeFormatError: OSStatus { get }
var kCAClock_InvalidSyncModeError: OSStatus { get }
var kCAClock_InvalidSyncSourceError: OSStatus { get }
var kCAClock_InvalidTimebaseError: OSStatus { get }
var kCAClock_InvalidTimebaseSourceError: OSStatus { get }
var kCAClock_InvalidSMPTEFormatError: OSStatus { get }
var kCAClock_InvalidSMPTEOffsetError: OSStatus { get }
var kCAClock_InvalidUnitError: OSStatus { get }
var kCAClock_InvalidPlayRateError: OSStatus { get }
var kCAClock_CannotSetTimeError: OSStatus { get }

/*!
	@typedef	CAClockRef
	@abstract	A reference to a Core Audio Clock object.
*/
typealias CAClockRef = COpaquePointer

/*!
	@typedef	CAClockBeats
	@abstract	MIDI quarter notes (see MIDI specs)
*/
typealias CAClockBeats = Float64

/*!
	@typedef	CAClockTempo
	@abstract	A musical tempo in beats per minute.
*/
typealias CAClockTempo = Float64
typealias CAClockSamples = Float64
typealias CAClockSeconds = Float64

/*!
	@typedef	CAClockListenerProc
	
	@abstract	A client-supplied function called when the clock's state changes.
	
	@param	userData
				The value passed to CAClockAddListener when the callback function
				was installed.
	@param	message
				Signifies the kind of event which occurred.
	@param	param
				This value is specific to the message (currently no messages have values).
*/
typealias CAClockListenerProc = @convention(c) (UnsafeMutablePointer<Void>, CAClockMessage, UnsafePointer<Void>) -> Void

/*!
	@struct 	CAClockTime
	
	@abstract	Represents a time value using one of several possible units.
	
	@field	format
				Specifies the time's format and units.
	@field	reserved
				Must be 0.
	@field	time
				The time value. Use the member of the union appropriate to the format (see the
				description of CAClockTimeFormat).
*/
struct CAClockTime {
  struct __Unnamed_union_time {
    var hostTime: UInt64
    var samples: CAClockSamples
    var beats: CAClockBeats
    var seconds: CAClockSeconds
    var smpte: SMPTETime
    init(hostTime: UInt64)
    init(samples: CAClockSamples)
    init(beats: CAClockBeats)
    init(seconds: CAClockSeconds)
    init(smpte: SMPTETime)
    init()
  }
  var format: CAClockTimeFormat
  var reserved: UInt32
  var time: CAClockTime.__Unnamed_union_time
  init()
  init(format: CAClockTimeFormat, reserved: UInt32, time: CAClockTime.__Unnamed_union_time)
}

/*!
	@struct		CABarBeatTime
	@abstract	A display representation of a musical time in beats.
	
	@field	bar
				A measure number.
	@field	beat
				A beat number (1..n).
	@field	subbeat
				The numerator of the fractional number of beats.
	@field	subbeatDivisor
				The denominator of the fractional number of beats.
	@field	reserved
				Must be 0.
	@discussion
				A clock's internal representation of musical time is in beats based on the
				beginning of the timeline. Normally, such times should be displayed to the user
				in terms of bars, beats, and subbeats (sometimes called "units" or "parts per
				quarter" [PPQ]). This data structure is such a display representation.

				By convention, bar 1 is the beginning of the sequence. Beat 1 is the first beat
				of the measure. In 4/4 time, beat will have a value from 1 to 4. Music
				applications often use beat divisions such as 480 and 960.
*/
struct CABarBeatTime {
  var bar: Int32
  var beat: UInt16
  var subbeat: UInt16
  var subbeatDivisor: UInt16
  var reserved: UInt16
  init()
  init(bar: Int32, beat: UInt16, subbeat: UInt16, subbeatDivisor: UInt16, reserved: UInt16)
}

/*!
	@struct 	CATempoMapEntry
	@abstract	A tempo change event.
	
	@field	beats
				The beat time at which the tempo changes.
	@field	tempoBPM
				The new tempo as of that time.
	
	@discussion
				The clock's tempo map defines the correspondence between seconds and musical
				beats, and is used in conversions between the two.
*/
struct CATempoMapEntry {
  var beats: CAClockBeats
  var tempoBPM: CAClockTempo
  init()
  init(beats: CAClockBeats, tempoBPM: CAClockTempo)
}

/*!
	@struct		CAMeterTrackEntry
	@abstract	A time signature change event.
	
	@field	beats
				The beat time at which the time signature (meter) changes.
	@field	meterNumer
				The numerator of the new time signature.
	@field	meterDenom
				The denominator of the new time signature (1, 2, 4, 8, etc.).

	@discussion
				The meter track is used for converting between beats as floating-point
				numbers (CAClockBeats) and their display representations (CABarBeatTime).
*/
struct CAMeterTrackEntry {
  var beats: CAClockBeats
  var meterNumer: UInt16
  var meterDenom: UInt16
  init()
  init(beats: CAClockBeats, meterNumer: UInt16, meterDenom: UInt16)
}

/*!
	@function		CAClockNew
	
	@abstract		Create a new clock object.

	@discussion		
	
	@param			inReservedFlags
						Must be 0.
	
	@param			outCAClock
						Must be non-null. On successful return, the new clock object.
	
	@result			An OSStatus error code.
*/
@available(OSX 10.4, *)
func CAClockNew(inReservedFlags: UInt32, _ outCAClock: UnsafeMutablePointer<CAClockRef>) -> OSStatus

/*!
	@function		CAClockDispose
	
	@abstract		Dispose a clock object.

	@discussion		
	
	@param			inCAClock
						The clock object to be disposed.
	
	@result			An OSStatus error code.
*/
@available(OSX 10.4, *)
func CAClockDispose(inCAClock: CAClockRef) -> OSStatus

/*!
	@function		CAClockGetPropertyInfo
	
	@abstract		Gets information about a clock's property.

	@discussion		
	
	@param			inCAClock
						The clock object.
	
	@param			inPropertyID
						The property being queried.
	
	@param			outSize
						If non-null, on exit, this is set to the size of the
						property's value.

	@param			outWritable
						If non-null, on exit, this indicates whether the
						property value is settable.
	
	@result			An OSStatus error code.
*/
@available(OSX 10.4, *)
func CAClockGetPropertyInfo(inCAClock: CAClockRef, _ inPropertyID: CAClockPropertyID, _ outSize: UnsafeMutablePointer<UInt32>, _ outWritable: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus

/*!
	@function		CAClockGetProperty
	
	@abstract		Gets the current value of a clock's property.

	@discussion		
	
	@param			inCAClock
						The clock object.
	
	@param			inPropertyID
						The property being fetched.
	
	@param			ioPropertyDataSize
						On entry, the size (in bytes) of the memory pointed to
						by outPropertyData. On exit, the actual size of the
						property data returned.
	
	@param			outPropertyData
						The value of the property is copied to the memory
						this points to.
	
	@result			An OSStatus error code.
*/
@available(OSX 10.4, *)
func CAClockGetProperty(inCAClock: CAClockRef, _ inPropertyID: CAClockPropertyID, _ ioPropertyDataSize: UnsafeMutablePointer<UInt32>, _ outPropertyData: UnsafeMutablePointer<Void>) -> OSStatus

/*!
	@function		CAClockSetProperty
	
	@abstract		Changes the value of a clock's property.

	@discussion		
	
	@param			inCAClock
						The clock object.
	
	@param			inPropertyID
						The property being set.
	
	@param			inPropertyDataSize
						The size of the property data, in bytes.
	
	@param			inPropertyData
						Points to the property's new value.

	@result			An OSStatus error code.
*/
@available(OSX 10.4, *)
func CAClockSetProperty(inCAClock: CAClockRef, _ inPropertyID: CAClockPropertyID, _ inPropertyDataSize: UInt32, _ inPropertyData: UnsafePointer<Void>) -> OSStatus

/*!
	@function		CAClockAddListener

	@abstract		Adds a callback function to receive notifications of changes to the clock's
					state.

	@discussion		
					Note: The CAClockListenerProc may be called on a realtime thread internal to
					the clock object.
						
	@param			inCAClock
						The clock object.
	
	@param			inListenerProc
						The callback function.
	
	@param			inUserData
						This value is passed to the callback function, in the userData
						parameter.
	
	@result			An OSStatus error code.
*/
@available(OSX 10.4, *)
func CAClockAddListener(inCAClock: CAClockRef, _ inListenerProc: CAClockListenerProc, _ inUserData: UnsafeMutablePointer<Void>) -> OSStatus

/*!
	@function		CAClockRemoveListener
	
	@abstract		Removes a listener callback function.

	@discussion		
	
	@param			inCAClock
						The clock object.
	
	@param			inListenerProc
						The callback function.
	
	@param			inUserData
						The same value as was passed for inUserData when this
						function was registered with CAClockAddListener. (This
						allows a single callback function to be registered more
						than once, with different userData arguments.)
	
	@result			An OSStatus error code.
*/
@available(OSX 10.4, *)
func CAClockRemoveListener(inCAClock: CAClockRef, _ inListenerProc: CAClockListenerProc, _ inUserData: UnsafeMutablePointer<Void>) -> OSStatus

/*!
	@function		CAClockSetCurrentTime

	@abstract		Sets the clock's current position on the media timeline.

	@discussion		
					Call this to specify where on the media timeline playback will begin. The
					supplied time must be in seconds, beats, or SMPTE (not host time or audio
					samples). Must only be called when stopped.					
	
	@param			inCAClock
						The clock object.
	
	@param			inTime
						The new time position.
	
	@result			An OSStatus error code.
*/
@available(OSX 10.4, *)
func CAClockSetCurrentTime(inCAClock: CAClockRef, _ inTime: UnsafePointer<CAClockTime>) -> OSStatus

/*!
	@function		CAClockGetCurrentTime

	@abstract		Obtain the clock's current position on the media timeline.

	@discussion		
	
	@param			inCAClock
						The clock object.
	
	@param			inTimeFormat
						Specifies the desired format for outTime.
	
	@param			outTime
						On exit, the clock's current time position.
	
	@result			An OSStatus error code.
*/
@available(OSX 10.4, *)
func CAClockGetCurrentTime(inCAClock: CAClockRef, _ inTimeFormat: CAClockTimeFormat, _ outTime: UnsafeMutablePointer<CAClockTime>) -> OSStatus

/*!
	@function		CAClockGetStartTime
	
	@abstract		Obtain the position on the media timeline where playback will start,
					or has already started.

	@discussion		
	
	@param			inCAClock
						The clock object.

	@param			inTimeFormat
						Specifies the desired format for outTime.
	
	@param			outTime
						On exit, the clock's start time position.
	
	@result			An OSStatus error code.
*/
@available(OSX 10.4, *)
func CAClockGetStartTime(inCAClock: CAClockRef, _ inTimeFormat: CAClockTimeFormat, _ outTime: UnsafeMutablePointer<CAClockTime>) -> OSStatus

/*!
	@function		CAClockTranslateTime
	
	@abstract		Convert between time units.

	@discussion		
	
	@param			inCAClock
						The clock object.
	
	@param			inTime
						The time to be converted.
	
	@param			inOutputTimeFormat
						Specifies the desired format for outTime
	
	@param			outTime
						On exit, a time corresponding to inTime, converted to the desired
						time format.
	
	@result			An OSStatus error code.
*/
@available(OSX 10.4, *)
func CAClockTranslateTime(inCAClock: CAClockRef, _ inTime: UnsafePointer<CAClockTime>, _ inOutputTimeFormat: CAClockTimeFormat, _ outTime: UnsafeMutablePointer<CAClockTime>) -> OSStatus

/*!
	@function		CAClockStart
	
	@abstract		Begin advancing the clock on its media timeline.

	@discussion		
	
	@param			inCAClock
						The clock object.
	
	@result			An OSStatus error code.
*/
@available(OSX 10.4, *)
func CAClockStart(inCAClock: CAClockRef) -> OSStatus

/*!
	@function		CAClockStop
	
	@abstract		Stop advancing the clock on its media timeline.

	@discussion		
	
	@param			inCAClock
						The clock object.
	
	@result			An OSStatus error code.
*/
@available(OSX 10.4, *)
func CAClockStop(inCAClock: CAClockRef) -> OSStatus

/*!
	@function		CAClockArm

	@abstract		Allow received sync messages to start the clock.

	@discussion		
					If a clock is slaved to an external transport (e.g. MIDI Time Code), 
					call this to indicate that the client is ready to start its transport in response
					to the external transport having started.
					
					The external time source will set the clock's start position and start
					the clock.
						
	@param			inCAClock
						The clock object.
	
	@result			An OSStatus error code.
*/
@available(OSX 10.4, *)
func CAClockArm(inCAClock: CAClockRef) -> OSStatus

/*!
	@function		CAClockDisarm
	
	@abstract		Disallow received sync messages from starting the clock.

	@discussion		
	
	@param			inCAClock
						The clock object.
	
	@result			An OSStatus error code.
*/
@available(OSX 10.4, *)
func CAClockDisarm(inCAClock: CAClockRef) -> OSStatus

/*!
	@function		CAClockSetPlayRate

	@abstract		Alter the clock's playback rate.

	@discussion		
					Adjusts the ratio between the timebase and media time; e.g. at 0.5, the 
					media time will move half as quickly as timebase time.
						
	@param			inCAClock
						The clock object.
	
	@param			inPlayRate
						The clock's desired play rate.
	
	@result			An OSStatus error code.
*/
@available(OSX 10.4, *)
func CAClockSetPlayRate(inCAClock: CAClockRef, _ inPlayRate: Float64) -> OSStatus

/*!
	@function		CAClockGetPlayRate

	@abstract		Obtain the clock's playback rate.

	@discussion		
					Returns the clock's current play rate. If the clock is internally synced,
					this will be the last rate set by CAClockSetPlayRate. If the clock is
					externally synced, it will be the rate of the external sync source, where
					1.0 means that it is running at exactly the same rate as the clock's
					timebase. (2.0 means twice as fast).
	
	@param			inCAClock
						The clock object.
	
	@param			outPlayRate
						On exit, the clock's playback rate.
	
	@result			An OSStatus error code.
*/
@available(OSX 10.4, *)
func CAClockGetPlayRate(inCAClock: CAClockRef, _ outPlayRate: UnsafeMutablePointer<Float64>) -> OSStatus

/*!
	@function		CAClockGetCurrentTempo
	
	@abstract		Obtain the clock's current musical tempo.

	@discussion		
					Returns the current instantaneous tempo and a timestamp indicating where on the
					timeline the tempo most recently changed.

					If the clock is externally synced, the returned tempo will not reflect the
					effective tempo; this routine always reflects the client-specified tempo. To
					obtain the effective tempo, multiply the current tempo by the current play
					rate.
	
	@param			inCAClock
						The clock object.
	
	@param			outTempo
						On exit, the current tempo.
	
	@param			outTimestamp
						If non-null, on exit, the time at which the tempo last changed.
	
	@result			An OSStatus error code.
*/
@available(OSX 10.4, *)
func CAClockGetCurrentTempo(inCAClock: CAClockRef, _ outTempo: UnsafeMutablePointer<CAClockTempo>, _ outTimestamp: UnsafeMutablePointer<CAClockTime>) -> OSStatus

/*!
	@function		CAClockSetCurrentTempo
	
	@abstract		Manually override the clock's musical tempo during playback.

	@discussion		
					Effects a manual override of the tempo map while running. After stopping and
					restarting, the original tempo map will be used again.
						
	@param			inCAClock
						The clock object.
	
	@param			inTempo
						The new desired tempo.
	
	@param			inTimestamp
						Specifies a precise point on the timeline where the tempo change is to
						take effect. If null, the tempo change takes effect immediately.
	
	@result
					An OSStatus error code. If this call is made while stopped,
					kCAClock_CannotSetTimeError is returned.
*/
@available(OSX 10.4, *)
func CAClockSetCurrentTempo(inCAClock: CAClockRef, _ inTempo: CAClockTempo, _ inTimestamp: UnsafePointer<CAClockTime>) -> OSStatus

/*!
	@function		CAClockSecondsToSMPTETime
	
	@abstract		Converts seconds to a SMPTE time representation.

	@discussion		
					Converts seconds on the media timeline to a SMPTE time. The clock's current
					SMPTE format and offset must be set appropriately.
		
	@param			inCAClock
						The clock object.
	
	@param			inSeconds
						The number of seconds to be converted (e.g. 3600 = 1 hour).
	
	@param			inSubframeDivisor
						The number of subframes per frame desired in outSMPTETime.
	
	@param			outSMPTETime
						On exit, the SMPTE time corresponding to inSeconds.
	
	@result			An OSStatus error code.
*/
@available(OSX 10.4, *)
func CAClockSecondsToSMPTETime(inCAClock: CAClockRef, _ inSeconds: CAClockSeconds, _ inSubframeDivisor: UInt16, _ outSMPTETime: UnsafeMutablePointer<SMPTETime>) -> OSStatus

/*!
	@function		CAClockSMPTETimeToSeconds
	
	@abstract		Converts a SMPTE time representation to seconds.

	@discussion		
					Converts SMPTE time to seconds on the media timeline. The clock's current
					SMPTE format and offset must be set appropriately.
	
	@param			inCAClock
						The clock object.
	
	@param			inSMPTETime
						The SMPTE time to be converted to seconds.
	
	@param			outSeconds
						On exit, the number of seconds corresponding to inSMPTETime.
	
	@result			An OSStatus error code.
*/
@available(OSX 10.4, *)
func CAClockSMPTETimeToSeconds(inCAClock: CAClockRef, _ inSMPTETime: UnsafePointer<SMPTETime>, _ outSeconds: UnsafeMutablePointer<CAClockSeconds>) -> OSStatus

/*!
	@function		CAClockBeatsToBarBeatTime
	
	@abstract		Converts a number of beats to a CABarBeatTime structure.

	@discussion		
					Converts a beat position on the media timeline to a CABarBeatTime, using the
					clock's meter track. Examples using 4/4 time and a subbeat divisor of 480:
					<table border="1">
					<tr>
						<th>inBeats</th>
						<th>outBarBeatTime: bars . beats . units</th>
					</tr>
					<tr><td align="center">0</td>		<td align="center">1.1.0</td></tr>
					<tr><td align="center">1</td>		<td align="center">1.2.0</td></tr>
					<tr><td align="center">4</td>		<td align="center">2.1.0</td></tr>
					<tr><td align="center">4.5</td>		<td align="center">2.1.240</td></tr>
					</table>
	
	@param			inCAClock
						The clock object.
	
	@param			inBeats
						The absolute beat count to be converted.
	
	@param			inSubbeatDivisor
						The number of units per beat.
	
	@param			outBarBeatTime
						On exit, the bar/beat/subbeat time corresponding to inBeats.
	
	@result			An OSStatus error code.
*/
@available(OSX 10.4, *)
func CAClockBeatsToBarBeatTime(inCAClock: CAClockRef, _ inBeats: CAClockBeats, _ inSubbeatDivisor: UInt16, _ outBarBeatTime: UnsafeMutablePointer<CABarBeatTime>) -> OSStatus

/*!
	@function		CAClockBarBeatTimeToBeats
	
	@abstract		Converts a CABarBeatTime structure to a number of beats.

	@discussion		
					Converts a CABarBeatTime structure (bars/beats/subbeats) to a beat
					position, using the clock's meter track.
	
	@param			inCAClock
						The clock object.
	
	@param			inBarBeatTime
						The bar/beat/subunit time to be converted to beats.
	
	@param			outBeats
						On exit, the number of absolute beats corresponding to inBarBeatTime.
	
	@result			An OSStatus error code.
*/
@available(OSX 10.4, *)
func CAClockBarBeatTimeToBeats(inCAClock: CAClockRef, _ inBarBeatTime: UnsafePointer<CABarBeatTime>, _ outBeats: UnsafeMutablePointer<CAClockBeats>) -> OSStatus

/*!
	@function		CAClockParseMIDI
	
	@abstract		Provides MIDI messages to a clock without using CoreMIDI

	@discussion		
					In some situations, a client may wish to drive a clock using MIDI Time Code or
					beat clock obtained from a source other than Core MIDI. To do so,
					construct MIDIPacketLists containing the timecode or beat clock messages,
					and pass them to this function.
	
	@param			inCAClock
						The clock object.
	
	@param			inMIDIPacketList
						The MIDI events to be parsed.
	
	@result			An OSStatus error code.
*/
@available(OSX 10.5, *)
func CAClockParseMIDI(inCAClock: CAClockRef, _ inMIDIPacketList: UnsafePointer<MIDIPacketList>) -> OSStatus

/*!
	@typedef	ExtAudioFileRef
	@abstract   An extended audio file object.
*/
typealias ExtAudioFileRef = COpaquePointer
typealias ExtAudioFilePropertyID = UInt32
var kExtAudioFileProperty_FileDataFormat: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_FileChannelLayout: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_ClientDataFormat: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_ClientChannelLayout: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_CodecManufacturer: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_AudioConverter: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_AudioFile: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_FileMaxPacketSize: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_ClientMaxPacketSize: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_FileLengthFrames: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_ConverterConfig: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_IOBufferSizeBytes: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_IOBuffer: ExtAudioFilePropertyID { get }
var kExtAudioFileProperty_PacketTable: ExtAudioFilePropertyID { get }
var kExtAudioFileError_InvalidProperty: OSStatus { get }
var kExtAudioFileError_InvalidPropertySize: OSStatus { get }
var kExtAudioFileError_NonPCMClientFormat: OSStatus { get }
var kExtAudioFileError_InvalidChannelMap: OSStatus { get }
var kExtAudioFileError_InvalidOperationOrder: OSStatus { get }
var kExtAudioFileError_InvalidDataFormat: OSStatus { get }
var kExtAudioFileError_MaxPacketSizeUnknown: OSStatus { get }
var kExtAudioFileError_InvalidSeek: OSStatus { get }
var kExtAudioFileError_AsyncWriteTooLarge: OSStatus { get }
var kExtAudioFileError_AsyncWriteBufferOverflow: OSStatus { get }

/*!
	@function   ExtAudioFileOpenURL
	
	@abstract   Opens an audio file specified by a CFURLRef.
	@param		inURL
					The audio file to read.
	@param		outExtAudioFile
					On exit, a newly-allocated ExtAudioFileRef.
	@result		An OSStatus error code.

	@discussion
				Allocates a new ExtAudioFileRef, for reading an existing audio file.
*/
@available(OSX 10.5, *)
func ExtAudioFileOpenURL(inURL: CFURL, _ outExtAudioFile: UnsafeMutablePointer<ExtAudioFileRef>) -> OSStatus

/*!
	@function   ExtAudioFileWrapAudioFileID
	
	@abstract   Wrap an AudioFileID in an ExtAudioFileRef.
	@param		inFileID
					The AudioFileID to wrap.
	@param		inForWriting
					True if the AudioFileID is a new file opened for writing.
	@param		outExtAudioFile
					On exit, a newly-allocated ExtAudioFileRef.
	@result		An OSStatus error code.

	@discussion
				Allocates a new ExtAudioFileRef which wraps an existing AudioFileID. The
				client is responsible for keeping the AudioFileID open until the
				ExtAudioFileRef is disposed. Disposing the ExtAudioFileRef will not close
				the AudioFileID when this Wrap API call is used, so the client is also
				responsible for closing the AudioFileID when finished with it.
*/
@available(OSX 10.4, *)
func ExtAudioFileWrapAudioFileID(inFileID: AudioFileID, _ inForWriting: Bool, _ outExtAudioFile: UnsafeMutablePointer<ExtAudioFileRef>) -> OSStatus

/*!
	@function   ExtAudioFileCreateWithURL
	
	@abstract   Create a new audio file.
	@param		inURL
					The URL of the new audio file.
	@param		inFileType
					The type of file to create. This is a constant from AudioToolbox/AudioFile.h, e.g.
					kAudioFileAIFFType. Note that this is not an HFSTypeCode.
	@param		inStreamDesc
					The format of the audio data to be written to the file.
	@param		inChannelLayout
					The channel layout of the audio data. If non-null, this must be consistent
					with the number of channels specified by inStreamDesc.
	@param		inFlags
					The same flags as are used with AudioFileCreateWithURL
					Can use these to control whether an existing file is overwritten (or not).
	@param		outExtAudioFile
					On exit, a newly-allocated ExtAudioFileRef.
	@result		An OSStatus error code.

	@discussion
				Creates a new audio file.
				
				If the file to be created is in an encoded format, it is permissible for the
				sample rate in inStreamDesc to be 0, since in all cases, the file's encoding
				AudioConverter may produce audio at a different sample rate than the source. The
				file will be created with the audio format actually produced by the encoder.
*/
@available(OSX 10.5, *)
func ExtAudioFileCreateWithURL(inURL: CFURL, _ inFileType: AudioFileTypeID, _ inStreamDesc: UnsafePointer<AudioStreamBasicDescription>, _ inChannelLayout: UnsafePointer<AudioChannelLayout>, _ inFlags: UInt32, _ outExtAudioFile: UnsafeMutablePointer<ExtAudioFileRef>) -> OSStatus

/*!
	@function   ExtAudioFileDispose
	
	@abstract   Close the file and dispose the object.
	@param		inExtAudioFile
					The extended audio file object.
	@result		An OSStatus error code.
	
	@discussion
				Closes the file and deletes the object.
*/
@available(OSX 10.4, *)
func ExtAudioFileDispose(inExtAudioFile: ExtAudioFileRef) -> OSStatus

/*!
	@function   ExtAudioFileRead
	
	@abstract   Perform a synchronous sequential read.
	
	@param		inExtAudioFile
					The extended audio file object.
	@param		ioNumberFrames
					On entry, ioNumberFrames is the number of frames to be read from the file.
					On exit, it is the number of frames actually read. A number of factors may
					cause a fewer number of frames to be read, including the supplied buffers
					not being large enough, and internal optimizations. If 0 frames are
					returned, however, this indicates that end-of-file was reached.
	@param		ioData
					Buffer(s) into which the audio data is read.
	@result		An OSStatus error code.

	@discussion
				If the file has a client data format, then the audio data from the file is
				translated from the file data format to the client format, via the
				ExtAudioFile's internal AudioConverter.
				
				(Note that the use of sequential reads/writes means that an ExtAudioFile must
				not be read on multiple threads; clients wishing to do this should use the
				lower-level AudioFile API set).
*/
@available(OSX 10.4, *)
func ExtAudioFileRead(inExtAudioFile: ExtAudioFileRef, _ ioNumberFrames: UnsafeMutablePointer<UInt32>, _ ioData: UnsafeMutablePointer<AudioBufferList>) -> OSStatus

/*!
	@function   ExtAudioFileWrite
	
	@abstract   Perform a synchronous sequential write.

	@param		inExtAudioFile
					The extended audio file object.
	@param		inNumberFrames
					The number of frames to write.
	@param		ioData
					The buffer(s) from which audio data is written to the file.
	@result		An OSStatus error code.
	
	@discussion
				If the file has a client data format, then the audio data in ioData is
				translated from the client format to the file data format, via the
				ExtAudioFile's internal AudioConverter.
*/
@available(OSX 10.4, *)
func ExtAudioFileWrite(inExtAudioFile: ExtAudioFileRef, _ inNumberFrames: UInt32, _ ioData: UnsafePointer<AudioBufferList>) -> OSStatus

/*!
	@function   ExtAudioFileWriteAsync
	
	@abstract   Perform an asynchronous sequential write.
	
	@param		inExtAudioFile
					The extended audio file object.
	@param		inNumberFrames
					The number of frames to write.
	@param		ioData
					The buffer(s) from which audio data is written to the file.
	@result		An OSStatus error code.
		
	@discussion
				Writes the provided buffer list to an internal ring buffer and notifies an
				internal thread to perform the write at a later time. The first time this is
				called, allocations may be performed. You can call this with 0 frames and null
				buffer in a non-time-critical context to initialize the asynchronous mechanism.
				Once initialized, subsequent calls are very efficient and do not take locks;
				thus this may be used to write to a file from a realtime thread.

				The client must not mix synchronous and asynchronous writes to the same file.

				Pending writes are not guaranteed to be flushed to disk until
				ExtAudioFileDispose is called.

				N.B. Errors may occur after this call has returned. Such errors may be returned
				from subsequent calls to this function.
*/
@available(OSX 10.4, *)
func ExtAudioFileWriteAsync(inExtAudioFile: ExtAudioFileRef, _ inNumberFrames: UInt32, _ ioData: UnsafePointer<AudioBufferList>) -> OSStatus

/*!
	@function   ExtAudioFileSeek

	@abstract   Seek to a specific frame position.

	@param		inExtAudioFile
					The extended audio file object.
	@param		inFrameOffset
					The desired seek position, in sample frames, relative to the beginning of
					the file. This is specified in the sample rate and frame count of the file's format
					(not the client format)
	@result		An OSStatus error code.
	
	@discussion
				Sets the file's read position to the specified sample frame number. The next call
				to ExtAudioFileRead will return samples from precisely this location, even if it
				is located in the middle of a packet.
				
				This function's behavior with files open for writing is currently undefined.
*/
@available(OSX 10.4, *)
func ExtAudioFileSeek(inExtAudioFile: ExtAudioFileRef, _ inFrameOffset: Int64) -> OSStatus

/*!
	@function   ExtAudioFileTell
	
	@abstract   Return the file's read/write position.

	@param		inExtAudioFile
					The extended audio file object.
	@param		outFrameOffset
					On exit, the file's current read/write position in sample frames. This is specified in the 
					sample rate and frame count of the file's format (not the client format)
	@result		An OSStatus error code.
	
	@discussion
*/
@available(OSX 10.4, *)
func ExtAudioFileTell(inExtAudioFile: ExtAudioFileRef, _ outFrameOffset: UnsafeMutablePointer<Int64>) -> OSStatus

/*!
	@function   ExtAudioFileGetPropertyInfo
	@abstract   Get information about a property

	@param		inExtAudioFile
					The extended audio file object.
	@param		inPropertyID
					The property being queried.
	@param		outSize
					If non-null, on exit, this is set to the size of the property's value.
	@param		outWritable
					If non-null, on exit, this indicates whether the property value is settable.
	@result		An OSStatus error code.

	@discussion
*/
@available(OSX 10.4, *)
func ExtAudioFileGetPropertyInfo(inExtAudioFile: ExtAudioFileRef, _ inPropertyID: ExtAudioFilePropertyID, _ outSize: UnsafeMutablePointer<UInt32>, _ outWritable: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus

/*!
	@function   ExtAudioFileGetProperty
	@abstract   Get a property value.

	@param		inExtAudioFile
					The extended audio file object.
	@param		inPropertyID
					The property being fetched.
	@param		ioPropertyDataSize
					On entry, the size (in bytes) of the memory pointed to by outPropertyData.
					On exit, the actual size of the property data returned.	
	@param		outPropertyData
					The value of the property is copied to the memory this points to.
	@result		An OSStatus error code.

	@discussion
*/
@available(OSX 10.4, *)
func ExtAudioFileGetProperty(inExtAudioFile: ExtAudioFileRef, _ inPropertyID: ExtAudioFilePropertyID, _ ioPropertyDataSize: UnsafeMutablePointer<UInt32>, _ outPropertyData: UnsafeMutablePointer<Void>) -> OSStatus

/*!
	@function   ExtAudioFileSetProperty
	@abstract   Set a property value.

	@param		inExtAudioFile
					The extended audio file object.
	@param		inPropertyID
					The property being set.
	@param		inPropertyDataSize
					The size of the property data, in bytes.
	@param		inPropertyData
					Points to the property's new value.
	@result		An OSStatus error code.

	@discussion
*/
@available(OSX 10.4, *)
func ExtAudioFileSetProperty(inExtAudioFile: ExtAudioFileRef, _ inPropertyID: ExtAudioFilePropertyID, _ inPropertyDataSize: UInt32, _ inPropertyData: UnsafePointer<Void>) -> OSStatus
var kMusicEventType_NULL: UInt32 { get }
var kMusicEventType_ExtendedNote: UInt32 { get }
var kMusicEventType_ExtendedTempo: UInt32 { get }
var kMusicEventType_User: UInt32 { get }
var kMusicEventType_Meta: UInt32 { get }
var kMusicEventType_MIDINoteMessage: UInt32 { get }
var kMusicEventType_MIDIChannelMessage: UInt32 { get }
var kMusicEventType_MIDIRawData: UInt32 { get }
var kMusicEventType_Parameter: UInt32 { get }
var kMusicEventType_AUPreset: UInt32 { get }
typealias MusicEventType = UInt32

/*!
	@enum MusicSequenceLoadFlags
	@abstract Flags used to customise loading behaviour
 	@constant	kMusicSequenceLoadSMF_PreserveTracks
			If this flag is set the resultant Sequence will contain:
			a tempo track
			a track for each track found in the SMF
 			This is the default behavior
	@constant	kMusicSequenceLoadSMF_ChannelsToTracks
			If this flag is set the resultant Sequence will contain:
			a tempo track
			1 track for each MIDI Channel that is found in the SMF
			1 track for SysEx or MetaEvents - this will be the last track 
			in the sequence after the LoadSMFWithFlags calls
*/
struct MusicSequenceLoadFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var SMF_PreserveTracks: MusicSequenceLoadFlags { get }
  static var SMF_ChannelsToTracks: MusicSequenceLoadFlags { get }
}

/*!
	@enum MusicSequenceType
	@abstract	A sequence type
	@discussion Different sequence types to describe the basic mode of operation of a sequence's time line
				You cannot change a music sequence's type to samples/seconds if there are tempo events
				The type will also define how the sequence is saved to a MIDI file:
					Beats - normal midi file
					Seconds - midi file with SMPTE time
					Samples - cannot be saved to a midi file
	@constant	kMusicSequenceType_Beats
					The default/normal type of a sequence.
					Tempo track defines the number of beats per second and can have multiple tempo events
	@constant	kMusicSequenceType_Seconds
					A music sequence with a single 60bpm tempo event
	@constant	kMusicSequenceType_Samples
					A music sequence with a single tempo event that represents the audio sample rate
*/
enum MusicSequenceType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Beats
  case Seconds
  case Samples
}

/*!
	@enum MusicSequenceFileTypeID
	@abstract	describes different types of files that can be parsed by a music sequence
 	@constant	kMusicSequenceFile_AnyType
 					let the system read iMelody files and read and write MIDI files (and any future types)
	@constant	kMusicSequenceFile_MIDIType
					read and write MIDI files
	@constant	kMusicSequenceFile_iMelodyType
					read iMelody files
*/
enum MusicSequenceFileTypeID : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case AnyType
  case MIDIType
  case iMelodyType
}

/*!
	@enum MusicSequenceFileFlags
	@abstract	controls the behaviour of the create file calls
	@constant	kMusicSequenceFileFlags_Default
 					Does not overwrite existing files.  Attempts to save over an existing file
 					will return kAudio_FilePermissionError
	@constant	kMusicSequenceFileFlags_EraseFile
					Erase an existing file when creating a new file
*/
struct MusicSequenceFileFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Default: MusicSequenceFileFlags { get }
  static var EraseFile: MusicSequenceFileFlags { get }
}

/*!
	@typedef	MusicTimeStamp
	@abstract	The type used to refer to time values in a music sequence
*/
typealias MusicTimeStamp = Float64
var kMusicTimeStamp_EndOfTrack: Double { get }

/*!
	@struct		MIDINoteMessage
	@discussion	The parameters to specify a MIDI note
*/
struct MIDINoteMessage {
  var channel: UInt8
  var note: UInt8
  var velocity: UInt8
  var releaseVelocity: UInt8
  var duration: Float32
  init()
  init(channel: UInt8, note: UInt8, velocity: UInt8, releaseVelocity: UInt8, duration: Float32)
}

/*!
	@struct		MIDIChannelMessage
	@discussion	The parameters to specify a MIDI channel message
*/
struct MIDIChannelMessage {
  var status: UInt8
  var data1: UInt8
  var data2: UInt8
  var reserved: UInt8
  init()
  init(status: UInt8, data1: UInt8, data2: UInt8, reserved: UInt8)
}

/*!
	@struct		MIDIRawData
	@discussion	Generally used to represent a MIDI SysEx message
*/
struct MIDIRawData {
  var length: UInt32
  var data: (UInt8)
  init()
  init(length: UInt32, data: (UInt8))
}

/*!
	@struct		MIDIMetaEvent
	@discussion	The parameters to specify a MIDI meta event
*/
struct MIDIMetaEvent {
  var metaEventType: UInt8
  var unused1: UInt8
  var unused2: UInt8
  var unused3: UInt8
  var dataLength: UInt32
  var data: (UInt8)
  init()
  init(metaEventType: UInt8, unused1: UInt8, unused2: UInt8, unused3: UInt8, dataLength: UInt32, data: (UInt8))
}

/*!
	@struct		MusicEventUserData
	@discussion	Provides a general struct for specifying a user defined event. 
	@field		length
					the size in bytes of the data
	@field		data
					size bytes of user defined event data
*/
struct MusicEventUserData {
  var length: UInt32
  var data: (UInt8)
  init()
  init(length: UInt32, data: (UInt8))
}

/*!
	@struct		ExtendedNoteOnEvent
	@discussion	The parameters to specify an extended note on event
*/
struct ExtendedNoteOnEvent {
  var instrumentID: MusicDeviceInstrumentID
  var groupID: MusicDeviceGroupID
  var duration: Float32
  var extendedParams: MusicDeviceNoteParams
  init()
  init(instrumentID: MusicDeviceInstrumentID, groupID: MusicDeviceGroupID, duration: Float32, extendedParams: MusicDeviceNoteParams)
}

/*!
	@struct		ParameterEvent
	@discussion	The parameters to specify a parameter event to an audio unit.
*/
struct ParameterEvent {
  var parameterID: AudioUnitParameterID
  var scope: AudioUnitScope
  var element: AudioUnitElement
  var value: AudioUnitParameterValue
  init()
  init(parameterID: AudioUnitParameterID, scope: AudioUnitScope, element: AudioUnitElement, value: AudioUnitParameterValue)
}

/*!
	@struct		ExtendedTempoEvent
	@discussion	specifies the value for a tempo in beats per minute
*/
struct ExtendedTempoEvent {
  var bpm: Float64
  init()
  init(bpm: Float64)
}

/*!
	@struct		AUPresetEvent
	@discussion	The parameters to specify a preset for an audio unit.
*/
struct AUPresetEvent {
  var scope: AudioUnitScope
  var element: AudioUnitElement
  var preset: Unmanaged<CFPropertyList>
}
typealias MusicPlayer = COpaquePointer
typealias MusicSequence = COpaquePointer
typealias MusicTrack = COpaquePointer
typealias MusicEventIterator = COpaquePointer

/*!
	@typedef MusicSequenceUserCallback
	@discussion See MusicSequenceSetUserCallback
*/
typealias MusicSequenceUserCallback = @convention(c) (UnsafeMutablePointer<Void>, MusicSequence, MusicTrack, MusicTimeStamp, UnsafePointer<MusicEventUserData>, MusicTimeStamp, MusicTimeStamp) -> Void
var kAudioToolboxErr_InvalidSequenceType: OSStatus { get }
var kAudioToolboxErr_TrackIndexError: OSStatus { get }
var kAudioToolboxErr_TrackNotFound: OSStatus { get }
var kAudioToolboxErr_EndOfTrack: OSStatus { get }
var kAudioToolboxErr_StartOfTrack: OSStatus { get }
var kAudioToolboxErr_IllegalTrackDestination: OSStatus { get }
var kAudioToolboxErr_NoSequence: OSStatus { get }
var kAudioToolboxErr_InvalidEventType: OSStatus { get }
var kAudioToolboxErr_InvalidPlayerState: OSStatus { get }
var kAudioToolboxErr_CannotDoInCurrentContext: OSStatus { get }
var kAudioToolboxError_NoTrackDestination: OSStatus { get }
var kSequenceTrackProperty_LoopInfo: UInt32 { get }
var kSequenceTrackProperty_OffsetTime: UInt32 { get }
var kSequenceTrackProperty_MuteStatus: UInt32 { get }
var kSequenceTrackProperty_SoloStatus: UInt32 { get }
var kSequenceTrackProperty_AutomatedParameters: UInt32 { get }
var kSequenceTrackProperty_TrackLength: UInt32 { get }
var kSequenceTrackProperty_TimeResolution: UInt32 { get }

/*!
	@struct		MusicTrackLoopInfo
	@discussion	Used to control the looping behaviour of a track
*/
struct MusicTrackLoopInfo {
  var loopDuration: MusicTimeStamp
  var numberOfLoops: Int32
  init()
  init(loopDuration: MusicTimeStamp, numberOfLoops: Int32)
}

/*!
	@function	NewMusicPlayer
	@abstract	Create a new music player
	@discussion	A music player is used to play a sequence back. This call is used to create a player
				When a sequence is to be played by a player, it can play to either an AUGraph, a MIDI Destination or a
				mixture/combination of both.
	@param		outPlayer	the newly created player
*/
@available(OSX 10.0, *)
func NewMusicPlayer(outPlayer: UnsafeMutablePointer<MusicPlayer>) -> OSStatus

/*!
	@function	DisposeMusicPlayer
	@abstract	Dispose a music player
	@param		inPlayer	the player to dispose
*/
@available(OSX 10.0, *)
func DisposeMusicPlayer(inPlayer: MusicPlayer) -> OSStatus

/*!
	@function	MusicPlayerSetSequence
	@abstract	Set the sequence for the player to play
	@discussion A Sequence cannot be set on a player while it is playing. Setting a sequence
				will overide the currently set sequence.
	@param		inPlayer	the player
	@param		inSequence	the sequence for the player to play
*/
@available(OSX 10.0, *)
func MusicPlayerSetSequence(inPlayer: MusicPlayer, _ inSequence: MusicSequence) -> OSStatus

/*!
	@function	MusicPlayerGetSequence
	@abstract	Get the sequence attached to a player
	@discussion If the player does not have a sequence set, this will return the _NoSequence error
	@param		inPlayer	the player
	@param		outSequence	the sequence currently set on the player
 
*/
@available(OSX 10.3, *)
func MusicPlayerGetSequence(inPlayer: MusicPlayer, _ outSequence: UnsafeMutablePointer<MusicSequence>) -> OSStatus

/*!
	@function	MusicPlayerSetTime
	@abstract	Set the current time on the player
	@discussion The Get and Set Time calls take a specification of time as beats. This positions the player
				to the specified time based on the currently set sequence. No range checking on the time value
				is done. This can be set on a playing player (in which case playing will be resumed from the
				new time).
	@param		inPlayer	the player
	@param		inTime		the new time value
*/
@available(OSX 10.0, *)
func MusicPlayerSetTime(inPlayer: MusicPlayer, _ inTime: MusicTimeStamp) -> OSStatus

/*!
	@function	MusicPlayerGetTime
	@abstract	Get the current time of the player
	@discussion The Get and Set Time calls take a specification of time as beats. This retrieves the player's
				current time. If it is playing this time is the time of the player at the time the call was made. 
	@param		inPlayer	the player
	@param		outTime		the current time value
*/
@available(OSX 10.0, *)
func MusicPlayerGetTime(inPlayer: MusicPlayer, _ outTime: UnsafeMutablePointer<MusicTimeStamp>) -> OSStatus

/*!
	@function	MusicPlayerGetHostTimeForBeats
	@abstract	Returns the host time that will be (or was) played at the specified beat.
	@discussion This call is only valid if the player is playing and will return an error if the player is not playing
				or if the starting position of the player (its "starting beat") was after the specified beat.
				For general translation of beats to time in a sequence, see the MusicSequence calls for beat<->seconds.
				
				The call uses the player's sequence's tempo map to translate a beat time from the starting time and beat
				of the player.
	@param		inPlayer	the player
	@param		inBeats		the specified beat-time value
	@param		outHostTime the corresponding host time
*/
@available(OSX 10.2, *)
func MusicPlayerGetHostTimeForBeats(inPlayer: MusicPlayer, _ inBeats: MusicTimeStamp, _ outHostTime: UnsafeMutablePointer<UInt64>) -> OSStatus

/*!
	@function	MusicPlayerGetBeatsForHostTime
	@abstract	Returns the beat that will be (or was) played at the specified host time. 
	@discussion This call is only valid if the player is playing and will return an error if the player is not playing
				or if the starting time of the player was after the specified host time.
				For general translation of beats to time in a sequence, see the MusicSequence calls for beat<->seconds.
				
				The call uses the player's sequence's tempo map to retrieve a beat time from the starting and specified host time. 
				
	@param		inPlayer	the player
	@param		inHostTime	the specified host time value
	@param		outBeats	the corresponding beat time
*/
@available(OSX 10.2, *)
func MusicPlayerGetBeatsForHostTime(inPlayer: MusicPlayer, _ inHostTime: UInt64, _ outBeats: UnsafeMutablePointer<MusicTimeStamp>) -> OSStatus

/*!
	@function	MusicPlayerPreroll
	@abstract	Prepare the player for playing
	@discussion Allows the player to prepare its state so that starting is has a lower latency. If a player is started without
				being prerolled, the player will pre-roll itself and then start.
	@param		inPlayer	the player
*/
@available(OSX 10.0, *)
func MusicPlayerPreroll(inPlayer: MusicPlayer) -> OSStatus

/*!
	@function	MusicPlayerStart
	@abstract	Start the player
	@discussion If the player has not been prerolled, it will pre-roll itself and then start.
	@param		inPlayer	the player
*/
@available(OSX 10.0, *)
func MusicPlayerStart(inPlayer: MusicPlayer) -> OSStatus

/*!
	@function	MusicPlayerStop
	@abstract	Stop the player
	@param		inPlayer	the player
*/
@available(OSX 10.0, *)
func MusicPlayerStop(inPlayer: MusicPlayer) -> OSStatus

/*!
	@function	MusicPlayerIsPlaying
	@abstract	Returns the playing state of the player. "Is it playing?"
	@discussion This call returns a non-zero value in outIsPlaying if the player has been
				started and not stopped. It may have "played" past the events of the attached
				MusicSequence, but it is still considered to be playing (and its time value increasing)
				until it is explicitly stopped
	@param		inPlayer		the player
	@param		outIsPlaying	false if not, true (non-zero) if is playing
*/
@available(OSX 10.2, *)
func MusicPlayerIsPlaying(inPlayer: MusicPlayer, _ outIsPlaying: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus

/*!
	@function	MusicPlayerSetPlayRateScalar
	@abstract	Scale the playback rate of the player
	@param		inPlayer	the player
	@param		inScaleRate	a scalar that will be applied to the playback rate. If 2, playback is twice as fast, if
				0.5 it is half as fast. As a scalar, the value must be greater than zero.
*/
@available(OSX 10.3, *)
func MusicPlayerSetPlayRateScalar(inPlayer: MusicPlayer, _ inScaleRate: Float64) -> OSStatus

/*!
	@function	MusicPlayerGetPlayRateScalar
	@abstract	Get the playback rate scalar of the player
	@param		inPlayer		the player
	@param		outScaleRate	the current scalar being applied to the player. Default value is 1.0
*/
@available(OSX 10.3, *)
func MusicPlayerGetPlayRateScalar(inPlayer: MusicPlayer, _ outScaleRate: UnsafeMutablePointer<Float64>) -> OSStatus

/*! 
	@functiongroup Music Sequence
*/
/*!
	@function	NewMusicSequence
	@abstract	Create a new empty sequence
	@discussion	A new music sequence will only have a tempo track (with a default tempo of 120 bpm), 
				and the default type is beat based.

				When a sequence is to be played by a player, it can play to either an AUGraph, a MIDI Destination or a
				mixture/combination of both. See MusicSequenceSetAUGraph and MusicSequenceSetMIDIEndpoint for the generic
				destination assignments. Specific tracks can also be assigned nodes of a graph or a MIDI endpoint as targets
				for the events that they contain; see MusicTrackSetDestNode and MusicTrackSetDestMIDIEndpoint.
				
	@param		outSequence		the new sequence
*/
@available(OSX 10.0, *)
func NewMusicSequence(outSequence: UnsafeMutablePointer<MusicSequence>) -> OSStatus

/*!
	@function	DisposeMusicSequence
	@abstract	Dispose the sequence
	@discussion	 A sequence cannot be disposed while a MusicPlayer has it.
	@param		inSequence		the sequence
*/
@available(OSX 10.0, *)
func DisposeMusicSequence(inSequence: MusicSequence) -> OSStatus

/*!
	@function	MusicSequenceNewTrack
	@abstract	Add a new (empty) track to the sequence
	@param		inSequence		the sequence
	@param		outTrack		the new track (it is always appended to any existing tracks)
*/
@available(OSX 10.0, *)
func MusicSequenceNewTrack(inSequence: MusicSequence, _ outTrack: UnsafeMutablePointer<MusicTrack>) -> OSStatus

/*!
	@function	MusicSequenceDisposeTrack
	@abstract	Remove and dispose a track from a sequence
	@param		inSequence		the sequence
	@param		inTrack			the track to remove and dispose
*/
@available(OSX 10.0, *)
func MusicSequenceDisposeTrack(inSequence: MusicSequence, _ inTrack: MusicTrack) -> OSStatus

/*!
	@function	MusicSequenceGetTrackCount
	@abstract	The number of tracks in a sequence. 
				The track count and accessors exclude the tempo track (which is treated as a special case)
	@param		inSequence			the sequence
	@param		outNumberOfTracks	the number of tracks
*/
@available(OSX 10.0, *)
func MusicSequenceGetTrackCount(inSequence: MusicSequence, _ outNumberOfTracks: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	@function	MusicSequenceGetIndTrack
	@abstract	Get a track at the specified index
	@discussion Index is zero based. It will return kAudio_ParamError if index is not in the range: 0 < TrackCount
				The track count and accessors exclude the tempo track (which is treated as a special case)
	@param		inSequence		the sequence
	@param		inTrackIndex	the index
	@param		outTrack		the track at that index
*/
@available(OSX 10.0, *)
func MusicSequenceGetIndTrack(inSequence: MusicSequence, _ inTrackIndex: UInt32, _ outTrack: UnsafeMutablePointer<MusicTrack>) -> OSStatus

/*!
	@function	MusicSequenceGetTrackIndex
	@abstract	Get the index for a specific track
	@discussion Index is zero based. It will return an error if the track is not a member of the sequence.
				The track count and accessors exclude the tempo track (which is treated as a special case)
	@param		inSequence		the sequence
	@param		inTrack			the track
	@param		outTrackIndex	the index of the track
*/
@available(OSX 10.0, *)
func MusicSequenceGetTrackIndex(inSequence: MusicSequence, _ inTrack: MusicTrack, _ outTrackIndex: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	@function	MusicSequenceGetTempoTrack
	@abstract	Get the tempo track of the sequence
	@discussion	Each sequence has a single tempo track. All tempo events are placed into this tempo track (as well
				as other appropriate events (time sig for instance from a MIDI file). The tempo track, once retrieved
				can be edited and iterated upon as any other track. Non-tempo events in a tempo track are ignored.
	@param		inSequence		the sequence
	@param		outTrack		the tempo track of the sequence
*/
@available(OSX 10.1, *)
func MusicSequenceGetTempoTrack(inSequence: MusicSequence, _ outTrack: UnsafeMutablePointer<MusicTrack>) -> OSStatus

/*!
	@function	MusicSequenceSetAUGraph
	@abstract	Set the graph to be associated with the sequence
	@discussion	A sequence can be associated with an AUGraph and this graph will be used to render the events as 
				controlled by the sequence when it is played. By default, all of the tracks of a sequence will
				find the first AUNode that is an instance of an Apple MusicDevice audio unit (see MusicSequenceGetAUGraph).
				Specific nodes of the graph can be targeted for different tracks (see MusicTrackSetDestNode).  To render a
 				multi-track GM MIDI sequence on iOS, create a custom graph with a MIDISynth audio unit as the MusicDevice.
 				If inGraph is set to NULL, the sequence will reset to use the default graph.
	@param		inSequence		the sequence
	@param		inGraph			the graph
*/
@available(OSX 10.0, *)
func MusicSequenceSetAUGraph(inSequence: MusicSequence, _ inGraph: AUGraph) -> OSStatus

/*!
	@function	MusicSequenceGetAUGraph
	@abstract	Gets the graph currently associated with a sequence
	@discussion	By default if no graph is assigned to a sequence then the sequence will create a default graph. 
				This default graph contains a MusicDevice and a DynamicsProcessor and all tracks will be targeted
				to the MusicDevice.  On Mac OS X, this MusicDevice is an instance of a software synthesizer that is 
				compatible with the GM and GS MIDI standards.  On iOS, it is an instance of a monotimbral software 
				synthesizer designed to render events from a single MIDI channel.  To render multi-track GM MIDI
 				sequences on iOS, create a custom graph with a MIDISynth audio unit as the MusicDevice.
				
				This call will thus either return the graph as set by the user, or this default graph.
	@param		inSequence		the sequence
	@param		outGraph		the graph
*/
@available(OSX 10.0, *)
func MusicSequenceGetAUGraph(inSequence: MusicSequence, _ outGraph: UnsafeMutablePointer<AUGraph>) -> OSStatus

/*!
	@function	MusicSequenceSetMIDIEndpoint
	@abstract	Makes the target of all of the tracks in the sequence a MIDI endpoint
	@discussion	This is a convenience function, and is equivalent to iterating through all of the tracks in a sequence
				and targeting each track to the MIDI endpoint
				
	@param		inSequence		the sequence
	@param		inEndpoint		the MIDI endpoint
*/
@available(OSX 10.1, *)
func MusicSequenceSetMIDIEndpoint(inSequence: MusicSequence, _ inEndpoint: MIDIEndpointRef) -> OSStatus

/*!
	@function	MusicSequenceSetSequenceType
	@abstract	Set the sequence type (the default is beats)
	@discussion
				These two calls allow you to get and set a MusicSequence type; specifying
					kMusicSequenceType_Beats		= 'beat',
					kMusicSequenceType_Seconds		= 'secs',
					kMusicSequenceType_Samples		= 'samp'

				The sequence type can be set to beats at any time. The sequence type can only be set to 
				seconds or samples if there are NO tempo events already in the sequence.
				
				For beats - it can have as many tempo events as you want
				For Samples and Seconds - you should add a single tempo event after setting the type
					Samples - the tempo is the desired sample rate - e.g. 44100 and each "beat" in the sequence will be
						interpreted as a sample count at that sample rate (so beat == 44100 is a second)
					Seconds - the tempo should be set to 60 - a beat is a second.

				Beats is the default (and is the behaviour on pre 10.5 systems)

				A meta event of interest for Seconds based MIDI files is the SMPTE Offset meta event - stored in the tempo track.
				The sequence doesn't do anything with this event (except store/write it)	
	@param		inSequence	the sequence
	@param		inType		the sequence type
*/
@available(OSX 10.5, *)
func MusicSequenceSetSequenceType(inSequence: MusicSequence, _ inType: MusicSequenceType) -> OSStatus

/*!
	@function	MusicSequenceGetSequenceType
	@abstract	Get the sequence type
	@discussion	See SetSequence for a full description
	@param		inSequence		the sequence
	@param		outType			the type
*/
@available(OSX 10.5, *)
func MusicSequenceGetSequenceType(inSequence: MusicSequence, _ outType: UnsafeMutablePointer<MusicSequenceType>) -> OSStatus

/*!
	@function	MusicSequenceFileLoad
	@abstract	Load the data contained within the referenced file to the sequence
	@discussion	This function will parse the file referenced by the URL and add the events to the sequence.
	@param		inSequence		the sequence
	@param		inFileRef		a file:// URL that references a file
	@param		inFileTypeHint	provides a hint to the sequence on the file type being imported
	@param		inFlags			flags that can control how the data is parsed in the file and laid out in the tracks
								that will be created and added to the sequence in this operation
*/
@available(OSX 10.5, *)
func MusicSequenceFileLoad(inSequence: MusicSequence, _ inFileRef: CFURL, _ inFileTypeHint: MusicSequenceFileTypeID, _ inFlags: MusicSequenceLoadFlags) -> OSStatus

/*!
	@function	MusicSequenceFileLoadData
	@abstract	Load the data to the sequence
	@discussion	This function will parse the data and add the events to the sequence. The data provided needs to 
				be of a particular file type as specified by the fileTypeHint.
	@param		inSequence		the sequence
	@param		inData			the contents of a valid file loaded into a CFData object
	@param		inFileTypeHint	provides a hint to the sequence on the file type being imported
	@param		inFlags			flags that can control how the data is parsed in the file and laid out in the tracks
								that will be created and added to the sequence in this operation
*/
@available(OSX 10.5, *)
func MusicSequenceFileLoadData(inSequence: MusicSequence, _ inData: CFData, _ inFileTypeHint: MusicSequenceFileTypeID, _ inFlags: MusicSequenceLoadFlags) -> OSStatus

/*!
	@function	MusicSequenceSetSMPTEResolution
	@abstract	Helper function to establish the SMPTE based MIDI file resolution for the specified ticks
	@discussion SMPTE resolution helpers for dealing with the interpretation and creation of
				tick values for standard MIDI files (see MusicSequenceFileCreate)
	@param		fps		the frames per second
	@param		ticks	the ticks per quarter note
	@result		the resolution that can be used when creating a MIDI file derived from the two parameters
*/
func MusicSequenceSetSMPTEResolution(fps: Int8, _ ticks: UInt8) -> Int16

/*!
	@function	MusicSequenceGetSMPTEResolution
	@abstract	Helper function to get the fps and ticks from their representation in a SMPTE based MIDI file
	@discussion SMPTE resolution helpers for dealing with the interpretation and creation of
				tick values for standard MIDI files (see MusicSequenceFileCreate)
	@param		inRes	the resolution from a MIDI file
	@param		fps		the frames per second
	@param		ticks	the ticks per quarter note
*/
func MusicSequenceGetSMPTEResolution(inRes: Int16, _ fps: UnsafeMutablePointer<Int8>, _ ticks: UnsafeMutablePointer<UInt8>)

/*!
	@function	MusicSequenceFileCreate
	@abstract	Create a file from a sequence
	@discussion	This function can be (and is most commonly) used to create a MIDI file from the events in a sequence.
				Only MIDI based events are used when creating the MIDI file. MIDI files are normally beat based, but
				can also have a SMPTE (or real-time rather than beat time) representation.
				
				inResolution is relationship between "tick" and quarter note for saving to Standard MIDI File
					- pass in zero to use default - this will be the value that is currently set on the tempo track
					- see the comments for the set track property's time resolution
				
				The different Sequence types determine the kinds of files that can be created:

				Beats
					When saving a MIDI file, it saves a beats (PPQ) based axis

				Seconds
					When saving a MIDI file, it will save it as a SMPTE resolution - so you should specify this resolution
					when creating the MIDI file. 
					If zero is specified, 25 fps and 40 ticks/frame is used (a time scale of a millisecond)
			
				Samples
					You cannot save to a MIDI file with this sequence type

				The complete meaning of the 16-bit "division" field in a MIDI File's MThd chunk.

				If it is positive, then a tick represents 1/D quarter notes.

				If it negative:

				bits 14-8 are a signed 7-bit number representing the SMPTE format:
					-24, -25, -29 (drop), -30
				bits 7-0 represents the number of ticks per SMPTE frame
					typical values: 4, 10, 80, 100

				You can obtain millisecond resolution by specifying 25 frames/sec and 40 divisions/frame.

				30 fps with 80 bits (ticks) per frame: 0xE250  ((char)0xE2 == -30)

	@param		inSequence		the sequence
	@param		inFileRef		the location of the file to create
	@param		inFileType		the type of file to create
	@param		inFlags			flags to control the file creation
	@param		inResolution	the resolution (depending on file type and sequence type)
*/
@available(OSX 10.5, *)
func MusicSequenceFileCreate(inSequence: MusicSequence, _ inFileRef: CFURL, _ inFileType: MusicSequenceFileTypeID, _ inFlags: MusicSequenceFileFlags, _ inResolution: Int16) -> OSStatus

/*!
	@function	MusicSequenceFileCreateData
	@abstract	Create a data object from a sequence
	@discussion	The same basic parameters apply to this as with the MusicSequenceFileCreate function. The difference
				being that that function will create a file on disk, whereas this one will create a CFData object
				that is a file in memory. The CFData object should be released by the caller.
	@param		inSequence		the sequence
	@param		inFileType		the type of file to create
	@param		inFlags			flags to control the file creation
	@param		inResolution	the resolution (depending on file type and sequence type)
	@param		outData			the resulting data object
*/
@available(OSX 10.5, *)
func MusicSequenceFileCreateData(inSequence: MusicSequence, _ inFileType: MusicSequenceFileTypeID, _ inFlags: MusicSequenceFileFlags, _ inResolution: Int16, _ outData: UnsafeMutablePointer<Unmanaged<CFData>?>) -> OSStatus

/*!
	@function	MusicSequenceReverse
	@abstract	Reverse in time all events in a sequence, including the tempo events
	@param		inSequence		the sequence
*/
@available(OSX 10.0, *)
func MusicSequenceReverse(inSequence: MusicSequence) -> OSStatus

/*!
	@function	MusicSequenceGetSecondsForBeats
	@abstract	Returns a seconds value that would correspond to the supplied beats
	@discussion	Uses the sequence's tempo events 
	@param		inSequence		the sequence
	@param		inBeats			the beats
	@param		outSeconds		the seconds (time from 0 beat)
*/
@available(OSX 10.2, *)
func MusicSequenceGetSecondsForBeats(inSequence: MusicSequence, _ inBeats: MusicTimeStamp, _ outSeconds: UnsafeMutablePointer<Float64>) -> OSStatus

/*!
	@function	MusicSequenceGetBeatsForSeconds
	@abstract	Returns a beat value that would correspond to the supplied seconds from zero.
	@discussion	Uses the sequence's tempo events 
	@param		inSequence		the sequence
	@param		inSeconds		the seconds
	@param		outBeats		the corresponding beat
*/
@available(OSX 10.2, *)
func MusicSequenceGetBeatsForSeconds(inSequence: MusicSequence, _ inSeconds: Float64, _ outBeats: UnsafeMutablePointer<MusicTimeStamp>) -> OSStatus

/*!
	@function	MusicSequenceSetUserCallback
	@abstract	Establish a user callback for a sequence
	@discussion	This call is used to register (or remove if inCallback is NULL) a callback
				that the MusicSequence will call for ANY UserEvents that are added to any of the
				tracks of the sequence.
				
				If there is a callback registered, then UserEvents will be chased when
				MusicPlayerSetTime is called. In that case the inStartSliceBeat and inEndSliceBeat
				will both be the same value and will be the beat that the player is chasing too.
				
				In normal cases, where the sequence data is being scheduled for playback, the
				following will apply:
					inStartSliceBeat <= inEventTime < inEndSliceBeat
				
				The only exception to this is if the track that owns the MusicEvent is looping.
				In this case the start beat will still be less than the end beat (so your callback
				can still determine that it is playing, and what beats are currently being scheduled),
				however, the inEventTime will be the original time-stamped time of the user event. 
	@param		inSequence		the sequence
	@param		inCallback		the callback
	@param		inClientData	client (user supplied) data provided back to the callback when it is called by the sequence
*/
@available(OSX 10.3, *)
func MusicSequenceSetUserCallback(inSequence: MusicSequence, _ inCallback: MusicSequenceUserCallback?, _ inClientData: UnsafeMutablePointer<Void>) -> OSStatus

/*!
	@function	MusicSequenceBeatsToBarBeatTime
	@abstract	Convenience function to format a sequence's beat time to its bar-beat time
	@discussion	see <AudioToolbox/CAClock.h>. The sequence's tempo track Time Sig events are used to 
				to calculate the bar-beat representation. If there are no Time Sig events added to the sequence
				4/4 is assumed. A Time Sig event is a MIDI Meta Event as specified for MIDI files.
	@param		inSequence		the sequence
	@param		inBeats			the beat which should be represented by the bar-beat
	@param		inSubbeatDivisor	The denominator of the fractional number of beats.
	@param		outBarBeatTime	the formatted bar/beat time
*/
@available(OSX 10.5, *)
func MusicSequenceBeatsToBarBeatTime(inSequence: MusicSequence, _ inBeats: MusicTimeStamp, _ inSubbeatDivisor: UInt32, _ outBarBeatTime: UnsafeMutablePointer<CABarBeatTime>) -> OSStatus

/*!
	@function	MusicSequenceBarBeatTimeToBeats
	@abstract	Convenience function to format a bar-beat time to a sequence's beat time
	@discussion	see <AudioToolbox/CAClock.h>. The sequence's tempo track Time Sig events are used to 
				to calculate the bar-beat representation. If there are no Time Sig events added to the sequence
				4/4 is assumed. A Time Sig event is a MIDI Meta Event as specified for MIDI files.
	@param		inSequence		the sequence
	@param		inBarBeatTime	the bar-beat time
	@param		outBeats		the sequence's beat time for that bar-beat time
*/
@available(OSX 10.5, *)
func MusicSequenceBarBeatTimeToBeats(inSequence: MusicSequence, _ inBarBeatTime: UnsafePointer<CABarBeatTime>, _ outBeats: UnsafeMutablePointer<MusicTimeStamp>) -> OSStatus

/*!
	@function	MusicSequenceGetInfoDictionary
	@abstract	Returns a dictionary containing meta-data derived from a sequence
	@discussion	The dictionary can contain one or more of the kAFInfoDictionary_* 
				keys specified in <AudioToolbox/AudioFile.h>
				
				The caller should release the returned dictionary. If the call fails it will return NULL

	@param		inSequence		the sequence
	@result		a CFDictionary or NULL if the call fails.
*/
@available(OSX 10.5, *)
func MusicSequenceGetInfoDictionary(inSequence: MusicSequence) -> CFDictionary

/*!
	@function	MusicTrackGetSequence
	@abstract	Gets the sequence which the track is a member of
	@param		inTrack		the track
	@param		outSequence the track's sequence
*/
@available(OSX 10.0, *)
func MusicTrackGetSequence(inTrack: MusicTrack, _ outSequence: UnsafeMutablePointer<MusicSequence>) -> OSStatus

/*!
	@function	MusicTrackSetDestNode
	@abstract	Sets the track's target to the specified AUNode
	@discussion	The node must be a member of the graph that the track's sequence is using. When played, the track
				will send all of its events to that node.
	@param		inTrack		the track
	@param		inNode		the new node
*/
@available(OSX 10.0, *)
func MusicTrackSetDestNode(inTrack: MusicTrack, _ inNode: AUNode) -> OSStatus

/*!
	@function	MusicTrackSetDestMIDIEndpoint
	@abstract	Sets the track's target to the specified MIDI endpoint
	@discussion	When played, the track will send all of its events to the specified MIDI Endpoint.
	@param		inTrack		the track
	@param		inEndpoint	the new MIDI endpoint
*/
@available(OSX 10.1, *)
func MusicTrackSetDestMIDIEndpoint(inTrack: MusicTrack, _ inEndpoint: MIDIEndpointRef) -> OSStatus

/*!
	@function	MusicTrackGetDestNode
	@abstract	Gets the track's target if it is an AUNode
	@discussion	Returns kAudioToolboxErr_IllegalTrackDestination if the track's target is a MIDIEndpointRef 
				and NOT an AUNode
	@param		inTrack		the track
	@param		outNode		the node target for the track
*/
@available(OSX 10.1, *)
func MusicTrackGetDestNode(inTrack: MusicTrack, _ outNode: UnsafeMutablePointer<AUNode>) -> OSStatus

/*!
	@function	MusicTrackGetDestMIDIEndpoint
	@abstract	Gets the track's target if it is a MIDI Endpoint
	@discussion	Returns kAudioToolboxErr_IllegalTrackDestination if the track's target is an AUNode 
				and NOT a MIDI Endpoint
	@param		inTrack		the track
	@param		outEndpoint	the MIDI Endpoint target for the track
*/
@available(OSX 10.1, *)
func MusicTrackGetDestMIDIEndpoint(inTrack: MusicTrack, _ outEndpoint: UnsafeMutablePointer<MIDIEndpointRef>) -> OSStatus

/*!
	@function	MusicTrackSetProperty
	@abstract	Sets the specified property value
	@discussion Property values are always get and set by reference
	@param		inTrack			the track
	@param		inPropertyID	the property ID
	@param		inData			the new property value
	@param		inLength		the size of the property value being set
*/
@available(OSX 10.0, *)
func MusicTrackSetProperty(inTrack: MusicTrack, _ inPropertyID: UInt32, _ inData: UnsafeMutablePointer<Void>, _ inLength: UInt32) -> OSStatus

/*!
	@function	MusicTrackGetProperty
	@abstract	Gets the specified property value
	@discussion	If outData is NULL, then the size of the data will be passed back in ioLength
				This allows the client to allocate a buffer of the correct size (useful for variable
				length properties -- currently all properties have fixed size)
				Property values are always get and set by reference
	@param		inTrack			the track
	@param		inPropertyID	the property ID
	@param		outData			if not NULL, points to data of size ioLength
	@param		ioLength		on input the available size of outData, on output the size of the valid data that outData
								will then point too.
*/
@available(OSX 10.0, *)
func MusicTrackGetProperty(inTrack: MusicTrack, _ inPropertyID: UInt32, _ outData: UnsafeMutablePointer<Void>, _ ioLength: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	@function	MusicTrackMoveEvents
	@abstract	Move events in a track
	@discussion	Moves all of the events in the specified time range by the moveTime. MoveTime maybe negative to 
				move events backwards (towards zero).
				
				All time ranges are [starttime < endtime]
				
	@param		inTrack			the track
	@param		inStartTime		the start time for the range of events
	@param		inEndTime		the end time up to which will form the range of the events to move
	@param		inMoveTime		amount of beats to move the selected events.
*/
@available(OSX 10.0, *)
func MusicTrackMoveEvents(inTrack: MusicTrack, _ inStartTime: MusicTimeStamp, _ inEndTime: MusicTimeStamp, _ inMoveTime: MusicTimeStamp) -> OSStatus

/*!
	@function	MusicTrackClear
	@abstract	Removes all events within the specified range
	@discussion	All time ranges are [starttime < endtime]
	@param		inTrack		the track
	@param		inStartTime	the start time for the range of events
	@param		inEndTime	the end time up to which will form the range of the events to clear
*/
@available(OSX 10.0, *)
func MusicTrackClear(inTrack: MusicTrack, _ inStartTime: MusicTimeStamp, _ inEndTime: MusicTimeStamp) -> OSStatus

/*!
	@function	MusicTrackCut
	@abstract	Removes all the events within the specified range
	@discussion	Events that fall past the specified range will be moved back by the specified range time.
				
				All time ranges are [starttime < endtime]
				
	@param		inTrack		the track
	@param		inStartTime	the start time for the range of events
	@param		inEndTime	the end time up to which will form the range of the events to cut out
*/
@available(OSX 10.0, *)
func MusicTrackCut(inTrack: MusicTrack, _ inStartTime: MusicTimeStamp, _ inEndTime: MusicTimeStamp) -> OSStatus

/*!
	@function	MusicTrackCopyInsert
	@abstract	Copies events from one track and inserts them into another
	@discussion	Copies all of the events with the specified time range of the source track. It then inserts
				those events into the destination track. All events at and after inDestInsertTime in inDestTrack 
				are moved forward by the range's duration
				
				All time ranges are [starttime < endtime]
				
	@param		inSourceTrack		the source track
	@param		inSourceStartTime	the start time for the range of events
	@param		inSourceEndTime		the end time up to which will form the range of the events to copy from the source track
	@param		inDestTrack			the destination track to copy too
	@param		inDestInsertTime	the time at which the copied events will be inserted.
*/
@available(OSX 10.0, *)
func MusicTrackCopyInsert(inSourceTrack: MusicTrack, _ inSourceStartTime: MusicTimeStamp, _ inSourceEndTime: MusicTimeStamp, _ inDestTrack: MusicTrack, _ inDestInsertTime: MusicTimeStamp) -> OSStatus

/*!
	@function	MusicTrackMerge
	@abstract	Copies events from one track and merges them into another
	@discussion	Copies all of the events with the specified time range of the source track. It then merges
				those events into the destination track starting at inDestInsertTime.
				
				All time ranges are [starttime < endtime]
				
	@param		inSourceTrack		the source track
	@param		inSourceStartTime	the start time for the range of events
	@param		inSourceEndTime		the end time up to which will form the range of the events to copy from the source track
	@param		inDestTrack			the destination track to copy too
	@param		inDestInsertTime	the time at which the copied events will be merged.
*/
@available(OSX 10.0, *)
func MusicTrackMerge(inSourceTrack: MusicTrack, _ inSourceStartTime: MusicTimeStamp, _ inSourceEndTime: MusicTimeStamp, _ inDestTrack: MusicTrack, _ inDestInsertTime: MusicTimeStamp) -> OSStatus

/*!
	@function	MusicTrackNewMIDINoteEvent
	@abstract	Adds a MIDINoteMessage event to a track
	@discussion	The event is added at the specified time stamp. The time stamp should not be less than zero.
	@param		inTrack			the track
	@param		inTimeStamp		the time stamp
	@param		inMessage		the event
*/
@available(OSX 10.0, *)
func MusicTrackNewMIDINoteEvent(inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inMessage: UnsafePointer<MIDINoteMessage>) -> OSStatus

/*!
	@function	MusicTrackNewMIDIChannelEvent
	@abstract	Adds a MIDIChannelMessage event to a track
	@discussion	The event is added at the specified time stamp. The time stamp should not be less than zero.
	@param		inTrack			the track
	@param		inTimeStamp		the time stamp
	@param		inMessage		the event
*/
@available(OSX 10.0, *)
func MusicTrackNewMIDIChannelEvent(inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inMessage: UnsafePointer<MIDIChannelMessage>) -> OSStatus

/*!
	@function	MusicTrackNewMIDIRawDataEvent
	@abstract	Adds a MIDIRawData event to a track
	@discussion	The event is added at the specified time stamp. The time stamp should not be less than zero.
	@param		inTrack			the track
	@param		inTimeStamp		the time stamp
	@param		inRawData		the event
*/
@available(OSX 10.0, *)
func MusicTrackNewMIDIRawDataEvent(inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inRawData: UnsafePointer<MIDIRawData>) -> OSStatus

/*!
	@function	MusicTrackNewExtendedNoteEvent
	@abstract	Adds a ExtendedNoteOnEvent to a track
	@discussion	The event is added at the specified time stamp. The time stamp should not be less than zero.
	@param		inTrack			the track
	@param		inTimeStamp		the time stamp
	@param		inInfo			the event
*/
@available(OSX 10.0, *)
func MusicTrackNewExtendedNoteEvent(inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inInfo: UnsafePointer<ExtendedNoteOnEvent>) -> OSStatus

/*!
	@function	MusicTrackNewParameterEvent
	@abstract	Adds a ParameterEvent to a track
	@discussion	The event is added at the specified time stamp. The time stamp should not be less than zero.
	@param		inTrack			the track
	@param		inTimeStamp		the time stamp
	@param		inInfo			the event
*/
@available(OSX 10.2, *)
func MusicTrackNewParameterEvent(inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inInfo: UnsafePointer<ParameterEvent>) -> OSStatus

/*!
	@function	MusicTrackNewExtendedTempoEvent
	@abstract	Adds a tempo event to a track
	@discussion	The event is added at the specified time stamp. The time stamp should not be less than zero.
	@param		inTrack			the track
	@param		inTimeStamp		the time stamp
	@param		inBPM			the event
*/
@available(OSX 10.0, *)
func MusicTrackNewExtendedTempoEvent(inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inBPM: Float64) -> OSStatus

/*!
	@function	MusicTrackNewMetaEvent
	@abstract	Adds a MIDIMetaEvent to a track
	@discussion	The event is added at the specified time stamp. The time stamp should not be less than zero.
	@param		inTrack			the track
	@param		inTimeStamp		the time stamp
	@param		inMetaEvent		the event
*/
@available(OSX 10.0, *)
func MusicTrackNewMetaEvent(inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inMetaEvent: UnsafePointer<MIDIMetaEvent>) -> OSStatus

/*!
	@function	MusicEventUserData
	@abstract	Adds a MusicEventUserData event to a track
	@discussion	The event is added at the specified time stamp. The time stamp should not be less than zero.
	@param		inTrack			the track
	@param		inTimeStamp		the time stamp
	@param		inUserData		the event
*/
@available(OSX 10.0, *)
func MusicTrackNewUserEvent(inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inUserData: UnsafePointer<MusicEventUserData>) -> OSStatus

/*!
	@function	MusicTrackNewAUPresetEvent
	@abstract	Adds a AUPresetEvent to a track
	@discussion	The event is added at the specified time stamp. The time stamp should not be less than zero.
	@param		inTrack			the track
	@param		inTimeStamp		the time stamp
	@param		inPresetEvent	the event
*/
@available(OSX 10.3, *)
func MusicTrackNewAUPresetEvent(inTrack: MusicTrack, _ inTimeStamp: MusicTimeStamp, _ inPresetEvent: UnsafePointer<AUPresetEvent>) -> OSStatus

/*!
	@function	NewMusicEventIterator
	@abstract	Creates an iterator to iterator over a track's events
	@discussion	The iterator should be considered invalid if a track is edited. In that case you should create a new
				iterator and seek it to the desired position.
				
	@param		inTrack			the track upon which to iterate
	@param		outIterator		the new iterator
*/
@available(OSX 10.0, *)
func NewMusicEventIterator(inTrack: MusicTrack, _ outIterator: UnsafeMutablePointer<MusicEventIterator>) -> OSStatus

/*!
	@function	DisposeMusicEventIterator
	@abstract	Dispose an iterator
	@param		inIterator		the iterator
*/
@available(OSX 10.0, *)
func DisposeMusicEventIterator(inIterator: MusicEventIterator) -> OSStatus

/*!
	@function	MusicEventIteratorSeek
	@abstract	Move the iterator to an event at the specified time
	@discussion If there is no event at the specified time, the iterator will point to the first event after
				that time.
				By specifying kMusicTimeStamp_EndOfTrack you will position the iterator to the end of track
				(which is pointing to the space just AFTER the last event). You can use MusicEventIteratorPreviousEvent 
				to backup to the last event.
				By specifying 0, you will position the iterator at the first event
	@param		inIterator		the iterator
	@param		inTimeStamp		the time stamp to seek too
*/
@available(OSX 10.0, *)
func MusicEventIteratorSeek(inIterator: MusicEventIterator, _ inTimeStamp: MusicTimeStamp) -> OSStatus

/*!
	@function	MusicEventIteratorNextEvent
	@abstract	Move the iterator to the next event
	@discussion If the iterator was at the last event, then it will move past the last event and will no longer point
				to an event. You can use check MusicEventIteratorHasCurrentEvent to see if there is an event at the 
				iterator's current position. See also MusicEventIteratorHasNextEvent.
				
				Typically this call is used to move the iterator forwards through the track's events.
	@param		inIterator		the iterator
*/
@available(OSX 10.0, *)
func MusicEventIteratorNextEvent(inIterator: MusicEventIterator) -> OSStatus

/*!
	@function	MusicEventIteratorPreviousEvent
	@abstract	Move the iterator to the previous event
	@discussion If the iterator was at the first event, then it will leave the iterator unchanged and return an error. 
				See also MusicEventIteratorHasPreviousEvent

				Typically this call is used to move the iterator backwards through the track's events.
	@param		inIterator		the iterator
*/
@available(OSX 10.0, *)
func MusicEventIteratorPreviousEvent(inIterator: MusicEventIterator) -> OSStatus

/*!
	@function	MusicEventIteratorGetEventInfo
	@abstract	Retrieves the event data at the iterator.
	@discussion Retrieves the event and other information from the iterator's current position.
	
				If you do not want specific information (eg, the time stamp) pass in NULL for that parameter.
				
	@param		inIterator		the iterator
	@param		outTimeStamp	the time stamp of the event
	@param		outEventType	one of kMusicEventType_XXX that indicates what kind of event type the iterator
								is currently pointing too
	@param		outEventData	a reference to the event data. The type of data is described by the eventType. This data
								is read only and should not be edited in place.
	@param		outEventDataSize	the size of the data referenced by outEventData
*/
@available(OSX 10.0, *)
func MusicEventIteratorGetEventInfo(inIterator: MusicEventIterator, _ outTimeStamp: UnsafeMutablePointer<MusicTimeStamp>, _ outEventType: UnsafeMutablePointer<MusicEventType>, _ outEventData: UnsafeMutablePointer<UnsafePointer<Void>>, _ outEventDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	@function	MusicEventIteratorSetEventInfo
	@abstract	Changes the type or value of an event
	@discussion Allows you to change either the event type, or the values of the event data, that the iterator is 
				currently pointing too. You cannot change the event's time (to do that you should use 
				MusicEventIteratorSetEventTime).
				
	@param		inIterator		the iterator
	@param		inEventType		the new (or existing) type of the event you are changing
	@param		inEventData		the new event data. The size and type of this event data must match the inEventType
*/
@available(OSX 10.2, *)
func MusicEventIteratorSetEventInfo(inIterator: MusicEventIterator, _ inEventType: MusicEventType, _ inEventData: UnsafePointer<Void>) -> OSStatus

/*!
	@function	MusicEventIteratorSetEventTime
	@abstract	Set a new time for an event
	@discussion The iterator will still be pointing to the same event, but as the event will have moved, 
				it may or may not have a next or previous event now (depending of course on the time
				you moved it too).
				
	@param		inIterator		the iterator
	@param		inTimeStamp		the new time stamp of the event
*/
@available(OSX 10.0, *)
func MusicEventIteratorSetEventTime(inIterator: MusicEventIterator, _ inTimeStamp: MusicTimeStamp) -> OSStatus

/*!
	@function	MusicEventIteratorDeleteEvent
	@abstract	Deletes the event pointed to by the iterator
	@discussion The iterator will reference the next event after the event has been deleted.
				
	@param		inIterator		the iterator
*/
@available(OSX 10.0, *)
func MusicEventIteratorDeleteEvent(inIterator: MusicEventIterator) -> OSStatus

/*!
	@function	MusicEventIteratorHasPreviousEvent
	@abstract	Does the track have an event previous to the event the iterator is pointing to?
	@discussion To use the iterator going backwards through a track:
					iter = New Iterator (points at first event)
					MusicEventIteratorSeek (iter, kMusicTimeStamp_EndOfTrack) // will point it past the last event
					bool hasPreviousEvent;
					MusicEventIteratorHasPreviousEvent (iter, &hasPreviousEvent)
					while (hasPreviousEvent) {
						MusicEventIteratorPreviousEvent (iter)
						// 	do work... MusicEventIteratorGetEventInfo (iter, ...
						
						MusicEventIteratorHasPreviousEvent (iter, &hasPreviousEvent);
					}				
	@param		inIterator		the iterator
	@param		outHasPrevEvent	true if there is a previous event, false if not
*/
@available(OSX 10.0, *)
func MusicEventIteratorHasPreviousEvent(inIterator: MusicEventIterator, _ outHasPrevEvent: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus

/*!
	@function	MusicEventIteratorHasNextEvent
	@abstract	Does the track have an event past the event the iterator is pointing too?
	@discussion To use the iterator going forwards through a track:
					iter = New Iterator (points at first event)
					bool hasCurrentEvent;
					MusicEventIteratorHasCurrentEvent(iter, &hasCurrentEvent);
					while (hasCurrentEvent) {
						// do work... MusicEventIteratorGetEventInfo (iter, ...
						
						MusicEventIteratorNextEvent (iter)
						MusicEventIteratorHasCurrentEvent(iter, &hasCurrentEvent);
					}
				
	@param		inIterator		the iterator
	@param		outHasNextEvent	true if there is a next event, false if not
*/
@available(OSX 10.0, *)
func MusicEventIteratorHasNextEvent(inIterator: MusicEventIterator, _ outHasNextEvent: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus

/*!
	@function	MusicEventIteratorHasCurrentEvent
	@abstract	Is there an event at the iterator's current position?
	@param		inIterator		the iterator
	@param		outHasCurEvent	true if there is an event, false if not
*/
@available(OSX 10.2, *)
func MusicEventIteratorHasCurrentEvent(inIterator: MusicEventIterator, _ outHasCurEvent: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
var kMusicEventType_ExtendedControl: Int { get }
struct ExtendedControlEvent {
  var groupID: MusicDeviceGroupID
  var controlID: AudioUnitParameterID
  var value: AudioUnitParameterValue
  init()
  init(groupID: MusicDeviceGroupID, controlID: AudioUnitParameterID, value: AudioUnitParameterValue)
}
