

/*! Opaque pointer to userland FWARefRec */
typealias FWARef = COpaquePointer

/*! Opaque kernel pointer to AM824Channel */
typealias FWAIsochStreamRef = COpaquePointer

/*! Opaque kernel pointer to AppleLocalAudioDevice */
typealias FWADeviceRef = COpaquePointer

/*! Opaque kernel pointer to AppleFWAudioEngineNub */
typealias FWAEngineRef = COpaquePointer

/*! Opaque kernel pointer to AppleFWAudioStream. */
typealias FWAAudioStreamRef = COpaquePointer

/*! Opaque kernel pointer to AppleFWAudioMIDIStream. */
typealias FWAMIDIStreamRef = COpaquePointer

/*! Opaque kernel pointer to AppleFWAudioMIDIPlug. */
typealias FWAMIDIPlugRef = COpaquePointer

/*! Opaque kernel pointer to AppleFWAudioStream. */
typealias FWAAudioPlugRef = COpaquePointer

/*! Opaque kernel pointer to AppleFWAudioMIDIDeviceNub. */
typealias FWAMIDIDeviceNubRef = COpaquePointer
typealias FWADeviceID = UInt32

/*!
	 * @function FWACountDevices
	 * @abstract Returns the number of AppleFWAudio devices connected to the system and their node IDs.
	 * @discussion Because node IDs are dynamic and can change, you should get the device list again after each bus reset.
	 * @availability Version 1
	 * @param deviceNodeIDArray Pointer to an array of UInt16 values representing node IDs.
	 * @param deviceCount On input, pass in the size of the array; on output, deviceCount contains the number of nodeIDs returned in the array.
	 * @result OSStatus
	 */
func FWACountDevices(deviceNodeIDArray: UnsafeMutablePointer<UInt16>, _ deviceCount: UnsafeMutablePointer<UInt16>) -> OSStatus

/*!
	 * @function FWAOpen
	 * @abstract Opens a user client connection to the AppleFWAudio driver.
	 * @discussion The returned FWARef is needed for all future calls to the user library. The FWARef is unique to the node ID used to open the
	 * connection. If the node ID changes after a bus reset, you can get the device's new node ID using @link FWAGetNodeID FWAGetNodeID@/link.
	 * @availability Version 1
	 * @param nodeID The node ID of the device to open.
	 * @param outRef On return, the FWARef for the device.
	 * @result OSStatus
	 */
func FWAOpen(nodeID: UInt32, _ outRef: UnsafeMutablePointer<FWARef>) -> OSStatus

/*!
	 * @function FWAOpenLocal
	 * @abstract Opens a connection to the FireWire audio service that is attached to the Macintosh local FireWire node.
	 * @discussion The FWARef device reference returned by this function can be passed to all functions that
	 * accept an FWARef. Note that some functions in earlier versions of the AppleFWAudioUserLib API may not
	 * work with a local FireWire node reference. This reference will work with all functions in version 5
	 * and above of the API.
	 *
	 * If the outRef parameter is set to 'midi' before calling this function, an internal flag is set that
	 * indicates this is a connection to the MIDI system. Note that there can be only one connection to the
	 * MIDI system at a time. An access error will be returned if a MIDI connection is attempted while another
	 * MIDI connection is already open. The AppleFWAudioMIDIDriver uses this mode to vend its MIDI services.
	 * If this connection is open before the AppleFWAudioMIDIDriver attempts to open it, MIDI data will not
	 * be sent to and from CoreMIDI.
	 * @availability Version 5
	 * @param outRef On return, an FWARef that represents the FireWire audio service attached to the Macintosh local FireWire node.
	 * @result OSStatus
	 */
func FWAOpenLocal(outRef: UnsafeMutablePointer<FWARef>) -> OSStatus

/*!
	 * @function FWAClose
	 * @abstract Closes the connection that was made to the device with @link FWAOpen FWAOpen@/link.
	 * @availability Version 1 
	 * @param inRef The FWARef of the device to close.
	 * @result OSStatus
	 */
func FWAClose(inRef: FWARef) -> OSStatus

/*!
	 * @function FWARead
	 * @abstract 
	 * @discussion 
	 * @availability Version 1
	 * @param inRef
	 * @param inAddress
	 * @param inSubAddress
	 * @param inDataSize
	 * @param inDataPtr
	 * @result OSStatus
	 */
func FWARead(inRef: FWARef, _ inAddress: UInt8, _ inSubAddress: UInt8, _ inDataSize: Int, _ inDataPtr: UnsafeMutablePointer<Void>) -> OSStatus

/*!
	 * @function FWAWrite
	 * @abstract 
	 * @discussion 
	 * @availability Version 1
	 * @param inRef
	 * @param inAddress
	 * @param inSubAddress
	 * @param inDataSize
	 * @param inDataPtr
	 * @result OSStatus
	 */
func FWAWrite(inRef: FWARef, _ inAddress: UInt8, _ inSubAddress: UInt8, _ inDataSize: Int, _ inDataPtr: UnsafePointer<Void>) -> OSStatus

/*! @group Version 1 (mLAN support) */
	/*!
	 * @function FWAGetNodeID
	 * @abstract Returns the node ID of the passed-in FWARef device reference.
	 * @discussion Node IDs can change after the device is opened with the FWARef device reference. This function returns the current node ID.
	 * @availability Version 1 
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param outNodeID The node ID of the device for the current bus generation.
	 * @param outGeneration The current bus generation.
	 * @result OSStatus
	 */
func FWAGetNodeID(inRef: FWARef, _ outNodeID: UnsafeMutablePointer<UInt32>, _ outGeneration: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	 * @function FWAGetGUID
	 * @abstract Returns the device's globally unique ID (GUID).
	 * @availability Version 1
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param guid The address of a UInt64 to hold the device GUID.
	 * @result OSStatus
	 */
func FWAGetGUID(inRef: FWARef, _ guid: UnsafeMutablePointer<UInt64>) -> OSStatus

/*!
	 * @function FWAGetMacGUID
	 * @abstract Returns the Macintosh computer's globally unique ID (GUID).
	 * @availability Version 1 
	 * @param inRef In general this parameter is ignored, but it may be needed if the device is connected to an add-in FireWire card.
	 * @param guid The address of a UInt64 to hold the Macintosh computer's GUID.
	 * @result OSStatus
	 */
func FWAGetMacGUID(inRef: FWARef, _ guid: UnsafeMutablePointer<UInt64>) -> OSStatus

/*!
	 * @function FWAReadQuadlet
	 * @abstract Reads a quadlet at the specified FireWire address.
	 * @availability Version 1 
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param address A pointer to the FWAddress of the quadlet to read. 
	 * @param outData A pointer to a UInt32 to hold the quadlet that was read.
	 * @result OSStatus
	 */
func FWAReadQuadlet(inRef: FWARef, _ address: FWAddressPtr, _ outData: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	 * @function FWAReadBlock
	 * @abstract Reads a block of data from the specified FireWire address.
	 * @availability Version 1 
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param address A pointer to the FWAddress at the start of the read.
	 * @param size A pointer to a UInt32 that holds the size of the block to read.
	 * @param outData A pointer to the data that was read.
	 * @result OSStatus
	 */
func FWAReadBlock(inRef: FWARef, _ address: FWAddressPtr, _ size: UnsafeMutablePointer<UInt32>, _ outData: UnsafeMutablePointer<UInt8>) -> OSStatus

/*!
	 * @function FWAExecuteAVC
	 * @abstract Sends an AVC command to the device and receives a response.
	 * @availability Version 1 
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param cmd A pointer to the AVC command to send.
	 * @param cmdSize The size of the AVC command.
	 * @param response A pointer to the response buffer.
	 * @param responseSize A pointer to the size of the response.
	 * @result OSStatus
	 */
func FWAExecuteAVC(inRef: FWARef, _ cmd: UnsafeMutablePointer<UInt8>, _ cmdSize: UInt32, _ response: UnsafeMutablePointer<UInt8>, _ responseSize: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	 * @function FWAWriteQuadlet
	 * @abstract Writes a quadlet to the specified FireWire address.
	 * @availability Version 1 
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param address A pointer to the FWAddress of the quadlet to write.
	 * @param data The data to write.
	 * @result OSStatus
	 */
func FWAWriteQuadlet(inRef: FWARef, _ address: FWAddressPtr, _ data: UInt32) -> OSStatus

/*!
	 * @function FWAWriteBlock
	 * @abstract Writes a block of data to the specified FireWire address.
	 * @availability Version 1
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param address A pointer to the FWAddress to write to.
	 * @param size The size of the block.
	 * @param data A pointer to the data to write.
	 * @result OSStatus
	 */
func FWAWriteBlock(inRef: FWARef, _ address: FWAddressPtr, _ size: UInt32, _ data: UnsafePointer<UInt8>) -> OSStatus

/*!
	 * @function FWACreateMIDIStream
	 * @abstract Creates a MIDI stream reference which allows MIDI to be sent and received via the FireWire device.
	 * @availability Version 1
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param midiIO MIDI input or output (can be either kMIDIInput or kMIDIOutput).
	 * @param bufSizeInBytes The size of the buffer in bytes.
	 * @param buf A pointer to the buffer to hold the MIDI bytes sent to or received from the driver.
	 * @param sequenceNum The sequence number of the MIDI data in the isochronous packet.
	  * @param midiStreamRef On return, the reference to the MIDI stream to use in other MIDI functions.
	 * @result OSStatus
	 */
func FWACreateMIDIStream(inRef: FWARef, _ midiIO: UInt32, _ bufSizeInBytes: UInt32, _ buf: UnsafeMutablePointer<Void>, _ sequenceNum: UInt32, _ midiStreamRef: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	 * @function FWADisposeMIDIStream
	 * @abstract Destroys a MIDI stream reference.
	 * @availability Version 1 
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param midiStreamRef The MIDI stream reference created with @link FWACreateMIDIStream FWACreateMIDIStream@/link.
	 * @result OSStatus
	 */
func FWADisposeMIDIStream(inRef: FWARef, _ midiStreamRef: UInt32) -> OSStatus

/*!
	 * @function FWAWriteMIDIData
	 * @abstract This function has been deprecated. Use @link FWAWriteMIDIDataAsync FWAWriteMIDIDataAsync@/link instead.
	 */
func FWAWriteMIDIData(inRef: FWARef, _ midiStreamRef: UInt32, _ writeMsgLength: UInt32, _ buf: UnsafeMutablePointer<UInt8>) -> OSStatus

/*!
	 * @function FWAReadMIDIData
	 * @abstract This function has been deprecated. Use @link FWAReadMIDIDataAsync FWAReadMIDIDataAsync@/link instead.
	 */
func FWAReadMIDIData(inRef: FWARef, _ midiStreamRef: UInt32, _ buf: UnsafeMutablePointer<FWAMIDIReadBuf>) -> OSStatus

/*!
	 * @function FWAGetCycleTimeOffset
	 * @abstract Gets the cycle time offset the driver adds to the time stamp to compensate for delays in the packetizer.
	 * @availability Version 2
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param cycleTimeOffset The cycle time offset in nanoseconds.
	 * @result OSStatus
	 */
func FWAGetCycleTimeOffset(inRef: FWARef, _ cycleTimeOffset: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	 * @function FWASetCycleTimeOffset
	 * @abstract Sets the cycle time offset the driver should add to the time stamp to compensate for delays in the packetizer.
	 * @availability Version 2
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param cycleTimeOffset The cycle time offset in nanoseconds.
	 * @result OSStatus
	 */
func FWASetCycleTimeOffset(inRef: FWARef, _ cycleTimeOffset: UInt32) -> OSStatus

/*!
	 * @function FWAGetVendorID
	 * @abstract Gets the vendor ID of the device.
	 * @discussion This function retrieves the vendor ID that the FireWire family places in the I/O Registry when the device is enumerated.
	 * @availability Version 2
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param vendorID On return, a pointer to the vendor ID of the device.
	 * @result OSStatus
	 */
func FWAGetVendorID(inRef: FWARef, _ vendorID: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	 * @function FWAGetDeviceName
	 * @abstract Gets the name of the device.
	 * @discussion This function retrieves the device name that the FireWire family places in the I/O Registry when the device is enumerated.
	 * @availability Version 2
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param name On return, a pointer to the device name.
	 * @result OSStatus
	 */
func FWAGetDeviceName(inRef: FWARef, _ name: UnsafeMutablePointer<Int8>) -> OSStatus

/*!
	 * @function FWAGetVendorName
	 * @abstract Gets the vendor name of the device.
	 * @discussion This function retrieves the vendor name that the FireWire family places in the I/O Registry when the device is enumerated.
	 * @availability Version 2
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param name On return, a pointer to the device name.
	 * @result OSStatus
	 */
func FWAGetVendorName(inRef: FWARef, _ name: UnsafeMutablePointer<Int8>) -> OSStatus

/*!
	 * @function FWAIsMIDICapable
	 * @abstract Returns whether the device is MIDI capable.
	 * @availability Version 2
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param supportsMIDI On return, a pointer to a Boolean value (TRUE if the device supports MIDI, FALSE if it does not).
	 * @result OSStatus
	 */
func FWAIsMIDICapable(inRef: FWARef, _ supportsMIDI: UnsafeMutablePointer<Bool>) -> OSStatus

/*!
	 * @function FWAGetNumMIDIInputPlugs
	 * @abstract Gets the total number of MIDI input plugs of all MIDI streams attached to the device.
	 * @availability Version 2
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param plugs On return, a pointer to the number of MIDI input plugs.
	 * @result OSStatus
	 */
func FWAGetNumMIDIInputPlugs(inRef: FWARef, _ plugs: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	 * @function FWAGetNumMIDIOutputPlugs
	 * @abstract Gets the total number of MIDI output plugs of all MIDI streams attached to the device.
	 * @availability Version 2
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param plugs On return, a pointer to the number of MIDI output plugs.
	 * @result OSStatus 
	 */
func FWAGetNumMIDIOutputPlugs(inRef: FWARef, _ plugs: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	 * @function FWASetNumMIDIInputPlugs
	 * @abstract Sets the number of MIDI input plugs of all MIDI streams attached to the device.
	 * @availability Version 2
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param plugs The number of input plugs.
	 * @result OSStatus
	 */
func FWASetNumMIDIInputPlugs(inRef: FWARef, _ plugs: UInt32) -> OSStatus

/*!
	 * @function FWASetNumMIDIOutputPlugs
	 * @abstract Sets the number of MIDI output plugs of all MIDI streams attached to the device.
	 * @availability Version 2
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param plugs The number of output plugs.
	 * @result OSStatus
	 */
func FWASetNumMIDIOutputPlugs(inRef: FWARef, _ plugs: UInt32) -> OSStatus

/*!
	 * @function FWAGetNumAudioInputPlugs
	 * @abstract Gets the total number of audio input plugs to the device.
	 * @availability Version 2
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param plugs On return, a pointer to the number of audio input plugs.
	 * @result OSStatus
	 */
func FWAGetNumAudioInputPlugs(inRef: FWARef, _ plugs: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	 * @function FWAGetNumAudioOutputPlugs
	 * @abstract Gets the total number of audio output plugs to the device.
	 * @availability Version 2
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param plugs On return, a pointer to the number of audio output plugs.
	 * @result OSStatus
	 */
func FWAGetNumAudioOutputPlugs(inRef: FWARef, _ plugs: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	 * @function FWACreateAudioStream
	 * @abstract This function has been deprecated. Use @link FWACreateFWAudioStream FWACreateFWAudioStream@/link instead.
	 * @availability Version 2
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param audioIO
	 * @param audioStreamRef
	 * @param sequenceNum
	 * @result OSStatus
	 */
func FWACreateAudioStream(inRef: FWARef, _ audioIO: UInt32, _ audioStreamRef: UnsafeMutablePointer<UInt32>, _ sequenceNum: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	 * @function FWADisposeAudioStream
	 * @abstract This function has been deprecated. Use @link FWADisposeFWAudioStream FWADisposeFWAudioStream@/link instead.
	 * @availability Version 3
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param audioStreamRef
	 * @result OSStatus
	 */
func FWADisposeAudioStream(inRef: FWARef, _ audioStreamRef: UInt32) -> OSStatus

/*!
	 * @function FWAGetDeviceSampleRate 
	 * @abstract Gets the device's current sample rate.
	 * @availability Version 3
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param rate On return, a pointer to the current sample rate value.
	 * @result OSStatus
	 */
func FWAGetDeviceSampleRate(inRef: FWARef, _ rate: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	 * @function FWAGetDeviceSendMode
	 * @abstract Gets the device's current send mode.
	 * @availability Version 3
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param mode On return, a pointer to the send mode (can be either IEC60958 or Raw audio).
	 * @result OSStatus
	 */
func FWAGetDeviceSendMode(inRef: FWARef, _ mode: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	 * @function FWAGetDeviceStatus
	 * @abstract Returns a status structure containing device statistics (intended for diagnostic use).
	 * @availability Version 3
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param outData A pointer to a status structure.
	 * @param inSize The size of the status structure.
	 * @result OSStatus
	 */
func FWAGetDeviceStatus(inRef: FWARef, _ outData: UnsafeMutablePointer<Void>, _ inSize: UInt32) -> OSStatus

/*!
	 * @function FWAGetDeviceStreamInfo
	 * @abstract Returns private information about the driver, according to specific input parameters.
	 * @availability Version 3
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param audioStreamRef Unused.
	 * @param numInput The number of input channels of this stream.
	 * @param inputIsochChan The isochronous channel used for the input stream.
	 * @param numOutput The number of output channels of this stream.
	 * @param outputIsochChan The isochronous channel used for the output stream.
	 * @result OSStatus
	 */
func FWAGetDeviceStreamInfo(inRef: FWARef, _ audioStreamRef: UInt32, _ numInput: UnsafeMutablePointer<UInt32>, _ inputIsochChan: UnsafeMutablePointer<UInt32>, _ numOutput: UnsafeMutablePointer<UInt32>, _ outputIsochChan: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	 * @function FWAInitAEvntSource
	 * @abstract Initializes the event source so asynchronous commands can send a notification to the CFRunLoop source.
	 * @availability Version 3
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param source The run loop to send messages to.
	 * @param refcon User value that is returned when the event source is triggered.
	 * @result OSStatus
	 */
func FWAInitAEvntSource(inRef: FWARef, _ source: UnsafeMutablePointer<Unmanaged<CFRunLoopSource>?>, _ refcon: UnsafeMutablePointer<Void>) -> OSStatus

/*!
	 * @function CreateAsyncWakePort
	 * @abstract Creates a port for asynchronous responses (most developers will not need to use this).
	 * @availability Version 3
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param notifyPort On return, a Mach port (mach_port_t) for notification.
	 * @result OSStatus
	 */
func CreateAsyncWakePort(inRef: FWARef, _ notifyPort: UnsafeMutablePointer<mach_port_t>) -> OSStatus

/*!
	 * @function FWAGetAEvntSource
	 * @abstract Gets the event source reference.
	 * @availability Version 3
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @result The run loop to pass in @link FWAInitAEvntSource FWAInitAEvntSource@/link.
	 */
func FWAGetAEvntSource(inRef: FWARef) -> Unmanaged<CFRunLoopSource>!

/*!
	 * @function FWAWriteMIDIDataAsync
	 * @abstract Writes data to the MIDI stream asynchronously.
	 * @availability Version 3
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param midiStreamRef The FWAMIDIStreamRef returned in @link FWACreateMIDIStream FWACreateMIDIStream@/link.
	 * @param writeMsgLength Length of the data to write in bytes.
	 * @param callback
	 * @param refCon User value that is returned when the notification is sent.
	 * @result OSStatus
	 */
func FWAWriteMIDIDataAsync(inRef: FWARef, _ midiStreamRef: UInt32, _ writeMsgLength: UInt32, _ callback: IOAsyncCallback1!, _ refCon: UnsafeMutablePointer<Void>) -> OSStatus

/*!
	 * @function FWAReadMIDIDataAsync
	 * @abstract Reads data from the MIDI stream asynchronously.
	 * @availability Version 3
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link.
	 * @param midiStreamRef The FWAMIDIStreamRef returned in @link FWACreateMIDIStream FWACreateMIDIStream@/link.
	 * @param readBufSize Size in bytes of the buffer in which to receive the results.
	 * @param callback
	 * @param refCon User value that is returned when the notification is sent.
	 * @result OSStatus
	 */
func FWAReadMIDIDataAsync(inRef: FWARef, _ midiStreamRef: UInt32, _ readBufSize: UInt32, _ callback: IOAsyncCallback2!, _ refCon: UnsafeMutablePointer<Void>) -> OSStatus

/*!
	 * @function FWASetDeviceStreamInfo
	 * @abstract This function is deprecated.
	 * @availability Version 4
	 * @param inRef
	 * @param audioStreamRef
	 * @param numInput
	 * @param inputIsochChan 
	 * @param numOutput 
	 * @param outputIsochChan
	 * @param update
	 * @result Because this function is deprecated, the return value indicates it is unimplemented.
	 */
func FWASetDeviceStreamInfo(inRef: FWARef, _ audioStreamRef: UInt32, _ numInput: UInt32, _ inputIsochChan: UInt32, _ numOutput: UInt32, _ outputIsochChan: UInt32, _ update: Bool) -> OSStatus

/*!
	 * @function FWASyncUpDevice
	 * @abstract Causes a notification to be sent to the driver that something may have changed externally and that the driver should resynchronize.  This function is currently not used.
	 * @availability Version 5 
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @result OSStatus
	 */
func FWASyncUpDevice(inRef: FWARef) -> OSStatus

/*!
	 * @function FWAGetMaxSpeed
	 * @availability Version 5
	 * @abstract Gets the maximum speed of the device.
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param speed On return, a pointer to an IOFWSpeed that contains the speed.
	 * @result OSStatus
	 */
func FWAGetMaxSpeed(inRef: FWARef, _ speed: UnsafeMutablePointer<IOFWSpeed>) -> OSStatus

/*!
	 * @function FWAGetMaxIsochChannels
	 * @abstract Gets the maximum number of isochronous stream contexts the Macintosh can support.
	 * @availability Version 5 
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param inChannels On return, a pointer to the number of isochronous input channels.
	 * @param outChannels On return, a pointer to the number of isochronous output channels.
	 * @result OSStatus
	 */
func FWAGetMaxIsochChannels(inRef: FWARef, _ inChannels: UnsafeMutablePointer<UInt32>, _ outChannels: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	 * @function FWAGetMaxSequences
	 * @abstract Gets the maximum number of sequences the driver can support.
	 * @availability Version 5 
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param numSequences On return, a pointer to the number of sequences.
	 * @result OSStatus
	 */
func FWAGetMaxSequences(inRef: FWARef, _ numSequences: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	 * @function FWAGetSupportedSampleRates
	 * @abstract Gets the sample rates the driver supports.
	 * @availability Version 5 
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param sampleRates A pointer to an array of sample rates.
	 * @param count On input, a pointer to the number of sample rates the array can hold; on return, the actual number of sample rates returned.
	 * @result OSStatus
	 */
func FWAGetSupportedSampleRates(inRef: FWARef, _ sampleRates: UnsafeMutablePointer<UInt32>, _ count: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	 * @function FWAGetSupportedAudioTypes
	 * @abstract Gets the audio types the driver supports.
	 * @availability Version 5 
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param audioTypes A pointer to an array of audio types. 
	 * @param count On input, a pointer to the number of audio types the array can hold; on return, the actual number of audio types returned.
	 * @result OSStatus
	 */
func FWAGetSupportedAudioTypes(inRef: FWARef, _ audioTypes: UnsafeMutablePointer<FWAudioType>, _ count: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	 * @function FWAGetCurrentIsochStreamRefs
	 * @abstract Gets the isochronous stream references the driver currently supports.
	 * @availability Version 5 
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param isochStreamRef A pointer to an array of isochronous stream references.
	 * @param count On input, a pointer to the number of audio types the array can hold; on return, the actual number of audio types returned.
	 * @result OSStatus
	 */
func FWAGetCurrentIsochStreamRefs(inRef: FWARef, _ isochStreamRef: UnsafeMutablePointer<FWAIsochStreamRef>, _ count: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	 * @function FWAGetIsochStreamState
	 * @abstract Gets the isochronous stream state of the specified isochronous stream reference.
	 * @availability Version 5
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param isochStreamRef An isochronous stream reference.
	 * @param state A pointer to an FWAStreamState that contains the current state (can be stopped, running, paused, or resumed).
	 * @result OSStatus
	 */
func FWAGetIsochStreamState(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ state: UnsafeMutablePointer<FWAStreamState>) -> OSStatus

/*!
	 * @function FWAGetIsochStreamDirection
	 * @abstract Gets the stream direction of the specified isochronous stream reference.
	 * @availability Version 5
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param isochStreamRef An isochronous stream reference.
	 * @param direction A pointer to an FWAStreamDirection that contains the current stream direction (can be out or in).
	 * @result OSStatus
	 */
func FWAGetIsochStreamDirection(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ direction: UnsafeMutablePointer<FWAStreamDirection>) -> OSStatus

/*!
	 * @function FWAGetIsochStreamChannelID
	 * @abstract Gets the current isochronous stream channel ID.
	 * @availability Version 5
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param isochStreamRef An isochronous stream reference.
	 * @param channelID On return, a pointer to the current isochronous stream channel ID.
	 * @result OSStatus
	 */
func FWAGetIsochStreamChannelID(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ channelID: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	 * @function FWASetIsochStreamChannelID
	 * @abstract Sets the isochronous stream channel ID to the given value.
	 * @availability Version 5
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param isochStreamRef An isochronous stream reference.
	 * @param channelID The value to which the isochronous stream channel ID should be set.
	 * @result OSStatus
	 */
func FWASetIsochStreamChannelID(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ channelID: UInt32) -> OSStatus

/*!
	 * @function FWAGetIsochStreamSampleRate
	 * @abstract Gets the sample rate of the specified isochronous stream.
	 * @availability Version 5
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param isochStreamRef An isochronous stream reference.
	 * @param rate On return, a pointer to the isochronous stream sample rate.
	 * @result OSStatus 
	 */
func FWAGetIsochStreamSampleRate(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ rate: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	 * @function FWASetIsochStreamSampleRate
	 * @abstract Sets the sample rate of the specified isochronous stream.
	 * @availability Version 5
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param isochStreamRef An isochronous stream reference.
	 * @param rate The sample rate to which the isochronous stream should be set.
	 * @result OSStatus 
	 */
func FWASetIsochStreamSampleRate(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ rate: UInt32) -> OSStatus

/*!
	 * @function FWAGetIsochStreamOutputSpeed
	 * @abstract Gets the speed of the specified isochronous output stream.
	 * @availability Version 5 
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param isochStreamRef An isochronous stream reference. 
	 * @param speed On return, a pointer to an IOFWSpeed that contains the speed.
	 * @result OSStatus
	 */
func FWAGetIsochStreamOutputSpeed(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ speed: UnsafeMutablePointer<IOFWSpeed>) -> OSStatus

/*!
	 * @function FWASetIsochStreamOutputSpeed
	 * @abstract Sets the speed of the specified isochronous output stream.
	 * @availability Version 5 
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param isochStreamRef An isochronous stream reference. 
	 * @param speed The speed to which the isochronous output stream should be set.
	 * @result OSStatus
	 */
func FWASetIsochStreamOutputSpeed(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ speed: IOFWSpeed) -> OSStatus

/*!
	 * @function FWAGetIsochStreamAudioType 
	 * @abstract Gets the audio type of the specified isochronous stream.
	 * @availability Version 5 
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param isochStreamRef An isochronous stream reference.
	 * @param type On return, a pointer to an FWAudioType that contains the type (can be IEC60598, raw audio, or MIDI).
	 * @result OSStatus
	 */
func FWAGetIsochStreamAudioType(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ type: UnsafeMutablePointer<FWAudioType>) -> OSStatus

/*!
	 * @function FWASetIsochStreamAudioType 
	 * @abstract Sets the audio type of the specified isochronous stream.
	 * @availability Version 5 
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param isochStreamRef An isochronous stream reference.
	 * @param type The audio type to which the isochronous stream should be set.
	 * @result OSStatus
	 */
func FWASetIsochStreamAudioType(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ type: FWAudioType) -> OSStatus

/*!
	 * @function FWACreateIsochStream
	 * @abstract Creates an isochronous stream.
	 * @availability Version 5 
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param channelNumber The requested isochronous channel number to use. If this channel number is available, it will be allocated. If this channel number is in use, this routine will find
	 * the next available channel number. If there are no more channels available, it will return kIOReturnNoResources.
	 * @param direction The direction of the isochronous stream (can be kIOAudioStreamDirectionInput or kIOAudioStreamDirectionOutput).
	 * @param numAudioChannels The number of audio channels to create for this stream.
	 * @param numMIDIChannels The number of MIDI channels to create for this stream.
	 * @param isochStreamRef On return, an FWAIsochStreamRef representing this isochronous stream.
	 * @result OSStatus
	 */
func FWACreateIsochStream(inRef: FWARef, _ channelNumber: UInt32, _ direction: FWAStreamDirection, _ numAudioChannels: UInt32, _ numMIDIChannels: UInt32, _ isochStreamRef: UnsafeMutablePointer<FWAIsochStreamRef>) -> OSStatus

/*!
	 * @function FWADisposeIsochStream
	 * @abstract Destroys the isochronous stream reference.
	 * @availability Version 5
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param isochStreamRef The FWAIsochStreamRef created with @link FWACreateIsochStream FWACreateIsochStream@/link.
	 * @result OSStatus
	 */
func FWADisposeIsochStream(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef) -> OSStatus

/*!
	 * @function FWAStartIsochStream
	 * @abstract Starts an isochronous stream.
	 * @availability Version 5 
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param isochStreamRef The FWAIsochStreamRef created with @link FWACreateIsochStream FWACreateIsochStream@/link.
	 * @result OSStatus
	 */
func FWAStartIsochStream(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef) -> OSStatus

/*!
	 * @function FWAStopIsochStream
	 * @abstract Stops an isochronous stream.
	 * @availability Version 5 
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param isochStreamRef The FWAIsochStreamRef created with @link FWACreateIsochStream FWACreateIsochStream@/link.
	 * @result OSStatus
	 */
func FWAStopIsochStream(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef) -> OSStatus

/*!
	 * @function FWAGetIsochStreamAudioSequenceCount
	 * @abstract Returns the number of audio sequences in the frame.
	 * @availability Version 5 
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param isochStreamRef The FWAIsochStreamRef created with @link FWACreateIsochStream FWACreateIsochStream@/link.
	 * @param numAudioSequence On return, a pointer to the audio sequence count.
	 * @result OSStatus
	 */
func FWAGetIsochStreamAudioSequenceCount(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ numAudioSequence: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	 * @function FWASetIsochStreamAudioSequenceCount
	 * @abstract Changes the number of audio sequences in a FWAIsochStreamRef object.
	 * @availability Version 5 
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param isochStreamRef The FWAIsochStreamRef created with @link FWACreateIsochStream FWACreateIsochStream@/link.
	 * @param numAudioSequence The number to which the isochronous stream audio sequence count should be set.
	 * @result OSStatus
	 */
func FWASetIsochStreamAudioSequenceCount(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ numAudioSequence: UInt32) -> OSStatus

/*!
	 * @function FWAGetIsochStreamMIDISequenceCount
	 * @abstract Returns the number of MIDI sequences in the frame.
	 * @availability Version 5 
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param isochStreamRef The FWAIsochStreamRef created with @link FWACreateIsochStream FWACreateIsochStream@/link.
	 * @param numMIDISequence On return, the sequence count of the MIDI stream.
	 * @result OSStatus
	 */
func FWAGetIsochStreamMIDISequenceCount(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ numMIDISequence: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	 * @function FWASetIsochStreamMIDISequenceCount
	 * @abstract
	 * @availability Version 5
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param isochStreamRef The FWAIsochStreamRef created with @link FWACreateIsochStream FWACreateIsochStream@/link.
	 * @param numMIDISequence The sequence count to which the MIDI stream should be set.
	 * @result OSStatus
	 */
func FWASetIsochStreamMIDISequenceCount(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ numMIDISequence: UInt32) -> OSStatus

/*!
	 * @function FWACreateFWAudioDevice
	 * @abstract Creates an audio device that is connected to the local node.
	 * @discussion To create a local audio device that will work with Core Audio, you must also create the following
	 * objects (in this order):<br>
	 * <ul><li>An audio engine (using @link FWACreateFWAudioEngine FWACreateFWAudioEngine@/link)</li>
	 * <li>One or more isochronous streams (using @link FWACreateIsochStream FWACreateIsochStream@/link)</li>
	 * <li>One or more audio streams (using @link FWACreateFWAudioStream FWACreateFWAudioStream@/link)</li>
	 * </ul>
	 * @availability Version 5
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param deviceName The string representing the device name.
	 * @param vendorID The vendor ID of the device.
	 * @param guid The GUID of the device.
	 * @param device On return, the FWADeviceRef representing the audio device.
	 * @result OSStatus
	 */
func FWACreateFWAudioDevice(inRef: FWARef, _ deviceName: UnsafePointer<Int8>, _ vendorID: UInt32, _ guid: UnsafePointer<Int8>, _ device: UnsafeMutablePointer<FWADeviceRef>) -> OSStatus

/*!
	 * @function FWADisposeFWAudioDevice
	 * @abstract Destroys an audio device object.
	 * @availability Version 5
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param device The FWADeviceRef created with @link FWACreateFWAudioDevice FWACreateFWAudioDevice@/link.
	 * @result OSStatus
	 */
func FWADisposeFWAudioDevice(inRef: FWARef, _ device: FWADeviceRef) -> OSStatus

/*!
	 * @function FWAStartFWAudioDevice
	 * @abstract Starts an audio device.
	 * @discussion All streams connected to the device will be started. If there are no streams attached, this function will return a kIOReturnNoResources error.
	 * @availability Version 5
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param device The FWADeviceRef created with @link FWACreateFWAudioDevice FWACreateFWAudioDevice@/link.
	 * @result OSStatus
	 */
func FWAStartFWAudioDevice(inRef: FWARef, _ device: FWADeviceRef) -> OSStatus

/*!
	 * @function FWAStopFWAudioDevice
	 * @abstract Stops an audio device.
	 * @discussion This function stops all the streams connected to the device and deallocates the resources created for the streaming.
	 * @availability Version 5
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param device The FWADeviceRef created with @link FWACreateFWAudioDevice FWACreateFWAudioDevice@/link.
	 * @result OSStatus 
	 */
func FWAStopFWAudioDevice(inRef: FWARef, _ device: FWADeviceRef) -> OSStatus

/*!
	 * @function FWACreateFWAudioEngine
	 * @abstract Creates an IOAudioEngine for the specified audio device.
	 * @availability Version 5 
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param owningDevice The FWADeviceRef created with @link FWACreateFWAudioDevice FWACreateFWAudioDevice@/link.
	 * @param hasInput A Boolean value that indicates whether the device has audio input channels.
	 * @param hasOutput A Boolean value that indicates whether the device has audio output channels.
	 * @param engine On return, the FWAEngineRef representing the audio engine.
	 * @result OSStatus
	 */
func FWACreateFWAudioEngine(inRef: FWARef, _ owningDevice: FWADeviceRef, _ hasInput: Bool, _ hasOutput: Bool, _ engine: UnsafeMutablePointer<FWAEngineRef>) -> OSStatus

/*!
	 * @function FWADisposeFWAudioEngine
	 * @abstract Destroys an audio engine object.
	 * @availability Version 5 
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param engine The FWAEngineRef created with @link FWACreateFWAudioEngine FWACreateFWAudioEngine@/link.
	 * @result OSStatus
	 */
func FWADisposeFWAudioEngine(inRef: FWARef, _ engine: FWAEngineRef) -> OSStatus

/*!
	 * @function FWACreateFWAudioStream
	 * @abstract Creates an audio stream in the specified isochronous stream.
	 * @availability Version 5 
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param owningIsochStreamRef The FWAIsochStreamRef created with @link FWACreateIsochStream FWACreateIsochStream@/link.
	 * @param channelNumber The Core Audio channel number (channels are numbered 1 to n channels).
	 * @param direction The direction of the audio stream (can be either kIOAudioStreamDirectionInput or kIOAudioStreamDirectionOutput).
	 * @param numAudioChannels The number of audio channels this audio stream should have.
	 * @param streamName The string representing the stream name.
	 * @param streamIdent A pointer to a stream ID property used to identify the stream in the I/O Registry.
	 * @param streamRef On return, the FWAAudioStreamRef representing this audio stream.
	 * @result OSStatus
	 */
func FWACreateFWAudioStream(inRef: FWARef, _ owningIsochStreamRef: FWAIsochStreamRef, _ channelNumber: UInt32, _ direction: UInt32, _ numAudioChannels: UInt32, _ streamName: UnsafeMutablePointer<Int8>, _ streamIdent: UnsafeMutablePointer<UInt8>, _ streamRef: UnsafeMutablePointer<FWAAudioStreamRef>) -> OSStatus

/*!
	 * @function FWADisposeFWAudioStream
	 * @abstract Destroys an audio stream object.
	 * @availability Version 5
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param streamRef The FWAAudioStreamRef created with @link FWACreateFWAudioStream FWACreateFWAudioStream@/link.
	 * @result OSStatus
	 */
func FWADisposeFWAudioStream(inRef: FWARef, _ streamRef: FWAAudioStreamRef) -> OSStatus

/*!
	 * @function FWACreateFWAudioMIDIStream
	 * @abstract Creates a MIDI stream.
	 * @availability Version 5
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param owningIsochStreamRef The FWAIsochStreamRef created with @link FWACreateIsochStream FWACreateIsochStream@/link.
	 * @param sequenceNumber The sequence number representing the slot in the packet of this MIDI stream.
	 * @param direction The direction of the MIDI stream (can be either kIOAudioStreamDirectionInput or kIOAudioStreamDirectionOutput).
	 * @param streamRef On return, the FWAMIDIStreamRef representing this MIDI stream.
	 * @result OSStatus
	 */
func FWACreateFWAudioMIDIStream(inRef: FWARef, _ owningIsochStreamRef: FWAIsochStreamRef, _ sequenceNumber: UInt32, _ direction: UInt32, _ streamRef: UnsafeMutablePointer<FWAMIDIStreamRef>) -> OSStatus

/*!
	 * @function FWADisposeFWAudioMIDIStream
	 * @abstract Destroys a MIDI stream.
	 * @availability Version 5
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param streamRef The FWAMIDIStreamRef created with @link FWACreateFWAudioMIDIStream FWACreateFWAudioMIDIStream@/link.
	 * @result OSStatus
	 */
func FWADisposeFWAudioMIDIStream(inRef: FWARef, _ streamRef: FWAMIDIStreamRef) -> OSStatus

/*!
	 * @function FWACreateFWAudioMIDIPlug
	 * @abstract Creates a MIDI plug.
	 * @availability Version 5
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param owningMIDIStreamRef The FWAMIDIStreamRef created with @link FWACreateFWAudioMIDIStream FWACreateFWAudioMIDIStream@/link.
	 * @param mpxID The MIDI multiplex index ID that specifies the index to which this plug should go.
	 * @param plugName The string representing the plug name.
	 * @param plugIdent A property of the MIDI plug.
	 * @param streamRef On return, the FWAMIDIPlugRef representing this MIDI plug.
	 * @result OSStatus
	 */
func FWACreateFWAudioMIDIPlug(inRef: FWARef, _ owningMIDIStreamRef: FWAMIDIStreamRef, _ mpxID: UInt8, _ plugName: UnsafeMutablePointer<Int8>, _ plugIdent: UnsafeMutablePointer<UInt8>, _ streamRef: UnsafeMutablePointer<FWAMIDIPlugRef>) -> OSStatus

/*!
	 * @function FWADisposeFWAudioMIDIPlug
	 * @abstract Destroys a MIDI plug object.
	 * @availability Version 5
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param plugRef The FWAMIDIPlugRef created with @link FWACreateFWAudioMIDIPlug FWACreateFWAudioMIDIPlug @/link.
	 * @result OSStatus
	 */
func FWADisposeFWAudioMIDIPlug(inRef: FWARef, _ plugRef: FWAMIDIPlugRef) -> OSStatus

/*!
	 * @function FWAGetClockSource
	 * @abstract Returns the isochronous stream providing the clock (SYT) for the audio.
	 * @availability Version 5
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param streamRef The FWAIsochStreamRef created with @link FWACreateIsochStream FWACreateIsochStream@/link.
	 * @param sequence
	 * @result OSStatus
	 */
func FWAGetClockSource(inRef: FWARef, _ streamRef: UnsafeMutablePointer<FWAIsochStreamRef>, _ sequence: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	 * @function FWASetClockSource
	 * @abstract Sets the isochronous stream as the clock source.
	 * @availability Version 5
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param streamRef The FWAIsochStreamRef created with @link FWACreateIsochStream FWACreateIsochStream@/link.
	 * @param sequence
	 * @result OSStatus
	 */
func FWASetClockSource(inRef: FWARef, _ streamRef: FWAIsochStreamRef, _ sequence: UInt32) -> OSStatus

/*!
	 * @function FWASetAutoLoad
	 * @abstract Creates or removes the AppleFWAudio_Disable property in the I/O Registry.
	 * @discussion The existence of the AppleFWAudio_Disable property in the I/O Registry tells the driver to <i>not</i> load if it matches on a device (the
	 * value of the property does not matter). Call FWASetAutoLoad with enable = TRUE to create the property. To remove the property (if it already exists), call
	 * {@link FWASetAutoLoad} with enable = FALSE.
	 * @availability Version 6
	 * @param inRef The FWARef returned in @link FWAOpen FWAOpen@/link or in @link FWAOpenLocal FWAOpenLocal@/link.
	 * @param enable A Boolean value that indicates whether the AppleFWAudio_Disable property should be removed from or created in the I/O Registry.
	 * @result OSStatus
	 */
func FWASetAutoLoad(inRef: FWARef, _ enable: Bool) -> OSStatus
func FWAGetProperty(inRef: FWARef, _ propertyID: UInt32, _ data: UnsafeMutablePointer<Void>, _ size: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWASetProperty(inRef: FWARef, _ propertyID: UInt32, _ data: UnsafeMutablePointer<Void>, _ size: UInt32) -> OSStatus

/*! Description forthcoming. */
func FWASetPluginPath(inRef: FWARef, _ engine: FWAEngineRef, _ vendorID: UInt32, _ modelID: UInt32, _ pluginPath: UnsafePointer<Int8>) -> OSStatus

/*! Description forthcoming. */
func FWACreateFWAudioPlug(inRef: FWARef, _ owningStream: FWAAudioStreamRef, _ channelID: UInt32, _ plugName: UnsafeMutablePointer<Int8>, _ plugIdent: UnsafeMutablePointer<UInt8>, _ streamRef: UnsafeMutablePointer<FWAAudioPlugRef>) -> OSStatus

/*! Description forthcoming. */
func FWADisposeFWAudioPlug(inRef: FWARef, _ plugRef: FWAAudioPlugRef) -> OSStatus

/*! Description forthcoming. */
func FWAGetFWAudioMIDIPlugChannel(inRef: FWARef, _ streamRef: FWAMIDIPlugRef, _ channelID: UnsafeMutablePointer<UInt32>) -> OSStatus

/*! Description forthcoming. */
func FWASetFWAudioMIDIPlugChannel(inRef: FWARef, _ streamRef: FWAMIDIPlugRef, _ channelID: UInt32) -> OSStatus

/*! Description forthcoming. */
func FWAGetFWAudioPlugChannel(inRef: FWARef, _ streamRef: FWAAudioPlugRef, _ channelID: UnsafeMutablePointer<UInt32>) -> OSStatus

/*! Description forthcoming. */
func FWASetFWAudioPlugChannel(inRef: FWARef, _ streamRef: FWAAudioPlugRef, _ channelID: UInt32) -> OSStatus

/*! Description forthcoming. */
func FWAGetIndexedFWAudioPlug(inRef: FWARef, _ device: FWADeviceRef, _ index: UInt32, _ dir: UInt32, _ plugRef: UnsafeMutablePointer<FWAAudioPlugRef>) -> OSStatus

/*! Description forthcoming. */
func FWAGetIndexedFWAudioMIDIPlug(inRef: FWARef, _ device: FWAMIDIDeviceNubRef, _ index: UInt32, _ dir: UInt32, _ plugRef: UnsafeMutablePointer<FWAMIDIPlugRef>) -> OSStatus

/*! Description forthcoming. */
func FWAAttachFWAudioStream(inRef: FWARef, _ streamRef: FWAAudioStreamRef, _ isochChannel: FWAIsochStreamRef) -> OSStatus

/*! Description forthcoming. */
func FWAAttachFWAudioMIDIStream(inRef: FWARef, _ streamRef: FWAMIDIStreamRef, _ isochChannel: FWAIsochStreamRef) -> OSStatus

/*! Description forthcoming. */
func FWASetFWAudioPlugProperty(inRef: FWARef, _ plugRef: FWAAudioPlugRef, _ keyname: UnsafePointer<Int8>, _ keyvalue: UnsafePointer<Int8>) -> OSStatus

/*! Description forthcoming. */
func FWASetFWAudioMIDIPlugProperty(inRef: FWARef, _ plugRef: FWAMIDIPlugRef, _ keyname: UnsafePointer<Int8>, _ keyvalue: UnsafePointer<Int8>) -> OSStatus

/*! Description forthcoming. */
func FWAOpenLocalWithInterface(guid: UInt64, _ options: UInt32, _ outRef: UnsafeMutablePointer<FWARef>) -> OSStatus

/*! Description forthcoming. */
func FWAOpenWithService(_: io_service_t, _ options: UInt32, _ outRef: UnsafeMutablePointer<FWARef>) -> OSStatus

/*! Description forthcoming. */
func FWAGetSessionRef(inRef: FWARef, _ sessionRef: UnsafeMutablePointer<IOFireWireSessionRef>) -> OSStatus

/*! Description forthcoming. */
func FWAReserveIsochSequences(inRef: FWARef, _ isochStream: FWAIsochStreamRef, _ type: FWAudioType, _ count: UInt32) -> OSStatus

/*! Description forthcoming. */
func FWACreateFWAudioMIDIDeviceNub(inRef: FWARef, _ owningDevice: FWADeviceRef, _ deviceName: UnsafePointer<Int8>, _ vendorID: UInt32, _ guid: UnsafePointer<Int8>, _ iconFilePath: UnsafePointer<Int8>, _ modelID: UInt32, _ editorPath: UnsafePointer<Int8>, _ device: UnsafeMutablePointer<FWAMIDIDeviceNubRef>) -> OSStatus

/*! Description forthcoming. */
func FWADisposeFWAudioMIDIDeviceNub(inRef: FWARef, _ device: FWAMIDIDeviceNubRef) -> OSStatus

/*! Description forthcoming. */
func FWAMIDIDeviceNubAttachMIDIPlug(inRef: FWARef, _ midiDeviceNub: FWAMIDIDeviceNubRef, _ midiPlug: FWAMIDIPlugRef) -> OSStatus

/*! Description forthcoming. */
func FWAMIDIDeviceNubDetachMIDIPlug(inRef: FWARef, _ midiPlug: FWAMIDIPlugRef) -> OSStatus
var CURRENT_DEVICE_STATUS_VERSION: Int32 { get }
var kNumInputClientBuffers: Int32 { get }
var kNumOutputClientBuffers: Int32 { get }
var kFWAStreamIdentSize: Int32 { get }
var kFWAStreamEndpointIndentifier: String { get }
var kAudioPlugPropertiesKey: String { get }
var kMIDIPlugPropertiesKey: String { get }
var kMIDIPropertiesIsPrivateKey: String { get }
var kMIDIPropertiesIsEmbeddedKey: String { get }
var kFWAMaxPropertyKeyLength: Int32 { get }
var kFWAMaxPathLength: Int32 { get }
var kCurrentEraseHeadMeterArrayOffset: Int { get }
var kNumSamplesFramesInBufferMeterArrayOffset: Int { get }
var kCurrentInputDMASampleFrameMeterArrayOffset: Int { get }
var kCurrentOutputDMASampleFrameMeterArrayOffset: Int { get }
var kGetBadHeaderCountMeterArrayOffset: Int { get }
var kGetFixedHeaderCountMeterArrayOffset: Int { get }
var kGetBigPacketCountMeterArrayOffset: Int { get }
var kLastTimeStampMeterArrayOffset: Int { get }
var kLastTimeStampMeterArrayOffset2: Int { get }
var kInputPacketCountMeterArrayOffset: Int { get }
var kMIDIStreamOut: UInt32 { get }
var kMIDIStreamIn: UInt32 { get }
var kMIDIAdvanceSchedule: UInt32 { get }
var kMIDITimeStamp: UInt32 { get }
struct FWAMIDIInputBufferWithTimeStamp {
  var timeStamp: UInt64
  var midiBuffer: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(timeStamp: UInt64, midiBuffer: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct FWAMIDIOutputBufferWithTimeStamp {
  var timeStamp: UInt64
  var midiBuffer: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(timeStamp: UInt64, midiBuffer: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct FWAStreamDirection : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kFWAStreamOut: FWAStreamDirection { get }
var kFWAStreamIn: FWAStreamDirection { get }
struct FWAStreamOptions : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kFWAStreamOptionsDefault: FWAStreamOptions { get }
var kFWAStreamOptionsForceNuDCL: FWAStreamOptions { get }
var kFWAStreamOptionsForceLegacyDCL: FWAStreamOptions { get }
struct FWAMIDIReadBuffer {
  var bufSize: UInt32
  var mrBuf: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32)
  init()
  init(bufSize: UInt32, mrBuf: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32))
}
typealias FWAMIDIReadBuf = FWAMIDIReadBuffer
struct FWAudioType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIEC60958: FWAudioType { get }
var kRawAudio: FWAudioType { get }
var kMIDI: FWAudioType { get }
var kAncillaryData: FWAudioType { get }
var kAllEventTypes: FWAudioType { get }
typealias FWAudioTypePtr = UnsafeMutablePointer<FWAudioType>
struct FWAMIDIDataInfo : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kFWAMIDIPlugName: FWAMIDIDataInfo { get }
var kFWAMIDIPlugIdent: FWAMIDIDataInfo { get }
var kFWAMIDIPlugPropertyPrivate: FWAMIDIDataInfo { get }
var kFWAMIDIPlugPropertyEmbedded: FWAMIDIDataInfo { get }
var kFWAMIDIGetIndexedPlug: FWAMIDIDataInfo { get }
struct FWAStreamState : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kFWAStreamStopped: FWAStreamState { get }
var kFWAStreamRunning: FWAStreamState { get }
var kFWAStreamPaused: FWAStreamState { get }
var kFWAStreamResumed: FWAStreamState { get }
var kFWAPlugNotConnected: Int { get }
var kFWAUnusedIsochChannelID: Int { get }
typealias FWAStreamNotificationProc = @convention(c) (UInt32, UnsafeMutablePointer<Void>) -> Void
var kFWADeviceStatusCurrentVersion: Int32 { get }
struct FWADeviceStatus {
  var version: UInt32
  var sampleCounter: UInt32
  var inputSampleFrame: UInt32
  var outputSampleFrame: UInt32
  var inputClipSampleFrame: UInt32
  var outputClipSampleFrame: UInt32
  var meterData: (UInt32)
  init()
  init(version: UInt32, sampleCounter: UInt32, inputSampleFrame: UInt32, outputSampleFrame: UInt32, inputClipSampleFrame: UInt32, outputClipSampleFrame: UInt32, meterData: (UInt32))
}
typealias FWADeviceStatusRec = FWADeviceStatus
typealias FWADeviceStatusRecPtr = UnsafeMutablePointer<FWADeviceStatus>
struct FWACreateStreamRec {
  var owningIsochStreamRef: UInt32
  var channelNumber: UInt32
  var direction: UInt32
  var numAudioChannels: UInt32
  var streamName: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
  var streamIdent: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  var streamIdentIsNull: Bool
  init()
  init(owningIsochStreamRef: UInt32, channelNumber: UInt32, direction: UInt32, numAudioChannels: UInt32, streamName: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8), streamIdent: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), streamIdentIsNull: Bool)
}
typealias FWACreateStreamRecPtr = UnsafeMutablePointer<FWACreateStreamRec>
struct FWACreateMIDIPlugRec {
  var owningMIDIStreamRef: UInt32
  var mpxID: UInt32
  var plugName: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
  var plugIdent: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  var plugIdentIsNull: Bool
  init()
  init(owningMIDIStreamRef: UInt32, mpxID: UInt32, plugName: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8), plugIdent: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), plugIdentIsNull: Bool)
}
typealias FWACreateMIDIPlugRecPtr = UnsafeMutablePointer<FWACreateMIDIPlugRec>
struct FWACreateFWAudioPlugRec {
  var owningAudioStreamRef: UInt32
  var channelID: UInt32
  var plugName: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
  var plugIdent: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  var plugIdentIsNull: Bool
  init()
  init(owningAudioStreamRef: UInt32, channelID: UInt32, plugName: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8), plugIdent: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), plugIdentIsNull: Bool)
}
typealias FWACreateFWAudioPlugRecPtr = UnsafeMutablePointer<FWACreateFWAudioPlugRec>
struct FWACreateDeviceRec {
  var vendorID: UInt32
  var deviceName: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
  var guidStr: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
  init()
  init(vendorID: UInt32, deviceName: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8), guidStr: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8))
}
typealias FWACreateDeviceRecPtr = UnsafeMutablePointer<FWACreateDeviceRec>
struct FWASetPluginPathRec {
  var owningEngineRef: UInt32
  var vendorID: UInt32
  var modelID: UInt32
  var pluginPath: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
  var pluginPathIsNull: Bool
  var cacheValues: Bool
  init()
  init(owningEngineRef: UInt32, vendorID: UInt32, modelID: UInt32, pluginPath: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8), pluginPathIsNull: Bool, cacheValues: Bool)
}
typealias FWASetPluginPathRecPtr = UnsafeMutablePointer<FWASetPluginPathRec>
struct FWASetPlugPropertyRec {
  var owningPlugRef: UInt32
  var plugPropertyKey: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
  var plugPropertyValue: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
  var plugPropertyValueIsNull: Bool
  init()
  init(owningPlugRef: UInt32, plugPropertyKey: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8), plugPropertyValue: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8), plugPropertyValueIsNull: Bool)
}
typealias FWASetPlugPropertyRecPtr = UnsafeMutablePointer<FWASetPlugPropertyRec>
struct FWACreateMIDIDeviceNubRec {
  var owningDevice: UInt32
  var vendorID: UInt32
  var modelID: UInt32
  var deviceName: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
  var guidStr: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
  var iconFilePath: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
  var editorPath: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
  init()
  init(owningDevice: UInt32, vendorID: UInt32, modelID: UInt32, deviceName: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8), guidStr: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8), iconFilePath: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8), editorPath: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8))
}
typealias FWACreateMIDIDeviceNubRecPtr = UnsafeMutablePointer<FWACreateMIDIDeviceNubRec>
struct FWAGetPropertyRec {
  var key: UInt32
  var size: UInt32
  var data: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
  init()
  init(key: UInt32, size: UInt32, data: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8))
}
typealias FWAGetPropertyRecPtr = UnsafeMutablePointer<FWAGetPropertyRec>
var kFWAudioMaxNameSize: UInt32 { get }
var kReadBlockInParamCount: UInt32 { get }
var kReadBlockOutParamCount: UInt32 { get }
var kWriteQuadletInParamCount: UInt32 { get }
var kWriteQuadletOutParamCount: UInt32 { get }
var kWriteBlockInParamCount: UInt32 { get }
var kWriteBlockOutParamCount: UInt32 { get }
var kReadQuadletInParamCount: UInt32 { get }
var kReadQuadletOutParamCount: UInt32 { get }
var kGetCycleTimeOffsetInParamCount: UInt32 { get }
var kGetCycleTimeOffsetOutParamCount: UInt32 { get }
var kSetCycleTimeOffsetInParamCount: UInt32 { get }
var kSetCycleTimeOffsetOutParamCount: UInt32 { get }
var kGetDeviceNameInParamCount: UInt32 { get }
var kGetDeviceNameOutParamCount: UInt32 { get }
var kGetVendorNameInParamCount: UInt32 { get }
var kGetVendorNameOutParamCount: UInt32 { get }
var kIsMIDICapableInParamCount: UInt32 { get }
var kIsMIDICapableOutParamCount: UInt32 { get }
var kGetNumMIDIInputPlugsInParamCount: UInt32 { get }
var kGetNumMIDIInputPlugsOutParamCount: UInt32 { get }
var kGetNumMIDIOutputPlugsInParamCount: UInt32 { get }
var kGetNumMIDIOutputPlugsOutParamCount: UInt32 { get }
var kSetNumMIDIInputPlugsInParamCount: UInt32 { get }
var kSetNumMIDIInputPlugsOutParamCount: UInt32 { get }
var kSetNumMIDIOutputPlugsInParamCount: UInt32 { get }
var kSetNumMIDIOutputPlugsOutParamCount: UInt32 { get }
var kGetNumAudioInputPlugsInParamCount: UInt32 { get }
var kGetNumAudioInputPlugsOutParamCount: UInt32 { get }
var kGetNumAudioOutputPlugsInParamCount: UInt32 { get }
var kGetNumAudioOutputPlugsOutParamCount: UInt32 { get }
var kCreateAudioStreamInParamCount: UInt32 { get }
var kCreateAudioStreamOutParamCount: UInt32 { get }
var kDisposeAudioStreamInParamCount: UInt32 { get }
var kDisposeAudioStreamOutParamCount: UInt32 { get }
var kGetDeviceSampleRateInParamCount: UInt32 { get }
var kGetDeviceSampleRateOutParamCount: UInt32 { get }
var kGetDeviceSendModeInParamCount: UInt32 { get }
var kGetDeviceSendModeOutParamCount: UInt32 { get }
var kGetDeviceStatusInParamCount: UInt32 { get }
var kGetDeviceStatusOutParamCount: UInt32 { get }
var kGetDeviceStreamInfoInParamCount: UInt32 { get }
var kGetDeviceStreamInfoOutParamCount: UInt32 { get }
var kSetDeviceStreamInfoInParamCount: UInt32 { get }
var kSetDeviceStreamInfoOutParamCount: UInt32 { get }
var kSyncUpDeviceInParamCount: UInt32 { get }
var kSyncUpDeviceOutParamCount: UInt32 { get }
var kGetCurrentStreamRefsInParamCount: UInt32 { get }
var kGetCurrentStreamRefsOutParamCount: UInt32 { get }
var kGetStreamStateInParamCount: UInt32 { get }
var kGetStreamStateOutParamCount: UInt32 { get }
var kGetIsochStreamDirectionInParamCount: UInt32 { get }
var kGetIsochStreamDirectionOutParamCount: UInt32 { get }
var kGetIsochStreamChannelIDInParamCount: UInt32 { get }
var kGetIsochStreamChannelIDOutParamCount: UInt32 { get }
var kSetIsochStreamChannelIDInParamCount: UInt32 { get }
var kSetIsochStreamChannelIDOutParamCount: UInt32 { get }
var kGetStreamSampleRateInParamCount: UInt32 { get }
var kGetStreamSampleRateOutParamCount: UInt32 { get }
var kSetStreamSampleRateInParamCount: UInt32 { get }
var kSetStreamSampleRateOutParamCount: UInt32 { get }
var kGetStreamOutputSpeedInParamCount: UInt32 { get }
var kGetStreamOutputSpeedOutParamCount: UInt32 { get }
var kSetStreamOutputSpeedInParamCount: UInt32 { get }
var kSetStreamOutputSpeedOutParamCount: UInt32 { get }
var kGetStreamAudioTypeInParamCount: UInt32 { get }
var kGetStreamAudioTypeOutParamCount: UInt32 { get }
var kSetStreamAudioTypeInParamCount: UInt32 { get }
var kSetStreamAudioTypeOutParamCount: UInt32 { get }
var kSetStreamCallbackFunctionInParamCount: UInt32 { get }
var kSetStreamCallbackFunctionOutParamCount: UInt32 { get }
var kCreateIsochStreamInParamCount: UInt32 { get }
var kCreateIsochStreamOutParamCount: UInt32 { get }
var kDisposeIsochStreamInParamCount: UInt32 { get }
var kDisposeIsochStreamOutParamCount: UInt32 { get }
var kStartIsochStreamInParamCount: UInt32 { get }
var kStartIsochStreamOutParamCount: UInt32 { get }
var kStopIsochStreamInParamCount: UInt32 { get }
var kStopIsochStreamOutParamCount: UInt32 { get }
var kGetIsochStreamAudioChannelCountInParamCount: UInt32 { get }
var kGetIsochStreamAudioChannelCountOutParamCount: UInt32 { get }
var kSetIsochStreamAudioChannelCountInParamCount: UInt32 { get }
var kSetIsochStreamAudioChannelCountOutParamCount: UInt32 { get }
var kGetIsochStreamMIDIChannelCountInParamCount: UInt32 { get }
var kGetIsochStreamMIDIChannelCountOutParamCount: UInt32 { get }
var kSetIsochStreamMIDIChannelCountInParamCount: UInt32 { get }
var kSetIsochStreamMIDIChannelCountOutParamCount: UInt32 { get }
var kCreateFWAudioDeviceInParamCount: UInt32 { get }
var kCreateFWAudioDeviceOutParamCount: UInt32 { get }
var kStartFWAudioDeviceInParamCount: UInt32 { get }
var kStartFWAudioDeviceOutParamCount: UInt32 { get }
var kStopFWAudioDeviceInParamCount: UInt32 { get }
var kStopFWAudioDeviceOutParamCount: UInt32 { get }
var kDisposeFWAudioDeviceInParamCount: UInt32 { get }
var kDisposeFWAudioDeviceOutParamCount: UInt32 { get }
var kCreateFWAudioEngineInParamCount: UInt32 { get }
var kCreateFWAudioEngineOutParamCount: UInt32 { get }
var kDisposeFWAudioEngineInParamCount: UInt32 { get }
var kDisposeFWAudioEngineOutParamCount: UInt32 { get }
var kCreateFWAudioStreamInParamCount: UInt32 { get }
var kCreateFWAudioStreamOutParamCount: UInt32 { get }
var kDisposeFWAudioStreamInParamCount: UInt32 { get }
var kDisposeFWAudioStreamOutParamCount: UInt32 { get }
var kCreateFWAudioMIDIStreamInParamCount: UInt32 { get }
var kCreateFWAudioMIDIStreamOutParamCount: UInt32 { get }
var kDisposeFWAudioMIDIStreamInParamCount: UInt32 { get }
var kDisposeFWAudioMIDIStreamOutParamCount: UInt32 { get }
var kCreateFWAudioMIDIPlugInParamCount: UInt32 { get }
var kCreateFWAudioMIDIPlugOutParamCount: UInt32 { get }
var kDisposeFWAudioMIDIPlugInParamCount: UInt32 { get }
var kDisposeFWAudioMIDIPlugOutParamCount: UInt32 { get }
var kGetClockSourceInParamCount: UInt32 { get }
var kGetClockSourceOutParamCount: UInt32 { get }
var kSetClockSourceInParamCount: UInt32 { get }
var kSetClockSourceOutParamCount: UInt32 { get }
var kSetAutoLoadInParamCount: UInt32 { get }
var kSetAutoLoadOutParamCount: UInt32 { get }
var kGetPropertyInParamCount: UInt32 { get }
var kGetPropertyOutParamCount: UInt32 { get }
var kSetPropertyInParamCount: UInt32 { get }
var kSetPropertyOutParamCount: UInt32 { get }
var kSetPluginPathInParamCount: UInt32 { get }
var kSetPluginPathOutParamCount: UInt32 { get }
var kCreateFWAudioPlugInParamCount: UInt32 { get }
var kCreateFWAudioPlugOutParamCount: UInt32 { get }
var kDisposeFWAudioPlugInParamCount: UInt32 { get }
var kDisposeFWAudioPlugOutParamCount: UInt32 { get }
var kSetFWAudioMIDIPlugChannelInParamCount: UInt32 { get }
var kSetFWAudioMIDIPlugChannelOutParamCount: UInt32 { get }
var kGetFWAudioMIDIPlugChannelInParamCount: UInt32 { get }
var kGetFWAudioMIDIPlugChannelOutParamCount: UInt32 { get }
var kGetFWAudioPlugChannelInParamCount: UInt32 { get }
var kGetFWAudioPlugChannelOutParamCount: UInt32 { get }
var kSetFWAudioPlugChannelInParamCount: UInt32 { get }
var kSetFWAudioPlugChannelOutParamCount: UInt32 { get }
var kAttachFWAudioStreamInParamCount: UInt32 { get }
var kAttachFWAudioStreamOutParamCount: UInt32 { get }
var kAttachFWAudioMIDIStreamInParamCount: UInt32 { get }
var kAttachFWAudioMIDIStreamOutParamCount: UInt32 { get }
var kSetFWAudioPlugPropertyInParamCount: UInt32 { get }
var kSetFWAudioPlugPropertyOutParamCount: UInt32 { get }
var kSetFWAudioMIDIPlugPropertyInParamCount: UInt32 { get }
var kSetFWAudioMIDIPlugPropertyOutParamCount: UInt32 { get }
var kOpenLocalWithInterfaceInParamCount: UInt32 { get }
var kOpenLocalWithInterfaceOutParamCount: UInt32 { get }
var kOpenWithServiceInParamCount: UInt32 { get }
var kOpenWithServiceOutParamCount: UInt32 { get }
var kGetMaxSpeedInParamCount: UInt32 { get }
var kGetMaxSpeedOutParamCount: UInt32 { get }
var kGetSessionRefInParamCount: UInt32 { get }
var kGetSessionRefOutParamCount: UInt32 { get }
var kReserveIsochSequencesInParamCount: UInt32 { get }
var kReserveIsochSequencesOutParamCount: UInt32 { get }
var kCreateFWAudioMIDIDeviceNubInParamCount: UInt32 { get }
var kCreateFWAudioMIDIDeviceNubOutParamCount: UInt32 { get }
var kDisposeFWAudioMIDIDeviceNubInParamCount: UInt32 { get }
var kDisposeFWAudioMIDIDeviceNubOutParamCount: UInt32 { get }
var kGetIndexedFWAudioPlugInParamCount: UInt32 { get }
var kGetIndexedFWAudioPlugOutParamCount: UInt32 { get }
var kGetIndexedFWAudioMIDIPlugInParamCount: UInt32 { get }
var kGetIndexedFWAudioMIDIPlugOutParamCount: UInt32 { get }
var kMIDIDeviceNubAttachMIDIPlugInParamCount: UInt32 { get }
var kMIDIDeviceNubAttachMIDIPlugOutParamCount: UInt32 { get }
var kMIDIDeviceNubDetachMIDIPlugInParamCount: UInt32 { get }
var kMIDIDeviceNubDetachMIDIPlugOutParamCount: UInt32 { get }
var kFWAOpenIndex: Int { get }
var kFWACloseIndex: Int { get }
var kFWAGetCycleTimeOffset: Int { get }
var kFWASetCycleTimeOffset: Int { get }
var kFWAGetNodeID: Int { get }
var kFWAGetGUID: Int { get }
var kFWAReadQuadlet: Int { get }
var kFWAReadBlock: Int { get }
var kFWAExecuteAVC: Int { get }
var kFWAWriteQuadlet: Int { get }
var kFWAWriteBlock: Int { get }
var kFWAGetMacGUID: Int { get }
var kFWACreateMIDIStream: Int { get }
var kFWADisposeMIDIStream: Int { get }
var kFWAWriteMIDIData: Int { get }
var kFWAReadMIDIData: Int { get }
var kFWAIsMIDICapable: Int { get }
var kFWAGetVendorID: Int { get }
var kFWAGetDeviceName: Int { get }
var kFWAGetVendorName: Int { get }
var kFWAGetNumMIDIInputPlugs: Int { get }
var kFWAGetNumMIDIOutputPlugs: Int { get }
var kFWASetNumMIDIInputPlugs: Int { get }
var kFWASetNumMIDIOutputPlugs: Int { get }
var kFWAGetNumAudioInputPlugs: Int { get }
var kFWAGetNumAudioOutputPlugs: Int { get }
var kFWACreateAudioStream: Int { get }
var kFWADisposeAudioStream: Int { get }
var kFWAGetDeviceSampleRate: Int { get }
var kFWAGetDeviceSendMode: Int { get }
var kFWAGetDeviceStatus: Int { get }
var kFWAGetDeviceStreamInfo: Int { get }
var kFWASetDeviceStreamInfo: Int { get }
var kFWASyncUpDevice: Int { get }
var kFWAGetCurrentStreamRefs: Int { get }
var kFWAGetStreamState: Int { get }
var kFWAGetIsochStreamDirection: Int { get }
var kFWAGetIsochStreamChannelID: Int { get }
var kFWASetIsochStreamChannelID: Int { get }
var kFWAGetStreamSampleRate: Int { get }
var kFWASetStreamSampleRate: Int { get }
var kFWAGetStreamOutputSpeed: Int { get }
var kFWASetStreamOutputSpeed: Int { get }
var kFWAGetStreamAudioType: Int { get }
var kFWASetStreamAudioType: Int { get }
var kFWASetStreamCallbackFunction: Int { get }
var kFWACreateIsochStream: Int { get }
var kFWADisposeIsochStream: Int { get }
var kFWAStartIsochStream: Int { get }
var kFWAStopIsochStream: Int { get }
var kFWAGetIsochStreamAudioChannelCount: Int { get }
var kFWASetIsochStreamAudioChannelCount: Int { get }
var kFWAGetIsochStreamMIDIChannelCount: Int { get }
var kFWASetIsochStreamMIDIChannelCount: Int { get }
var kFWACreateFWAudioDevice: Int { get }
var kFWADisposeFWAudioDevice: Int { get }
var kFWAStartFWAudioDevice: Int { get }
var kFWAStopFWAudioDevice: Int { get }
var kFWACreateFWAudioEngine: Int { get }
var kFWADisposeFWAudioEngine: Int { get }
var kFWACreateFWAudioStream: Int { get }
var kFWADisposeFWAudioStream: Int { get }
var kFWAGetClockSource: Int { get }
var kFWASetClockSource: Int { get }
var kFWACreateFWAudioMIDIStream: Int { get }
var kFWADisposeFWAudioMIDIStream: Int { get }
var kFWACreateFWAudioMIDIPlug: Int { get }
var kFWADisposeFWAudioMIDIPlug: Int { get }
var kFWASetAutoLoad: Int { get }
var kFWAGetProperty: Int { get }
var kFWASetProperty: Int { get }
var kFWASetPluginPath: Int { get }
var kFWACreateFWAudioPlug: Int { get }
var kFWADisposeFWAudioPlug: Int { get }
var kFWASetFWAudioMIDIPlugChannel: Int { get }
var kFWASetFWAudioPlugChannel: Int { get }
var kFWAGetFWAudioMIDIPlugChannel: Int { get }
var kFWAGetFWAudioPlugChannel: Int { get }
var kFWAAttachFWAudioStream: Int { get }
var kFWAAttachFWAudioMIDIStream: Int { get }
var kFWASetFWAudioPlugProperty: Int { get }
var kFWASetFWAudioMIDIPlugProperty: Int { get }
var kFWAOpenLocalWithInterface: Int { get }
var kFWAOpenWithService: Int { get }
var kFWAGetSessionRef: Int { get }
var kFWAGetMaxSpeed: Int { get }
var kFWAReserveIsochSequences: Int { get }
var kFWACreateFWAudioMIDIDeviceNub: Int { get }
var kFWADisposeFWAudioMIDIDeviceNub: Int { get }
var kFWAGetIndexedFWAudioPlug: Int { get }
var kFWAGetIndexedFWAudioMIDIPlug: Int { get }
var kFWAMIDIDeviceNubAttachMIDIPlug: Int { get }
var kFWAMIDIDeviceNubDetachMIDIPlug: Int { get }
var kFWASetAsyncPort: Int { get }
var kWriteMIDIAsync: Int { get }
var kReadMIDIAsync: Int { get }
var kFWANumberFWAMethods: Int { get }
