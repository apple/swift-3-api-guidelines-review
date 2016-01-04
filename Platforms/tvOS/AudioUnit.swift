
var AUDIO_UNIT_VERSION: Int32 { get }

/*!	@typedef	AUAudioUnitStatus
	@brief		A result code returned from an audio unit's render function.
*/
typealias AUAudioUnitStatus = OSStatus

/*!	@typedef	AUEventSampleTime
	@brief		Expresses time as a sample count.
	@discussion
		Sample times are normally positive, but hosts can propagate HAL sample times through audio
		units, and HAL sample times can be small negative numbers.
*/
typealias AUEventSampleTime = Int64
var AUEventSampleTimeImmediate: AUEventSampleTime { get }

/*!	@typedef	AUAudioFrameCount
	@brief		A number of audio sample frames.
	@discussion
		This is `uint32_t` for impedence-matching with the pervasive use of `UInt32` in AudioToolbox
		and C AudioUnit API's, as well as `AVAudioFrameCount`.
*/
typealias AUAudioFrameCount = UInt32

/*!	@typedef	AUAudioChannelCount
	@brief		A number of audio channels.
	@discussion
		This is `uint32_t` for impedence-matching with the pervasive use of `UInt32` in AudioToolbox
		and C AudioUnit API's, as well as `AVAudioChannelCount`.
*/
typealias AUAudioChannelCount = UInt32

/*!	@enum		AUAudioUnitBusType
	@brief		Describes whether a bus array is for input or output.
*/
enum AUAudioUnitBusType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Input
  case Output
}

/*!	@typedef	AURenderPullInputBlock
	@brief		Block to supply audio input to AURenderBlock.
	@param actionFlags
		Pointer to action flags.
	@param timestamp
		The HAL time at which the input data will be rendered. If there is a sample rate conversion
		or time compression/expansion downstream, the sample time will not be valid.
	@param frameCount
		The number of sample frames of input requested.
	@param inputBusNumber
		The index of the input bus being pulled.
	@param inputData
		The input audio data.

		The caller must supply valid buffers in inputData's mBuffers' mData and mDataByteSize.
		mDataByteSize must be consistent with frameCount. This block may provide input in those
		specified buffers, or it may replace the mData pointers with pointers to memory which it
		owns and guarantees will remain valid until the next render cycle.
	@return
		An AUAudioUnitStatus result code. If an error is returned, the input data should be assumed 
		to be invalid.
*/
typealias AURenderPullInputBlock = (UnsafeMutablePointer<AudioUnitRenderActionFlags>, UnsafePointer<AudioTimeStamp>, AUAudioFrameCount, Int, UnsafeMutablePointer<AudioBufferList>) -> AUAudioUnitStatus

/*!	@typedef	AURenderBlock
	@brief		Block to render the audio unit.
	@discussion
		All realtime operations are implemented using blocks to avoid ObjC method dispatching and
		the possibility of blocking.
	@param actionFlags
		Pointer to action flags.
	@param timestamp
		The HAL time at which the output data will be rendered. If there is a sample rate conversion
		or time compression/expansion downstream, the sample time will not have a defined
		correlation with the AudioDevice sample time.
	@param frameCount
		The number of sample frames to render.
	@param outputBusNumber
		The index of the output bus to render.
	@param outputData
		The output bus's render buffers and flags.

		The buffer pointers (outputData->mBuffers[x].mData) may be null on entry, in which case the
		block will render into memory it owns and modify the mData pointers to point to that memory.
		The block is responsible for preserving the validity of that memory until it is next called
		to render, or deallocateRenderResources is called.

		If, on entry, the mData pointers are non-null, the block will render into those buffers.
	@param pullInputBlock
		A block which the AU will call in order to pull for input data. May be nil for instrument
		and generator audio units (which do not have input busses).
	@return
		An `AUAudioUnitStatus` result code. If an error is returned, the output data should be assumed
		to be invalid.
*/
typealias AURenderBlock = (UnsafeMutablePointer<AudioUnitRenderActionFlags>, UnsafePointer<AudioTimeStamp>, AUAudioFrameCount, Int, UnsafeMutablePointer<AudioBufferList>, AURenderPullInputBlock?) -> AUAudioUnitStatus

/*!	@typedef	AURenderObserver
	@brief		Block called when an audio unit renders.
	@discussion
		This block is called by the base class's AURenderBlock before and after each render cycle.
		The observer can distinguish between before and after using the PreRender and PostRender
		flags.
		
		The parameters are identical to those of AURenderBlock.
*/
typealias AURenderObserver = (AudioUnitRenderActionFlags, UnsafePointer<AudioTimeStamp>, AUAudioFrameCount, Int) -> Void

/*!	@typedef	AUScheduleParameterBlock
	@brief		Block to schedule parameter changes.
	@discussion
		Not all parameters are rampable; check the parameter's flags.
	@param eventSampleTime
		The sample time (timestamp->mSampleTime) at which the parameter is to begin changing. When
		scheduling parameters during the render cycle (e.g. via a render observer) this time can be
		AUEventSampleTimeImmediate plus an optional buffer offset, in which case the event is
		scheduled at that position in the current render cycle.
	@param rampDurationSampleFrames
		The number of sample frames over which the parameter's value is to ramp, or 0 if the 
		parameter change should take effect immediately.
	@param parameterAddress
		The parameter's address.
	@param value
		The parameter's new value if the ramp duration is 0; otherwise, the value at the end
		of the scheduled ramp.
*/
typealias AUScheduleParameterBlock = (AUEventSampleTime, AUAudioFrameCount, AUParameterAddress, AUValue) -> Void

/*!	@typedef	AUScheduleMIDIEventBlock
	@brief		Block to schedule MIDI events.
	@param eventSampleTime
		The sample time (timestamp->mSampleTime) at which the MIDI event is to occur. When
		scheduling events during the render cycle (e.g. via a render observer) this time can be
		AUEventSampleTimeImmediate plus an optional buffer offset, in which case the event is
		scheduled at that position in the current render cycle.
	@param cable
		The virtual cable number.
	@param length
		The number of bytes of MIDI data in the provided event(s).
	@param midiBytes
		One or more valid MIDI 1.0 events, except sysex which must always be sent as the only event
		in the chunk. Also, running status is not allowed.
*/
typealias AUScheduleMIDIEventBlock = (AUEventSampleTime, UInt8, Int, UnsafePointer<UInt8>) -> Void

/*!	@typedef	AUHostMusicalContextBlock
	@brief		Block by which hosts provide musical tempo, time signature, and beat position.
	@param	currentTempo
		The current tempo in beats per minute.
	@param	timeSignatureNumerator
		The numerator of the current time signature.
	@param	timeSignatureDenominator
		The denominator of the current time signature.
	@param	currentBeatPosition
		The precise beat position of the beginning of the current buffer being rendered.
	@param	sampleOffsetToNextBeat
		The number of samples between the beginning of the buffer being rendered and the next beat
		(can be 0).
	@param	currentMeasureDownbeatPosition
		The beat position corresponding to the beginning of the current measure.
	@return
		YES for success.
	@discussion
		If the host app provides this block to an AUAudioUnit (as its musicalContextBlock), then
		the block may be called at the beginning of each render cycle to obtain information about
		the current render cycle's musical context.
		
		Any of the provided parameters may be null to indicate that the audio unit is not interested
		in that particular piece of information.
*/
typealias AUHostMusicalContextBlock = (UnsafeMutablePointer<Double>, UnsafeMutablePointer<Double>, UnsafeMutablePointer<Int>, UnsafeMutablePointer<Double>, UnsafeMutablePointer<Int>, UnsafeMutablePointer<Double>) -> Bool

/*!	@enum		AUHostTransportState
	@brief		Flags describing the host's transport state.
	@constant	AUHostTransportStateChanged
		True if, since the callback was last called, there was a change to the state of, or
		discontinuities in, the host's transport. Can indicate such state changes as
		start/stop, or seeking to another position in the timeline.
	@constant	AUHostTransportStateMoving
		True if the transport is moving.
	@constant	AUHostTransportStateRecording
		True if the host is recording, or prepared to record. Can be true with or without the
		transport moving.
	@constant	AUHostTransportStateCycling
		True if the host is cycling or looping.
*/
struct AUHostTransportStateFlags : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Changed: AUHostTransportStateFlags { get }
  static var Moving: AUHostTransportStateFlags { get }
  static var Recording: AUHostTransportStateFlags { get }
  static var Cycling: AUHostTransportStateFlags { get }
}

/*!	@typedef	AUHostTransportStateBlock
	@brief		Block by which hosts provide information about their transport state.
	@param	transportStateFlags
		The current state of the transport.
	@param	currentSamplePosition
		The current position in the host's timeline, in samples at the audio unit's output sample
		rate.
	@param	cycleStartBeatPosition
		If cycling, the starting beat position of the cycle.
	@param	cycleEndBeatPosition
		If cycling, the ending beat position of the cycle.
	@discussion
		If the host app provides this block to an AUAudioUnit (as its transportStateBlock), then
		the block may be called at the beginning of each render cycle to obtain information about
		the current transport state.
		
		Any of the provided parameters may be null to indicate that the audio unit is not interested
		in that particular piece of information.
*/
typealias AUHostTransportStateBlock = (UnsafeMutablePointer<AUHostTransportStateFlags>, UnsafeMutablePointer<Double>, UnsafeMutablePointer<Double>, UnsafeMutablePointer<Double>) -> Bool

/*!	@class		AUAudioUnit
	@brief		An audio unit instance.
	@discussion
		AUAudioUnit is a host interface to an audio unit. Hosts can instantiate either version 2 or
		version 3 units with this class, and to some extent control whether an audio unit is
		instantiated in-process or in a separate extension process.
		
		Implementors of version 3 audio units can and should subclass AUAudioUnit. To port an
		existing version 2 audio unit easily, AUAudioUnitV2Bridge can be subclassed.
		
		These are the ways in which audio unit components can be registered:
		
		- (v2) Packaged into a component bundle containing an AudioComponents Info.plist entry,
		referring to an AudioComponentFactoryFunction. See AudioComponent.h.
		
		- (v2) AudioComponentRegister. Associates a component description with an
		AudioComponentFactoryFunction. See AudioComponent.h.
		
		- (v3) Packaged into an app extension containing an AudioComponents Info.plist entry.
		The principal class must conform to the AUAudioUnitFactory protocol, which will typically
		instantiate an AUAudioUnit subclass.

		- (v3) `+[AUAudioUnit registerSubclass:asComponentDescription:name:version:]`. Associates
		a component description with an AUAudioUnit subclass.
		
		A host need not be aware of the concrete subclass of AUAudioUnit that is being instantiated.
		`initWithComponentDescription:options:error:` ensures that the proper subclass is used.
		
		When using AUAudioUnit with a v2 audio unit, or the C AudioComponent and AudioUnit API's
		with a v3 audio unit, all major pieces of functionality are bridged between the
		two API's. This header describes, for each v3 method or property, the v2 equivalent.
*/
@available(tvOS 9.0, *)
class AUAudioUnit : NSObject {

  /*!	@method		initWithComponentDescription:options:error:
  	@brief		Designated initializer.
  	@param componentDescription
  		A single AUAudioUnit subclass may implement multiple audio units, for example, an effect
  		that can also function as a generator, or a cluster of related effects. The component
  		description specifies the component which was instantiated.
  	@param options
  		Options for loading the unit in-process or out-of-process.
  	@param outError
  		Returned in the event of failure.
  */
  init(componentDescription: AudioComponentDescription, options: AudioComponentInstantiationOptions) throws

  /*!	@method		initWithComponentDescription:error:
  	@brief		Convenience initializer (omits options).
  */
  convenience init(componentDescription: AudioComponentDescription) throws

  /*!	@method	instantiateWithComponentDescription:options:completionHandler:
  	@brief	Asynchronously create an AUAudioUnit instance.
  	@param componentDescription
  		The AudioComponentDescription of the audio unit to instantiate.
  	@param options
  		See the discussion of AudioComponentInstantiationOptions in AudioUnit/AudioComponent.h.
  	@param completionHandler
  		Called in a thread/dispatch queue context internal to the implementation. The client should
  		retain the supplied AUAudioUnit.
  	@discussion
  		Certain types of AUAudioUnits must be instantiated asynchronously -- see 
  		the discussion of kAudioComponentFlag_RequiresAsyncInstantiation in
  		AudioUnit/AudioComponent.h.
  
  		Note: Do not block the main thread while waiting for the completion handler to be called;
  		this can deadlock.
  */
  class func instantiateWithComponentDescription(componentDescription: AudioComponentDescription, options: AudioComponentInstantiationOptions, completionHandler: (AUAudioUnit?, NSError?) -> Void)

  /*!	@property	componentDescription
  	@brief		The AudioComponentDescription with which the audio unit was created.
  */
  var componentDescription: AudioComponentDescription { get }

  /*!	@property	component
  	@brief		The AudioComponent which was found based on componentDescription when the
  				audio unit was created.
  */
  var component: AudioComponent { get }

  /*!	@property	componentName
  	@brief		The unit's component's name.
  	@discussion
  		By convention, an audio unit's component name is its manufacturer's name, plus ": ",
  		plus the audio unit's name. The audioUnitName and manufacturerName properties are derived
  		from the component name.
  */
  var componentName: String? { get }

  /*!	@property	audioUnitName
  	@brief		The audio unit's name.
  */
  var audioUnitName: String? { get }

  /*!	@property	manufacturerName
  	@brief		The manufacturer's name.
  */
  var manufacturerName: String? { get }

  /*!	@property	componentVersion
  	@brief		The unit's component's version.
  */
  var componentVersion: UInt32 { get }

  /*!	@method		allocateRenderResourcesAndReturnError:
  	@brief		Allocate resources required to render.
  	@discussion
  		Hosts must call this before beginning to render. Subclassers should call the superclass
  		implementation.
  		
  		Bridged to the v2 API AudioUnitInitialize().
  */
  func allocateRenderResources() throws

  /*!	@method		deallocateRenderResources
  	@brief		Deallocate resources allocated by allocateRenderResourcesAndReturnError:
  	@discussion
  		Hosts should call this after finishing rendering. Subclassers should call the superclass
  		implementation.
  		
  		Bridged to the v2 API AudioUnitUninitialize().
  */
  func deallocateRenderResources()

  /*!	@property	renderResourcesAllocated
  	@brief		returns YES if the unit has render resources allocated.
   */
  var renderResourcesAllocated: Bool { get }

  /*!	@method		reset
  	@brief		Reset transitory rendering state to its initial state.
  	@discussion
  		Hosts should call this at the point of a discontinuity in the input stream being provided to
  		an audio unit, for example, when seeking forward or backward within a track. In response,
  		implementations should clear delay lines, filters, etc. Subclassers should call the
  		superclass implementation.
  		
  		Bridged to the v2 API AudioUnitReset(), in the global scope.
  */
  func reset()

  /*!	@property	inputBusses
  	@brief		An audio unit's audio input connection points.
  	@discussion
  		Subclassers must override this property's getter. The implementation should return the same
  		object every time it is asked for it, since clients can install KVO observers on it.
  */
  var inputBusses: AUAudioUnitBusArray { get }

  /*!	@property	outputBusses
  	@brief		An audio unit's audio output connection points.
  	@discussion
  		Subclassers must override this property's getter. The implementation should return the same
  		object every time it is asked for it, since clients can install KVO observers on it.
  */
  var outputBusses: AUAudioUnitBusArray { get }

  /*!	@property	renderBlock
  	@brief		Block which hosts use to ask the unit to render.
  	@discussion
  		Before invoking an audio unit's rendering functionality, a host should fetch this block and
  		cache the result. The block can then be called from a realtime context without the
  		possibility of blocking and causing an overload at the Core Audio HAL level.
  		
  		This block will call a subclass' internalRenderBlock, providing all realtime events
  		scheduled for the current render time interval, bracketed by calls to any render observers.
  
  		Subclassers should override internalRenderBlock, not this property.
  		
  		Bridged to the v2 API AudioUnitRender().
  */
  var renderBlock: AURenderBlock { get }

  /*!	@property	scheduleParameterBlock
  	@brief		Block which hosts use to schedule parameters.
  	@discussion
  		As with renderBlock, a host should fetch and cache this block before beginning to render,
  		if it intends to schedule parameters.
  				
  		The block is safe to call from any thread context, including realtime audio render
  		threads.
  		
  		Subclassers should not override this; it is implemented in the base class and will schedule
  		the events to be provided to the internalRenderBlock.
  		
  		Bridged to the v2 API AudioUnitScheduleParameters().
  */
  var scheduleParameterBlock: AUScheduleParameterBlock { get }

  /*!	@method		tokenByAddingRenderObserver:
  	@brief		Add a block to be called on each render cycle.
  	@discussion
  		The supplied block is called at the beginning and ending of each render cycle. It should
  		not make any blocking calls.
  		
  		This method is implemented in the base class AUAudioUnit, and should not be overridden.
  		
  		Bridged to the v2 API AudioUnitAddRenderNotify().
  	@param observer
  		The block to call.
  	@return
  		A token to be used when removing the observer.
  */
  func tokenByAddingRenderObserver(observer: AURenderObserver) -> Int

  /*!	@method		removeRenderObserver:
  	@brief		Remove an observer block added via tokenByAddingRenderObserver:
  	@param token
  		The token previously returned by tokenByAddingRenderObserver:
  
  		Bridged to the v2 API AudioUnitRemoveRenderNotify().
  */
  func removeRenderObserver(token: Int)

  /*!	@property	maximumFramesToRender
  	@brief		The maximum number of frames which the audio unit can render at once.
  	@discussion
  		This must be set by the host before render resources are allocated. It cannot be changed
  		while render resources are allocated.
  		
  		Bridged to the v2 property kAudioUnitProperty_MaximumFramesPerSlice.
  */
  var maximumFramesToRender: AUAudioFrameCount

  /*!	@property	parameterTree
  	@brief		An audio unit's parameters, organized in a hierarchy.
  	@return
  		A parameter tree object, or nil if the unit has no parameters.
  	@discussion
  		Audio unit hosts can fetch this property to discover a unit's parameters. KVO notifications
  		are issued on this member to notify the host of changes to the set of available parameters.
  		
  		AUAudioUnit has an additional pseudo-property, "allParameterValues", on which KVO
  		notifications are issued in response to certain events where potentially all parameter
  		values are invalidated (e.g. selection of a preset or setting fullState).
   
  		Subclassers should implement the parameterTree getter to expose parameters to hosts. They
  		should cache as much as possible and send KVO notifications on "parameterTree" when altering
  		the structure of the tree or the static information (ranges, etc) of parameters.
  		
  		This is similar to the v2 properties kAudioUnitProperty_ParameterList and
  		kAudioUnitProperty_ParameterInfo.
  */
  var parameterTree: AUParameterTree? { get }

  /*!	@method		parametersForOverviewWithCount:
  	@brief		Returns the audio unit's `count` most important parameters.
  	@discussion
  		This property allows a host to query an audio unit for some small number of parameters which
  		are its "most important", to be displayed in a compact generic view.
  
  		An audio unit subclass should return an array of NSNumbers representing the addresses
  		of the `count` most important parameters.
  
  		The base class returns an empty array regardless of count.
  		
  		Partially bridged to kAudioUnitProperty_ParametersForOverview (v2 hosts can use that
  		property to access this v3 method of an audio unit).
  */
  func parametersForOverviewWithCount(count: Int) -> [NSNumber]
  var allParameterValues: Bool { get }

  /*!	@property	musicDeviceOrEffect
  	@brief		Specifies whether an audio unit responds to MIDI events.
  	@discussion
  		This is implemented in the base class and returns YES if the component type is music
  		device or music effect.
  */
  var musicDeviceOrEffect: Bool { get }

  /*!	@property	virtualMIDICableCount
  	@brief		The number of virtual MIDI cables implemented by a music device or effect.
  	@discussion
  		A music device or MIDI effect can support up to 256 virtual MIDI cables of input; this
  		property expresses the number of cables supported by the audio unit.
  */
  var virtualMIDICableCount: Int { get }

  /*!	@property	scheduleMIDIEventBlock
  	@brief		Block used to schedule MIDI events.
  	@discussion
  		As with renderBlock, a host should fetch and cache this block before beginning to render,
  		if it intends to schedule MIDI events.
  		
  		This is implemented in the base class. It is nil when musicDeviceOrEffect is NO.
  		
  		Subclassers should not override. When hosts schedule events via this block, they are
  		delivered to the audio unit via the list of AURenderEvents delivered to
  		internalRenderBlock.
  		
  		This bridged to the v2 API MusicDeviceMIDIEvent.
  */
  var scheduleMIDIEventBlock: AUScheduleMIDIEventBlock? { get }

  /*!	@property	fullState
  	@brief		A persistable snapshot of the audio unit's properties and parameters, suitable for
  				saving as a user preset.
  	@discussion
  		Hosts may use this property to save and restore the state of an audio unit being used in a
  		user preset or document. The audio unit should not persist transitory properties such as
  		stream formats, but should save and restore all parameters and custom properties.
  		
  		The base class implementation of this property saves the values of all parameters 
  		currently in the parameter tree. A subclass which dynamically produces multiple variants
  		of the parameter tree needs to be aware that the serialization method does a depth-first
  		preorder traversal of the tree.
  		
  		Bridged to the v2 property kAudioUnitProperty_ClassInfo.
  */
  var fullState: [String : AnyObject]?

  /*!	@property	fullStateForDocument
  	@brief		A persistable snapshot of the audio unit's properties and parameters, suitable for
  				saving in a user's document.
  	@discussion
  		This property is distinct from fullState in that some state is suitable for saving in user
  		presets, while other state is not. For example, a synthesizer's master tuning setting could
  		be considered global state, inappropriate for storing in reusable presets, but desirable
  		for storing in a document for a specific live performance.
  		
  		Hosts saving documents should use this property. If the audio unit does not implement it,
  		the base class simply sets/gets fullState.
  
  		Bridged to the v2 property kAudioUnitProperty_ClassInfoFromDocument.
  */
  var fullStateForDocument: [String : AnyObject]?

  /*!	@property	factoryPresets
  	@brief		A collection of presets provided by the audio unit's developer.
  	@discussion
  		A preset provides users of an audio unit with an easily-selectable, fine-tuned set of
  		parameters provided by the developer. This property returns all of the available presets.
  		
  		Bridged to the v2 property kAudioUnitProperty_FactoryPresets.
  */
  var factoryPresets: [AUAudioUnitPreset]? { get }

  /*!	@property	currentPreset
  	@brief		The audio unit's last-selected preset.
  	@discussion
  		Hosts can let the user select a preset by setting this property. Note that when getting
  		this property, it does not reflect whether parameters may have been modified since the
  		preset was selected.
  		
  		Bridged to the v2 property kAudioUnitProperty_PresentPreset.
  */
  var currentPreset: AUAudioUnitPreset?

  /*!	@property	latency
  	@brief		The audio unit's processing latency, in seconds.
  	@discussion
  		This property reflects the delay between when an impulse in the unit's audio unit stream
  		arrives in the input vs. output streams. This should reflect the delay due
  		to signal processing (e.g. filters, FFT's, etc.), not delay or reverberation which is
  		being applied as an effect.
  		
  		Note that a latency that varies with parameter settings, including bypass, is generally not
  		useful to hosts. A host is usually only prepared to add delays before starting to render and
  		those delays need to be fixed. A variable delay would introduce artifacts even if the host
  		could track it. If an algorithm has a variable latency it should be adjusted upwards to some
  		fixed latency within the audio unit. If for some reason this is not possible, then latency
  		could be regarded as an unavoidable consequence of the algorithm and left unreported (i.e.
  		with a value of 0).
  
  		Bridged to the v2 property kAudioUnitProperty_Latency.
  */
  var latency: NSTimeInterval { get }

  /*!	@property	tailTime
  	@brief		The audio unit's tail time, in seconds.
  	@discussion
  		This property reflects the time interval between when the input stream ends or otherwise
  		transitions to silence, and when the output stream becomes silent. Unlike latency, this
  		should reflect the duration of a delay or reverb effect.
  		
  		Bridged to the v2 property kAudioUnitProperty_TailTime.
  */
  var tailTime: NSTimeInterval { get }

  /*!	@property	renderQuality
  	@brief		Provides a trade-off between rendering quality and CPU load.
  	@discussion
  		The range of valid values is 0-127.
  		
  		Bridged to the v2 property kAudioUnitProperty_RenderQuality.
  */
  var renderQuality: Int

  /*!	@property	shouldBypassEffect
  	@brief		Directs an effect to route input directly to output, without any processing.
  	@discussion
  		Bridged to the v2 property kAudioUnitProperty_BypassEffect.
  */
  var shouldBypassEffect: Bool

  /*!	@property	canProcessInPlace
  	@brief		Expresses whether an audio unit can process in place.
  	@discussion
  		In-place processing is the ability for an audio unit to transform an input signal to an
  		output signal in-place in the input buffer, without requiring a separate output buffer.
  		
  		A host can express its desire to process in place by using null mData pointers in the output
  		buffer list. The audio unit may process in-place in the input buffers. See the discussion of
  		renderBlock.
  		
  		Partially bridged to the v2 property kAudioUnitProperty_InPlaceProcessing; in v3 it is not
  		settable.
  */
  var canProcessInPlace: Bool { get }

  /*!	@property	renderingOffline
  	@brief		Communicates to an audio unit that it is rendering offline.
  	@discussion
  		A host should use this property when using an audio unit in a context where there are 
  		no realtime deadlines. An audio unit may respond by using a more expensive signal
  		processing algorithm, or allowing itself to block at render time if data being generated on
  		secondary work threads is not ready in time. (Normally, in a realtime thread, this
  		data would have to be dropped).
  
  		Bridged to the v2 property kAudioUnitProperty_OfflineRender.
  */
  var renderingOffline: Bool

  /*!	@property	channelCapabilities
  	@brief		Expresses valid combinations of input and output channel counts.
  	@discussion
  		Elements are NSNumber containing integers; [0]=input count, [1]=output count, [2]=2nd input
  		count, [3]=2nd output count, etc.
  
  		An input, output count of (2, 2) signifies that the audio unit can process 2 input channels
  		to 2 output channels.
  		
  		Negative numbers (-1, -2) indicate *any* number of channels. (-1, -1) means any number
  		of channels on input and output as long as they are the same. (-1, -2) means any number of
  		channels on input or output, without the requirement that the counts are the same.
  		
  		A negative number less than -2 is used to indicate a total number of channels across every
  		bus in that scope, regardless of how many channels are set on any particular bus. For
  		example, (-16, 2) indicates that a unit can accept up to 16 channels of input across its
  		input busses, but will only produce 2 channels of output.
  		
  		Zero on either side (though typically input) means "not applicable", because there are no
  		elements on that side.
  
  		Bridged to the v2 property kAudioUnitProperty_SupportedNumChannels.
  */
  var channelCapabilities: [NSNumber]? { get }

  /*!	@property	musicalContextBlock
  	@brief		A callback for the AU to call the host for musical context information.
  	@discussion
  		Note that an audio unit implementation accessing this property should cache it in
  		realtime-safe storage before beginning to render.
  		
  		Bridged to the HostCallback_GetBeatAndTempo and HostCallback_GetMusicalTimeLocation
  		callback members in kAudioUnitProperty_HostCallbacks.
  */
  var musicalContextBlock: AUHostMusicalContextBlock?

  /*!	@property	transportStateBlock
  	@brief		A callback for the AU to call the host for transport state information.
  	@discussion
  		Note that an audio unit implementation accessing this property should cache it in
  		realtime-safe storage before beginning to render.
  		
  		Bridged to the HostCallback_GetTransportState and HostCallback_GetTransportState2
  		callback members in kAudioUnitProperty_HostCallbacks.
  */
  var transportStateBlock: AUHostTransportStateBlock?

  /*!	@property	contextName
  	@brief		Information about the host context in which the audio unit is connected, for display
  				in the audio unit's view.
  	@discussion
  		For example, a host could set "track 3" as the context, so that the audio unit's view could
  		then display to the user "My audio unit on track 3".
  
  		Bridged to the v2 property kAudioUnitProperty_ContextName.
  */
  var contextName: String?
}

/*!	@typedef	AUInputHandler
	@brief		Block to notify the client of an I/O unit that input is available.
	@param actionFlags
		Pointer to action flags.
	@param timestamp
		The HAL time at which the input data will be rendered. If there is a sample rate conversion
		or time compression/expansion downstream, the sample time will not be valid.
	@param frameCount
		The number of sample frames of input available.
	@param inputBusNumber
		The index of the input bus from which input is available.
	@discussion	The input data is obtained by calling the render block of the audio unit.
				The AUAudioUnit is not provided since it is not safe to message an Objective C object in a real time context.
*/
typealias AUInputHandler = (UnsafeMutablePointer<AudioUnitRenderActionFlags>, UnsafePointer<AudioTimeStamp>, AUAudioFrameCount, Int) -> Void

/*!	@brief		Additional methods for audio units which can do input/output.
	@discussion	These methods will fail if the audio unit is not an input/output audio unit.
*/
extension AUAudioUnit {

  /*!	@property	canPerformInput
  	@brief		Whether the I/O device can perform input.
  */
  var canPerformInput: Bool { get }

  /*!	@property	canPerformOutput
  	@brief		Whether the I/O device can perform output.
  */
  var canPerformOutput: Bool { get }

  /*!	@property	inputEnabled
  	@brief		Flag enabling audio input from the unit.
  	@discussion	Input is disabled by default. This must be set to YES if input audio is desired. 
  				Setting to YES will have no effect if canPerformInput is false.
  */
  var inputEnabled: Bool

  /*!	@property	outputEnabled
  	@brief		Flag enabling audio output from the unit.
  	@discussion	Output is enabled by default.
  				Setting to YES will have no effect if canPerformOutput is false.
  */
  var outputEnabled: Bool

  /*!	@property	outputProvider
  	@brief		The block that the output unit will call to get audio to send to the output.
  	@discussion	This block must be set if output is enabled.
  */
  var outputProvider: AURenderPullInputBlock?

  /*!	@property	inputHandler
  	@brief		The block that the output unit will call to notify when input is available.
  	@discussion	See discussion for AUInputHandler.
  */
  var inputHandler: AUInputHandler?

  /*!	@method		startHardwareAndReturnError:
  	@brief		Starts the audio hardware.
  	@param outError
  		Returned in the event of failure.
  */
  func startHardware() throws

  /*!	@method		stopHardware
  	@brief		Stops the audio hardware.
  */
  func stopHardware()
}

/*!	@class	AUAudioUnitBusArray
	@brief	Container for an audio unit's input or output busses.
	@discussion
		Hosts can observe a bus property across all busses by using KVO on this object, without
		having to observe it on each individual bus. (One could add listeners to individual busses,
		but that means one has to observe bus count changes and add/remove listeners in response.
		Also, NSArray's addObserver:toObjectsAtIndexes:forKeyPath:options:context: is problematic;
		it does not let the individual objects override the observation request, and so a bus which
		is proxying a bus in an extension process does not get the message.)

		Some audio units (e.g. mixers) support variable numbers of busses, via subclassing. When the
		bus count changes, a KVO notification is sent on "inputBusses" or "outputBusses," as
		appropriate.

		Subclassers should see also the AUAudioUnitBusImplementation category.
		
		The bus array is bridged to the v2 property kAudioUnitProperty_ElementCount.
*/
@available(tvOS 9.0, *)
class AUAudioUnitBusArray : NSObject, NSFastEnumeration {

  /*!	@method		initWithAudioUnit:busType:busses:
  	@brief		Initializes by making a copy of the supplied bus array.
  */
  init(audioUnit owner: AUAudioUnit, busType: AUAudioUnitBusType, busses busArray: [AUAudioUnitBus])

  /*!	@method		initWithAudioUnit:busType:
  	@brief		Initializes an empty bus array.
  */
  convenience init(audioUnit owner: AUAudioUnit, busType: AUAudioUnitBusType)

  /*!	@property	count
  */
  var count: Int { get }

  /*!	@method		objectAtIndexedSubscript:
  */
  subscript (index: Int) -> AUAudioUnitBus { get }

  /*!	@property	countChangeable
  	@brief		Whether the array can have a variable number of busses.
  	@discussion
  		The base implementation returns false.
  */
  var countChangeable: Bool { get }

  /*!	@property	setBusCount:error:
  	@brief		Change the number of busses in the array.
  */
  func setBusCount(count: Int) throws

  /*!	@method		addObserverToAllBusses:forKeyPath:options:context:
  	@brief		Add a KVO observer for a property on all busses in the array.
  */
  func addObserverToAllBusses(observer: NSObject, forKeyPath keyPath: String, options: NSKeyValueObservingOptions, context: UnsafeMutablePointer<Void>)

  /*!	@method		removeObserverFromAllBusses:forKeyPath:context:
  	@brief		Remove a KVO observer for a property on all busses in the array.
  */
  func removeObserverFromAllBusses(observer: NSObject, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)

  /// The audio unit that owns the bus.
  unowned(unsafe) var ownerAudioUnit: @sil_unmanaged AUAudioUnit { get }

  /// Which bus array this is (input or output).
  var busType: AUAudioUnitBusType { get }
  @available(tvOS 9.0, *)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}

/*!	@class	AUAudioUnitBus
	@brief	An input or output connection point on an audio unit.
*/
@available(tvOS 9.0, *)
class AUAudioUnitBus : NSObject {

  /*!	@property	enabled
  	@brief		Whether the bus is active.
  	@discussion
  		Hosts must enable input busses before using them. The reason for this is to allow a unit
  		such as a mixer to be prepared to render a large number of inputs, but avoid the work
  		of preparing to pull inputs which are not in use.
  		
  		Bridged to the v2 properties kAudioUnitProperty_MakeConnection and
  		kAudioUnitProperty_SetRenderCallback.
  */
  var enabled: Bool

  /*!	@property	name
  	@brief		A name for the bus. Can be set by host.
  */
  var name: String?

  /*! @property   index
      @brief      The index of this bus in the containing array.
  */
  var index: Int { get }

  /*! @property   busType
      @brief      The AUAudioUnitBusType.
   */
  var busType: AUAudioUnitBusType { get }

  /*! @property   ownerAudioUnit
   @brief         The audio unit that owns the bus.
   */
  unowned(unsafe) var ownerAudioUnit: @sil_unmanaged AUAudioUnit { get }

  /*!	@property	supportedChannelLayoutTags
  	@discussion
  		This is an array of NSNumbers representing AudioChannelLayoutTag.
  */
  var supportedChannelLayoutTags: [NSNumber]? { get }

  /*!	@property	contextPresentationLatency
  	@brief		Information about latency in the audio unit's processing context.
  	@discussion
  		This should not be confused with the audio unit's latency property, where the audio unit
  		describes to the host any processing latency it introduces between its input and its output.
  		
  		A host may set this property to describe to the audio unit the presentation latency of its
  		input and/or output audio data. Latency is described in seconds. A value of zero means
  		either no latency or an unknown latency.
  		
  		A host should set this property on each active bus, since, for example, the audio routing
  		path to each of multiple output busses may differ.
  		
  		For input busses:
  			Describes how long ago the audio arriving on this bus was acquired. For instance, when
  			reading from a file to the first audio unit in a chain, the input presentation latency
  			is zero. For audio input from a device, this initial input latency is the presentation
  			latency of the device itself, i.e. the device's safety offset and latency.
  			
  			A second chained audio unit's input presentation latency will be the input presentation
  			latency of the first unit, plus the processing latency of the first unit.
  			
  		For output busses:
  			Describes how long it will be before the output audio of an audio unit is presented. For
  			instance, when writing to a file, the output presentation latency of the last audio unit
  			in a chain is zero. When the audio from that audio unit is to be played to a device,
  			then that initial presentation latency will be the presentation latency of the device
  			itself, which is the I/O buffer size, plus the device's safety offset and latency
  			
  			A previous chained audio unit's output presentation latency is the last unit's
  			presentation latency plus its processing latency.
  			
  		So, for a given audio unit anywhere within a mixing graph, the input and output presentation 
  		latencies describe to that unit how long from the moment of generation it has taken for its 
  		input to arrive, and how long it will take for its output to be presented.
  		
  		Bridged to the v2 property kAudioUnitProperty_PresentationLatency.
  */
  var contextPresentationLatency: NSTimeInterval
  init()
}

/*!	@class	AUAudioUnitPreset
	@brief	A collection of parameter settings provided by the audio unit implementor, producing a
			useful sound or starting point.
*/
@available(tvOS 9.0, *)
class AUAudioUnitPreset : NSObject, NSSecureCoding {

  /*!	@property	number
  	@brief		The preset's unique numeric identifier.
  */
  var number: Int

  /*!	@property	name
  	@brief		The preset's name.
  */
  var name: String
  init()
  @available(tvOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 9.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/// Describes the type of a render event.
enum AURenderEventType : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case Parameter
  case ParameterRamp
  case MIDI
  case MIDISysEx
}

///	Common header for an AURenderEvent.
struct AURenderEventHeader {

  //!< The next event in a linked list of events.
  var next: UnsafeMutablePointer<AURenderEvent>

  //!< The sample time at which the event is scheduled to occur.
  var eventSampleTime: AUEventSampleTime

  //!< The type of the event.
  var eventType: AURenderEventType

  //!< Must be 0.
  var reserved: UInt8
  init()
  init(next: UnsafeMutablePointer<AURenderEvent>, eventSampleTime: AUEventSampleTime, eventType: AURenderEventType, reserved: UInt8)
}

/// Describes a scheduled parameter change.
struct AUParameterEvent {

  //!< The next event in a linked list of events.
  var next: UnsafeMutablePointer<AURenderEvent>

  //!< The sample time at which the event is scheduled to occur.
  var eventSampleTime: AUEventSampleTime

  //!< AURenderEventParameter or AURenderEventParameterRamp.
  var eventType: AURenderEventType

  //!< Must be 0.
  var reserved: (UInt8, UInt8, UInt8)
  var rampDurationSampleFrames: AUAudioFrameCount

  //!< The parameter to change.
  var parameterAddress: AUParameterAddress

  //!< If ramped, the parameter value at the
  var value: AUValue
  init()
  init(next: UnsafeMutablePointer<AURenderEvent>, eventSampleTime: AUEventSampleTime, eventType: AURenderEventType, reserved: (UInt8, UInt8, UInt8), rampDurationSampleFrames: AUAudioFrameCount, parameterAddress: AUParameterAddress, value: AUValue)
}

/// Describes a single scheduled MIDI event.
struct AUMIDIEvent {

  //!< The next event in a linked list of events.
  var next: UnsafeMutablePointer<AURenderEvent>

  //!< The sample time at which the event is scheduled to occur.
  var eventSampleTime: AUEventSampleTime

  //!< AURenderEventMIDI or AURenderEventMIDISysEx.
  var eventType: AURenderEventType

  //!< Must be 0.
  var reserved: UInt8

  //!< The number of valid MIDI bytes in the data field.
  var length: UInt16

  //!< The virtual cable number.
  var cable: UInt8

  //!< The bytes of the MIDI event. Running status will not be used.
  var data: (UInt8, UInt8, UInt8)
  init()
  init(next: UnsafeMutablePointer<AURenderEvent>, eventSampleTime: AUEventSampleTime, eventType: AURenderEventType, reserved: UInt8, length: UInt16, cable: UInt8, data: (UInt8, UInt8, UInt8))
}

/*!	@brief	A union of the various specific render event types.
	@discussion
		Determine which variant to use via head.eventType. AURenderEventParameter and
		AURenderEventParameterRamp use the parameter variant. AURenderEventMIDI and
		AURenderEventMIDISysEx use the MIDI variant.
*/
struct AURenderEvent {
  var head: AURenderEventHeader
  var parameter: AUParameterEvent
  var MIDI: AUMIDIEvent
  init(head: AURenderEventHeader)
  init(parameter: AUParameterEvent)
  init(MIDI: AUMIDIEvent)
  init()
}

/*!	@brief	Block to render the audio unit.
	@discussion
		Implemented in subclasses; should not be used by clients.

		The other parameters are identical to those of AURenderBlock.
	@param realtimeEventListHead
		A time-ordered linked list of the AURenderEvents to be rendered during this render cycle.
		Note that a ramp event will only appear in the render cycle during which it starts; the
		audio unit is responsible for maintaining continued ramping state for any further render
		cycles.
*/
typealias AUInternalRenderBlock = (UnsafeMutablePointer<AudioUnitRenderActionFlags>, UnsafePointer<AudioTimeStamp>, AUAudioFrameCount, Int, UnsafeMutablePointer<AudioBufferList>, UnsafePointer<AURenderEvent>, AURenderPullInputBlock?) -> AUAudioUnitStatus

/// Aspects of AUAudioUnit of interest only to subclassers.
extension AUAudioUnit {

  /*!	@brief	Register an audio unit component implemented as an AUAudioUnit subclass.
  	@discussion
  		This method dynamically registers the supplied AUAudioUnit subclass with the Audio Component
  		system, in the context of the current process (only). After registering the subclass, it can
  		be instantiated via AudioComponentInstanceNew, 
  		-[AUAudioUnit initWithComponentDescription:options:error:], and via any other API's which
  		instantiate audio units via their component descriptions (e.g. <AudioToolbox/AUGraph.h>, or
  		<AVFoundation/AVAudioUnitEffect.h>).
  */
  class func registerSubclass(cls: AnyClass, asComponentDescription componentDescription: AudioComponentDescription, name: String, version: UInt32)

  /// Block which subclassers must provide (via a getter) to implement rendering.
  var internalRenderBlock: AUInternalRenderBlock { get }

  /*!	@method	setRenderResourcesAllocated:
      @param flag
          In the base class implementation of allocateRenderResourcesAndReturnError:, the property renderResourcesAllocated is set to YES.
          If allocateRenderResourcesAndReturnError: should fail in a subclass, subclassers must use this method to set renderResourcesAllocated to NO.
  */
  func setRenderResourcesAllocated(flag: Bool)
}

/// Aspects of AUAudioUnitBus of interest only to the implementation of v3 AUs.
extension AUAudioUnitBus {

  /*!	@property	supportedChannelCounts
  	@brief		An array of numbers giving the supported numbers of channels for this bus.
  	@discussion
  		If supportedChannelCounts is nil, then any number less than or equal to maximumChannelCount
  		is supported. If setting supportedChannelCounts makes the current format unsupported, then
  		format will be set to nil. The default value is nil.
  */
  var supportedChannelCounts: [NSNumber]?

  /*!	@property	maximumChannelCount
  	@brief		The maximum numbers of channels supported for this bus.
  	@discussion
  		If supportedChannelCounts is set, then this value is derived from supportedChannelCounts. If
  		setting maximumChannelCount makes the current format unsupported, then format will be set to
  		nil. The default value is UINT_MAX.
  */
  var maximumChannelCount: AUAudioChannelCount
}

/// Aspects of AUAudioUnitBusArray of interest only to subclassers.
extension AUAudioUnitBusArray {

  /// Sets the bus array to be a copy of the supplied array. The base class issues KVO notifications.
  func replaceBusses(busArray: [AUAudioUnitBus])
}

/*!	Factory methods for building parameters, parameter groups, and parameter trees.

	@note In non-ARC code, "create" methods return unretained objects (unlike "create" 
	C functions); the caller should generally retain them.
*/
extension AUParameterTree {

  ///	Create an AUParameter.
  /// See AUParameter's properties for descriptions of the arguments.
  class func createParameterWithIdentifier(identifier: String, name: String, address: AUParameterAddress, min: AUValue, max: AUValue, unit: AudioUnitParameterUnit, unitName: String?, flags: AudioUnitParameterOptions, valueStrings: [String]?, dependentParameters: [NSNumber]?) -> AUParameter

  /*!	@brief	Create an AUParameterGroup.
  	@param identifier	An identifier for the group (non-localized, persistent).
  	@param name			The group's human-readable name (localized).
  	@param children		The group's child nodes.
  */
  class func createGroupWithIdentifier(identifier: String, name: String, children: [AUParameterNode]) -> AUParameterGroup

  /*!	@brief		Create a template group which may be used as a prototype for further group instances.
  
  	@discussion
  		Template groups provide a way to construct multiple instances of identical parameter
  		groups, sharing certain immutable state between the instances.
  
  		Template groups may not appear in trees except at the root.
  */
  class func createGroupTemplate(children: [AUParameterNode]) -> AUParameterGroup

  /*!	@brief	Initialize a group as a copied instance of a template group.
  	@param templateGroup	A group to be used as a template and largely copied.
  	@param identifier		An identifier for the new group (non-localized, persistent).
  	@param name				The new group's human-readable name (localized).
  	@param addressOffset	The new group's parameters' addresses will be offset from those in
  							the template by this value.
  */
  class func createGroupFromTemplate(templateGroup: AUParameterGroup, identifier: String, name: String, addressOffset: AUParameterAddress) -> AUParameterGroup

  /*!	@brief	Create an AUParameterTree.
  	@param children		The tree's top-level child nodes.
  */
  class func createTreeWithChildren(children: [AUParameterNode]) -> AUParameterTree
}

/// A block called to notify the AUAudioUnit implementation of changes to AUParameter values.
typealias AUImplementorValueObserver = (AUParameter, AUValue) -> Void

/// A block called to fetch an AUParameter's current value from the AUAudioUnit implementation.
typealias AUImplementorValueProvider = (AUParameter) -> AUValue

/// A block called to convert an AUParameter's value to a string.
typealias AUImplementorStringFromValueCallback = (AUParameter, UnsafePointer<AUValue>) -> String

/// A block called to convert a string to an AUParameter's value.
typealias AUImplementorValueFromStringCallback = (AUParameter, String) -> AUValue

/// A block called to return a group or parameter's localized display name, abbreviated to the requested length.
typealias AUImplementorDisplayNameWithLengthCallback = (AUParameterNode, Int) -> String

/// Aspects of AUParameterNode of interest only to AUAudioUnit subclassers.
extension AUParameterNode {

  /*!	@brief		Called when a parameter changes value.
  	@discussion
  		This block, used only in an audio unit implementation, receives all externally-generated
  		changes to parameter values. It should store the new value in its audio signal processing
  		state (assuming that that state is separate from the AUParameter object).
  */
  var implementorValueObserver: AUImplementorValueObserver

  /*!	@brief		Called when a value of a parameter in the tree is known to have a stale value
  				needing to be refreshed.
  	@discussion
  		The audio unit should return the current value for this parameter; the AUParameterNode will
  		store the value.
  */
  var implementorValueProvider: AUImplementorValueProvider

  ///	Called to provide string representations of parameter values.
  ///	If value is nil, the callback uses the current value of the parameter.
  var implementorStringFromValueCallback: AUImplementorStringFromValueCallback

  /// Called to convert string to numeric representations of parameter values.
  var implementorValueFromStringCallback: AUImplementorValueFromStringCallback

  /// Called to obtain an abbreviated version of a parameter or group name.
  var implementorDisplayNameWithLengthCallback: AUImplementorDisplayNameWithLengthCallback
}

/*!	@brief	Wraps a v2 audio unit in an AUAudioUnit subclass.
	@discussion
		Implementors of version 3 audio units may derive their implementations from
		AUAudioUnitV2Bridge. It expects the component description with which it is initialized to
		refer to a registered component with a v2 implementation using an
		AudioComponentFactoryFunction. The bridge will instantiate the v2 audio unit via the factory
		function and communicate it with it using the v2 AudioUnit API's (AudioUnitSetProperty,
		etc.)

		Hosts should not access this class; it will be instantiated when needed when creating an
		AUAudioUnit.
*/
@available(tvOS 9.0, *)
class AUAudioUnitV2Bridge : AUAudioUnit {

  /*!	@method		initWithComponentDescription:options:error:
  	@brief		Designated initializer.
  	@param componentDescription
  		A single AUAudioUnit subclass may implement multiple audio units, for example, an effect
  		that can also function as a generator, or a cluster of related effects. The component
  		description specifies the component which was instantiated.
  	@param options
  		Options for loading the unit in-process or out-of-process.
  	@param outError
  		Returned in the event of failure.
  */
  init(componentDescription: AudioComponentDescription, options: AudioComponentInstantiationOptions) throws

  /*!	@method		initWithComponentDescription:error:
  	@brief		Convenience initializer (omits options).
  */
  convenience init(componentDescription: AudioComponentDescription) throws
}

/*!	@brief	Protocol to which principal classes of v3 audio units (extensions) must conform.
	@discussion
		The principal class of a non-UI v3 audio unit extension will generally derive from NSObject
		and implement this protocol.
		
		The principal class of a UI v3 audio unit extension must derive from AUViewController and
		implement this protocol.
*/
protocol AUAudioUnitFactory : NSExtensionRequestHandling {

  /*!	@brief	Create an instance of an extension's AUAudioUnit.
  	@discussion
  		This method should create and return an instance of its audio unit.
  		
  		This method will be called only once per instance of the factory.
  		
  		Note that in non-ARC code, "create" methods return unretained objects (unlike "create" 
  		C functions); the implementor should return an object with reference count 1 but
  		autoreleased.
  */
  @available(tvOS 9.0, *)
  func createAudioUnitWithComponentDescription(desc: AudioComponentDescription) throws -> AUAudioUnit
}

/*!
	@typedef			AudioUnit
	@discussion			An audio unit is of type AudioComponentInstance as defined in 
						AudioComponent.h
*/
typealias AudioUnit = AudioComponentInstance
var kAudioUnitType_Output: UInt32 { get }
var kAudioUnitType_MusicDevice: UInt32 { get }
var kAudioUnitType_MusicEffect: UInt32 { get }
var kAudioUnitType_FormatConverter: UInt32 { get }
var kAudioUnitType_Effect: UInt32 { get }
var kAudioUnitType_Mixer: UInt32 { get }
var kAudioUnitType_Panner: UInt32 { get }
var kAudioUnitType_Generator: UInt32 { get }
var kAudioUnitType_OfflineEffect: UInt32 { get }
var kAudioUnitType_MIDIProcessor: UInt32 { get }
var kAudioUnitType_RemoteEffect: UInt32 { get }
var kAudioUnitType_RemoteGenerator: UInt32 { get }
var kAudioUnitType_RemoteInstrument: UInt32 { get }
var kAudioUnitType_RemoteMusicEffect: UInt32 { get }
var kAudioUnitManufacturer_Apple: UInt32 { get }
var kAudioUnitSubType_GenericOutput: UInt32 { get }
var kAudioUnitSubType_VoiceProcessingIO: UInt32 { get }
var kAudioUnitSubType_RemoteIO: UInt32 { get }
var kAudioUnitSubType_Sampler: UInt32 { get }
var kAudioUnitSubType_MIDISynth: UInt32 { get }
var kAudioUnitSubType_AUConverter: UInt32 { get }
var kAudioUnitSubType_Varispeed: UInt32 { get }
var kAudioUnitSubType_DeferredRenderer: UInt32 { get }
var kAudioUnitSubType_Splitter: UInt32 { get }
var kAudioUnitSubType_MultiSplitter: UInt32 { get }
var kAudioUnitSubType_Merger: UInt32 { get }
var kAudioUnitSubType_NewTimePitch: UInt32 { get }
var kAudioUnitSubType_AUiPodTimeOther: UInt32 { get }
var kAudioUnitSubType_RoundTripAAC: UInt32 { get }
var kAudioUnitSubType_AUiPodTime: UInt32 { get }
var kAudioUnitSubType_PeakLimiter: UInt32 { get }
var kAudioUnitSubType_DynamicsProcessor: UInt32 { get }
var kAudioUnitSubType_LowPassFilter: UInt32 { get }
var kAudioUnitSubType_HighPassFilter: UInt32 { get }
var kAudioUnitSubType_BandPassFilter: UInt32 { get }
var kAudioUnitSubType_HighShelfFilter: UInt32 { get }
var kAudioUnitSubType_LowShelfFilter: UInt32 { get }
var kAudioUnitSubType_ParametricEQ: UInt32 { get }
var kAudioUnitSubType_Distortion: UInt32 { get }
var kAudioUnitSubType_Delay: UInt32 { get }
var kAudioUnitSubType_SampleDelay: UInt32 { get }
var kAudioUnitSubType_NBandEQ: UInt32 { get }
var kAudioUnitSubType_Reverb2: UInt32 { get }
var kAudioUnitSubType_AUiPodEQ: UInt32 { get }
var kAudioUnitSubType_MultiChannelMixer: UInt32 { get }
var kAudioUnitSubType_MatrixMixer: UInt32 { get }
var kAudioUnitSubType_SpatialMixer: UInt32 { get }
@available(*, deprecated, message="renamed to kAudioUnitSubType_SpatialMixer")
var kAudioUnitSubType_AU3DMixerEmbedded: UInt32 { get }
var kAudioUnitSubType_ScheduledSoundPlayer: UInt32 { get }
var kAudioUnitSubType_AudioFilePlayer: UInt32 { get }

/*!
	@enum			AudioUnitRenderActionFlags
	@discussion		These flags can be set in a callback from an audio unit during an audio unit 
					render operation from either the RenderNotify Proc or the render input 
					callback.

	@constant		kAudioUnitRenderAction_PreRender
					Called on a render notification Proc - which is called either before or after 
					the render operation of the audio unit. If this flag is set, the proc is being 
					called before the render operation is performed.
					
	@constant		kAudioUnitRenderAction_PostRender
					Called on a render notification Proc - which is called either before or after 
					the render operation of the audio unit. If this flag is set, the proc is being 
					called after the render operation is completed.

	@constant		kAudioUnitRenderAction_OutputIsSilence
					This flag can be set in a render input callback (or in the audio unit's render 
					operation itself) and is used to indicate that the render buffer contains only 
					silence. It can then be used by the caller as a hint to whether the buffer 
					needs to be processed or not.
					
	@constant		kAudioOfflineUnitRenderAction_Preflight
					This is used with offline audio units (of type 'auol'). It is used when an 
					offline unit is being preflighted, which is performed prior to the actual 
					offline rendering actions are performed. It is used for those cases where the 
					offline process needs it (for example, with an offline unit that normalises an 
					audio file, it needs to see all of the audio data first before it can perform 
					its normalisation)
					
	@constant		kAudioOfflineUnitRenderAction_Render
					Once an offline unit has been successfully preflighted, it is then put into 
					its render mode. So this flag is set to indicate to the audio unit that it is 
					now in that state and that it should perform its processing on the input data.
					
	@constant		kAudioOfflineUnitRenderAction_Complete
					This flag is set when an offline unit has completed either its preflight or 
					performed render operations
					
	@constant		kAudioUnitRenderAction_PostRenderError
					If this flag is set on the post-render call an error was returned by the 
					AUs render operation. In this case, the error can be retrieved through the 
					lastRenderError property and the audio data in ioData handed to the post-render 
					notification will be invalid.
	@constant		kAudioUnitRenderAction_DoNotCheckRenderArgs
					If this flag is set, then checks that are done on the arguments provided to render 
					are not performed. This can be useful to use to save computation time in
					situations where you are sure you are providing the correct arguments
					and structures to the various render calls
*/
struct AudioUnitRenderActionFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var UnitRenderAction_PreRender: AudioUnitRenderActionFlags { get }
  static var UnitRenderAction_PostRender: AudioUnitRenderActionFlags { get }
  static var UnitRenderAction_OutputIsSilence: AudioUnitRenderActionFlags { get }
  static var OfflineUnitRenderAction_Preflight: AudioUnitRenderActionFlags { get }
  static var OfflineUnitRenderAction_Render: AudioUnitRenderActionFlags { get }
  static var OfflineUnitRenderAction_Complete: AudioUnitRenderActionFlags { get }
  static var UnitRenderAction_PostRenderError: AudioUnitRenderActionFlags { get }
  static var UnitRenderAction_DoNotCheckRenderArgs: AudioUnitRenderActionFlags { get }
}
var kAudioUnitErr_InvalidProperty: OSStatus { get }
var kAudioUnitErr_InvalidParameter: OSStatus { get }
var kAudioUnitErr_InvalidElement: OSStatus { get }
var kAudioUnitErr_NoConnection: OSStatus { get }
var kAudioUnitErr_FailedInitialization: OSStatus { get }
var kAudioUnitErr_TooManyFramesToProcess: OSStatus { get }
var kAudioUnitErr_InvalidFile: OSStatus { get }
var kAudioUnitErr_UnknownFileType: OSStatus { get }
var kAudioUnitErr_FileNotSpecified: OSStatus { get }
var kAudioUnitErr_FormatNotSupported: OSStatus { get }
var kAudioUnitErr_Uninitialized: OSStatus { get }
var kAudioUnitErr_InvalidScope: OSStatus { get }
var kAudioUnitErr_PropertyNotWritable: OSStatus { get }
var kAudioUnitErr_CannotDoInCurrentContext: OSStatus { get }
var kAudioUnitErr_InvalidPropertyValue: OSStatus { get }
var kAudioUnitErr_PropertyNotInUse: OSStatus { get }
var kAudioUnitErr_Initialized: OSStatus { get }
var kAudioUnitErr_InvalidOfflineRender: OSStatus { get }
var kAudioUnitErr_Unauthorized: OSStatus { get }
var kAudioComponentErr_InstanceInvalidated: OSStatus { get }
var kAudioComponentErr_DuplicateDescription: OSStatus { get }
var kAudioComponentErr_UnsupportedType: OSStatus { get }
var kAudioComponentErr_TooManyInstances: OSStatus { get }
var kAudioComponentErr_NotPermitted: OSStatus { get }
var kAudioComponentErr_InitializationTimedOut: OSStatus { get }
var kAudioComponentErr_InvalidFormat: OSStatus { get }

/*!
	@typedef			AudioUnitPropertyID
	@discussion			Type used for audio unit properties. 
						Properties are used to describe the state of an audio unit (for instance, 
						the input or output audio format)
*/
typealias AudioUnitPropertyID = UInt32

/*!
	@typedef			AudioUnitScope
	@discussion			Type used for audio unit scopes. Apple reserves the 0 < 1024 range for 
						audio unit scope identifiers.  
						Scopes are used to delineate a major attribute of an audio unit 
						(for instance, global, input, output)
*/
typealias AudioUnitScope = UInt32

/*!
	@typedef			AudioUnitElement
	@discussion			Type used for audio unit elements.
						Scopes can have one or more member, and a member of a scope is 
						addressed / described by its element
						For instance, input bus 1 is input scope, element 1
*/
typealias AudioUnitElement = UInt32

/*!
	@typedef			AudioUnitParameterID
	@discussion			Type used for audio unit parameters. 
						Parameters are typically used to control and set render state 
						(for instance, filter cut-off frequency)
*/
typealias AudioUnitParameterID = UInt32

/*!
	@typedef			AudioUnitParameterValue
	@discussion			Type used for audio unit parameter values. 
						The value of a given parameter is specified using this type 
						(typically a Float32)
*/
typealias AudioUnitParameterValue = Float32

/*!
	@enum			AUParameterEventType
	@discussion		The type of a parameter event (see AudioUnitScheduleParameter)

	@constant		kParameterEvent_Immediate
					The parameter event describes an immediate change to the parameter value to 
					the new value
	@constant		kParameterEvent_Ramped
					The parameter event describes a change to the parameter value that should
					be applied over the specified period of time
*/
enum AUParameterEventType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case ParameterEvent_Immediate
  case ParameterEvent_Ramped
}

/*!
	@struct			AudioUnitParameterEvent
	@discussion		A parameter event describes a change to a parameter's value, where the type of 
					the event describes how that change is to be applied (see AUParameterEventType). 
					A parameter is uniquely defined through the triplet of scope, element and 
					parameterID.
					
					See AudioUnitScheduleParameters

	@field			scope	
					The scope for the parameter
	@field			element
					The element for the parameter
	@field			parameter
					The parameterID for the parameter
	
	@field			eventType
					The event type. This field further defines how the union described by 
					eventValues is to be interpreted.
	
	@field			eventValues
					If the parameter event type is _Immediate, then the immediate struct of this 
					union should be used.
					If the parameter event type is _Ramped, then the ramp struct of this union 
					should be used.
					
*/
struct AudioUnitParameterEvent {
  struct __Unnamed_union_eventValues {
    struct __Unnamed_struct_ramp {
      var startBufferOffset: Int32
      var durationInFrames: UInt32
      var startValue: AudioUnitParameterValue
      var endValue: AudioUnitParameterValue
      init()
      init(startBufferOffset: Int32, durationInFrames: UInt32, startValue: AudioUnitParameterValue, endValue: AudioUnitParameterValue)
    }
    struct __Unnamed_struct_immediate {
      var bufferOffset: UInt32
      var value: AudioUnitParameterValue
      init()
      init(bufferOffset: UInt32, value: AudioUnitParameterValue)
    }
    var ramp: AudioUnitParameterEvent.__Unnamed_union_eventValues.__Unnamed_struct_ramp
    var immediate: AudioUnitParameterEvent.__Unnamed_union_eventValues.__Unnamed_struct_immediate
    init(ramp: AudioUnitParameterEvent.__Unnamed_union_eventValues.__Unnamed_struct_ramp)
    init(immediate: AudioUnitParameterEvent.__Unnamed_union_eventValues.__Unnamed_struct_immediate)
    init()
  }
  var scope: AudioUnitScope
  var element: AudioUnitElement
  var parameter: AudioUnitParameterID
  var eventType: AUParameterEventType
  var eventValues: AudioUnitParameterEvent.__Unnamed_union_eventValues
  init()
  init(scope: AudioUnitScope, element: AudioUnitElement, parameter: AudioUnitParameterID, eventType: AUParameterEventType, eventValues: AudioUnitParameterEvent.__Unnamed_union_eventValues)
}

/*!
	@struct			AudioUnitParameter
	@discussion		An audio unit parameter is defined by the triplet of audio unit scope, element 
					and parameterID. This struct is used with the functions in AudioUnitUtilities.h 
					to deal with audio unit parameters, but is included in this header file for 
					completeness

	@field			mAudioUnit
					The audio unit instance to which the specified parameter applies.
	@field			mParameterID
					The parameterID for the parameter
	@field			mScope	
					The scope for the parameter
	@field			mElement
					The element for the parameter
*/
struct AudioUnitParameter {
  var mAudioUnit: AudioUnit
  var mParameterID: AudioUnitParameterID
  var mScope: AudioUnitScope
  var mElement: AudioUnitElement
}

/*!
	@struct			AudioUnitProperty
	@discussion		An audio unit property is defined by the triplet of audio unit scope, element
					and propertyID. This struct is used with the functions in AudioUnitUtilities.h 
					to deal with audio unit properties, but is included in this header file for 
					completeness

	@field			mAudioUnit
					The audio unit instance which the specified property applies too
	@field			mPropertyID
					The propertyID for the property
	@field			mScope	
					The scope for the property
	@field			mElement
					The element for the property
*/
struct AudioUnitProperty {
  var mAudioUnit: AudioUnit
  var mPropertyID: AudioUnitPropertyID
  var mScope: AudioUnitScope
  var mElement: AudioUnitElement
}

/*!
	@typedef		AURenderCallback
	@discussion		This is the prototype for a function callback Proc that is used both with the 
					AudioUnit render notification API and the render input callback. See 
					kAudioUnitProperty_SetRenderCallback property or AudioUnitAddRenderNotify.
					This callback is part of the process of a call to AudioUnitRender. As a 
					notification it is called either before or after the audio unit's render 
					operations. As a render input callback, it is called to provide input data for
					the particular input bus the callback is attached too.
	
	@param			inRefCon
					The client data that is provided either with the AURenderCallbackStruct or as 
					specified with the Add API call
	@param			ioActionFlags
					Flags used to describe more about the context of this call (pre or post in the 
					notify case for instance) 
	@param			inTimeStamp
					The times stamp associated with this call of audio unit render
	@param			inBusNumber
					The bus number associated with this call of audio unit render
	@param			inNumberFrames
					The number of sample frames that will be represented in the audio data in the 
					provided ioData parameter
	@param			ioData
					The AudioBufferList that will be used to contain the rendered or provided 
					audio data. These buffers will be aligned to 16 byte boundaries (which is 
					normally what malloc will return). Can be null in the notification that
					input is available.
*/
typealias AURenderCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<AudioUnitRenderActionFlags>, UnsafePointer<AudioTimeStamp>, UInt32, UInt32, UnsafeMutablePointer<AudioBufferList>) -> OSStatus

/*!
	@typedef		AudioUnitPropertyListenerProc
	@discussion		This is the prototype for a function callback Proc that is registered with an 
					audio unit to notify the caller of any changes to a value of an audio unit 
					property. See AudioUnitAddPropertyListener
	
	@param			inRefCon
					The client data that is provided with the add property listener registration
	@param			inUnit
					The audio unit upon which the specified property value has changed
	@param			inID
					The property whose value has changed
	@param			inScope
					The scope of the property whose value has changed
	@param			inElement
					The element ID on the scope of the property whose value has changed
*/
typealias AudioUnitPropertyListenerProc = @convention(c) (UnsafeMutablePointer<Void>, AudioUnit, AudioUnitPropertyID, AudioUnitScope, AudioUnitElement) -> Void

/*!
	@typedef		AUInputSamplesInOutputCallback
	@discussion		This is the prototype for a function callback Proc that is registered with an 
					audio unit to notify the caller of for the user of a varispeed or AUTimePitch 
					audio unit where it is not clear what input sample is represented in the 
					rendered output samples.
	
	@param			inRefCon
					The client data that is provided with the add property listener registration
	@param			inOutputTimeStamp
					The time stamp that corresponds to the first sample of audio data produced in 
					AudioUnitRender (its output data)
	@param			inInputSample
					The sample number of the input that is represented in the first sample of that 
					output time stamp
	@param			inNumberInputSamples
					The number of input samples that are represented in an output buffer
*/
typealias AUInputSamplesInOutputCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<AudioTimeStamp>, Float64, Float64) -> Void

/*!
	@constant kAudioComponentRegistrationsChangedNotification
	@abstract Notification generated when the set of available AudioComponents changes.
	@discussion
		Register for this notification name with [NSNotificationCenter defaultCenter] or
		CFNotificationCenterGetLocalCenter(), using an object of NULL.
*/
@available(tvOS 7.0, *)
let kAudioComponentRegistrationsChangedNotification: CFString

/*!
	@constant kAudioComponentInstanceInvalidationNotification
	@abstract Notification generated when an audio unit extension process exits abnormally.
	@discussion
		Register for this notification name with [NSNotificationCenter defaultCenter] or
		CFNotificationCenterGetLocalCenter(). The "object" refers to an AUAudioUnit instance to
		be observed, or can be nil to observe all instances. The notification's userInfo
		dictionary contains a key, "audioUnit", an NSValue whose pointerValue is the
		AudioUnit/AudioComponentInstance which is wrapping the AUAudioUnit communicating with the
		extension process. (This may be null if there is no such component instance.) For example:

	[[NSNotificationCenter defaultCenter] addObserverForName:(NSString *)kAudioComponentInstanceInvalidationNotification object:nil queue:nil usingBlock:^(NSNotification *note) {
		AUAudioUnit *auAudioUnit = (AUAudioUnit *)note.object;
		NSValue *val = note.userInfo[@"audioUnit"];
		AudioUnit audioUnit = (AudioUnit)val.pointerValue;
		NSLog(@"Received kAudioComponentInstanceInvalidationNotification: auAudioUnit %@, audioUnit %p", auAudioUnit, audioUnit);
	}];
*/
@available(tvOS 9.0, *)
let kAudioComponentInstanceInvalidationNotification: CFString

/*!
	@function		AudioUnitInitialize
	@abstract		initialize an audio unit
	@discussion		Upon success, the audio unit has been successfully initialized. This means 
					that the formats for input and output are valid and can be supported and it 
					has based its allocations on the max number of frames that it is able to 
					render at any given time. Once initialized, it is in a state where it can be 
					asked to render.
					
					In common practice, major state of an audio unit (such as its I/O formats,
					memory allocations) cannot be changed while an audio unit is initialized.
	
	@param			inUnit
					The audio unit to initialize
	@result			noErr, or an error representing the reasons why the audio unit was not able 
					to be initialized successfully
*/
@available(tvOS 2.0, *)
func AudioUnitInitialize(inUnit: AudioUnit) -> OSStatus

/*!
	@function		AudioUnitUninitialize
	@abstract		uninitialize an audio unit
	@discussion		Once an audio unit has been initialized, to change its state in response to 
					some kind of environmental change, the audio unit should be uninitialized. 
					This will have the effect of the audio unit de-allocating its resources.
					The caller can then reconfigure the audio unit to match the new environment 
					(for instance, the sample rate to process audio is different than it was) and 
					then re-initialize the audio unit when those changes have been applied.
	
	@param			inUnit
					The audio unit to uninitialize
	@result			noErr, or an error representing the reasons why the audio unit was not able 
					to be initialized successfully. Typically this call won't return an error 
					unless the audio unit in question is no longer valid.
*/
@available(tvOS 2.0, *)
func AudioUnitUninitialize(inUnit: AudioUnit) -> OSStatus

/*!
	@function		AudioUnitGetPropertyInfo
	@abstract		retrieves information about a specified property
	@discussion		The API can be used to retrieve both the size of the property, and whether it 
					is writable or not. In order to get a general answer on the capability of an 
					audio unit, this function should be called before the audio unit
					is initialized (as some properties are writable when the audio unit is 
					initialized, and others not)

	@param			inUnit
					the audio unit
	@param			inID
					the property identifier
	@param			inScope
					the scope of the property
	@param			inElement
					the element of the scope
	@param			outDataSize
					if not null, then will retrieve the maximum size for the property. if null, 
					then it is ignored
	@param			outWritable	
					if not null, then will retrieve whether the property can be written or not. 
					if null, then it is ignored
	
	@result			noErr, or various audio unit errors related to properties
*/
@available(tvOS 2.0, *)
func AudioUnitGetPropertyInfo(inUnit: AudioUnit, _ inID: AudioUnitPropertyID, _ inScope: AudioUnitScope, _ inElement: AudioUnitElement, _ outDataSize: UnsafeMutablePointer<UInt32>, _ outWritable: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus

/*!
	@function		AudioUnitGetProperty
	@abstract		retrieves the value of a specified property
	@discussion		The API can is used to retrieve the value of the property. Property values for 
					audio units are always passed by reference
					
	@param			inUnit
					the audio unit
	@param			inID
					the property identifier
	@param			inScope
					the scope of the property
	@param			inElement
					the element of the scope
	@param			outData
					used to retrieve the value of the property. It should point to memory at least 
					as large as the value described by ioDataSize
	@param			ioDataSize	
					on input contains the size of the data pointed to by outData, on output, the 
					size of the data that was returned.

	@result			noErr, or various audio unit errors related to properties
*/
@available(tvOS 2.0, *)
func AudioUnitGetProperty(inUnit: AudioUnit, _ inID: AudioUnitPropertyID, _ inScope: AudioUnitScope, _ inElement: AudioUnitElement, _ outData: UnsafeMutablePointer<Void>, _ ioDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	@function		AudioUnitSetProperty
	@abstract		sets the value of a specified property
	@discussion		The API can is used to set the value of the property. Property values for 
					audio units are always passed by reference
					
	@param			inUnit
					the audio unit
	@param			inID
					the property identifier
	@param			inScope
					the scope of the property
	@param			inElement
					the element of the scope
	@param			inData
					if not null, then is the new value for the property that will be set. If null, 
					then inDataSize should be zero, and the call is then used to remove a 
					previously set value for a property. This removal is only valid for
					some properties, as most properties will always have a default value if not 
					set.
	@param			inDataSize	
					the size of the data being provided in inData

	@result			noErr, or various audio unit errors related to properties
*/
@available(tvOS 2.0, *)
func AudioUnitSetProperty(inUnit: AudioUnit, _ inID: AudioUnitPropertyID, _ inScope: AudioUnitScope, _ inElement: AudioUnitElement, _ inData: UnsafePointer<Void>, _ inDataSize: UInt32) -> OSStatus

/*!
	@function		AudioUnitAddPropertyListener
	@abstract		registration call to receive notifications for when a property changes
	@discussion		When an audio unit property value changes, a notification callback can be 
					called by the audio unit to  inform interested parties that this event has 
					occurred. The notification is defined by the tuple of inProc and 
					inProcUserData as paired to the specified property ID, so the previously 
					defined AudioUnitRemovePropertyListener is deprecated because it didn't allow 
					for the provision of the inProcUserData to remove a given listener (so, 
					you should use AudioUnitRemovePropertyListenerWithUserData).
					
	@param			inUnit
					the audio unit
	@param			inID
					the property identifier
	@param			inProc
					the procedure to call when the property changes (on any scope or element)
	@param			inProcUserData
					the user data to provide with the callback

	@result			noErr, or various audio unit errors related to properties
*/
@available(tvOS 2.0, *)
func AudioUnitAddPropertyListener(inUnit: AudioUnit, _ inID: AudioUnitPropertyID, _ inProc: AudioUnitPropertyListenerProc, _ inProcUserData: UnsafeMutablePointer<Void>) -> OSStatus

/*!
	@function		AudioUnitRemovePropertyListenerWithUserData
	@abstract		remove a previously registered property listener
	@discussion		Removes a previously registered property listener as specified by the inProc 
					and inProcUser data as paired to the property identifier
					
	@param			inUnit
					the audio unit
	@param			inID
					the property identifier
	@param			inProc
					the procedure previously registered
	@param			inProcUserData
					the user data paired with the provided inProc

	@result			noErr, or various audio unit errors related to properties
*/
@available(tvOS 2.0, *)
func AudioUnitRemovePropertyListenerWithUserData(inUnit: AudioUnit, _ inID: AudioUnitPropertyID, _ inProc: AudioUnitPropertyListenerProc, _ inProcUserData: UnsafeMutablePointer<Void>) -> OSStatus

/*!
	@function		AudioUnitAddRenderNotify
	@abstract		a notification callback to call when an audio unit is asked to render
	@discussion		allows an application to register a callback with an audio unit for whenever 
					the audio unit is asked to render. The callback is called both before the 
					audio unit performs its render operations (the render flag's pre-render bit 
					is set) and after the audio unit has completed its render operations (the 
					render flag's post-render bit is set). On post-render, the audio buffer list 
					(ioData) will contain valid audio data that was rendered by the audio unit.
					
					The inProc and inProcUserData are treated as a tuple entity, so when wanting 
					to remove one, both the inProc and its inProcUserData must be specified
					
	@param			inUnit
					the audio unit
	@param			inProc
					an AURenderCallback proc
	@param			inProcUserData
					the user data that will be provided with the proc when it is called

	@result			noErr, or an audio unit error code
*/
@available(tvOS 2.0, *)
func AudioUnitAddRenderNotify(inUnit: AudioUnit, _ inProc: AURenderCallback, _ inProcUserData: UnsafeMutablePointer<Void>) -> OSStatus

/*!
	@function		AudioUnitRemoveRenderNotify
	@abstract		remove a previously registered render notification proc
	
	@param			inUnit
					the audio unit
	@param			inProc
					an AURenderCallback proc
	@param			inProcUserData
					the user data that was provided with the proc when it was previously 
					registered

	@result			noErr, or an audio unit error code
*/
@available(tvOS 2.0, *)
func AudioUnitRemoveRenderNotify(inUnit: AudioUnit, _ inProc: AURenderCallback, _ inProcUserData: UnsafeMutablePointer<Void>) -> OSStatus

/*!
	@function		AudioUnitGetParameter
	@abstract		Get the value of a parameter
	@discussion		Get the value of a parameter as specified by its ID, scope and element. 
	
	@param			inUnit
					the audio unit
	@param			inID
					the parameter ID
	@param			inScope
					the scope for the parameter
	@param			inElement
					the element on the scope for the parameter
	@param			outValue
					Must be non-null, and upon success will contain the current value for the 
					specified parameter
	
	@result			noErr, or an audio unit error code (such as InvalidParameter)
*/
@available(tvOS 2.0, *)
func AudioUnitGetParameter(inUnit: AudioUnit, _ inID: AudioUnitParameterID, _ inScope: AudioUnitScope, _ inElement: AudioUnitElement, _ outValue: UnsafeMutablePointer<AudioUnitParameterValue>) -> OSStatus

/*!
	@function		AudioUnitSetParameter
	@abstract		Set the value of a parameter
	@discussion		Set the value of a parameter as specified by its ID, scope and element. 
					Parameter IDs are consistent across all of the elements in a scope - so for a 
					mixer, the "input volume" parameter can be applied on any input, and the 
					particular input is specified by the elementID.
	
	@param			inUnit
					the audio unit
	@param			inID
					the parameter ID
	@param			inScope
					the scope for the parameter
	@param			inElement
					the element on the scope for the parameter
	@param			inValue
					the new value for the parameter.
	@param			inBufferOffsetInFrames
					generally should be set to zero - see AudioUnitScheduleParameters
	
	@result			noErr, or an audio unit error code (such as InvalidParameter)
*/
@available(tvOS 2.0, *)
func AudioUnitSetParameter(inUnit: AudioUnit, _ inID: AudioUnitParameterID, _ inScope: AudioUnitScope, _ inElement: AudioUnitElement, _ inValue: AudioUnitParameterValue, _ inBufferOffsetInFrames: UInt32) -> OSStatus

/*!
	@function		AudioUnitScheduleParameters
	@abstract		Schedule changes to the value of a parameter
	@discussion		This API is used to schedule intra-buffer changes to the value of a parameter 
					(immediate) or to ramp a parameter from a start value to an end value for a 
					specified number of samples (ramp)
					
					The API allows for the scheduling of multiple parameter events with the one 
					call. All of the parameter events must apply to the current (and only apply to 
					the current) audio unit render call, so the events are scheduled as a part of 
					the pre-render notification callback.
					
					When scheduling an immediate parameter event, the new value at the specified 
					sample buffer offset is provided
					
					When scheduling a ramped parameter, the ramp is scheduled each audio unit 
					render for the duration of the ramp. Each schedule of the the new audio unit 
					render specifies the progress of the ramp.
					
					Parameters that can have events scheduled to them will indicate this through 
					their parameter info struct
					
	@param			inUnit
					the audio unit
	@param			inParameterEvent
					a pointer to an array of parameter event structs
	@param			inNumParamEvents
					the number of parameter event structs pointed to by inParameterEvent
	
	@result			noErr, or an audio unit error code (such as InvalidParameter)
*/
@available(tvOS 2.0, *)
func AudioUnitScheduleParameters(inUnit: AudioUnit, _ inParameterEvent: UnsafePointer<AudioUnitParameterEvent>, _ inNumParamEvents: UInt32) -> OSStatus

/*!
	@function		AudioUnitRender
	@abstract		the render operation where ioData will contain the results of the audio unit's
					render operations
	@discussion		an audio unit will render the amount of audio data described by 
					inNumberOfFrames and the results of that render will be contained within 
					ioData. The caller should provide audio time stamps where at least the sample 
					time is valid and it is incrementing sequentially from its previous call 
					(so, the next time stamp will be the current time stamp + inNumberFrames) 
					If the sample time is not incrementing sequentially, the audio unit will infer
					that there is some discontinuity with the timeline it is rendering for
	
					The caller must provide a valid ioData AudioBufferList that matches the 
					expected topology for the current audio format for the given bus. The buffer 
					list can be of two variants:
					(1) If the mData pointers are non-null then the audio unit will render its 
					output into those buffers. These buffers should be aligned to 16 byte 
					boundaries (which is normally what malloc will return).
					(2) If the mData pointers are null, then the audio unit can provide pointers 
					to its own buffers. In this case the audio unit is required to keep those
					buffers valid for the duration of the calling thread's I/O cycle
					 
	@param			inUnit
					the audio unit
	@param			ioActionFlags
					any appropriate action flags for the render operation
	@param			inTimeStamp
					the time stamp that applies to this particular render operation. when 
					rendering for multiple output buses the time stamp will generally be the same 
					for each output bus, so the audio unit is able to determine without doubt that 
					this the same render operation
	@param			inOutputBusNumber
					the output bus to render for
	@param			inNumberFrames
					the number of sample frames to render
	@param			ioData
					the audio buffer list that the audio unit is to render into.
	
	@result			noErr, or an audio unit render error
*/
@available(tvOS 2.0, *)
func AudioUnitRender(inUnit: AudioUnit, _ ioActionFlags: UnsafeMutablePointer<AudioUnitRenderActionFlags>, _ inTimeStamp: UnsafePointer<AudioTimeStamp>, _ inOutputBusNumber: UInt32, _ inNumberFrames: UInt32, _ ioData: UnsafeMutablePointer<AudioBufferList>) -> OSStatus
@available(tvOS 6.0, *)
func AudioUnitProcess(inUnit: AudioUnit, _ ioActionFlags: UnsafeMutablePointer<AudioUnitRenderActionFlags>, _ inTimeStamp: UnsafePointer<AudioTimeStamp>, _ inNumberFrames: UInt32, _ ioData: UnsafeMutablePointer<AudioBufferList>) -> OSStatus
@available(tvOS 6.0, *)
func AudioUnitProcessMultiple(inUnit: AudioUnit, _ ioActionFlags: UnsafeMutablePointer<AudioUnitRenderActionFlags>, _ inTimeStamp: UnsafePointer<AudioTimeStamp>, _ inNumberFrames: UInt32, _ inNumberInputBufferLists: UInt32, _ inInputBufferLists: UnsafeMutablePointer<UnsafePointer<AudioBufferList>>, _ inNumberOutputBufferLists: UInt32, _ ioOutputBufferLists: UnsafeMutablePointer<UnsafeMutablePointer<AudioBufferList>>) -> OSStatus

/*!
	@function		AudioUnitReset
	@abstract		reset an audio unit's render state
	@discussion		This call will clear any render state of an audio unit. For instance, with a 
					delay or reverb type of audio unit reset will clear any of the delay lines 
					maintained within the audio unit. Typically, this call is made when an
					audio unit was previously rendering, and was taken out of the render chain 
					(say, the track it is in was muted) and is being added back in (unmuted). 
					The host should reset the audio unit before adding it back so that it doesn't 
					produce audio from its delay lines that is no longer valid.
					
					The call should only clear memory, it should NOT allocate or free memory 
					resources (this is done in the Initialize calls).
	
	@param			inUnit
					the audio unit
	@param			inScope
					the scope - typically this is set to GlobalScope
	@param			inElement
					the element - typically this is set to 0
	
	@result			noErr, or an audio unit error
*/
@available(tvOS 2.0, *)
func AudioUnitReset(inUnit: AudioUnit, _ inScope: AudioUnitScope, _ inElement: AudioUnitElement) -> OSStatus

/*!
    @function       AudioOutputUnitPublish

    @abstract       Register an audio output unit as available to be used as an audio unit by
                    other applications.

    @param          inOutputUnit
                        The audio output unit to be published.
    @param          inDesc
                        The AudioComponentDescription under which to register the application.
    @param          inName  
                        The application or component name.
    @result         An OSStatus result code.
    
    @discussion
        This allows a publishing application to register its audio (input/)output unit as being able
        to be redirected and repurposed as an audio unit effect, generator, music device or music
        effect by another host application.
*/
@available(tvOS 7.0, *)
func AudioOutputUnitPublish(inDesc: UnsafePointer<AudioComponentDescription>, _ inName: CFString, _ inVersion: UInt32, _ inOutputUnit: AudioUnit) -> OSStatus

/*!
    @function       AudioComponentGetLastActiveTime
    @abstract       Fetches the time at which the application publishing the component was last active.
	@discussion
		Inter-app audio hosts can use this to sort the list of available nodes by how recently
		the user interacted with them.
	
    @param          inComponent
                        The AudioComponent being queried.
    @result         The CFAbsoluteTime at which the node was last active (0 if never).
*/
@available(tvOS 7.0, *)
func AudioComponentGetLastActiveTime(comp: AudioComponent) -> CFAbsoluteTime
var kAudioUnitRange: Int { get }
var kAudioUnitInitializeSelect: Int { get }
var kAudioUnitUninitializeSelect: Int { get }
var kAudioUnitGetPropertyInfoSelect: Int { get }
var kAudioUnitGetPropertySelect: Int { get }
var kAudioUnitSetPropertySelect: Int { get }
var kAudioUnitAddPropertyListenerSelect: Int { get }
var kAudioUnitRemovePropertyListenerSelect: Int { get }
var kAudioUnitRemovePropertyListenerWithUserDataSelect: Int { get }
var kAudioUnitAddRenderNotifySelect: Int { get }
var kAudioUnitRemoveRenderNotifySelect: Int { get }
var kAudioUnitGetParameterSelect: Int { get }
var kAudioUnitSetParameterSelect: Int { get }
var kAudioUnitScheduleParametersSelect: Int { get }
var kAudioUnitRenderSelect: Int { get }
var kAudioUnitResetSelect: Int { get }
var kAudioUnitComplexRenderSelect: Int { get }
var kAudioUnitProcessSelect: Int { get }
var kAudioUnitProcessMultipleSelect: Int { get }
typealias AudioUnitInitializeProc = @convention(c) (UnsafeMutablePointer<Void>) -> OSStatus
typealias AudioUnitUninitializeProc = @convention(c) (UnsafeMutablePointer<Void>) -> OSStatus
typealias AudioUnitGetPropertyInfoProc = @convention(c) (UnsafeMutablePointer<Void>, AudioUnitPropertyID, AudioUnitScope, AudioUnitElement, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
typealias AudioUnitGetPropertyProc = @convention(c) (UnsafeMutablePointer<Void>, AudioUnitPropertyID, AudioUnitScope, AudioUnitElement, UnsafeMutablePointer<Void>, UnsafeMutablePointer<UInt32>) -> OSStatus
typealias AudioUnitSetPropertyProc = @convention(c) (UnsafeMutablePointer<Void>, AudioUnitPropertyID, AudioUnitScope, AudioUnitElement, UnsafePointer<Void>, UInt32) -> OSStatus
typealias AudioUnitAddPropertyListenerProc = @convention(c) (UnsafeMutablePointer<Void>, AudioUnitPropertyID, AudioUnitPropertyListenerProc, UnsafeMutablePointer<Void>) -> OSStatus
typealias AudioUnitRemovePropertyListenerProc = @convention(c) (UnsafeMutablePointer<Void>, AudioUnitPropertyID, AudioUnitPropertyListenerProc) -> OSStatus
typealias AudioUnitRemovePropertyListenerWithUserDataProc = @convention(c) (UnsafeMutablePointer<Void>, AudioUnitPropertyID, AudioUnitPropertyListenerProc, UnsafeMutablePointer<Void>) -> OSStatus
typealias AudioUnitAddRenderNotifyProc = @convention(c) (UnsafeMutablePointer<Void>, AURenderCallback, UnsafeMutablePointer<Void>) -> OSStatus
typealias AudioUnitRemoveRenderNotifyProc = @convention(c) (UnsafeMutablePointer<Void>, AURenderCallback, UnsafeMutablePointer<Void>) -> OSStatus
typealias AudioUnitScheduleParametersProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<AudioUnitParameterEvent>, UInt32) -> OSStatus
typealias AudioUnitResetProc = @convention(c) (UnsafeMutablePointer<Void>, AudioUnitScope, AudioUnitElement) -> OSStatus
typealias AudioUnitComplexRenderProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<AudioUnitRenderActionFlags>, UnsafePointer<AudioTimeStamp>, UInt32, UInt32, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<AudioStreamPacketDescription>, UnsafeMutablePointer<AudioBufferList>, UnsafeMutablePointer<Void>, UnsafeMutablePointer<UInt32>) -> OSStatus
typealias AudioUnitProcessProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<AudioUnitRenderActionFlags>, UnsafePointer<AudioTimeStamp>, UInt32, UnsafeMutablePointer<AudioBufferList>) -> OSStatus
typealias AudioUnitProcessMultipleProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<AudioUnitRenderActionFlags>, UnsafePointer<AudioTimeStamp>, UInt32, UInt32, UnsafeMutablePointer<UnsafePointer<AudioBufferList>>, UInt32, UnsafeMutablePointer<UnsafeMutablePointer<AudioBufferList>>) -> OSStatus

/*!
	@typedef		AudioUnitGetParameterProc
	@discussion		This proc can be exported through the FastDispatch property or is used as the prototype for
					an audio component dispatch for this selector. 
					
					The arguments are the same as are provided to the corresponding API call
	
	@param			inComponentStorage
					For a component manager component, this is the component instance storage 
					pointer
	@param			inID
	@param			inScope
	@param			inElement
	@param			outValue
*/
typealias AudioUnitGetParameterProc = @convention(c) (UnsafeMutablePointer<Void>, AudioUnitParameterID, AudioUnitScope, AudioUnitElement, UnsafeMutablePointer<AudioUnitParameterValue>) -> OSStatus

/*!
	@typedef		AudioUnitSetParameterProc
	@discussion		This proc can be exported through the FastDispatch property or is used as the prototype for
					an audio component dispatch for this selector. 
					
					The arguments are the same as are provided to the corresponding API call
	
	@param			inComponentStorage
					For a component manager component, this is the component instance storage 
					pointer
	@param			inID
	@param			inScope
	@param			inElement
	@param			inValue
	@param			inBufferOffsetInFrames
*/
typealias AudioUnitSetParameterProc = @convention(c) (UnsafeMutablePointer<Void>, AudioUnitParameterID, AudioUnitScope, AudioUnitElement, AudioUnitParameterValue, UInt32) -> OSStatus

/*!
	@typedef		AudioUnitRenderProc
	@discussion		This proc can be exported through the FastDispatch property or is used as the prototype for
					an audio component dispatch for this selector. 
					
					The arguments are the same as are provided to the corresponding API call
	
	@param			inComponentStorage
					For a component manager component, this is the component instance storage 
					pointer
	@param			ioActionFlags
	@param			inTimeStamp
	@param			inOutputBusNumber
	@param			inNumberFrames
	@param			ioData
*/
typealias AudioUnitRenderProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<AudioUnitRenderActionFlags>, UnsafePointer<AudioTimeStamp>, UInt32, UInt32, UnsafeMutablePointer<AudioBufferList>) -> OSStatus
var kAudioUnitErr_IllegalInstrument: OSStatus { get }
var kAudioUnitErr_InstrumentTypeNotFound: OSStatus { get }

/*!	@typedef	AUValue
	@brief		A value of an audio unit parameter.
*/
typealias AUValue = Float

/*!	@typedef	AUParameterAddress
	@brief		Numeric identifier for audio unit parameter.
	@discussion
		Note that parameter addresses are not necessarily persistent, unless the individual audio
		unit documents a promise to maintain its addressing scheme. Hosts should bind to parameters'
		key paths.
*/
typealias AUParameterAddress = UInt64

/*!	@typedef	AURecordedParameterEvent
	@brief		An event recording the changing of a parameter at a particular host time.
*/
struct AURecordedParameterEvent {

  ///< The host time at which the event occurred.
  var hostTime: UInt64

  ///< The address of the parameter whose value changed.
  var address: AUParameterAddress

  ///< The value of the parameter at that time.
  var value: AUValue
  init()
  init(hostTime: UInt64, address: AUParameterAddress, value: AUValue)
}

/*!	@typedef	AUParameterObserver
	@brief		A block called to signal that the value of a parameter has changed.
	@discussion	
		See the discussion of -[AUParameterNode tokenByAddingParameterObserver:].
	@param address
		The address of the parameter whose value changed.
	@param value
		The current value of the parameter.
*/
typealias AUParameterObserver = (AUParameterAddress, AUValue) -> Void

/*!	@typedef	AUParameterRecordingObserver
	@brief		A block called to record parameter changes as automation events.
	@discussion
		See the discussion of -[AUParameterNode tokenByAddingParameterRecordingObserver:].
	@param numberEvents
		The number of events being delivered.
	@param events
		The events being delivered.
*/
typealias AUParameterRecordingObserver = (Int, UnsafePointer<AURecordedParameterEvent>) -> Void

/*!	@typedef	AUParameterObserverToken
	@brief		A token representing an installed AUParameterObserver or AUParameterRecordingObserver.
*/
typealias AUParameterObserverToken = UnsafeMutablePointer<Void>

/*!	@class		AUParameterNode
	@brief		A node in an audio unit's tree of parameters.
	@discussion
		Nodes are instances of either AUParameterGroup or AUParameter.
*/
@available(tvOS 9.0, *)
class AUParameterNode : NSObject {

  /*!	@property	identifier
  	@brief		A non-localized, permanent name for a parameter or group.
  	@discussion
  		The identifier must be unique for all child nodes under any given parent. From release to
  		release, an audio unit must not change its parameters' identifiers; this will invalidate any
  		hosts' documents that refer to the parameters.
  */
  var identifier: String { get }

  /*!	@property	keyPath
  	@brief		Generated by concatenating the identifiers of a node's parents with its own.
  	@discussion
  		Unless an audio unit specifically documents that its parameter addresses are stable and
  		persistent, hosts, when recording parameter values, should bind to the keyPath.
  
  		The individual node identifiers in a key path are separated by periods. (".")
  		
  		Passing a node's keyPath to -[tree valueForKeyPath:] should return the same node.
  */
  var keyPath: String { get }

  /*!	@property	displayName
  	@brief		A localized name to display for the parameter.
  */
  var displayName: String { get }

  /*!	@method		displayNameWithLength:
  	@brief		A version of displayName possibly abbreviated to the given desired length, in characters.
  	@discussion
  		The default implementation simply returns displayName.
  */
  func displayNameWithLength(maximumLength: Int) -> String

  /*!	@method	tokenByAddingParameterObserver:
  	@brief	Add an observer for a parameter or all parameters in a group/tree.
  	@discussion
  		An audio unit view can use an AUParameterObserver to be notified of changes
  		to a single parameter, or to all parameters in a group/tree.
  		
  		These callbacks are throttled so as to limit the rate of redundant notifications
  		in the case of frequent changes to a single parameter.
  		
  		This block is called in an arbitrary thread context. It is responsible for thread-safety.
  		It must not make any calls to add or remove other observers, including itself;
  		this will deadlock.
  		
  		An audio unit's implementation should interact with the parameter object via
  		implementorValueObserver and implementorValueProvider.
  	@param observer
  		A block to call after the value of a parameter has changed.
  	@return
  		A token which can be passed to removeParameterObserver: or to -[AUParameter setValue:originator:]
  */
  func tokenByAddingParameterObserver(observer: AUParameterObserver) -> AUParameterObserverToken

  /*!	@method tokenByAddingParameterRecordingObserver:
  	@brief	Add a recording observer for a parameter or all parameters in a group/tree.
  	@discussion
  		An audio unit host can use an AUParameterRecordingObserver to capture a series of changes
  		to a parameter value, including the timing of the events, as generated by a UI gesture in a
  		view, for example.
  		
  		Unlike AUParameterObserver, these callbacks are not throttled.
  		
  		This block is called in an arbitrary thread context. It is responsible for thread-safety.
  		It must not make any calls to add or remove other observers, including itself;
  		this will deadlock.
  		
  		An audio unit's engine should interact with the parameter object via
  		implementorValueObserver and implementorValueProvider.
  	@param observer
  		A block to call to record the changing of a parameter value.
  	@return
  		A token which can be passed to removeParameterObserver: or to -[AUParameter
  		setValue:originator:]
  */
  func tokenByAddingParameterRecordingObserver(observer: AUParameterRecordingObserver) -> AUParameterObserverToken

  /*!	@method removeParameterObserver:
  	@brief	Remove an observer created with tokenByAddingParameterObserver or tokenByAddingParameterRecordingObserver:
  	@discussion
  		This call will remove the callback corresponding to the supplied token. Note that this
  		will block until any callbacks currently in flight have completed.
  */
  func removeParameterObserver(token: AUParameterObserverToken)
  init()
}

/*!	@class	AUParameterGroup
	@brief	A group of related parameters.
	@discussion
		A parameter group is KVC-compliant for its children; e.g. valueForKey:@"volume" will
		return a child parameter whose identifier is "volume".
*/
@available(tvOS 9.0, *)
class AUParameterGroup : AUParameterNode, NSSecureCoding {

  /// The group's child nodes (AUParameterGroupNode).
  var children: [AUParameterNode] { get }

  /// Returns a flat array of all parameters in the group, including those in child groups.
  var allParameters: [AUParameter] { get }
  init()
  @available(tvOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 9.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*!	@class	AUParameterTree
	@brief	The top level group node, representing all of an audio unit's parameters.
	@discussion
		An audio unit's parameters are organized into a tree containing groups and parameters.
		Groups may be nested.
		
		The tree is KVO-compliant. For example, if the tree contains a group named "LFO" ,
		containing a parameter named rate, then "LFO.rate" refers to that parameter object, and
		"LFO.rate.value" refers to that parameter's value.

		An audio unit may choose to dynamically rearrange the tree. When doing so, it must
		issue a KVO notification on the audio unit's parameterTree property.
*/
@available(tvOS 9.0, *)
class AUParameterTree : AUParameterGroup, NSSecureCoding {

  /*!	@method	parameterWithAddress:
  	@brief	Search a tree for a parameter with a specific address.
  	@return
  		The parameter corresponding to the supplied address, or nil if no such parameter exists.
  */
  func parameterWithAddress(address: AUParameterAddress) -> AUParameter?

  /*!	@method	parameterWithID:scope:element:
  	@brief	Search a tree for a specific v2 audio unit parameter.
  	@discussion
  		V2 audio units publish parameters identified by a parameter ID, scope, and element.
  		A host that knows that it is dealing with a v2 unit can locate parameters using this method,
  		for example, for the Apple-supplied system audio units.
  	@return
  		The parameter corresponding to the supplied ID/scope/element, or nil if no such parameter
  		exists, or if the audio unit is not a v2 unit.
  */
  func parameterWithID(paramID: AudioUnitParameterID, scope: AudioUnitScope, element: AudioUnitElement) -> AUParameter?
  init()
  init?(coder aDecoder: NSCoder)
}

/*!	@class	AUParameter
	@brief	A node representing a single parameter.
*/
@available(tvOS 9.0, *)
class AUParameter : AUParameterNode, NSSecureCoding {

  /// The parameter's minimum value.
  var minValue: AUValue { get }

  /// The parameter's maximum value.
  var maxValue: AUValue { get }

  /// The parameter's unit of measurement.
  var unit: AudioUnitParameterUnit { get }

  /// A localized name for the parameter's unit. Supplied by the AU if kAudioUnitParameterUnit_CustomUnit; else by the framework.
  var unitName: String? { get }

  /// Various details of the parameter.
  var flags: AudioUnitParameterOptions { get }

  /// The parameter's address.
  var address: AUParameterAddress { get }

  /// For parameters with kAudioUnitParameterUnit_Indexed, localized strings corresponding
  ///	to the values.
  var valueStrings: [String]? { get }

  /*!	@brief		Parameters whose values may change as a side effect of this parameter's value
  				changing.
  	@discussion
  		Each array value is an NSNumber representing AUParameterAddress.
  */
  var dependentParameters: [NSNumber]? { get }

  /// The parameter's current value.
  var value: AUValue

  /// Set the parameter's value, avoiding redundant notifications to the originator.
  func setValue(value: AUValue, originator: AUParameterObserverToken)

  /// Set the parameter's value, preserving the host time of the gesture that initiated the change.
  func setValue(value: AUValue, originator: AUParameterObserverToken, atHostTime hostTime: UInt64)

  /// Get a textual representation of a value for the parameter. Use value==nil to use the current value.
  func stringFromValue(value: UnsafePointer<AUValue>) -> String

  /// Convert a textual representation of a value to a numeric one.
  func valueFromString(string: String) -> AUValue
  init()
  @available(tvOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 9.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*!
	@constant	kAudioComponentFlag_Unsearchable

	When this bit in AudioComponentDescription's componentFlags is set, AudioComponentFindNext
	will only return this component when performing a specific, non-wildcard search for the
	component, i.e. with non-zero values of componentType, componentSubType, and
	componentManufacturer. This can be useful when privately registering a component.
	
	@constant	kAudioComponentFlag_SandboxSafe
	
	An AudioComponent sets this bit in its componentFlags to indicate to the system that the
	AudioComponent is safe to open in a sandboxed process.
	
	@constant	kAudioComponentFlag_IsV3AudioUnit
	
	The system sets this flag automatically when registering components which implement a version 3
	Audio Unit.
	
	@constant	kAudioComponentFlag_RequiresAsyncInstantiation
	
	The system sets this flag automatically when registering components which require asynchronous
	instantiation via AudioComponentInstantiate (v3 audio units with views).
	
	@constant	kAudioComponentFlag_CanLoadInProcess
	
	The system sets this flag automatically when registering components which can be loaded into
	the current process. This is always true for V2 audio units; it depends on the packaging
	in the case of a V3 audio unit.
*/
struct AudioComponentFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  @available(tvOS 5.0, *)
  static var Unsearchable: AudioComponentFlags { get }
  @available(tvOS 6.0, *)
  static var SandboxSafe: AudioComponentFlags { get }
  @available(tvOS 9.0, *)
  static var IsV3AudioUnit: AudioComponentFlags { get }
  @available(tvOS 9.0, *)
  static var RequiresAsyncInstantiation: AudioComponentFlags { get }
  @available(tvOS 9.0, *)
  static var CanLoadInProcess: AudioComponentFlags { get }
}

/*! @enum       AudioComponentInstantiationOptions
    @brief      Options controlling component instantiation.
    @discussion
        Most component instances are loaded into the calling process.

        A version 3 audio unit, however, can be loaded into a separate extension service process,
        and this is the default behavior for these components. To be able to load one in-process
        requires that the developer package the audio unit in a bundle separate from the application
        extension, since an extension's main binary cannot be dynamically loaded into another
        process.
        
        An OS X host may request in-process loading of such audio units using
        kAudioComponentInstantiation_LoadInProcess.

        kAudioComponentFlag_IsV3AudioUnit specifies whether an audio unit is implemented using API
        version 3.

        These options are just requests to the implementation. It may fail and fall back to the
        default.
    @constant kAudioComponentInstantiation_LoadOutOfProcess
        Attempt to load the component into a separate extension process.
    @constant kAudioComponentInstantiation_LoadInProcess
        Attempt to load the component into the current process. Only available on OS X.
*/
struct AudioComponentInstantiationOptions : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  @available(tvOS 9.0, *)
  static var LoadOutOfProcess: AudioComponentInstantiationOptions { get }
}
struct AudioComponentDescription {
  var componentType: OSType
  var componentSubType: OSType
  var componentManufacturer: OSType
  var componentFlags: UInt32
  var componentFlagsMask: UInt32
  init()
  init(componentType: OSType, componentSubType: OSType, componentManufacturer: OSType, componentFlags: UInt32, componentFlagsMask: UInt32)
}

/*!
    @typedef        AudioComponent
    @abstract       The type used to represent a class of particular audio components
    @discussion     An audio component is usually found through a search and is then uniquely
                    identified by the triple of an audio component's type, subtype and
                    manufacturer.
                    
                    It can have properties associated with it (such as a name, a version).

                    It is then used as a factory (like a class in an object-oriented programming
                    language) from which to create instances. The instances are used to do the
                    actual work.

                    For example: the AudioComponentDescription 'aufx'/'dely'/'appl' describes the
                    delay audio unit effect from Apple, Inc. You can find this component by
                    searching explicitly for the audio component that matches this pattern (this is
                    an unique identifier - there is only one match to this triple ID). Then once
                    found, instances of the Apple delay effect audio unit can be created from its
                    audio component and used to apply that effect to an audio signal. A single
                    component can create any number of component instances.
*/
typealias AudioComponent = COpaquePointer
typealias AudioComponentInstance = COpaquePointer

/*!
    @typedef        AudioComponentMethod
    @abstract       The broad prototype for an audio plugin method
    @discussion     Every audio plugin will implement a collection of methods that match a particular
					selector. For example, the AudioUnitInitialize API call is implemented by a
					plugin implementing the kAudioUnitInitializeSelect selector. Any function implementing
					an audio plugin selector conforms to the basic pattern where the first argument
					is a pointer to the plugin instance structure, has 0 or more specific arguments,  
					and returns an OSStatus.
*/
typealias AudioComponentMethod = COpaquePointer

/*!
    @struct         AudioComponentPlugInInterface
    @discussion     A structure used to represent an audio plugin's routines 
    @field          Open
                        the function used to open (or create) an audio plugin instance
    @field          Close
                        the function used to close (or dispose) an audio plugin instance
    @field          Lookup
                        this is used to return a function pointer for a given selector, 
						or NULL if that selector is not implemented
    @field          reserved
                        must be NULL
*/
struct AudioComponentPlugInInterface {
  var Open: @convention(c) (UnsafeMutablePointer<Void>, AudioComponentInstance) -> OSStatus
  var Close: @convention(c) (UnsafeMutablePointer<Void>) -> OSStatus
  var Lookup: @convention(c) (Int16) -> AudioComponentMethod
  var reserved: UnsafeMutablePointer<Void>
}

/*!
    @typedef        AudioComponentFactoryFunction
    @abstract       A function that creates AudioComponentInstances.
    @discussion
                    Authors of AudioComponents may register them from bundles as described
                    above in the discussion of this header file, or dynamically within a single
                    process, using AudioComponentRegister.
    
    @param          inDesc
                        The AudioComponentDescription specifying the component to be instantiated.
    @result         A pointer to a AudioComponentPlugInInterface structure.
*/
typealias AudioComponentFactoryFunction = @convention(c) (UnsafePointer<AudioComponentDescription>) -> UnsafeMutablePointer<AudioComponentPlugInInterface>

/*!
    @function       AudioComponentFindNext
    @abstract       Finds an audio component.
    @discussion     This function is used to find an audio component that is the closest match
                    to the provided values. Note that the list of available components may change
					dynamically in situations involving inter-app audio on iOS, or version 3
					audio unit extensions. See kAudioComponentRegistrationsChangedNotification.

    @param          inComponent
                        If NULL, then the search starts from the beginning until an audio
                        component is found that matches the description provided by inDesc.
                        If non-NULL, then the search starts (continues) from the previously
                        found audio component specified by inComponent, and will return the next
                        found audio component.
    @param          inDesc
                        The type, subtype and manufacturer fields are used to specify the audio
                        component to search for. A value of 0 (zero) for any of these fields is
                        a wildcard, so the first match found is returned.
    @result         An audio component that matches the search parameters, or NULL if none found.
*/
@available(tvOS 2.0, *)
func AudioComponentFindNext(inComponent: AudioComponent, _ inDesc: UnsafePointer<AudioComponentDescription>) -> AudioComponent

/*!
    @function       AudioComponentCount
    @abstract       Counts audio components.
    @discussion     Returns the number of AudioComponents that match the specified
                    AudioComponentDescription.
    @param          inDesc
                        The type, subtype and manufacturer fields are used to specify the audio
                        components to count A value of 0 (zero) for any of these fields is a
                        wildcard, so will match any value for this field
    @result         a UInt32. 0 (zero) means no audio components were found that matched the
                    search parameters.
*/
@available(tvOS 2.0, *)
func AudioComponentCount(inDesc: UnsafePointer<AudioComponentDescription>) -> UInt32

/*!
    @function       AudioComponentCopyName
    @abstract       Retrieves the name of an audio component.
    @discussion     the name of an audio component
    @param          inComponent
                        the audio component (must not be NULL)
    @param          outName
                        a CFString that is the name of the audio component. This string should
                        be released by the caller.
    @result         an OSStatus result code.
*/
@available(tvOS 2.0, *)
func AudioComponentCopyName(inComponent: AudioComponent, _ outName: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus

/*!
    @function       AudioComponentGetDescription
    @abstract       Retrieve an audio component's description.
    @discussion     This will return the fully specified audio component description for the
                    provided audio component.
    @param          inComponent
                        the audio component (must not be NULL)
    @param          outDesc
                        the audio component description for the specified audio component
    @result         an OSStatus result code.
*/
@available(tvOS 2.0, *)
func AudioComponentGetDescription(inComponent: AudioComponent, _ outDesc: UnsafeMutablePointer<AudioComponentDescription>) -> OSStatus

/*!
    @function       AudioComponentGetVersion
    @abstract       Retrieve an audio component's version.
    @discussion
    @param          inComponent
                        the audio component (must not be NULL)
    @param          outVersion
                        the audio component's version in the form of 0xMMMMmmDD (Major, Minor, Dot)
    @result         an OSStatus result code.
*/
@available(tvOS 2.0, *)
func AudioComponentGetVersion(inComponent: AudioComponent, _ outVersion: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
    @function       AudioComponentInstanceNew
    @abstract       Creates an audio component instance.
    @discussion     This function creates an instance of a given audio component. The audio
                    component instance is the object that does all of the work, whereas the
                    audio component is the way an application finds and then creates this object
                    to do this work. For example, an audio unit is a type of audio component
                    instance, so to use an audio unit, one finds its audio component, and then
                    creates a new instance of that component. This instance is then used to
                    perform the audio tasks for which it was designed (process, mix, synthesise,
                    etc.).
    @param          inComponent
                        the audio component (must not be NULL)
    @param          outInstance
                        the audio component instance
    @result         an OSStatus result code.
*/
@available(tvOS 2.0, *)
func AudioComponentInstanceNew(inComponent: AudioComponent, _ outInstance: UnsafeMutablePointer<AudioComponentInstance>) -> OSStatus

/*!
    @function       AudioComponentInstantiate
    @abstract       Creates an audio component instance, asynchronously.
    @discussion     This is an asynchronous version of AudioComponentInstanceNew(). It must be
                    used to instantiate any component with kAudioComponentFlag_RequiresAsyncInstantiation
                    set in its component flags. It may be used for other components as well.
					
					Note: Do not block the main thread while waiting for the completion handler
					to be called; this can deadlock.
    @param          inComponent
                        the audio component
    @param          inOptions
                        see AudioComponentInstantiationOptions
    @param          inCompletionHandler
                        called in an arbitrary thread context when instantiation is complete.
*/
@available(tvOS 9.0, *)
func AudioComponentInstantiate(inComponent: AudioComponent, _ inOptions: AudioComponentInstantiationOptions, _ inCompletionHandler: (AudioComponentInstance, OSStatus) -> Void)

/*!
    @function       AudioComponentInstanceDispose
    @abstract       Disposes of an audio component instance.
    @discussion     This function will dispose the audio component instance that was created
                    with the New call. It will deallocate any resources that the instance was using.
    @param          inInstance
                        the audio component instance to dispose (must not be NULL)
    @result         an OSStatus result code.
*/
@available(tvOS 2.0, *)
func AudioComponentInstanceDispose(inInstance: AudioComponentInstance) -> OSStatus

/*!
    @function       AudioComponentInstanceGetComponent
    @abstract       Retrieve the audio component from its instance
    @discussion     Allows the application at any time to retrieve the audio component that is
                    the factory object of a given instance (i.e., the audio component that was
                    used to create the instance in the first place). This allows the application
                    to retrieve general information about a particular audio component (its
                    name, version, etc) when one just has an audio component instance to work
                    with
    @param          inInstance
                        the audio component instance (must not be NULL, and instance must be valid - that is, not disposed)
    @result         a valid audio component or NULL if no component was found.
*/
@available(tvOS 2.0, *)
func AudioComponentInstanceGetComponent(inInstance: AudioComponentInstance) -> AudioComponent

/*!
    @function       AudioComponentInstanceCanDo
    @discussion     Determines if an audio component instance implements a particular component
                    API call as signified by the specified selector identifier token.
    @param          inInstance
                        the audio component instance
    @param          inSelectorID
                        a number to signify the audio component API (component selector) as appropriate for the instance's component type.
    @result         a boolean
*/
@available(tvOS 3.0, *)
func AudioComponentInstanceCanDo(inInstance: AudioComponentInstance, _ inSelectorID: Int16) -> Bool

/*!
    @function       AudioComponentRegister
    @abstract       Dynamically registers an AudioComponent within the current process
    @discussion
        AudioComponents are registered either when found in appropriate bundles in the filesystem,
        or via this call. AudioComponents registered via this call are available only within
        the current process.
    
    @param          inDesc
                        The AudioComponentDescription that describes the AudioComponent. Note that
                        the registrar needs to be sure to set the flag kAudioComponentFlag_SandboxSafe
                        in the componentFlags field of the AudioComponentDescription to indicate that
                        the AudioComponent can be loaded directly into a sandboxed process.
    @param          inName
                        the AudioComponent's name
    @param          inVersion
                        the AudioComponent's version
    @param          inFactory
                        an AudioComponentFactoryFunction which will create instances of your
                        AudioComponent
    @result         an AudioComponent object
*/
@available(tvOS 5.0, *)
func AudioComponentRegister(inDesc: UnsafePointer<AudioComponentDescription>, _ inName: CFString, _ inVersion: UInt32, _ inFactory: AudioComponentFactoryFunction) -> AudioComponent

/*!
	 @enum		 AudioComponentValidationResult
	 @abstract	 Constants for describing the result of validating an AudioComponent
	 @constant	 kAudioComponentValidationResult_Passed
					The AudioComponent passed validation.
	 @constant	 kAudioComponentValidationResult_Failed
					The AudioComponent failed validation.
	 @constant	 kAudioComponentValidationResult_TimedOut
					The validation operation timed out before completing.
	 @constant	 kAudioComponentValidationResult_UnauthorizedError_Open
					The AudioComponent failed validation during open operation as it is not authorized.
	 @constant	 kAudioComponentValidationResult_UnauthorizedError_Init
					The AudioComponent failed validation during initialization as it is not authorized.
*/
enum AudioComponentValidationResult : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Unknown
  case Passed
  case Failed
  case TimedOut
  case UnauthorizedError_Open
  case UnauthorizedError_Init
}
var kAudioComponentConfigurationInfo_ValidationResult: String { get }
var kAudioComponentValidationParameter_TimeOut: String { get }
var kAudioComponentValidationParameter_ForceValidation: String { get }
@available(tvOS 2.0, *)
func AudioOutputUnitStart(ci: AudioUnit) -> OSStatus
@available(tvOS 2.0, *)
func AudioOutputUnitStop(ci: AudioUnit) -> OSStatus
var kAudioOutputUnitRange: Int { get }
var kAudioOutputUnitStartSelect: Int { get }
var kAudioOutputUnitStopSelect: Int { get }

/*!
*/
typealias AudioOutputUnitStartProc = @convention(c) (UnsafeMutablePointer<Void>) -> OSStatus

/*!
*/
typealias AudioOutputUnitStopProc = @convention(c) (UnsafeMutablePointer<Void>) -> OSStatus
var kAUGroupParameterID_Volume: AudioUnitParameterID { get }
var kAUGroupParameterID_Sustain: AudioUnitParameterID { get }
var kAUGroupParameterID_Sostenuto: AudioUnitParameterID { get }
var kAUGroupParameterID_AllNotesOff: AudioUnitParameterID { get }
var kAUGroupParameterID_ModWheel: AudioUnitParameterID { get }
var kAUGroupParameterID_PitchBend: AudioUnitParameterID { get }
var kAUGroupParameterID_AllSoundOff: AudioUnitParameterID { get }
var kAUGroupParameterID_ResetAllControllers: AudioUnitParameterID { get }
var kAUGroupParameterID_Pan: AudioUnitParameterID { get }
var kAUGroupParameterID_Foot: AudioUnitParameterID { get }
var kAUGroupParameterID_ChannelPressure: AudioUnitParameterID { get }
var kAUGroupParameterID_KeyPressure: AudioUnitParameterID { get }
var kAUGroupParameterID_Expression: AudioUnitParameterID { get }
var kAUGroupParameterID_DataEntry: AudioUnitParameterID { get }
var kAUGroupParameterID_Volume_LSB: AudioUnitParameterID { get }
var kAUGroupParameterID_ModWheel_LSB: AudioUnitParameterID { get }
var kAUGroupParameterID_Pan_LSB: AudioUnitParameterID { get }
var kAUGroupParameterID_Foot_LSB: AudioUnitParameterID { get }
var kAUGroupParameterID_Expression_LSB: AudioUnitParameterID { get }
var kAUGroupParameterID_DataEntry_LSB: AudioUnitParameterID { get }
var kAUGroupParameterID_KeyPressure_FirstKey: AudioUnitParameterID { get }
var kAUGroupParameterID_KeyPressure_LastKey: AudioUnitParameterID { get }
var kSpatialMixerParam_Azimuth: AudioUnitParameterID { get }
var kSpatialMixerParam_Elevation: AudioUnitParameterID { get }
var kSpatialMixerParam_Distance: AudioUnitParameterID { get }
var kSpatialMixerParam_Gain: AudioUnitParameterID { get }
var kSpatialMixerParam_PlaybackRate: AudioUnitParameterID { get }
var kSpatialMixerParam_Enable: AudioUnitParameterID { get }
var kSpatialMixerParam_MinGain: AudioUnitParameterID { get }
var kSpatialMixerParam_MaxGain: AudioUnitParameterID { get }
var kSpatialMixerParam_ReverbBlend: AudioUnitParameterID { get }
var kSpatialMixerParam_GlobalReverbGain: AudioUnitParameterID { get }
var kSpatialMixerParam_OcclusionAttenuation: AudioUnitParameterID { get }
var kSpatialMixerParam_ObstructionAttenuation: AudioUnitParameterID { get }
var kReverbParam_FilterFrequency: AudioUnitParameterID { get }
var kReverbParam_FilterBandwidth: AudioUnitParameterID { get }
var kReverbParam_FilterGain: AudioUnitParameterID { get }
var kReverbParam_FilterType: AudioUnitParameterID { get }
var kReverbParam_FilterEnable: AudioUnitParameterID { get }
var k3DMixerParam_Azimuth: AudioUnitParameterID { get }
var k3DMixerParam_Elevation: AudioUnitParameterID { get }
var k3DMixerParam_Distance: AudioUnitParameterID { get }
var k3DMixerParam_Gain: AudioUnitParameterID { get }
var k3DMixerParam_PlaybackRate: AudioUnitParameterID { get }
var k3DMixerParam_Enable: AudioUnitParameterID { get }
var k3DMixerParam_MinGain: AudioUnitParameterID { get }
var k3DMixerParam_MaxGain: AudioUnitParameterID { get }
var k3DMixerParam_ReverbBlend: AudioUnitParameterID { get }
var k3DMixerParam_GlobalReverbGain: AudioUnitParameterID { get }
var k3DMixerParam_OcclusionAttenuation: AudioUnitParameterID { get }
var k3DMixerParam_ObstructionAttenuation: AudioUnitParameterID { get }
var kMultiChannelMixerParam_Volume: AudioUnitParameterID { get }
var kMultiChannelMixerParam_Enable: AudioUnitParameterID { get }
var kMultiChannelMixerParam_Pan: AudioUnitParameterID { get }
var kMultiChannelMixerParam_PreAveragePower: AudioUnitParameterID { get }
var kMultiChannelMixerParam_PrePeakHoldLevel: AudioUnitParameterID { get }
var kMultiChannelMixerParam_PostAveragePower: AudioUnitParameterID { get }
var kMultiChannelMixerParam_PostPeakHoldLevel: AudioUnitParameterID { get }
var kMatrixMixerParam_Volume: AudioUnitParameterID { get }
var kMatrixMixerParam_Enable: AudioUnitParameterID { get }
var kMatrixMixerParam_PreAveragePower: AudioUnitParameterID { get }
var kMatrixMixerParam_PrePeakHoldLevel: AudioUnitParameterID { get }
var kMatrixMixerParam_PostAveragePower: AudioUnitParameterID { get }
var kMatrixMixerParam_PostPeakHoldLevel: AudioUnitParameterID { get }
var kMatrixMixerParam_PreAveragePowerLinear: AudioUnitParameterID { get }
var kMatrixMixerParam_PrePeakHoldLevelLinear: AudioUnitParameterID { get }
var kMatrixMixerParam_PostAveragePowerLinear: AudioUnitParameterID { get }
var kMatrixMixerParam_PostPeakHoldLevelLinear: AudioUnitParameterID { get }
var kHALOutputParam_Volume: AudioUnitParameterID { get }
var kTimePitchParam_Rate: AudioUnitParameterID { get }
var kNewTimePitchParam_Rate: AudioUnitParameterID { get }
var kNewTimePitchParam_Pitch: AudioUnitParameterID { get }
var kNewTimePitchParam_Overlap: AudioUnitParameterID { get }
var kNewTimePitchParam_EnablePeakLocking: AudioUnitParameterID { get }
var kAUSamplerParam_Gain: AudioUnitParameterID { get }
var kAUSamplerParam_CoarseTuning: AudioUnitParameterID { get }
var kAUSamplerParam_FineTuning: AudioUnitParameterID { get }
var kAUSamplerParam_Pan: AudioUnitParameterID { get }
var kBandpassParam_CenterFrequency: AudioUnitParameterID { get }
var kBandpassParam_Bandwidth: AudioUnitParameterID { get }
var kHipassParam_CutoffFrequency: AudioUnitParameterID { get }
var kHipassParam_Resonance: AudioUnitParameterID { get }
var kLowPassParam_CutoffFrequency: AudioUnitParameterID { get }
var kLowPassParam_Resonance: AudioUnitParameterID { get }
var kHighShelfParam_CutOffFrequency: AudioUnitParameterID { get }
var kHighShelfParam_Gain: AudioUnitParameterID { get }
var kAULowShelfParam_CutoffFrequency: AudioUnitParameterID { get }
var kAULowShelfParam_Gain: AudioUnitParameterID { get }
var kParametricEQParam_CenterFreq: AudioUnitParameterID { get }
var kParametricEQParam_Q: AudioUnitParameterID { get }
var kParametricEQParam_Gain: AudioUnitParameterID { get }
var kLimiterParam_AttackTime: AudioUnitParameterID { get }
var kLimiterParam_DecayTime: AudioUnitParameterID { get }
var kLimiterParam_PreGain: AudioUnitParameterID { get }
var kDynamicsProcessorParam_Threshold: AudioUnitParameterID { get }
var kDynamicsProcessorParam_HeadRoom: AudioUnitParameterID { get }
var kDynamicsProcessorParam_ExpansionRatio: AudioUnitParameterID { get }
var kDynamicsProcessorParam_ExpansionThreshold: AudioUnitParameterID { get }
var kDynamicsProcessorParam_AttackTime: AudioUnitParameterID { get }
var kDynamicsProcessorParam_ReleaseTime: AudioUnitParameterID { get }
var kDynamicsProcessorParam_MasterGain: AudioUnitParameterID { get }
var kDynamicsProcessorParam_CompressionAmount: AudioUnitParameterID { get }
var kDynamicsProcessorParam_InputAmplitude: AudioUnitParameterID { get }
var kDynamicsProcessorParam_OutputAmplitude: AudioUnitParameterID { get }
var kVarispeedParam_PlaybackRate: AudioUnitParameterID { get }
var kVarispeedParam_PlaybackCents: AudioUnitParameterID { get }
var kDistortionParam_Delay: AudioUnitParameterID { get }
var kDistortionParam_Decay: AudioUnitParameterID { get }
var kDistortionParam_DelayMix: AudioUnitParameterID { get }
var kDistortionParam_Decimation: AudioUnitParameterID { get }
var kDistortionParam_Rounding: AudioUnitParameterID { get }
var kDistortionParam_DecimationMix: AudioUnitParameterID { get }
var kDistortionParam_LinearTerm: AudioUnitParameterID { get }
var kDistortionParam_SquaredTerm: AudioUnitParameterID { get }
var kDistortionParam_CubicTerm: AudioUnitParameterID { get }
var kDistortionParam_PolynomialMix: AudioUnitParameterID { get }
var kDistortionParam_RingModFreq1: AudioUnitParameterID { get }
var kDistortionParam_RingModFreq2: AudioUnitParameterID { get }
var kDistortionParam_RingModBalance: AudioUnitParameterID { get }
var kDistortionParam_RingModMix: AudioUnitParameterID { get }
var kDistortionParam_SoftClipGain: AudioUnitParameterID { get }
var kDistortionParam_FinalMix: AudioUnitParameterID { get }
var kDelayParam_WetDryMix: AudioUnitParameterID { get }
var kDelayParam_DelayTime: AudioUnitParameterID { get }
var kDelayParam_Feedback: AudioUnitParameterID { get }
var kDelayParam_LopassCutoff: AudioUnitParameterID { get }
var kAUNBandEQParam_GlobalGain: AudioUnitParameterID { get }
var kAUNBandEQParam_BypassBand: AudioUnitParameterID { get }
var kAUNBandEQParam_FilterType: AudioUnitParameterID { get }
var kAUNBandEQParam_Frequency: AudioUnitParameterID { get }
var kAUNBandEQParam_Gain: AudioUnitParameterID { get }
var kAUNBandEQParam_Bandwidth: AudioUnitParameterID { get }
var kAUNBandEQFilterType_Parametric: Int { get }
var kAUNBandEQFilterType_2ndOrderButterworthLowPass: Int { get }
var kAUNBandEQFilterType_2ndOrderButterworthHighPass: Int { get }
var kAUNBandEQFilterType_ResonantLowPass: Int { get }
var kAUNBandEQFilterType_ResonantHighPass: Int { get }
var kAUNBandEQFilterType_BandPass: Int { get }
var kAUNBandEQFilterType_BandStop: Int { get }
var kAUNBandEQFilterType_LowShelf: Int { get }
var kAUNBandEQFilterType_HighShelf: Int { get }
var kAUNBandEQFilterType_ResonantLowShelf: Int { get }
var kAUNBandEQFilterType_ResonantHighShelf: Int { get }
var kNumAUNBandEQFilterTypes: Int { get }
var kRoundTripAACParam_Format: AudioUnitParameterID { get }
var kRoundTripAACParam_EncodingStrategy: AudioUnitParameterID { get }
var kRoundTripAACParam_RateOrQuality: AudioUnitParameterID { get }
var kRandomParam_BoundA: AudioUnitParameterID { get }
var kRandomParam_BoundB: AudioUnitParameterID { get }
var kRandomParam_Curve: AudioUnitParameterID { get }
var kReverb2Param_DryWetMix: AudioUnitParameterID { get }
var kReverb2Param_Gain: AudioUnitParameterID { get }
var kReverb2Param_MinDelayTime: AudioUnitParameterID { get }
var kReverb2Param_MaxDelayTime: AudioUnitParameterID { get }
var kReverb2Param_DecayTimeAt0Hz: AudioUnitParameterID { get }
var kReverb2Param_DecayTimeAtNyquist: AudioUnitParameterID { get }
var kReverb2Param_RandomizeReflections: AudioUnitParameterID { get }
var kAudioUnitScope_Global: AudioUnitScope { get }
var kAudioUnitScope_Input: AudioUnitScope { get }
var kAudioUnitScope_Output: AudioUnitScope { get }
var kAudioUnitScope_Group: AudioUnitScope { get }
var kAudioUnitScope_Part: AudioUnitScope { get }
var kAudioUnitScope_Note: AudioUnitScope { get }
var kAudioUnitScope_Layer: AudioUnitScope { get }
var kAudioUnitScope_LayerItem: AudioUnitScope { get }
var kAudioUnitProperty_ClassInfo: AudioUnitPropertyID { get }
var kAudioUnitProperty_MakeConnection: AudioUnitPropertyID { get }
var kAudioUnitProperty_SampleRate: AudioUnitPropertyID { get }
var kAudioUnitProperty_ParameterList: AudioUnitPropertyID { get }
var kAudioUnitProperty_ParameterInfo: AudioUnitPropertyID { get }
var kAudioUnitProperty_CPULoad: AudioUnitPropertyID { get }
var kAudioUnitProperty_StreamFormat: AudioUnitPropertyID { get }
var kAudioUnitProperty_ElementCount: AudioUnitPropertyID { get }
var kAudioUnitProperty_Latency: AudioUnitPropertyID { get }
var kAudioUnitProperty_SupportedNumChannels: AudioUnitPropertyID { get }
var kAudioUnitProperty_MaximumFramesPerSlice: AudioUnitPropertyID { get }
var kAudioUnitProperty_ParameterValueStrings: AudioUnitPropertyID { get }
var kAudioUnitProperty_AudioChannelLayout: AudioUnitPropertyID { get }
var kAudioUnitProperty_TailTime: AudioUnitPropertyID { get }
var kAudioUnitProperty_BypassEffect: AudioUnitPropertyID { get }
var kAudioUnitProperty_LastRenderError: AudioUnitPropertyID { get }
var kAudioUnitProperty_SetRenderCallback: AudioUnitPropertyID { get }
var kAudioUnitProperty_FactoryPresets: AudioUnitPropertyID { get }
var kAudioUnitProperty_RenderQuality: AudioUnitPropertyID { get }
var kAudioUnitProperty_HostCallbacks: AudioUnitPropertyID { get }
var kAudioUnitProperty_InPlaceProcessing: AudioUnitPropertyID { get }
var kAudioUnitProperty_ElementName: AudioUnitPropertyID { get }
var kAudioUnitProperty_SupportedChannelLayoutTags: AudioUnitPropertyID { get }
var kAudioUnitProperty_PresentPreset: AudioUnitPropertyID { get }
var kAudioUnitProperty_DependentParameters: AudioUnitPropertyID { get }
var kAudioUnitProperty_InputSamplesInOutput: AudioUnitPropertyID { get }
var kAudioUnitProperty_ShouldAllocateBuffer: AudioUnitPropertyID { get }
var kAudioUnitProperty_FrequencyResponse: AudioUnitPropertyID { get }
var kAudioUnitProperty_ParameterHistoryInfo: AudioUnitPropertyID { get }
var kAudioUnitProperty_NickName: AudioUnitPropertyID { get }
var kAudioUnitProperty_OfflineRender: AudioUnitPropertyID { get }
var kAudioUnitProperty_ParameterIDName: AudioUnitPropertyID { get }
var kAudioUnitProperty_ParameterStringFromValue: AudioUnitPropertyID { get }
var kAudioUnitProperty_ParameterClumpName: AudioUnitPropertyID { get }
var kAudioUnitProperty_ParameterValueFromString: AudioUnitPropertyID { get }
var kAudioUnitProperty_ContextName: AudioUnitPropertyID { get }
var kAudioUnitProperty_PresentationLatency: AudioUnitPropertyID { get }
var kAudioUnitProperty_ClassInfoFromDocument: AudioUnitPropertyID { get }
var kAudioUnitProperty_RequestViewController: AudioUnitPropertyID { get }
var kAudioUnitProperty_ParametersForOverview: AudioUnitPropertyID { get }
var kAudioUnitProperty_RemoteControlEventListener: AudioUnitPropertyID { get }
var kAudioUnitProperty_IsInterAppConnected: AudioUnitPropertyID { get }
var kAudioUnitProperty_PeerURL: AudioUnitPropertyID { get }
var kAUPresetVersionKey: String { get }
var kAUPresetTypeKey: String { get }
var kAUPresetSubtypeKey: String { get }
var kAUPresetManufacturerKey: String { get }
var kAUPresetDataKey: String { get }
var kAUPresetNameKey: String { get }
var kAUPresetRenderQualityKey: String { get }
var kAUPresetCPULoadKey: String { get }
var kAUPresetElementNameKey: String { get }
var kAUPresetExternalFileRefs: String { get }
var kAUPresetPartKey: String { get }

/*!
    @struct         AudioUnitConnection
    @abstract       This structure contains the information needed to make a connection between a source
					and destination audio unit.
	@discussion		The structure is set on the destination audio unit's input element
    @field          sourceAudioUnit
						The audio unit that is the source for the connection
    @field          sourceOutputNumber
						The source audio unit's output element to be used in the connection
    @field          destInputNumber
						The destination audio unit's input element to be used in the connection						
*/
struct AudioUnitConnection {
  var sourceAudioUnit: AudioUnit
  var sourceOutputNumber: UInt32
  var destInputNumber: UInt32
}

/*!
	@struct			AUChannelInfo
	@abstract		Define an audio unit's channel handling capabilities
*/
struct AUChannelInfo {
  var inChannels: Int16
  var outChannels: Int16
  init()
  init(inChannels: Int16, outChannels: Int16)
}

/*!
	@struct			AudioUnitExternalBuffer
	@abstract		Allow a host to tell an audio unit to use the provided memory for its input callback
*/
struct AudioUnitExternalBuffer {
  var buffer: UnsafeMutablePointer<UInt8>
  var size: UInt32
}

/*!
	@struct			AURenderCallbackStruct
	@abstract		Used by a host when registering a callback with the audio unit to provide input
*/
struct AURenderCallbackStruct {
  var inputProc: AURenderCallback
  var inputProcRefCon: UnsafeMutablePointer<Void>
}

/*!
	@struct			AUPreset
	@abstract		Used to publish and set factory presets on an audio unit
	@field			presetNumber
						If < 0, then preset is a user preset
						If >= 0, then this field is used to select the factory preset
	@field			presetName
						If a factory preset, the name of the specified factory preset
*/
struct AUPreset {
  var presetNumber: Int32
  var presetName: Unmanaged<CFString>
}
var kRenderQuality_Max: Int { get }
var kRenderQuality_High: Int { get }
var kRenderQuality_Medium: Int { get }
var kRenderQuality_Low: Int { get }
var kRenderQuality_Min: Int { get }
var kNumberOfResponseFrequencies: Int { get }

/*!
	@struct			AudioUnitFrequencyResponseBin
	@abstract		Structure used to get the magnitude of the frequency response at a particular frequency via kAudioUnitProperty_FrequencyResponse. 
	@discussion		An array of AudioUnitFrequencyResponseBin are passed in to kAudioUnitProperty_FrequencyResponse
					with the mFrequency field filled in. The array is returned with the mMagnitude fields filled in.
					If fewer than kNumberOfResponseFrequencies are needed, then the first unused bin should be marked with 
					a negative frequency.
*/
struct AudioUnitFrequencyResponseBin {
  var mFrequency: Float64
  var mMagnitude: Float64
  init()
  init(mFrequency: Float64, mMagnitude: Float64)
}

/*!
	@typedef		HostCallback_GetBeatAndTempo
	@abstract		Retrieve information about the current beat and/or tempo
	@discussion
		If the host app has set this callback, then the audio unit can use this to get the current
		beat and tempo as they relate to the first sample in the render buffer. The audio unit can
		call this callback only from within the audio unit render call (otherwise the host is unable
		to provide information accurately to the audio unit as the information obtained is relate to
		the current AudioUnitRender call). If the host cannot provide the requested information, it
		will return kAudioUnitErr_CannotDoInCurrentContext.
	
		The AudioUnit can provide NULL for any of the requested parameters (except for
		inHostUserData) if it is not interested in that particular piece of information

	@param			inHostUserData			Must be provided by the audio unit when it makes this call. It is the client data provided by the host when it set the HostCallbacks property
	@param			outCurrentBeat			The current beat, where 0 is the first beat. Tempo is defined as the number of whole-number (integer) beat values (as indicated by the outCurrentBeat field) per minute.
	@param			outCurrentTempo			The current tempo
*/
typealias HostCallback_GetBeatAndTempo = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Float64>, UnsafeMutablePointer<Float64>) -> OSStatus

/*!
	@typedef		HostCallback_GetMusicalTimeLocation
	@abstract		Retrieve information about the musical time state of the host
	@discussion
		If the host app has set this callback, then the audio unit can use this to obtain
		information about the state of musical time in the host. The audio unit can call this
		callback only from within the audio unit render call (otherwise the host is unable to
		provide information accurately to the audio unit as the information obtained is relate to
		the current AudioUnitRender call). If the host cannot provide the requested information, it
		will return kAudioUnitErr_CannotDoInCurrentContext.

		The AudioUnit can provide NULL for any of the requested parameters (except for
		inHostUserData) if it is not interested in that particular piece of information

	@param			inHostUserData					Must be provided by the audio unit when it makes this call. It is the client data provided by the host when it set the HostCallbacks property
	@param			outDeltaSampleOffsetToNextBeat	The number of samples until the next whole beat from the start sample of the current rendering buffer
	@param			outTimeSig_Numerator			The Numerator of the current time signature
	@param			outTimeSig_Denominator			The Denominator of the current time signature (4 is a quarter note, etc)
	@param			outCurrentMeasureDownBeat		The beat that corresponds to the downbeat (first beat) of the current measure that is being rendered

*/
typealias HostCallback_GetMusicalTimeLocation = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<Float32>, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<Float64>) -> OSStatus

/*!
	@typedef		HostCallback_GetTransportState
	@abstract		Retrieve information about the time line's (or transport) state of the host. 
	@discussion
		If the host app has set this callback, then the audio unit can use this to obtain
		information about the transport state of the host's time line. The audio unit can call this
		callback only from within the audio unit render call (otherwise the host is unable to
		provide information accurately to the audio unit as the information obtained is relate to
		the current AudioUnitRender call. If the host cannot provide the requested information, it
		will return kAudioUnitErr_CannotDoInCurrentContext.
	
		The AudioUnit can provide NULL for any of the requested parameters (except for
		inHostUserData) if it is not interested in that particular piece of information
	
	@param			inHostUserData					Must be provided by the audio unit when it makes this call. It is the client data provided by the host when it set the HostCallbacks property
	@param			outIsPlaying					Returns true if the host's transport is currently playing, false if stopped
	@param			outTransportStateChanged		Returns true if there was a change to the state of, or discontinuities in, the host's transport (generally since the callback was last called). Can indicate such state changes as start/top, time moves (jump from one time line to another).
	@param			outCurrentSampleInTimeLine		Returns the current sample count in the time line of the host's transport time.  
	@param			outIsCycling					Returns true if the host's transport is currently cycling or looping
	@param			outCycleStartBeat				If cycling is true, the start beat of the cycle or loop point in the host's transport
	@param			outCycleEndBeat					If cycling is true, the end beat of the cycle or loop point in the host's transport
	
*/
typealias HostCallback_GetTransportState = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<DarwinBoolean>, UnsafeMutablePointer<DarwinBoolean>, UnsafeMutablePointer<Float64>, UnsafeMutablePointer<DarwinBoolean>, UnsafeMutablePointer<Float64>, UnsafeMutablePointer<Float64>) -> OSStatus

/*!
	@typedef		HostCallback_GetTransportState2
	@abstract		Retrieve information about the time line's (or transport) state of the host. 
	@discussion
		If the host app has set this callback, then the audio unit can use this to obtain
		information about the transport state of the host's time line. The audio unit can call this
		callback only from within the audio unit render call (otherwise the host is unable to
		provide information accurately to the audio unit as the information obtained is relate to
		the current AudioUnitRender call. If the host cannot provide the requested information, it
		will return kAudioUnitErr_CannotDoInCurrentContext.

		The AudioUnit can provide NULL for any of the requested parameters (except for
		inHostUserData) if it is not interested in that particular piece of information
	
	@param			inHostUserData					Must be provided by the audio unit when it makes this call. It is the client data provided by the host when it set the HostCallbacks property
	@param			outIsPlaying					Returns true if the host's transport is currently playing, false if stopped
	@param			outIsRecording					Returns true if the host is currently record-enabled, otherwise false.
	@param			outTransportStateChanged		Returns true if there was a change to the state of, or discontinuities in, the host's transport (generally since the callback was last called). Can indicate such state changes as start/top, time moves (jump from one time line to another).
	@param			outCurrentSampleInTimeLine		Returns the current sample count in the time line of the host's transport time.  
	@param			outIsCycling					Returns true if the host's transport is currently cycling or looping
	@param			outCycleStartBeat				If cycling is true, the start beat of the cycle or loop point in the host's transport
	@param			outCycleEndBeat					If cycling is true, the end beat of the cycle or loop point in the host's transport
	
*/
typealias HostCallback_GetTransportState2 = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<DarwinBoolean>, UnsafeMutablePointer<DarwinBoolean>, UnsafeMutablePointer<DarwinBoolean>, UnsafeMutablePointer<Float64>, UnsafeMutablePointer<DarwinBoolean>, UnsafeMutablePointer<Float64>, UnsafeMutablePointer<Float64>) -> OSStatus

/*!
	@struct			HostCallbackInfo
	@abstract		Contains the various callbacks for an audio unit to call
	@discussion
		Any callback can be NULL.
*/
struct HostCallbackInfo {
  var hostUserData: UnsafeMutablePointer<Void>
  var beatAndTempoProc: HostCallback_GetBeatAndTempo?
  var musicalTimeLocationProc: HostCallback_GetMusicalTimeLocation?
  var transportStateProc: HostCallback_GetTransportState?
  var transportStateProc2: HostCallback_GetTransportState2?
  init()
  init(hostUserData: UnsafeMutablePointer<Void>, beatAndTempoProc: HostCallback_GetBeatAndTempo?, musicalTimeLocationProc: HostCallback_GetMusicalTimeLocation?, transportStateProc: HostCallback_GetTransportState?, transportStateProc2: HostCallback_GetTransportState2?)
}

/*!
	@struct			AUDependentParameter
	@abstract		Used to represent a dependent parameter that can change as a result of its parent meta-parameter
					changing
*/
struct AUDependentParameter {
  var mScope: AudioUnitScope
  var mParameterID: AudioUnitParameterID
  init()
  init(mScope: AudioUnitScope, mParameterID: AudioUnitParameterID)
}

/*!
	@struct			AUInputSamplesInOutputCallbackStruct
	@abstract		Used by a host when registering a callback with an audio unit, to provide 
					input-to-output samples mapping
*/
struct AUInputSamplesInOutputCallbackStruct {
  var inputToOutputCallback: AUInputSamplesInOutputCallback
  var userData: UnsafeMutablePointer<Void>
}

/*!
	@struct			AudioUnitParameterHistoryInfo
	@abstract		This structure contains the suggested update rate and history duration for parameters which have the kAudioUnitParameterFlag_PlotHistory flag set.
					The structure is filled out by getting kAudioUnitProperty_ParameterHistoryInfo.
	@field			updatesPerSecond
						This is the number of times per second that it is suggested that the host get the value of this parameter.
	@field			historyDurationInSeconds
						This is the duration in seconds of history that should be plotted.
*/
struct AudioUnitParameterHistoryInfo {
  var updatesPerSecond: Float32
  var historyDurationInSeconds: Float32
  init()
  init(updatesPerSecond: Float32, historyDurationInSeconds: Float32)
}

/*!
	@enum			AudioUnitParameterUnit
	@constant		kAudioUnitParameterUnit_Generic
						untyped value generally between 0.0 and 1.0
	@constant		kAudioUnitParameterUnit_Indexed
						takes an integer value (good for menu selections)
	@constant		kAudioUnitParameterUnit_Boolean
						0.0 means FALSE, non-zero means TRUE
	@constant		kAudioUnitParameterUnit_Percent
						usually from 0 -> 100, sometimes -50 -> +50
	@constant		kAudioUnitParameterUnit_Seconds
						absolute or relative time
	@constant		kAudioUnitParameterUnit_SampleFrames
						one sample frame equals (1.0/sampleRate) seconds
	@constant		kAudioUnitParameterUnit_Phase
						-180 to 180 degrees
	@constant		kAudioUnitParameterUnit_Rate
						rate multiplier, for playback speed, etc. (e.g. 2.0 == twice as fast)
	@constant		kAudioUnitParameterUnit_Hertz
						absolute frequency/pitch in cycles/second
	@constant		kAudioUnitParameterUnit_Cents
						unit of relative pitch
	@constant		kAudioUnitParameterUnit_RelativeSemiTones
						useful for coarse detuning
	@constant		kAudioUnitParameterUnit_MIDINoteNumber
						absolute pitch as defined in the MIDI spec (exact freq may depend on tuning table)
	@constant		kAudioUnitParameterUnit_MIDIController
						a generic MIDI controller value from 0 -> 127
	@constant		kAudioUnitParameterUnit_Decibels
						logarithmic relative gain
	@constant		kAudioUnitParameterUnit_LinearGain
						linear relative gain
	@constant		kAudioUnitParameterUnit_Degrees
						-180 to 180 degrees, similar to phase but more general (good for 3D coord system)
	@constant		kAudioUnitParameterUnit_EqualPowerCrossfade
						0 -> 100, crossfade mix two sources according to sqrt(x) and sqrt(1.0 - x)
	@constant		kAudioUnitParameterUnit_MixerFaderCurve1
						0.0 -> 1.0, pow(x, 3.0) -> linear gain to simulate a reasonable mixer channel fader response
	@constant		kAudioUnitParameterUnit_Pan
						standard left to right mixer pan
	@constant		kAudioUnitParameterUnit_Meters
						distance measured in meters
	@constant		kAudioUnitParameterUnit_AbsoluteCents
						absolute frequency measurement : 
						if f is freq in hertz then absoluteCents = 1200 * log2(f / 440) + 6900
	@constant		kAudioUnitParameterUnit_Octaves
						octaves in relative pitch where a value of 1 is equal to 1200 cents
	@constant		kAudioUnitParameterUnit_BPM
						beats per minute, ie tempo
    @constant		kAudioUnitParameterUnit_Beats
						time relative to tempo, i.e., 1.0 at 120 BPM would equal 1/2 a second
	@constant		kAudioUnitParameterUnit_Milliseconds
						parameter is expressed in milliseconds
	@constant		kAudioUnitParameterUnit_Ratio
						for compression, expansion ratio, etc.
	@constant		kAudioUnitParameterUnit_CustomUnit
						this is the parameter unit type for parameters that present a custom unit name
*/
enum AudioUnitParameterUnit : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Generic
  case Indexed
  case Boolean
  case Percent
  case Seconds
  case SampleFrames
  case Phase
  case Rate
  case Hertz
  case Cents
  case RelativeSemiTones
  case MIDINoteNumber
  case MIDIController
  case Decibels
  case LinearGain
  case Degrees
  case EqualPowerCrossfade
  case MixerFaderCurve1
  case Pan
  case Meters
  case AbsoluteCents
  case Octaves
  case BPM
  case Beats
  case Milliseconds
  case Ratio
  case CustomUnit
}

/*!
	@enum			AudioUnitParameterOptions
	@discussion		Bit positions 18, 17, and 16 are set aside for display scales. Bit 19 is reserved.
	@constant		kAudioUnitParameterFlag_CFNameRelease
	@constant		kAudioUnitParameterFlag_PlotHistory
	@constant		kAudioUnitParameterFlag_MeterReadOnly
	@constant		kAudioUnitParameterFlag_DisplayMask
	@constant		kAudioUnitParameterFlag_DisplaySquareRoot
	@constant		kAudioUnitParameterFlag_DisplaySquared
	@constant		kAudioUnitParameterFlag_DisplayCubed
	@constant		kAudioUnitParameterFlag_DisplayCubeRoot
	@constant		kAudioUnitParameterFlag_DisplayExponential
	@constant		kAudioUnitParameterFlag_HasClump
	@constant		kAudioUnitParameterFlag_ValuesHaveStrings
	@constant		kAudioUnitParameterFlag_DisplayLogarithmic		
	@constant		kAudioUnitParameterFlag_IsHighResolution
	@constant		kAudioUnitParameterFlag_NonRealTime
	@constant		kAudioUnitParameterFlag_CanRamp
	@constant		kAudioUnitParameterFlag_ExpertMode
	@constant		kAudioUnitParameterFlag_HasCFNameString
	@constant		kAudioUnitParameterFlag_IsGlobalMeta
	@constant		kAudioUnitParameterFlag_IsElementMeta
	@constant		kAudioUnitParameterFlag_IsReadable
	@constant		kAudioUnitParameterFlag_IsWritable
*/
struct AudioUnitParameterOptions : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Flag_CFNameRelease: AudioUnitParameterOptions { get }
  static var Flag_OmitFromPresets: AudioUnitParameterOptions { get }
  static var Flag_PlotHistory: AudioUnitParameterOptions { get }
  static var Flag_MeterReadOnly: AudioUnitParameterOptions { get }
  static var Flag_DisplayMask: AudioUnitParameterOptions { get }
  static var Flag_DisplaySquareRoot: AudioUnitParameterOptions { get }
  static var Flag_DisplaySquared: AudioUnitParameterOptions { get }
  static var Flag_DisplayCubed: AudioUnitParameterOptions { get }
  static var Flag_DisplayCubeRoot: AudioUnitParameterOptions { get }
  static var Flag_DisplayExponential: AudioUnitParameterOptions { get }
  static var Flag_HasClump: AudioUnitParameterOptions { get }
  static var Flag_ValuesHaveStrings: AudioUnitParameterOptions { get }
  static var Flag_DisplayLogarithmic: AudioUnitParameterOptions { get }
  static var Flag_IsHighResolution: AudioUnitParameterOptions { get }
  static var Flag_NonRealTime: AudioUnitParameterOptions { get }
  static var Flag_CanRamp: AudioUnitParameterOptions { get }
  static var Flag_ExpertMode: AudioUnitParameterOptions { get }
  static var Flag_HasCFNameString: AudioUnitParameterOptions { get }
  static var Flag_IsGlobalMeta: AudioUnitParameterOptions { get }
  static var Flag_IsElementMeta: AudioUnitParameterOptions { get }
  static var Flag_IsReadable: AudioUnitParameterOptions { get }
  static var Flag_IsWritable: AudioUnitParameterOptions { get }
}

/*!
	@struct			AudioUnitParameterInfo
	@field			name
						UNUSED - set to zero - UTF8 encoded C string (originally). 
	@field			unitName
						only valid if kAudioUnitParameterUnit_CustomUnit is set. If kAudioUnitParameterUnit_CustomUnit
						is set, this field must contain a valid CFString.
	@field			clumpID
						only valid if kAudioUnitParameterFlag_HasClump
	@field			cfNameString
						only valid if kAudioUnitParameterFlag_HasCFNameString
	@field			unit				
						if the "unit" field contains a value not in the enum above, then assume 
						kAudioUnitParameterUnit_Generic
	@field			minValue
	@field			maxValue
	@field			defaultValue
	@field			flags
						Due to some vagaries about the ways in which Parameter's CFNames have been described, it was
						necessary to add a flag: kAudioUnitParameterFlag_CFNameRelease
						In normal usage a parameter name is essentially a static object, but sometimes an audio unit will 
						generate parameter names dynamically.. As these are expected to be CFStrings, in that case
						the host should release those names when it is finished with them, but there was no way
						to communicate this distinction in behavior.
						Thus, if an audio unit will (or could) generate a name dynamically, it should set this flag in 
						the parameter's info. The host should check for this flag, and if present, release the parameter
						name when it is finished with it.
*/
struct AudioUnitParameterInfo {
  var name: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
  var unitName: Unmanaged<CFString>?
  var clumpID: UInt32
  var cfNameString: Unmanaged<CFString>?
  var unit: AudioUnitParameterUnit
  var minValue: AudioUnitParameterValue
  var maxValue: AudioUnitParameterValue
  var defaultValue: AudioUnitParameterValue
  var flags: AudioUnitParameterOptions
  init()
  init(name: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8), unitName: Unmanaged<CFString>?, clumpID: UInt32, cfNameString: Unmanaged<CFString>?, unit: AudioUnitParameterUnit, minValue: AudioUnitParameterValue, maxValue: AudioUnitParameterValue, defaultValue: AudioUnitParameterValue, flags: AudioUnitParameterOptions)
}
var kAudioUnitClumpID_System: Int { get }
func GetAudioUnitParameterDisplayType(flags: AudioUnitParameterOptions) -> AudioUnitParameterOptions
func SetAudioUnitParameterDisplayType(flags: AudioUnitParameterOptions, _ displayType: AudioUnitParameterOptions) -> AudioUnitParameterOptions
var kAudioUnitParameterName_Full: Int { get }

/*!
	@struct			AudioUnitParameterIDName
	@abstract		Used to provide shorter names for a specified parameter
*/
struct AudioUnitParameterNameInfo {
  var inID: AudioUnitParameterID
  var inDesiredLength: Int32
  var outName: Unmanaged<CFString>?
  init()
  init(inID: AudioUnitParameterID, inDesiredLength: Int32, outName: Unmanaged<CFString>?)
}
typealias AudioUnitParameterIDName = AudioUnitParameterNameInfo

/*!
	@struct			AudioUnitParameterStringFromValue
	@abstract		Provide a string representation of a parameter's value
*/
struct AudioUnitParameterStringFromValue {
  var inParamID: AudioUnitParameterID
  var inValue: UnsafePointer<AudioUnitParameterValue>
  var outString: Unmanaged<CFString>?
}

/*!
	@struct			AudioUnitParameterValueFromString
	@abstract		Provide the parameter's value for a given string representation of it
*/
struct AudioUnitParameterValueFromString {
  var inParamID: AudioUnitParameterID
  var inString: Unmanaged<CFString>
  var outValue: AudioUnitParameterValue
}

/*!
	@enum			AudioUnitRemoteControlEvent
	@abstract		In inter-app audio, messages to control the host's transport state.
*/
enum AudioUnitRemoteControlEvent : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case TogglePlayPause
  case ToggleRecord
  case Rewind
}

/*!	@typedef		AudioUnitRemoteControlEventListener
	@abstract		Block called to receive a remote control event.
*/
typealias AudioUnitRemoteControlEventListener = (AudioUnitRemoteControlEvent) -> Void
var kAudioUnitConfigurationInfo_HasCustomView: String { get }
var kAudioUnitConfigurationInfo_ChannelConfigurations: String { get }
var kAudioUnitConfigurationInfo_InitialInputs: String { get }
var kAudioUnitConfigurationInfo_InitialOutputs: String { get }
var kAudioUnitConfigurationInfo_IconURL: String { get }
var kAudioUnitConfigurationInfo_BusCountWritable: String { get }
var kAudioUnitConfigurationInfo_SupportedChannelLayoutTags: String { get }
var kAudioOutputUnitProperty_IsRunning: AudioUnitPropertyID { get }
var kAudioUnitProperty_SampleRateConverterComplexity: AudioUnitPropertyID { get }
var kAudioUnitSampleRateConverterComplexity_Linear: UInt32 { get }
var kAudioUnitSampleRateConverterComplexity_Normal: UInt32 { get }
var kAudioUnitSampleRateConverterComplexity_Mastering: UInt32 { get }
var kAudioOutputUnitProperty_CurrentDevice: AudioUnitPropertyID { get }
var kAudioOutputUnitProperty_ChannelMap: AudioUnitPropertyID { get }
var kAudioOutputUnitProperty_EnableIO: AudioUnitPropertyID { get }
var kAudioOutputUnitProperty_StartTime: AudioUnitPropertyID { get }
var kAudioOutputUnitProperty_SetInputCallback: AudioUnitPropertyID { get }
var kAudioOutputUnitProperty_HasIO: AudioUnitPropertyID { get }
var kAudioOutputUnitProperty_StartTimestampsAtZero: AudioUnitPropertyID { get }
var kAudioOutputUnitProperty_MIDICallbacks: AudioUnitPropertyID { get }
var kAudioOutputUnitProperty_HostReceivesRemoteControlEvents: AudioUnitPropertyID { get }
var kAudioOutputUnitProperty_RemoteControlToHost: AudioUnitPropertyID { get }
var kAudioOutputUnitProperty_HostTransportState: AudioUnitPropertyID { get }
var kAudioOutputUnitProperty_NodeComponentDescription: AudioUnitPropertyID { get }

/*!
	@struct AudioOutputUnitMIDICallbacks
	@abstract For inter-app audio, callbacks for receiving MIDI messages.
	@discussion
		The supplied callback functions are called from the realtime rendering thread, before each
		render cycle, to provide any incoming MIDI messages.
*/
struct AudioOutputUnitMIDICallbacks {
  var userData: UnsafeMutablePointer<Void>
  var MIDIEventProc: @convention(c) (UnsafeMutablePointer<Void>, UInt32, UInt32, UInt32, UInt32) -> Void
  var MIDISysExProc: @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<UInt8>, UInt32) -> Void
}

/*!
	@struct			AudioOutputUnitStartAtTimeParams
*/
struct AudioOutputUnitStartAtTimeParams {
  var mTimestamp: AudioTimeStamp
  var mFlags: UInt32
  init()
  init(mTimestamp: AudioTimeStamp, mFlags: UInt32)
}
var kAUVoiceIOProperty_BypassVoiceProcessing: AudioUnitPropertyID { get }
var kAUVoiceIOProperty_VoiceProcessingEnableAGC: AudioUnitPropertyID { get }
var kAUVoiceIOProperty_MuteOutput: AudioUnitPropertyID { get }
var kAUVoiceIOProperty_DuckNonVoiceAudio: AudioUnitPropertyID { get }
var kAUVoiceIOProperty_VoiceProcessingQuality: AudioUnitPropertyID { get }
var kAUNBandEQProperty_NumberOfBands: AudioUnitPropertyID { get }
var kAUNBandEQProperty_MaxNumberOfBands: AudioUnitPropertyID { get }
var kAUNBandEQProperty_BiquadCoefficients: AudioUnitPropertyID { get }
var kAudioUnitProperty_MeteringMode: AudioUnitPropertyID { get }
var kAudioUnitProperty_MatrixLevels: AudioUnitPropertyID { get }
var kAudioUnitProperty_MatrixDimensions: AudioUnitPropertyID { get }
var kAudioUnitProperty_MeterClipping: AudioUnitPropertyID { get }

/*!
	@struct			AudioUnitMeterClipping
	
	@field			peakValueSinceLastCall; 
	@discussion			The maximum value seen on the channel since the last time the property was retrieved.
	@field			sawInfinity;
	@discussion			TRUE if there was an infinite value on this channel.
	@field			sawNotANumber
	@discussion			TRUE if there was a floating point Not-A-Number value on this channel.
*/
struct AudioUnitMeterClipping {
  var peakValueSinceLastCall: Float32
  var sawInfinity: DarwinBoolean
  var sawNotANumber: DarwinBoolean
  init()
  init(peakValueSinceLastCall: Float32, sawInfinity: DarwinBoolean, sawNotANumber: DarwinBoolean)
}
var kAudioUnitProperty_ReverbRoomType: AudioUnitPropertyID { get }
var kAudioUnitProperty_UsesInternalReverb: AudioUnitPropertyID { get }
var kAudioUnitProperty_SpatializationAlgorithm: AudioUnitPropertyID { get }
var kAudioUnitProperty_SpatialMixerDistanceParams: AudioUnitPropertyID { get }
var kAudioUnitProperty_SpatialMixerAttenuationCurve: AudioUnitPropertyID { get }
var kAudioUnitProperty_SpatialMixerRenderingFlags: AudioUnitPropertyID { get }

/*!
	@enum 	Spatialization Algorithms
*/
enum AUSpatializationAlgorithm : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case SpatializationAlgorithm_EqualPowerPanning
  case SpatializationAlgorithm_SphericalHead
  case SpatializationAlgorithm_HRTF
  case SpatializationAlgorithm_SoundField
  case SpatializationAlgorithm_VectorBasedPanning
  case SpatializationAlgorithm_StereoPassThrough
}

/*!
	@enum	Reverb Room Types
	@discussion Used to specify room type (as identified by a factory preset number) on Apple audio 
				units that use internal reverb.
*/
enum AUReverbRoomType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case ReverbRoomType_SmallRoom
  case ReverbRoomType_MediumRoom
  case ReverbRoomType_LargeRoom
  case ReverbRoomType_MediumHall
  case ReverbRoomType_LargeHall
  case ReverbRoomType_Plate
  case ReverbRoomType_MediumChamber
  case ReverbRoomType_LargeChamber
  case ReverbRoomType_Cathedral
  case ReverbRoomType_LargeRoom2
  case ReverbRoomType_MediumHall2
  case ReverbRoomType_MediumHall3
  case ReverbRoomType_LargeHall2
}

/*!
	@enum AUSpatialMixer Attenuation Curves
*/
enum AUSpatialMixerAttenuationCurve : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case SpatialMixerAttenuationCurve_Power
  case SpatialMixerAttenuationCurve_Exponential
  case SpatialMixerAttenuationCurve_Inverse
  case SpatialMixerAttenuationCurve_Linear
}

/*!
	@struct			MixerDistanceParams
*/
struct MixerDistanceParams {
  var mReferenceDistance: Float32
  var mMaxDistance: Float32
  var mMaxAttenuation: Float32
  init()
  init(mReferenceDistance: Float32, mMaxDistance: Float32, mMaxAttenuation: Float32)
}

/*!
	@enum	AUSpatial Mixer Rendering Flags
*/
struct AUSpatialMixerRenderingFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var SpatialMixerRenderingFlags_InterAuralDelay: AUSpatialMixerRenderingFlags { get }
  static var SpatialMixerRenderingFlags_DistanceAttenuation: AUSpatialMixerRenderingFlags { get }
}
var kAudioUnitProperty_3DMixerDistanceParams: AudioUnitPropertyID { get }
var kAudioUnitProperty_3DMixerAttenuationCurve: AudioUnitPropertyID { get }
var kAudioUnitProperty_DopplerShift: AudioUnitPropertyID { get }
var kAudioUnitProperty_3DMixerRenderingFlags: AudioUnitPropertyID { get }
var kAudioUnitProperty_3DMixerDistanceAtten: AudioUnitPropertyID { get }
var kAudioUnitProperty_ReverbPreset: AudioUnitPropertyID { get }

/*!
	@enum	3D Mixer Rendering Flags
*/
struct AU3DMixerRenderingFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var k3DMixerRenderingFlags_InterAuralDelay: AU3DMixerRenderingFlags { get }
  static var k3DMixerRenderingFlags_DopplerShift: AU3DMixerRenderingFlags { get }
  static var k3DMixerRenderingFlags_DistanceAttenuation: AU3DMixerRenderingFlags { get }
  static var k3DMixerRenderingFlags_DistanceFilter: AU3DMixerRenderingFlags { get }
  static var k3DMixerRenderingFlags_DistanceDiffusion: AU3DMixerRenderingFlags { get }
  static var k3DMixerRenderingFlags_LinearDistanceAttenuation: AU3DMixerRenderingFlags { get }
  static var k3DMixerRenderingFlags_ConstantReverbBlend: AU3DMixerRenderingFlags { get }
}

/*!
	@enum 3D Mixer Attenuation Curves
*/
enum AU3DMixerAttenuationCurve : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case k3DMixerAttenuationCurve_Power
  case k3DMixerAttenuationCurve_Exponential
  case k3DMixerAttenuationCurve_Inverse
  case k3DMixerAttenuationCurve_Linear
}
var kAudioUnitProperty_ScheduleAudioSlice: AudioUnitPropertyID { get }
var kAudioUnitProperty_ScheduleStartTimeStamp: AudioUnitPropertyID { get }
var kAudioUnitProperty_CurrentPlayTime: AudioUnitPropertyID { get }

/*!
    @enum           ScheduledAudioSlice
    @abstract           bits in ScheduledAudioSlice.mFlags

    @constant       kScheduledAudioSliceFlag_Complete
    @abstract           Set if the unit is done with this slice
    @constant       kScheduledAudioSliceFlag_BeganToRender
    @abstract           Set if any portion of the buffer has been played
    @constant       kScheduledAudioSliceFlag_BeganToRenderLate
    @abstract           Set if any portion of the buffer was not played because it was scheduled late
    @constant       kScheduledAudioSliceFlag_Loop
    @abstract           specifies that the buffer should loop indefinitely
    @constant       kScheduledAudioSliceFlag_Interrupt
    @abstract           specifies that the buffer should interrupt any previously scheduled buffer
                        (by default, buffers following a playing buffer are not played until the
                        playing buffer has completed).
    @constant       kScheduledAudioSliceFlag_InterruptAtLoop
    @abstract           specifies that the buffer should interrupt any previously scheduled buffer,
                        but only at a loop point in that buffer.

*/
struct AUScheduledAudioSliceFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var ScheduledAudioSliceFlag_Complete: AUScheduledAudioSliceFlags { get }
  static var ScheduledAudioSliceFlag_BeganToRender: AUScheduledAudioSliceFlags { get }
  static var ScheduledAudioSliceFlag_BeganToRenderLate: AUScheduledAudioSliceFlags { get }
  static var ScheduledAudioSliceFlag_Loop: AUScheduledAudioSliceFlags { get }
  static var ScheduledAudioSliceFlag_Interrupt: AUScheduledAudioSliceFlags { get }
  static var ScheduledAudioSliceFlag_InterruptAtLoop: AUScheduledAudioSliceFlags { get }
}

/*!
	@typedef			ScheduledAudioSliceCompletionProc
*/
typealias ScheduledAudioSliceCompletionProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<ScheduledAudioSlice>) -> Void
struct ScheduledAudioSlice {
  var mTimeStamp: AudioTimeStamp
  var mCompletionProc: ScheduledAudioSliceCompletionProc?
  var mCompletionProcUserData: UnsafeMutablePointer<Void>
  var mFlags: AUScheduledAudioSliceFlags
  var mReserved: UInt32
  var mReserved2: UnsafeMutablePointer<Void>
  var mNumberFrames: UInt32
  var mBufferList: UnsafeMutablePointer<AudioBufferList>
}
var kAudioUnitProperty_ScheduledFileIDs: AudioUnitPropertyID { get }
var kAudioUnitProperty_ScheduledFileRegion: AudioUnitPropertyID { get }
var kAudioUnitProperty_ScheduledFilePrime: AudioUnitPropertyID { get }
var kAudioUnitProperty_ScheduledFileBufferSizeFrames: AudioUnitPropertyID { get }
var kAudioUnitProperty_ScheduledFileNumberBuffers: AudioUnitPropertyID { get }

/*!
	@typedef		ScheduledAudioFileRegionCompletionProc
*/
typealias ScheduledAudioFileRegionCompletionProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<ScheduledAudioFileRegion>, OSStatus) -> Void

/*!
	@struct			ScheduledAudioFileRegion
	@field			mTimeStamp
	@field			mCompletionProc
						may be NULL
	@field			mCompletionProcUserData
	@field			mAudioFile
						must be a valid and open AudioFileID
						defined in AudioToolbox/AudioFile.h: typedef	struct OpaqueAudioFileID	*AudioFileID;
	@field			mLoopCount
						0 = don't loop
	@field			mStartFrame
						offset into file
	@field			mFramesToPlay
						number of frames to play
	
*/
struct ScheduledAudioFileRegion {
  var mTimeStamp: AudioTimeStamp
  var mCompletionProc: ScheduledAudioFileRegionCompletionProc?
  var mCompletionProcUserData: UnsafeMutablePointer<Void>
  var mAudioFile: COpaquePointer
  var mLoopCount: UInt32
  var mStartFrame: Int64
  var mFramesToPlay: UInt32
}
var kMusicDeviceProperty_InstrumentName: AudioUnitPropertyID { get }
var kMusicDeviceProperty_InstrumentNumber: AudioUnitPropertyID { get }
var kMusicDeviceProperty_InstrumentCount: AudioUnitPropertyID { get }
var kMusicDeviceProperty_BankName: AudioUnitPropertyID { get }
var kMusicDeviceProperty_SoundBankURL: AudioUnitPropertyID { get }
var kAUMIDISynthProperty_EnablePreload: AudioUnitPropertyID { get }
var kAUSamplerProperty_LoadInstrument: AudioUnitPropertyID { get }
var kAUSamplerProperty_LoadAudioFiles: AudioUnitPropertyID { get }
struct AUSamplerInstrumentData {
  var fileURL: Unmanaged<CFURL>
  var instrumentType: UInt8
  var bankMSB: UInt8
  var bankLSB: UInt8
  var presetID: UInt8
}
var kInstrumentType_DLSPreset: Int { get }
var kInstrumentType_SF2Preset: Int { get }
var kInstrumentType_AUPreset: Int { get }
var kInstrumentType_Audiofile: Int { get }
var kInstrumentType_EXS24: Int { get }
var kAUSampler_DefaultPercussionBankMSB: Int { get }
var kAUSampler_DefaultMelodicBankMSB: Int { get }
var kAUSampler_DefaultBankLSB: Int { get }
var kAudioUnitProperty_DeferredRendererPullSize: AudioUnitPropertyID { get }
var kAudioUnitProperty_DeferredRendererExtraLatency: AudioUnitPropertyID { get }
var kAudioUnitProperty_DeferredRendererWaitFrames: AudioUnitPropertyID { get }
struct AUSamplerBankPresetData {
  var bankURL: Unmanaged<CFURL>
  var bankMSB: UInt8
  var bankLSB: UInt8
  var presetID: UInt8
  var reserved: UInt8
}
var kAUSamplerProperty_LoadPresetFromBank: AudioUnitPropertyID { get }
var kAUSamplerProperty_BankAndPreset: AudioUnitPropertyID { get }

/*!
	@typedef MusicDeviceInstrumentID
	@abstract type for instrument identifiers
*/
typealias MusicDeviceInstrumentID = UInt32

/*!
	@typedef MusicDeviceStdNoteParams
	@abstract convenience struct for specifying a note and velocity
	
	@discussion This struct is the common usage for MusicDeviceStartNote, as most synths that implement this functionality 
				will only allow for the specification of a note number and velocity when starting a new note.
	
	@param			argCount
			Should be set to 2
	@param			mPitch
			The pitch of the new note, typically specified using a MIDI note number (and a fractional pitch) within the 
					range of 0 < 128. So 60 is middle C, 60.5 is middle C + 50 cents.
	@param			mVelocity
			The velocity of the new note - this can be a fractional value - specified as MIDI (within the range of 0 < 128)
*/
struct MusicDeviceStdNoteParams {
  var argCount: UInt32
  var mPitch: Float32
  var mVelocity: Float32
  init()
  init(argCount: UInt32, mPitch: Float32, mVelocity: Float32)
}

/*!
	@typedef NoteParamsControlValue
	@abstract used to describe a control and value
	
	@discussion This struct is used to describe a parameterID (a control in MIDI terminology, though it is not limited to 
					MIDI CC specifications) and the value of this parameter.
	
	@param			mID
			The parameter ID
	@param			mValue
			The value of that parameter
*/
struct NoteParamsControlValue {
  var mID: AudioUnitParameterID
  var mValue: AudioUnitParameterValue
  init()
  init(mID: AudioUnitParameterID, mValue: AudioUnitParameterValue)
}

/*!
	@typedef MusicDeviceNoteParams
	@abstract Used to hold the value of the inParams parameter for the MusicDeviceStartNote function.
	
	@discussion The generic version of this structure describes an arg count (which is the number of mControls values 
				+ 1 for mPitch and 1 for mVelocity). So, argCount should at least be two. See MusicDeviceStdNoteParams 
				for the common use case, as many audio unit instruments will not respond to control values provided 
				in the start note function
	
	@param			argCount
			The number of controls + 2 (for mPitch and mVelocity)
	@param			mPitch
			The pitch of the new note, typically specified using a MIDI note number (and a fractional pitch) within the 
				range of 0 < 128. So 60 is middle C, 60.5 is middle C + 50 cents.
	@param			mVelocity
			The velocity of the new note - this can be a fractional value - specified as MIDI (within the range of 0 < 128)
	@param			mControls
			A variable length array with the number of elements: argCount - 2.
*/
struct MusicDeviceNoteParams {
  var argCount: UInt32
  var mPitch: Float32
  var mVelocity: Float32
  var mControls: (NoteParamsControlValue)
  init()
  init(argCount: UInt32, mPitch: Float32, mVelocity: Float32, mControls: (NoteParamsControlValue))
}
var kMusicNoteEvent_UseGroupInstrument: UInt32 { get }
var kMusicNoteEvent_Unused: UInt32 { get }

/*!
	@typedef		MusicDeviceGroupID
	@discussion The type used to specify which group (channel number in MIDI) is used with a given command (new note, 
				control or parameter value change)
*/
typealias MusicDeviceGroupID = UInt32

/*!
	@typedef		NoteInstanceID
	@discussion The type used to hold an unique identifier returned by MusicDeviceStartNote that is used to then address 
				that note (typically to turn the note off). An ID must be used for notes, because notes can be specified 
				by fractional pitches, and so using the MIDI note number is not sufficient to identify the note to turn 
				it off (or to apply polyphonic after touch). 
*/
typealias NoteInstanceID = UInt32

/*!
	@typedef		MusicDeviceComponent
	@discussion	The unique type of a MusicDevice audio unit (which is an AudioComponentInstance)
*/
typealias MusicDeviceComponent = AudioComponentInstance

/*!
	@function	MusicDeviceMIDIEvent
	@abstract	Used to sent MIDI channel messages to an audio unit
	
	@discussion	This is the API used to send MIDI channel messages to an audio unit. The status and data parameters 
				are used exactly as described by the MIDI specification, including the combination of channel and 
				command in the status byte.
	
	@param			inUnit
				The audio unit
	@param			inStatus
				The MIDI status byte
	@param			inData1
				The first MIDI data byte (value is in the range 0 < 128)
	@param			inData2
				The second MIDI data byte (value is in the range 0 < 128). If the MIDI status byte only has one 
					data byte, this should be set to zero.
	@param			inOffsetSampleFrame
				If you are scheduling the MIDI Event from the audio unit's render thread, then you can supply a 
					sample offset that the audio unit may apply when applying that event in its next audio unit render. 
					This allows you to schedule to the sample, the time when a MIDI command is applied and is particularly 
					important when starting new notes. If you are not scheduling in the audio unit's render thread, 
					then you should set this value to 0

	@result			noErr, or an audio unit error code
*/
@available(tvOS 5.0, *)
func MusicDeviceMIDIEvent(inUnit: MusicDeviceComponent, _ inStatus: UInt32, _ inData1: UInt32, _ inData2: UInt32, _ inOffsetSampleFrame: UInt32) -> OSStatus

/*!
	@function	MusicDeviceSysEx
	@abstract	used to send any non-channel MIDI event to an audio unit
	
	@discussion	This is used to send any non-channel MIDI event to an audio unit. In practise this is a System Exclusive 
					(SysEx) MIDI message
	
	@param			inUnit
				The audio unit
	@param			inData
				The complete MIDI SysEx message including the F0 and F7 start and termination bytes
	@param			inLength
				The size, in bytes, of the data

	@result			noErr, or an audio unit error code
*/
@available(tvOS 5.0, *)
func MusicDeviceSysEx(inUnit: MusicDeviceComponent, _ inData: UnsafePointer<UInt8>, _ inLength: UInt32) -> OSStatus

/*!
	@function	MusicDeviceStartNote
	@abstract	used to start a note
	
	@discussion	This function is used to start a note.  The caller must provide a NoteInstanceID to receive a 
					token that is then used to stop the note. The MusicDeviceStopNote call should be used to stop 
					notes started with this API. The token can also be used to address individual notes on the 
					kAudioUnitScope_Note if the audio unit supports it. The instrumentID is no longer used and the 
					kMusicNoteEvent_Unused constant should be specified (this takes the current patch for the 
					specifed group as the sound to use for the note).
	
			The Audio unit must provide an unique ID for the note instance ID. This ID must be non-zero and not 
					0xFFFFFFFF (any other UInt32 value is valid).
			
			Not all Music Device audio units implement the semantics of this API (though it is strongly recommended 
					that they do). A host application shoudl query the kMusicDeviceProperty_SupportsStartStopNote to 
					check that this is supported.
			
	@param			inUnit
				The audio unit
	@param			inInstrument
				The instrumentID is no longer used and the kMusicNoteEvent_Unused constant should be specified (this takes 
					the current patch for the specifed group as the sound to use for the note)
	@param			inGroupID
				The group ID that this note will be attached too. As with MIDI, all notes sounding on a groupID can be 
					controlled through the various parameters (such as pitch bend, etc) that can be specified on the Group 
					Scope
	@param			outNoteInstanceID
				A pointer to receive the token that is used to identify the note. This parameter must be specified
	@param			inOffsetSampleFrame
				If you are scheduling the MIDI Event from the audio unit's render thread, then you can supply a sample offset 
					that the audio unit may apply when starting the note in its next audio unit render. This allows you to 
					schedule to the sample and is particularly important when starting new notes. If you are not scheduling 
					in the audio unit's render thread, then you should set this value to 0
	@param			inParams
				The parameters to be used when starting the note - pitch and velocity must be specified
	
	@result			noErr, or an audio unit error code
*/
@available(tvOS 5.0, *)
func MusicDeviceStartNote(inUnit: MusicDeviceComponent, _ inInstrument: MusicDeviceInstrumentID, _ inGroupID: MusicDeviceGroupID, _ outNoteInstanceID: UnsafeMutablePointer<NoteInstanceID>, _ inOffsetSampleFrame: UInt32, _ inParams: UnsafePointer<MusicDeviceNoteParams>) -> OSStatus

/*!
	@function	MusicDeviceStopNote
	@abstract	used to stop notes started with the MusicDeviceStartNote call

	@discussion	This call is used to stop notes that have been started with the MusicDeviceStartNote call; both the group ID 
					that the note was started on and the noteInstanceID should be specified.
	
	@param			inUnit
				The audio unit
	@param			inGroupID
				the group ID
	@param			inNoteInstanceID
				the note instance ID
	@param			inOffsetSampleFrame
				the sample offset within the next buffer rendered that the note should be turned off at

	@result			noErr, or an audio unit error code
*/
@available(tvOS 5.0, *)
func MusicDeviceStopNote(inUnit: MusicDeviceComponent, _ inGroupID: MusicDeviceGroupID, _ inNoteInstanceID: NoteInstanceID, _ inOffsetSampleFrame: UInt32) -> OSStatus
var kMusicDeviceRange: Int { get }
var kMusicDeviceMIDIEventSelect: Int { get }
var kMusicDeviceSysExSelect: Int { get }
var kMusicDevicePrepareInstrumentSelect: Int { get }
var kMusicDeviceReleaseInstrumentSelect: Int { get }
var kMusicDeviceStartNoteSelect: Int { get }
var kMusicDeviceStopNoteSelect: Int { get }

/*!
	@typedef		MusicDeviceMIDIEventProc
	@discussion		This proc can be exported through the FastDispatch property or is used as the prototype for
					an audio component dispatch for this selector. 
					
					The arguments are the same as are provided to the corresponding API call
	
	@param			self
					For a component manager component, this is the component instance storage pointer
	@param			inStatus
	@param			inData1
	@param			inData2
	@param			inOffsetSampleFrame

	@result			noErr, or an audio unit error code
*/
typealias MusicDeviceMIDIEventProc = @convention(c) (UnsafeMutablePointer<Void>, UInt32, UInt32, UInt32, UInt32) -> OSStatus

/*!
	@typedef		MusicDeviceSysExProc
	@discussion		This proc can be exported through the FastDispatch property or is used as the prototype for
					an audio component dispatch for this selector. 
					
					The arguments are the same as are provided to the corresponding API call
	
	@param			self
					For a component manager component, this is the component instance storage pointer
	@param			inData
	@param			inLength

	@result			noErr, or an audio unit error code
*/
typealias MusicDeviceSysExProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<UInt8>, UInt32) -> OSStatus

/*!
	@typedef		MusicDeviceStartNoteProc
	@discussion		This proc can be exported through the FastDispatch property or is used as the prototype for
					an audio component dispatch for this selector. 
					
					The arguments are the same as are provided to the corresponding API call
	
	@param			self
					For a component manager component, this is the component instance storage pointer
	@param			inInstrument
	@param			inGroupID
	@param			outNoteInstanceID
	@param			inOffsetSampleFrame
	@param			inParams
	
	@result			noErr, or an audio unit error code
*/
typealias MusicDeviceStartNoteProc = @convention(c) (UnsafeMutablePointer<Void>, MusicDeviceInstrumentID, MusicDeviceGroupID, UnsafeMutablePointer<NoteInstanceID>, UInt32, UnsafePointer<MusicDeviceNoteParams>) -> OSStatus

/*!
	@typedef		MusicDeviceStopNoteProc
	@discussion		This proc can be exported through the FastDispatch property or is used as the prototype for
					an audio component dispatch for this selector. 
					
					The arguments are the same as are provided to the corresponding API call
	
	@param			self
					For a component manager component, this is the component instance storage pointer
	@param			inGroupID
	@param			inNoteInstanceID
	@param			inOffsetSampleFrame
	
	@result			noErr, or an audio unit error code
*/
typealias MusicDeviceStopNoteProc = @convention(c) (UnsafeMutablePointer<Void>, MusicDeviceGroupID, NoteInstanceID, UInt32) -> OSStatus
