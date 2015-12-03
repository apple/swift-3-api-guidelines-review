
var kAudioObjectSystemObject: Int32 { get }

/*!
    @typedef        AudioObjectPropertyListenerProc
    @abstract       Clients register an AudioObjectPropertyListenerProc with an AudioObject in order
                    to receive notifications when the properties of the object change.
    @discussion     Listeners will be called when possibly many properties have changed.
                    Consequently, the implementation of a listener must go through the array of
                    addresses to see what exactly has changed. Note that the array of addresses will
                    always have at least one address in it for which the listener is signed up to
                    receive notifications about but may contain addresses for properties for which
                    the listener is not signed up to receive notifications.
    @param          inObjectID
                        The AudioObject whose properties have changed.
    @param          inNumberAddresses
                        The number of elements in the inAddresses array.
    @param          inAddresses
                        An array of AudioObjectPropertyAddresses indicating which properties
                        changed.
    @param          inClientData
                        A pointer to client data established when the listener proc was registered
                        with the AudioObject.
    @result         The return value is currently unused and should always be 0.
*/
typealias AudioObjectPropertyListenerProc = @convention(c) (AudioObjectID, UInt32, UnsafePointer<AudioObjectPropertyAddress>, UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @typedef        AudioObjectPropertyListenerBlock
    @abstract       Clients register an AudioObjectPropertyListenerBlock with an AudioObject in
                    order to receive notifications when the properties of the object change.
    @discussion     Listeners will be called when possibly many properties have changed.
                    Consequently, the implementation of a listener must go through the array of
                    addresses to see what exactly has changed. Note that the array of addresses will
                    always have at least one address in it for which the listener is signed up to
                    receive notifications about but may contain addresses for properties for which
                    the listener is not signed up to receive notifications.
    @param          inNumberAddresses
                        The number of elements in the inAddresses array.
    @param          inAddresses
                        An array of AudioObjectPropertyAddresses indicating which properties
                        changed.
*/
typealias AudioObjectPropertyListenerBlock = (UInt32, UnsafePointer<AudioObjectPropertyAddress>) -> Void
var kAudioObjectPropertyCreator: AudioObjectPropertySelector { get }
var kAudioObjectPropertyListenerAdded: AudioObjectPropertySelector { get }
var kAudioObjectPropertyListenerRemoved: AudioObjectPropertySelector { get }

/*!
    @function       AudioObjectShow
    @abstract       Prints to standard out a textural description of the AudioObject.
    @param          inObjectID
                        The AudioObject to show.
*/
@available(OSX 10.4, *)
func AudioObjectShow(inObjectID: AudioObjectID)

/*!
    @function       AudioObjectHasProperty
    @abstract       Queries an AudioObject about whether or not it has the given property.
    @param          inObjectID
                        The AudioObject to query.
    @param          inAddress
                        An AudioObjectPropertyAddress indicating which property is being queried.
    @result         A Boolean indicating whether or not the AudioObject has the given property.
*/
@available(OSX 10.4, *)
func AudioObjectHasProperty(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>) -> Bool

/*!
    @function       AudioObjectIsPropertySettable
    @abstract       Queries an AudioObject about whether or not the given property can be set using
                    AudioObjectSetPropertyData.
    @param          inObjectID
                        The AudioObject to query.
    @param          inAddress
                        An AudioObjectPropertyAddress indicating which property is being queried.
    @param          outIsSettable
                        A Boolean indicating whether or not the property can be set.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.4, *)
func AudioObjectIsPropertySettable(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ outIsSettable: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus

/*!
    @function       AudioObjectGetPropertyDataSize
    @abstract       Queries an AudioObject to find the size of the data for the given property.
    @param          inObjectID
                        The AudioObject to query.
    @param          inAddress
                        An AudioObjectPropertyAddress indicating which property is being queried.
    @param          inQualifierDataSize
                        A UInt32 indicating the size of the buffer pointed to by inQualifierData.
                        Note that not all properties require qualification, in which case this
                        value will be 0.
    @param          inQualifierData,
                        A buffer of data to be used in determining the data of the property being
                        queried. Note that not all properties require qualification, in which case
                        this value will be NULL.
    @param          outDataSize
                        A UInt32 indicating how many bytes the data for the given property occupies.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.4, *)
func AudioObjectGetPropertyDataSize(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inQualifierDataSize: UInt32, _ inQualifierData: UnsafePointer<Void>, _ outDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
    @function       AudioObjectGetPropertyData
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
    @param          inQualifierData,
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
@available(OSX 10.4, *)
func AudioObjectGetPropertyData(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inQualifierDataSize: UInt32, _ inQualifierData: UnsafePointer<Void>, _ ioDataSize: UnsafeMutablePointer<UInt32>, _ outData: UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @function       AudioObjectSetPropertyData
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
    @param          inQualifierData,
                        A buffer of data to be used in determining the data of the property being
                        queried. Note that not all properties require qualification, in which case
                        this value will be NULL.
    @param          inDataSize
                        A UInt32 indicating the size of the buffer pointed to by inData.
    @param          inData
                        The buffer containing the data to be used to change the property's value.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.4, *)
func AudioObjectSetPropertyData(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inQualifierDataSize: UInt32, _ inQualifierData: UnsafePointer<Void>, _ inDataSize: UInt32, _ inData: UnsafePointer<Void>) -> OSStatus

/*!
    @function       AudioObjectAddPropertyListener
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
@available(OSX 10.4, *)
func AudioObjectAddPropertyListener(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inListener: AudioObjectPropertyListenerProc, _ inClientData: UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @function       AudioObjectRemovePropertyListener
    @abstract       Unregisters the given AudioObjectPropertyListenerProc from receiving
                    notifications when the given properties change.
    @param          inObjectID
                        The AudioObject to unregister the listener from.
    @param          inAddress
                        The AudioObjectPropertyAddress indicating from which property the listener
                        should be removed.
    @param          inListener
                        The AudioObjectPropertyListenerProc being removed.
    @param          inClientData
                        A pointer to client data that is passed to the listener when it is called.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.4, *)
func AudioObjectRemovePropertyListener(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inListener: AudioObjectPropertyListenerProc, _ inClientData: UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @function       AudioObjectAddPropertyListenerBlock
    @abstract       Registers the given AudioObjectPropertyListenerBlock to receive notifications
                    when the given properties change.
    @param          inObjectID
                        The AudioObject to register the listener with.
    @param          inAddress
                        The AudioObjectPropertyAddresses indicating which property the listener
                        should be notified about.
    @param          inDispatchQueue
                        The dispatch queue on which the listener block will be dispatched. All
                        listener blocks will be dispatched asynchronously save for those dispatched
                        from the IO context (of which kAudioDevicePropertyDeviceIsRunning and
                        kAudioDeviceProcessorOverload are the only examples) which will be
                        dispatched synchronously. Note that this dispatch queue will be retained
                        until a matching call to AudioObjectRemovePropertyListenerBlock is made. If
                        this value is NULL, then the block will be directly invoked.
    @param          inListener
                        The AudioObjectPropertyListenerBlock to call. Note that this block will be
                        Block_copy'd and the reference maintained until a matching call to
                        AudioObjectRemovePropertyListenerBlock is made.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.7, *)
func AudioObjectAddPropertyListenerBlock(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inDispatchQueue: dispatch_queue_t?, _ inListener: AudioObjectPropertyListenerBlock) -> OSStatus

/*!
    @function       AudioObjectRemovePropertyListenerBlock
    @abstract       Unregisters the given AudioObjectPropertyListenerBlock from receiving
                    notifications when the given properties change.
    @param          inObjectID
                        The AudioObject to unregister the listener from.
    @param          inAddress
                        The AudioObjectPropertyAddress indicating from which property the listener
                        should be removed.
    @param          inDispatchQueue
                        The dispatch queue on which the listener block was being dispatched to. 
    @param          inListener
                        The AudioObjectPropertyListenerBlock being removed.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.7, *)
func AudioObjectRemovePropertyListenerBlock(inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inDispatchQueue: dispatch_queue_t?, _ inListener: AudioObjectPropertyListenerBlock) -> OSStatus
var kAudioSystemObjectClassID: AudioClassID { get }

/*!
    @enum           Power Hints
    @abstract       The values for kAudioHardwarePropertyPowerHint
    @discussion     The system object property, kAudioHardwarePropertyPowerHint, allows a process to
                    to indicate how aggressive the system can be with optimizations that save power.
                    Note that the value of this property can be set in an application's info.plist
                    using the key, "AudioHardwarePowerHint". The values for this key are the strings
                    that correspond to the values in the enum.
    @constant       kAudioHardwarePowerHintNone
                        This is the default value and it indicates that the system will not make any
                        power optimizations that compromise latency or quality in order to save
                        power. The info.plist value is "None" or the "AudioHardwarePowerHint" entry
                        can be omitted entirely.
    @constant       kAudioHardwarePowerHintFavorSavingPower
                        The system will choose to save power even at the expense of latency. The
                        info.plist value is "Favor Saving Power"
*/
enum AudioHardwarePowerHint : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case None
  case FavorSavingPower
}
var kAudioHardwarePropertyDevices: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyDefaultInputDevice: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyDefaultOutputDevice: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyDefaultSystemOutputDevice: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyTranslateUIDToDevice: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyMixStereoToMono: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyPlugInList: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyTranslateBundleIDToPlugIn: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyTransportManagerList: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyTranslateBundleIDToTransportManager: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyBoxList: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyTranslateUIDToBox: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyProcessIsMaster: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyIsInitingOrExiting: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyUserIDChanged: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyProcessIsAudible: AudioObjectPropertySelector { get }
var kAudioHardwarePropertySleepingIsAllowed: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyUnloadingIsAllowed: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyHogModeIsAllowed: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyUserSessionIsActiveOrHeadless: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyServiceRestarted: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyPowerHint: AudioObjectPropertySelector { get }

/*!
    @function       AudioHardwareUnload
    @abstract       When this routine is called, all IO on all devices within a process will be
                    terminated and all resources capable of being released will be released. This
                    routine essentially returns the HAL to its uninitialized state.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.1, *)
func AudioHardwareUnload() -> OSStatus

/*!
    @function       AudioHardwareCreateAggregateDevice
    @abstract       This routine creates a new AudioAggregateDevice using the provided description.
    @param          inDescription
                        The CFDictionary that specifies how to build the AudioAggregateDevice. The
                        supported keys are described in the AudioAggregateDevice Constants section.
    @param          outDeviceID
                        The AudioObjectID of the newly created AudioAggregateDevice.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.9, *)
func AudioHardwareCreateAggregateDevice(inDescription: CFDictionary, _ outDeviceID: UnsafeMutablePointer<AudioObjectID>) -> OSStatus

/*!
    @function       AudioHardwareDestroyAggregateDevice
    @abstract       This routine destroys the given AudioAggregateDevice.
    @discussion     The actual destruction of the device is asynchronous and may take place after
                    the call to this routine has returned.
    @param          inDeviceID
                        The AudioObjectID of the AudioAggregateDevice to destroy.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.9, *)
func AudioHardwareDestroyAggregateDevice(inDeviceID: AudioObjectID) -> OSStatus
var kAudioPlugInCreateAggregateDevice: AudioObjectPropertySelector { get }
var kAudioPlugInDestroyAggregateDevice: AudioObjectPropertySelector { get }
var kAudioTransportManagerCreateEndPointDevice: AudioObjectPropertySelector { get }
var kAudioTransportManagerDestroyEndPointDevice: AudioObjectPropertySelector { get }

/*!
    @typedef        AudioDeviceIOProc
    @abstract       An AudioDeviceIOProc is called by an AudioDevice to provide input data read from
                    the device and collect output data to be written to the device for the current
                    IO cycle.
    @param          inDevice
                        The AudioDevice doing the IO.
    @param          inNow
                        An AudioTimeStamp that indicates the IO cycle started. Note that this time
                        includes any scheduling latency that may have been incurred waking the
                        thread on which IO is being done.
    @param          inInputData
                        An AudioBufferList containing the input data for the current IO cycle. For
                        streams that are disabled, the AudioBuffer's mData field will be NULL but
                        the mDataByteSize field will still say how much data would have been there
                        if it was enabled. Note that the contents of this structure should never be
                        modified.
    @param          inInputTime
                        An AudioTimeStamp that indicates the time at which the first frame in the
                        data was acquired from the hardware. If the device has no input streams, the
                        time stamp will be zeroed out.
    @param          outOutputData
                        An AudioBufferList in which the output data for the current IO cycle is to
                        be placed. On entry, each AudioBuffer's mDataByteSize field indicates the
                        maximum amount of data that can be placed in the buffer and the buffer's
                        memory has been zeroed out. For formats where the number of bytes per packet
                        can vary (as with AC-3, for example), the client has to fill out on exit
                        each mDataByteSize field in each AudioBuffer with the amount of data that
                        was put in the buffer. Otherwise, the mDataByteSize field should not be
                        changed. For streams that are disabled, the AudioBuffer's mData field will
                        be NULL but the mDataByteSize field will still say how much data would have
                        been there if it was enabled. Except as noted above, the contents of this
                        structure should not other wise be modified.
    @param          inOutputTime
                        An AudioTimeStamp that indicates the time at which the first frame in the
                        data will be passed to the hardware. If the device has no output streams,
                        the time stamp will be zeroed out.
    @param          inClientData
                        A pointer to client data established when the AudioDeviceIOProc was
                        registered with the AudioDevice.
    @result         The return value is currently unused and should always be 0.
*/
typealias AudioDeviceIOProc = @convention(c) (AudioObjectID, UnsafePointer<AudioTimeStamp>, UnsafePointer<AudioBufferList>, UnsafePointer<AudioTimeStamp>, UnsafeMutablePointer<AudioBufferList>, UnsafePointer<AudioTimeStamp>, UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @typedef        AudioDeviceIOBlock
    @abstract       An AudioDeviceIOBlock is called by an AudioDevice to provide input data read 
                    from the device and collect output data to be written to the device for the
                    current IO cycle.
    @param          inNow
                        An AudioTimeStamp that indicates the IO cycle started. Note that this time
                        includes any scheduling latency that may have been incurred waking the
                        thread on which IO is being done.
    @param          inInputData
                        An AudioBufferList containing the input data for the current IO cycle. For
                        streams that are disabled, the AudioBuffer's mData field will be NULL but
                        the mDataByteSize field will still say how much data would have been there
                        if it was enabled. Note that the contents of this structure should never be
                        modified.
    @param          inInputTime
                        An AudioTimeStamp that indicates the time at which the first frame in the
                        data was acquired from the hardware. If the device has no input streams, the
                        time stamp will be zeroed out.
    @param          outOutputData
                        An AudioBufferList in which the output data for the current IO cycle is to
                        be placed. On entry, each AudioBuffer's mDataByteSize field indicates the
                        maximum amount of data that can be placed in the buffer and the buffer's
                        memory has been zeroed out. For formats where the number of bytes per packet
                        can vary (as with AC-3, for example), the client has to fill out on exit
                        each mDataByteSize field in each AudioBuffer with the amount of data that
                        was put in the buffer. Otherwise, the mDataByteSize field should not be
                        changed. For streams that are disabled, the AudioBuffer's mData field will
                        be NULL but the mDataByteSize field will still say how much data would have
                        been there if it was enabled. Except as noted above, the contents of this
                        structure should not other wise be modified.
    @param          inOutputTime
                        An AudioTimeStamp that indicates the time at which the first frame in the
                        data will be passed to the hardware. If the device has no output streams,
                        the time stamp will be zeroed out.
*/
typealias AudioDeviceIOBlock = (UnsafePointer<AudioTimeStamp>, UnsafePointer<AudioBufferList>, UnsafePointer<AudioTimeStamp>, UnsafeMutablePointer<AudioBufferList>, UnsafePointer<AudioTimeStamp>) -> Void

/*!
    @typedef        AudioDeviceIOProcID
    @abstract       An AudioDeviceIOProcID represents both an IOProc and the client data that goes
                    with it. Once created, an AudioDeviceIOProcID can be used everywhere one would
                    use a regular IOProc. The purpose for an AudioDeviceIOProcID is to allow a
                    client to register the same function pointer as an IOProc with a device multiple
                    times provided
*/
typealias AudioDeviceIOProcID = AudioDeviceIOProc

/*!
    @struct         AudioHardwareIOProcStreamUsage
    @abstract       This structure describes which streams a given AudioDeviceIOProc will use. It is
                    used in conjunction with kAudioDevicePropertyIOProcStreamUsage.
    @field          mIOProc
                        The IOProc whose stream usage is being specified.
    @field          mNumberStreams
                        The number of streams being specified.
    @field          mStreamIsOn
                        An array of UInt32's whose length is specified by mNumberStreams. Each
                        element of the array corresponds to a stream. A value of 0 means the stream
                        is not to be enabled. Any other value means the stream is to be used.
*/
struct AudioHardwareIOProcStreamUsage {
  var mIOProc: UnsafeMutablePointer<Void>
  var mNumberStreams: UInt32
  var mStreamIsOn: (UInt32)
}
var kAudioDeviceStartTimeIsInputFlag: UInt32 { get }
var kAudioDeviceStartTimeDontConsultDeviceFlag: UInt32 { get }
var kAudioDeviceStartTimeDontConsultHALFlag: UInt32 { get }
var kAudioDevicePropertyPlugIn: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceHasChanged: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceIsRunningSomewhere: AudioObjectPropertySelector { get }
var kAudioDeviceProcessorOverload: AudioObjectPropertySelector { get }
var kAudioDevicePropertyIOStoppedAbnormally: AudioObjectPropertySelector { get }
var kAudioDevicePropertyHogMode: AudioObjectPropertySelector { get }
var kAudioDevicePropertyBufferFrameSize: AudioObjectPropertySelector { get }
var kAudioDevicePropertyBufferFrameSizeRange: AudioObjectPropertySelector { get }
var kAudioDevicePropertyUsesVariableBufferFrameSizes: AudioObjectPropertySelector { get }
var kAudioDevicePropertyIOCycleUsage: AudioObjectPropertySelector { get }
var kAudioDevicePropertyStreamConfiguration: AudioObjectPropertySelector { get }
var kAudioDevicePropertyIOProcStreamUsage: AudioObjectPropertySelector { get }
var kAudioDevicePropertyActualSampleRate: AudioObjectPropertySelector { get }
var kAudioDevicePropertyJackIsConnected: AudioObjectPropertySelector { get }
var kAudioDevicePropertyVolumeScalar: AudioObjectPropertySelector { get }
var kAudioDevicePropertyVolumeDecibels: AudioObjectPropertySelector { get }
var kAudioDevicePropertyVolumeRangeDecibels: AudioObjectPropertySelector { get }
var kAudioDevicePropertyVolumeScalarToDecibels: AudioObjectPropertySelector { get }
var kAudioDevicePropertyVolumeDecibelsToScalar: AudioObjectPropertySelector { get }
var kAudioDevicePropertyStereoPan: AudioObjectPropertySelector { get }
var kAudioDevicePropertyStereoPanChannels: AudioObjectPropertySelector { get }
var kAudioDevicePropertyMute: AudioObjectPropertySelector { get }
var kAudioDevicePropertySolo: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPhantomPower: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPhaseInvert: AudioObjectPropertySelector { get }
var kAudioDevicePropertyClipLight: AudioObjectPropertySelector { get }
var kAudioDevicePropertyTalkback: AudioObjectPropertySelector { get }
var kAudioDevicePropertyListenback: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDataSource: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDataSources: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDataSourceNameForIDCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDataSourceKindForID: AudioObjectPropertySelector { get }
var kAudioDevicePropertyClockSource: AudioObjectPropertySelector { get }
var kAudioDevicePropertyClockSources: AudioObjectPropertySelector { get }
var kAudioDevicePropertyClockSourceNameForIDCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertyClockSourceKindForID: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThru: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruSolo: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruVolumeScalar: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruVolumeDecibels: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruVolumeRangeDecibels: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruVolumeScalarToDecibels: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruVolumeDecibelsToScalar: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruStereoPan: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruStereoPanChannels: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruDestination: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruDestinations: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruDestinationNameForIDCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelNominalLineLevel: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelNominalLineLevels: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelNominalLineLevelNameForIDCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertyHighPassFilterSetting: AudioObjectPropertySelector { get }
var kAudioDevicePropertyHighPassFilterSettings: AudioObjectPropertySelector { get }
var kAudioDevicePropertyHighPassFilterSettingNameForIDCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertySubVolumeScalar: AudioObjectPropertySelector { get }
var kAudioDevicePropertySubVolumeDecibels: AudioObjectPropertySelector { get }
var kAudioDevicePropertySubVolumeRangeDecibels: AudioObjectPropertySelector { get }
var kAudioDevicePropertySubVolumeScalarToDecibels: AudioObjectPropertySelector { get }
var kAudioDevicePropertySubVolumeDecibelsToScalar: AudioObjectPropertySelector { get }
var kAudioDevicePropertySubMute: AudioObjectPropertySelector { get }

/*!
    @function       AudioDeviceCreateIOProcID
    @abstract       Creates an AudioDeviceIOProcID from an AudioDeviceIOProc and a client data
                    pointer.
    @discussion     AudioDeviceIOProcIDs allow for the client to register the same function pointer
                    with a device multiple times
    @param          inDevice
                        The AudioDevice to register the IOProc with.
    @param          inProc
                        The AudioDeviceIOProc to register.
    @param          inClientData
                        A pointer to client data that is passed back to the IOProc when it is
                        called.
    @param          outIOProcID
                        The newly created AudioDeviceIOProcID.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.5, *)
func AudioDeviceCreateIOProcID(inDevice: AudioObjectID, _ inProc: AudioDeviceIOProc, _ inClientData: UnsafeMutablePointer<Void>, _ outIOProcID: UnsafeMutablePointer<AudioDeviceIOProcID?>) -> OSStatus

/*!
    @function       AudioDeviceCreateIOProcIDWithBlock
    @abstract       Creates an AudioDeviceIOProcID from an AudioDeviceIOBlock
    @param          outIOProcID
                        The newly created AudioDeviceIOProcID.
    @param          inDevice
                        The AudioDevice to register the Block with.
    @param          inDispatchQueue
                        The dispatch queue on which the IOBlock will be dispatched. All
                        IOBlocks are dispatched synchronously. Note that this dispatch queue will be
                        retained until a matching call to AudioDeviceDestroyIOProcID is made. If
                        this value is NULL, then the IOBlock will be directly invoked.
    @param          inBlock
                        The AudioDeviceIOBlock to register.  Note that this block will be
                        Block_copy'd and the reference maintained until a matching call to
                        AudioDeviceDestroyIOProcID is made.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.7, *)
func AudioDeviceCreateIOProcIDWithBlock(outIOProcID: UnsafeMutablePointer<AudioDeviceIOProcID?>, _ inDevice: AudioObjectID, _ inDispatchQueue: dispatch_queue_t?, _ inIOBlock: AudioDeviceIOBlock) -> OSStatus

/*!
    @function       AudioDeviceDestroyIOProcID
    @abstract       Destroys an AudioDeviceIOProcID.
    @discussion     AudioDeviceIOProcIDs allow for the client to register the same function pointer
                    with a device multiple times
    @param          inDevice
                        The AudioDevice from which the ID came.
    @param          inIOProcID
                        The AudioDeviceIOProcID to get rid of.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.5, *)
func AudioDeviceDestroyIOProcID(inDevice: AudioObjectID, _ inIOProcID: AudioDeviceIOProcID) -> OSStatus

/*!
    @function       AudioDeviceStart
    @abstract       Starts IO for the given AudioDeviceIOProcID.
    @param          inDevice
                        The AudioDevice to start the IOProc on.
    @param          inProcID
                        The AudioDeviceIOProcID to start. Note that this can be NULL, which starts
                        the hardware regardless of whether or not there are any IOProcs registered.
                        This is necessary if any of the AudioDevice's timing services are to be
                        used. A balancing call to AudioDeviceStop with a NULL IOProc is required to
                        stop the hardware.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.0, *)
func AudioDeviceStart(inDevice: AudioObjectID, _ inProcID: AudioDeviceIOProcID?) -> OSStatus

/*!
    @function       AudioDeviceStartAtTime
    @abstract       Starts IO for the given AudioDeviceIOProcID and aligns the IO cycle of the
                    AudioDevice with the given time.
    @param          inDevice
                        The AudioDevice to start the IOProc on.
    @param          inProcID
                        The AudioDeviceIOProcID to start. Note that this can be NULL, which starts
                        the hardware regardless of whether or not there are any IOProcs registered.
    @param          ioRequestedStartTime
                        A pointer to an AudioTimeStamp that, on entry, is the requested time to
                        start the IOProc. On exit, it will be the actual time the IOProc will start.
    @param          inFlags
                        A UInt32 containing flags that modify how this function behaves.
    @result         An OSStatus indicating success or failure.
                    kAudioHardwareUnsupportedOperationError will be returned if the AudioDevice does
                    not support starting at a specific time and inProc and ioRequestedStartTime are
                    not NULL.
*/
@available(OSX 10.3, *)
func AudioDeviceStartAtTime(inDevice: AudioObjectID, _ inProcID: AudioDeviceIOProcID?, _ ioRequestedStartTime: UnsafeMutablePointer<AudioTimeStamp>, _ inFlags: UInt32) -> OSStatus

/*!
    @function       AudioDeviceStop
    @abstract       Stops IO for the given AudioDeviceIOProcID.
    @param          inDevice
                        The AudioDevice to stop the IOProc on.
    @param          inProcID
                        The AudioDeviceIOProcID to stop.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.0, *)
func AudioDeviceStop(inDevice: AudioObjectID, _ inProcID: AudioDeviceIOProcID?) -> OSStatus

/*!
    @function       AudioDeviceGetCurrentTime
    @abstract       Retrieves the current time from an AudioDevice. Note that the device has to be
                    running.
    @param          inDevice
                        The AudioDevice to from which to get the time.
    @param          outTime
                        An AudioTimeStamp into which the current time is put. On entry, the
                        mFlags field specifies which representations to provide. Because not every
                        device supports all time representations, on exit, the mFlags field will
                        indicate what values are actually valid.
    @result         An OSStatus indicating success or failure. kAudioHardwareNotRunningError will be
                    returned if the AudioDevice isn't running.
*/
@available(OSX 10.0, *)
func AudioDeviceGetCurrentTime(inDevice: AudioObjectID, _ outTime: UnsafeMutablePointer<AudioTimeStamp>) -> OSStatus

/*!
    @function       AudioDeviceTranslateTime
    @abstract       Translates the time in the AudioDevice's time base from one representation to
                    another. Note that the device has to be running
    @param          inDevice
                        The AudioDevice whose time base governs the translation.
    @param          inTime
                        An AudioTimeStamp containing the time to be translated.
    @param          outTime
                        An AudioTimeStamp into which the translated time is put. On entry, the
                        mFlags field specifies which representations to translate the input time
                        into. Because not every device supports all time representations, on exit,
                        the mFlags field will indicate which translations were actually done.
    @result         An OSStatus indicating success or failure. kAudioHardwareNotRunningError will be
                    returned if the AudioDevice isn't running.
*/
@available(OSX 10.0, *)
func AudioDeviceTranslateTime(inDevice: AudioObjectID, _ inTime: UnsafePointer<AudioTimeStamp>, _ outTime: UnsafeMutablePointer<AudioTimeStamp>) -> OSStatus

/*!
    @function       AudioDeviceGetNearestStartTime
    @abstract       Query an AudioDevice to get a time equal to or later than the given time that is
                    the best time to start IO.
    @discussion     The time that is returned is dictated by the constraints of the device and the
                    system. For instance, the driver of a device that provides both audio and video
                    data may only allow start times that coincide with the edge of a video frame.
                    Also, if the device already has one or more active IOProcs, the start time will
                    be shifted to the beginning of the next IO cycle so as not to cause
                    discontinuities in the existing IOProcs. Another reason the start time may shift
                    is to allow for aligning the buffer accesses in an optimal fashion. Note that
                    the device must be running to use this function.
    @param          inDevice
                        The AudioDevice to query.
    @param          ioRequestedStartTime
                        A pointer to an AudioTimeStamp that, on entry, is the requested start time.
                        On exit, it will have the a time equal to or later than the requested time,
                        as dictated by the device's constraints.
    @param          inFlags
                        A UInt32 containing flags that modify how this function behaves.
    @result         An OSStatus indicating success or failure. kAudioHardwareNotRunningError will be
                    returned if the AudioDevice isn't running.
                    kAudioHardwareUnsupportedOperationError will be returned if the AudioDevice does
                    not support starting at a specific time.
*/
@available(OSX 10.3, *)
func AudioDeviceGetNearestStartTime(inDevice: AudioObjectID, _ ioRequestedStartTime: UnsafeMutablePointer<AudioTimeStamp>, _ inFlags: UInt32) -> OSStatus
var kAudioAggregateDeviceClassID: AudioClassID { get }
var kAudioAggregateDeviceUIDKey: String { get }
var kAudioAggregateDeviceNameKey: String { get }
var kAudioAggregateDeviceSubDeviceListKey: String { get }
var kAudioAggregateDeviceMasterSubDeviceKey: String { get }
var kAudioAggregateDeviceIsPrivateKey: String { get }
var kAudioAggregateDeviceIsStackedKey: String { get }
var kAudioAggregateDevicePropertyFullSubDeviceList: AudioObjectPropertySelector { get }
var kAudioAggregateDevicePropertyActiveSubDeviceList: AudioObjectPropertySelector { get }
var kAudioAggregateDevicePropertyComposition: AudioObjectPropertySelector { get }
var kAudioAggregateDevicePropertyMasterSubDevice: AudioObjectPropertySelector { get }
var kAudioSubDeviceClassID: AudioClassID { get }
var kAudioSubDeviceDriftCompensationMinQuality: UInt32 { get }
var kAudioSubDeviceDriftCompensationLowQuality: UInt32 { get }
var kAudioSubDeviceDriftCompensationMediumQuality: UInt32 { get }
var kAudioSubDeviceDriftCompensationHighQuality: UInt32 { get }
var kAudioSubDeviceDriftCompensationMaxQuality: UInt32 { get }
var kAudioSubDeviceUIDKey: String { get }
var kAudioSubDeviceNameKey: String { get }
var kAudioSubDeviceInputChannelsKey: String { get }
var kAudioSubDeviceOutputChannelsKey: String { get }
var kAudioSubDeviceExtraInputLatencyKey: String { get }
var kAudioSubDeviceExtraOutputLatencyKey: String { get }
var kAudioSubDeviceDriftCompensationKey: String { get }
var kAudioSubDeviceDriftCompensationQualityKey: String { get }
var kAudioSubDevicePropertyExtraLatency: AudioObjectPropertySelector { get }
var kAudioSubDevicePropertyDriftCompensation: AudioObjectPropertySelector { get }
var kAudioSubDevicePropertyDriftCompensationQuality: AudioObjectPropertySelector { get }

/*!
    @typedef        AudioObjectID
    @abstract       A UInt32 that provides a handle on a specific AudioObject.
*/
typealias AudioObjectID = UInt32

/*!
    @typedef        AudioClassID
    @abstract       AudioClassIDs are used to identify the class of an AudioObject.
*/
typealias AudioClassID = UInt32

/*!
    @typedef        AudioObjectPropertySelector
    @abstract       An AudioObjectPropertySelector is a four char code that identifies, along with
                    the AudioObjectPropertyScope and AudioObjectPropertyElement, a specific piece of
                    information about an AudioObject.
    @discussion     The property selector specifies the general classification of the property such
                    as volume, stream format, latency, etc. Note that each class has a different set
                    of selectors. A subclass inherits its super class's set of selectors, although
                    it may not implement them all.
*/
typealias AudioObjectPropertySelector = UInt32

/*!
    @typedef        AudioObjectPropertyScope
    @abstract       An AudioObjectPropertyScope is a four char code that identifies, along with the
                    AudioObjectPropertySelector and AudioObjectPropertyElement, a specific piece of
                    information about an AudioObject.
    @discussion     The scope specifies the section of the object in which to look for the property,
                    such as input, output, global, etc. Note that each class has a different set of
                    scopes. A subclass inherits its superclass's set of scopes.
*/
typealias AudioObjectPropertyScope = UInt32

/*!
    @typedef        AudioObjectPropertyElement
    @abstract       An AudioObjectPropertyElement is an integer that identifies, along with the
                    AudioObjectPropertySelector and AudioObjectPropertyScope, a specific piece of
                    information about an AudioObject.
    @discussion     The element selects one of possibly many items in the section of the object in
                    which to look for the property. Elements are number sequentially where 0
                    represents the master element. Elements are particular to an instance of a
                    class, meaning that two instances can have different numbers of elements in the
                    same scope. There is no inheritance of elements.
*/
typealias AudioObjectPropertyElement = UInt32

/*!
    @struct         AudioObjectPropertyAddress
    @abstract       An AudioObjectPropertyAddress collects the three parts that identify a specific
                    property together in a struct for easy transmission.
    @field          mSelector
                        The AudioObjectPropertySelector for the property.
    @field          mScope
                        The AudioObjectPropertyScope for the property.
    @field          mElement
                        The AudioObjectPropertyElement for the property.
*/
struct AudioObjectPropertyAddress {
  var mSelector: AudioObjectPropertySelector
  var mScope: AudioObjectPropertyScope
  var mElement: AudioObjectPropertyElement
  init()
  init(mSelector: AudioObjectPropertySelector, mScope: AudioObjectPropertyScope, mElement: AudioObjectPropertyElement)
}
var kAudioHardwareNoError: OSStatus { get }
var kAudioHardwareNotRunningError: OSStatus { get }
var kAudioHardwareUnspecifiedError: OSStatus { get }
var kAudioHardwareUnknownPropertyError: OSStatus { get }
var kAudioHardwareBadPropertySizeError: OSStatus { get }
var kAudioHardwareIllegalOperationError: OSStatus { get }
var kAudioHardwareBadObjectError: OSStatus { get }
var kAudioHardwareBadDeviceError: OSStatus { get }
var kAudioHardwareBadStreamError: OSStatus { get }
var kAudioHardwareUnsupportedOperationError: OSStatus { get }
var kAudioDeviceUnsupportedFormatError: OSStatus { get }
var kAudioDevicePermissionsError: OSStatus { get }
var kAudioObjectUnknown: AudioObjectID { get }
var kAudioObjectPropertyScopeGlobal: AudioObjectPropertyScope { get }
var kAudioObjectPropertyScopeInput: AudioObjectPropertyScope { get }
var kAudioObjectPropertyScopeOutput: AudioObjectPropertyScope { get }
var kAudioObjectPropertyScopePlayThrough: AudioObjectPropertyScope { get }
var kAudioObjectPropertyElementMaster: AudioObjectPropertyScope { get }
var kAudioObjectPropertySelectorWildcard: AudioObjectPropertySelector { get }
var kAudioObjectPropertyScopeWildcard: AudioObjectPropertyScope { get }
var kAudioObjectPropertyElementWildcard: AudioObjectPropertyElement { get }
var kAudioObjectClassIDWildcard: AudioClassID { get }
var kAudioObjectClassID: AudioClassID { get }
var kAudioObjectPropertyBaseClass: AudioObjectPropertySelector { get }
var kAudioObjectPropertyClass: AudioObjectPropertySelector { get }
var kAudioObjectPropertyOwner: AudioObjectPropertySelector { get }
var kAudioObjectPropertyName: AudioObjectPropertySelector { get }
var kAudioObjectPropertyModelName: AudioObjectPropertySelector { get }
var kAudioObjectPropertyManufacturer: AudioObjectPropertySelector { get }
var kAudioObjectPropertyElementName: AudioObjectPropertySelector { get }
var kAudioObjectPropertyElementCategoryName: AudioObjectPropertySelector { get }
var kAudioObjectPropertyElementNumberName: AudioObjectPropertySelector { get }
var kAudioObjectPropertyOwnedObjects: AudioObjectPropertySelector { get }
var kAudioObjectPropertyIdentify: AudioObjectPropertySelector { get }
var kAudioObjectPropertySerialNumber: AudioObjectPropertySelector { get }
var kAudioObjectPropertyFirmwareVersion: AudioObjectPropertySelector { get }
var kAudioPlugInClassID: AudioClassID { get }
var kAudioPlugInPropertyBundleID: AudioObjectPropertySelector { get }
var kAudioPlugInPropertyDeviceList: AudioObjectPropertySelector { get }
var kAudioPlugInPropertyTranslateUIDToDevice: AudioObjectPropertySelector { get }
var kAudioPlugInPropertyBoxList: AudioObjectPropertySelector { get }
var kAudioPlugInPropertyTranslateUIDToBox: AudioObjectPropertySelector { get }
var kAudioTransportManagerClassID: AudioClassID { get }
var kAudioTransportManagerPropertyEndPointList: AudioObjectPropertySelector { get }
var kAudioTransportManagerPropertyTranslateUIDToEndPoint: AudioObjectPropertySelector { get }
var kAudioTransportManagerPropertyTransportType: AudioObjectPropertySelector { get }
var kAudioBoxClassID: AudioClassID { get }
var kAudioBoxPropertyBoxUID: AudioObjectPropertySelector { get }
var kAudioBoxPropertyTransportType: AudioObjectPropertySelector { get }
var kAudioBoxPropertyHasAudio: AudioObjectPropertySelector { get }
var kAudioBoxPropertyHasVideo: AudioObjectPropertySelector { get }
var kAudioBoxPropertyHasMIDI: AudioObjectPropertySelector { get }
var kAudioBoxPropertyIsProtected: AudioObjectPropertySelector { get }
var kAudioBoxPropertyAcquired: AudioObjectPropertySelector { get }
var kAudioBoxPropertyAcquisitionFailed: AudioObjectPropertySelector { get }
var kAudioBoxPropertyDeviceList: AudioObjectPropertySelector { get }
var kAudioDeviceClassID: AudioClassID { get }
var kAudioDeviceTransportTypeUnknown: UInt32 { get }
var kAudioDeviceTransportTypeBuiltIn: UInt32 { get }
var kAudioDeviceTransportTypeAggregate: UInt32 { get }
var kAudioDeviceTransportTypeVirtual: UInt32 { get }
var kAudioDeviceTransportTypePCI: UInt32 { get }
var kAudioDeviceTransportTypeUSB: UInt32 { get }
var kAudioDeviceTransportTypeFireWire: UInt32 { get }
var kAudioDeviceTransportTypeBluetooth: UInt32 { get }
var kAudioDeviceTransportTypeBluetoothLE: UInt32 { get }
var kAudioDeviceTransportTypeHDMI: UInt32 { get }
var kAudioDeviceTransportTypeDisplayPort: UInt32 { get }
var kAudioDeviceTransportTypeAirPlay: UInt32 { get }
var kAudioDeviceTransportTypeAVB: UInt32 { get }
var kAudioDeviceTransportTypeThunderbolt: UInt32 { get }
var kAudioDevicePropertyConfigurationApplication: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceUID: AudioObjectPropertySelector { get }
var kAudioDevicePropertyModelUID: AudioObjectPropertySelector { get }
var kAudioDevicePropertyTransportType: AudioObjectPropertySelector { get }
var kAudioDevicePropertyRelatedDevices: AudioObjectPropertySelector { get }
var kAudioDevicePropertyClockDomain: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceIsAlive: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceIsRunning: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceCanBeDefaultDevice: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceCanBeDefaultSystemDevice: AudioObjectPropertySelector { get }
var kAudioDevicePropertyLatency: AudioObjectPropertySelector { get }
var kAudioDevicePropertyStreams: AudioObjectPropertySelector { get }
var kAudioObjectPropertyControlList: AudioObjectPropertySelector { get }
var kAudioDevicePropertySafetyOffset: AudioObjectPropertySelector { get }
var kAudioDevicePropertyNominalSampleRate: AudioObjectPropertySelector { get }
var kAudioDevicePropertyAvailableNominalSampleRates: AudioObjectPropertySelector { get }
var kAudioDevicePropertyIcon: AudioObjectPropertySelector { get }
var kAudioDevicePropertyIsHidden: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPreferredChannelsForStereo: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPreferredChannelLayout: AudioObjectPropertySelector { get }
var kAudioEndPointDeviceClassID: AudioClassID { get }
var kAudioEndPointDeviceUIDKey: String { get }
var kAudioEndPointDeviceNameKey: String { get }
var kAudioEndPointDeviceEndPointListKey: String { get }
var kAudioEndPointDeviceMasterEndPointKey: String { get }
var kAudioEndPointDeviceIsPrivateKey: String { get }
var kAudioEndPointDevicePropertyComposition: AudioObjectPropertySelector { get }
var kAudioEndPointDevicePropertyEndPointList: AudioObjectPropertySelector { get }
var kAudioEndPointDevicePropertyIsPrivate: AudioObjectPropertySelector { get }
var kAudioEndPointClassID: AudioClassID { get }
var kAudioEndPointUIDKey: String { get }
var kAudioEndPointNameKey: String { get }
var kAudioEndPointInputChannelsKey: String { get }
var kAudioEndPointOutputChannelsKey: String { get }

/*!
    @struct         AudioStreamRangedDescription
    @abstract       This structure allows a specific sample rate range to be associated with an
                    AudioStreamBasicDescription that specifies its sample rate as
                    kAudioStreamAnyRate.
    @discussion     Note that this structure is only used to describe the the available formats
                    for a stream. It is not used for the current format.
    @field          mFormat
                        The AudioStreamBasicDescription that describes the format of the stream.
                        Note that the mSampleRate field of the structure will be the same as the
                        the values in mSampleRateRange when only a single sample rate is supported.
                        It will be kAudioStreamAnyRate when there is a range with more elements. 
    @field          mSampleRateRange
                        The AudioValueRange that describes the minimum and maximum sample rate for
                        the stream. If the mSampleRate field of mFormat is kAudioStreamAnyRate the
                        format supports the range of sample rates described by this structure.
                        Otherwise, the minimum will be the same as the maximum which will be the
                        same as the mSampleRate field of mFormat.
*/
struct AudioStreamRangedDescription {
  var mFormat: AudioStreamBasicDescription
  var mSampleRateRange: AudioValueRange
  init()
  init(mFormat: AudioStreamBasicDescription, mSampleRateRange: AudioValueRange)
}
var kAudioStreamClassID: AudioClassID { get }
var kAudioStreamTerminalTypeUnknown: UInt32 { get }
var kAudioStreamTerminalTypeLine: UInt32 { get }
var kAudioStreamTerminalTypeDigitalAudioInterface: UInt32 { get }
var kAudioStreamTerminalTypeSpeaker: UInt32 { get }
var kAudioStreamTerminalTypeHeadphones: UInt32 { get }
var kAudioStreamTerminalTypeLFESpeaker: UInt32 { get }
var kAudioStreamTerminalTypeReceiverSpeaker: UInt32 { get }
var kAudioStreamTerminalTypeMicrophone: UInt32 { get }
var kAudioStreamTerminalTypeHeadsetMicrophone: UInt32 { get }
var kAudioStreamTerminalTypeReceiverMicrophone: UInt32 { get }
var kAudioStreamTerminalTypeTTY: UInt32 { get }
var kAudioStreamTerminalTypeHDMI: UInt32 { get }
var kAudioStreamTerminalTypeDisplayPort: UInt32 { get }
var kAudioStreamPropertyIsActive: AudioObjectPropertySelector { get }
var kAudioStreamPropertyDirection: AudioObjectPropertySelector { get }
var kAudioStreamPropertyTerminalType: AudioObjectPropertySelector { get }
var kAudioStreamPropertyStartingChannel: AudioObjectPropertySelector { get }
var kAudioStreamPropertyLatency: AudioObjectPropertySelector { get }
var kAudioStreamPropertyVirtualFormat: AudioObjectPropertySelector { get }
var kAudioStreamPropertyAvailableVirtualFormats: AudioObjectPropertySelector { get }
var kAudioStreamPropertyPhysicalFormat: AudioObjectPropertySelector { get }
var kAudioStreamPropertyAvailablePhysicalFormats: AudioObjectPropertySelector { get }
var kAudioControlClassID: AudioClassID { get }
var kAudioControlPropertyScope: AudioObjectPropertySelector { get }
var kAudioControlPropertyElement: AudioObjectPropertySelector { get }
var kAudioSliderControlClassID: AudioClassID { get }
var kAudioSliderControlPropertyValue: AudioObjectPropertySelector { get }
var kAudioSliderControlPropertyRange: AudioObjectPropertySelector { get }
var kAudioLevelControlClassID: AudioClassID { get }
var kAudioVolumeControlClassID: AudioClassID { get }
var kAudioLFEVolumeControlClassID: AudioClassID { get }
var kAudioLevelControlPropertyScalarValue: AudioObjectPropertySelector { get }
var kAudioLevelControlPropertyDecibelValue: AudioObjectPropertySelector { get }
var kAudioLevelControlPropertyDecibelRange: AudioObjectPropertySelector { get }
var kAudioLevelControlPropertyConvertScalarToDecibels: AudioObjectPropertySelector { get }
var kAudioLevelControlPropertyConvertDecibelsToScalar: AudioObjectPropertySelector { get }
var kAudioBooleanControlClassID: AudioClassID { get }
var kAudioMuteControlClassID: AudioClassID { get }
var kAudioSoloControlClassID: AudioClassID { get }
var kAudioJackControlClassID: AudioClassID { get }
var kAudioLFEMuteControlClassID: AudioClassID { get }
var kAudioPhantomPowerControlClassID: AudioClassID { get }
var kAudioPhaseInvertControlClassID: AudioClassID { get }
var kAudioClipLightControlClassID: AudioClassID { get }
var kAudioTalkbackControlClassID: AudioClassID { get }
var kAudioListenbackControlClassID: AudioClassID { get }
var kAudioBooleanControlPropertyValue: AudioObjectPropertySelector { get }
var kAudioSelectorControlClassID: AudioClassID { get }
var kAudioDataSourceControlClassID: AudioClassID { get }
var kAudioDataDestinationControlClassID: AudioClassID { get }
var kAudioClockSourceControlClassID: AudioClassID { get }
var kAudioLineLevelControlClassID: AudioClassID { get }
var kAudioHighPassFilterControlClassID: AudioClassID { get }
var kAudioSelectorControlPropertyCurrentItem: AudioObjectPropertySelector { get }
var kAudioSelectorControlPropertyAvailableItems: AudioObjectPropertySelector { get }
var kAudioSelectorControlPropertyItemName: AudioObjectPropertySelector { get }
var kAudioSelectorControlPropertyItemKind: AudioObjectPropertySelector { get }
var kAudioSelectorControlItemKindSpacer: UInt32 { get }
var kAudioClockSourceItemKindInternal: UInt32 { get }
var kAudioStereoPanControlClassID: AudioClassID { get }
var kAudioStereoPanControlPropertyValue: AudioObjectPropertySelector { get }
var kAudioStereoPanControlPropertyPanningChannels: AudioObjectPropertySelector { get }
var kAudioDevicePropertyScopeInput: AudioObjectPropertyScope { get }
var kAudioDevicePropertyScopeOutput: AudioObjectPropertyScope { get }
var kAudioDevicePropertyScopePlayThrough: AudioObjectPropertyScope { get }
var kAudioPropertyWildcardPropertyID: AudioObjectPropertySelector { get }
var kAudioPropertyWildcardSection: UInt8 { get }
var kAudioPropertyWildcardChannel: AudioObjectPropertyElement { get }
var kAudioISubOwnerControlClassID: AudioClassID { get }
var kAudioLevelControlPropertyDecibelsToScalarTransferFunction: AudioObjectPropertySelector { get }

/*!
    @enum           Values for kAudioLevelControlPropertyDecibelsToScalarTransferFunction
    @abstract       The following constants are the only supported values for a volume control's
                    transfer function.
    @discussion     The transfer function implemented in the volume control works by raising the
                    scalar value to an exponent to map it into the decibel range. The constants
                    in this enum express the exponent used in the name as a quotient. For example,
                    kAudioLevelControlTranferFunction3Over4 represents the exponent 0.75.
*/
enum AudioLevelControlTransferFunction : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case TranferFunctionLinear
  case TranferFunction1Over3
  case TranferFunction1Over2
  case TranferFunction3Over4
  case TranferFunction3Over2
  case TranferFunction2Over1
  case TranferFunction3Over1
  case TranferFunction4Over1
  case TranferFunction5Over1
  case TranferFunction6Over1
  case TranferFunction7Over1
  case TranferFunction8Over1
  case TranferFunction9Over1
  case TranferFunction10Over1
  case TranferFunction11Over1
  case TranferFunction12Over1
}

/*!
    @typedef        AudioHardwarePropertyID
    @abstract       An AudioHardwarePropertyID is a integer that identifies a specific piece of
                    information about the AudioSystemObject.
*/
typealias AudioHardwarePropertyID = AudioObjectPropertySelector

/*!
    @typedef        AudioHardwarePropertyListenerProc
    @abstract       Clients register an AudioHardwarePropertyListenerProc with the AudioSystemObject
                    in order to receive notifications when the properties of the object change.
    @discussion     Note that the same functionality is provided by AudioObjectPropertyListenerProc.
    @param          inPropertyID
                        The AudioHardwarePropertyID of the property that changed.
    @param          inClientData
                        A pointer to client data established when the listener proc was registered
                        with the AudioSystemObject.
    @result         The return value is currently unused and should always be 0.
*/
typealias AudioHardwarePropertyListenerProc = @convention(c) (AudioHardwarePropertyID, UnsafeMutablePointer<Void>) -> OSStatus
var kAudioHardwareRunLoopMode: String { get }
var kAudioHardwarePropertyRunLoop: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyDeviceForUID: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyPlugInForBundleID: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyBootChimeVolumeScalar: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyBootChimeVolumeDecibels: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyBootChimeVolumeRangeDecibels: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyBootChimeVolumeScalarToDecibels: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyBootChimeVolumeDecibelsToScalar: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyBootChimeVolumeDecibelsToScalarTransferFunction: AudioObjectPropertySelector { get }

/*!
    @typedef        AudioDeviceID
    @abstract       AudioDevice is the base class for all objects that represent an audio device.
    @discussion     AudioDevice is a subclass of AudioObject. AudioDevices normally contain
                    AudioStreams and AudioControls, but may contain other things depending on the
                    kind of AudioDevice (e.g. aggregate devices contain other AudioDevices).
*/
typealias AudioDeviceID = AudioObjectID

/*!
    @typedef        AudioDevicePropertyID
    @abstract       An AudioDevicePropertyID is an integer that identifies a specific piece of
                    information about the object.
*/
typealias AudioDevicePropertyID = AudioObjectPropertySelector

/*!
    @typedef        AudioDevicePropertyListenerProc
    @abstract       Clients register an AudioDevicePropertyListenerProc with the AudioDevice object
                    in order to receive notifications when the properties of the object change.
    @discussion     Note that the same functionality is provided by AudioObjectPropertyListenerProc.
    @param          inDevice
                        The AudioDevice whose property has changed.
    @param          inChannel
                        The channel of the property that changed where 0 is the master channel.
    @param          isInput
                        Which section of the AudioDevice changed.
    @param          inPropertyID
                        The AudioDevicePropertyID of the property that changed.
    @param          inClientData
                        A pointer to client data established when the listener proc was registered
                        with the object.
    @result         The return value is currently unused and should always be 0.
*/
typealias AudioDevicePropertyListenerProc = @convention(c) (AudioDeviceID, UInt32, DarwinBoolean, AudioDevicePropertyID, UnsafeMutablePointer<Void>) -> OSStatus
var kAudioDeviceUnknown: AudioObjectID { get }
var kAudioDeviceTransportTypeAutoAggregate: UInt32 { get }
var kAudioDevicePropertyVolumeDecibelsToScalarTransferFunction: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruVolumeDecibelsToScalarTransferFunction: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDriverShouldOwniSub: AudioObjectPropertySelector { get }
var kAudioDevicePropertySubVolumeDecibelsToScalarTransferFunction: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceName: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceNameCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceManufacturer: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceManufacturerCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertyRegisterBufferList: AudioObjectPropertySelector { get }
var kAudioDevicePropertyBufferSize: AudioObjectPropertySelector { get }
var kAudioDevicePropertyBufferSizeRange: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelName: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelNameCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelCategoryName: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelCategoryNameCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelNumberName: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelNumberNameCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertySupportsMixing: AudioObjectPropertySelector { get }
var kAudioDevicePropertyStreamFormat: AudioObjectPropertySelector { get }
var kAudioDevicePropertyStreamFormats: AudioObjectPropertySelector { get }
var kAudioDevicePropertyStreamFormatSupported: AudioObjectPropertySelector { get }
var kAudioDevicePropertyStreamFormatMatch: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDataSourceNameForID: AudioObjectPropertySelector { get }
var kAudioDevicePropertyClockSourceNameForID: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruDestinationNameForID: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelNominalLineLevelNameForID: AudioObjectPropertySelector { get }
var kAudioDevicePropertyHighPassFilterSettingNameForID: AudioObjectPropertySelector { get }

/*!
    @typedef        AudioStreamID
    @abstract       AudioStream is the base class for all objects that represent a stream of data on
                    an audio device.
    @discussion     AudioStream is a subclass of AudioObject and can contain AudioControls.
*/
typealias AudioStreamID = AudioObjectID

/*!
    @typedef        AudioStreamPropertyListenerProc
    @abstract       Clients register an AudioStreamPropertyListenerProc with the AudioStream object
                    in order to receive notifications when the properties of the object change.
    @discussion     Note that the same functionality is provided by AudioObjectPropertyListenerProc.
    @param          inStream
                        The AudioStream whose property has changed.
    @param          inChannel
                        The channel of the property that changed where 0 is the master channel.
    @param          inPropertyID
                        The AudioDevicePropertyID of the property that changed.
    @param          inClientData
                        A pointer to client data established when the listener proc was registered
                        with the object.
    @result         The return value is currently unused and should always be 0.
*/
typealias AudioStreamPropertyListenerProc = @convention(c) (AudioStreamID, UInt32, AudioDevicePropertyID, UnsafeMutablePointer<Void>) -> OSStatus
var kAudioStreamUnknown: AudioObjectID { get }
var kAudioStreamPropertyOwningDevice: AudioObjectPropertySelector { get }
var kAudioStreamPropertyPhysicalFormats: AudioObjectPropertySelector { get }
var kAudioStreamPropertyPhysicalFormatSupported: AudioObjectPropertySelector { get }
var kAudioStreamPropertyPhysicalFormatMatch: AudioObjectPropertySelector { get }
var kAudioBootChimeVolumeControlClassID: AudioClassID { get }
var kAudioControlPropertyVariant: AudioObjectPropertySelector { get }
var kAudioClockSourceControlPropertyItemKind: AudioObjectPropertySelector { get }
var COREAUDIOTYPES_VERSION: Int32 { get }
var CA_PREFER_FIXED_POINT: Int32 { get }
var kAudio_UnimplementedError: OSStatus { get }
var kAudio_FileNotFoundError: OSStatus { get }
var kAudio_FilePermissionError: OSStatus { get }
var kAudio_TooManyFilesOpenError: OSStatus { get }
var kAudio_BadFilePathError: OSStatus { get }
var kAudio_ParamError: OSStatus { get }
var kAudio_MemFullError: OSStatus { get }

/*!
    @struct         AudioValueRange
    @abstract       This structure holds a pair of numbers that represent a continuous range of
                    values.
    @field          mMinimum
                        The minimum value.
    @field          mMaximum
                        The maximum value.
*/
struct AudioValueRange {
  var mMinimum: Float64
  var mMaximum: Float64
  init()
  init(mMinimum: Float64, mMaximum: Float64)
}

/*!
    @struct         AudioValueTranslation
    @abstract       This stucture holds the buffers necessary for translation operations.
    @field          mInputData
                        The buffer containing the data to be translated.
    @field          mInputDataSize
                        The number of bytes in the buffer pointed at by mInputData.
    @field          mOutputData
                        The buffer to hold the result of the translation.
    @field          mOutputDataSize
                        The number of bytes in the buffer pointed at by mOutputData.
*/
struct AudioValueTranslation {
  var mInputData: UnsafeMutablePointer<Void>
  var mInputDataSize: UInt32
  var mOutputData: UnsafeMutablePointer<Void>
  var mOutputDataSize: UInt32
}

/*!
    @struct         AudioBuffer
    @abstract       A structure to hold a buffer of audio data.
    @field          mNumberChannels
                        The number of interleaved channels in the buffer.
    @field          mDataByteSize
                        The number of bytes in the buffer pointed at by mData.
    @field          mData
                        A pointer to the buffer of audio data.
*/
struct AudioBuffer {
  var mNumberChannels: UInt32
  var mDataByteSize: UInt32
  var mData: UnsafeMutablePointer<Void>
  init()
  init(mNumberChannels: UInt32, mDataByteSize: UInt32, mData: UnsafeMutablePointer<Void>)
}

extension AudioBuffer {
  /// Initialize an `AudioBuffer` from an
  /// `UnsafeMutableBufferPointer<Element>`.
  init<Element>(_ typedBuffer: UnsafeMutableBufferPointer<Element>, numberOfChannels: Int)
}

/*!
    @struct         AudioBufferList
    @abstract       A variable length array of AudioBuffer structures.
    @field          mNumberBuffers
                        The number of AudioBuffers in the mBuffers array.
    @field          mBuffers
                        A variable length array of AudioBuffers.
*/
struct AudioBufferList {
  var mNumberBuffers: UInt32
  var mBuffers: (AudioBuffer)
  init()
  init(mNumberBuffers: UInt32, mBuffers: (AudioBuffer))
}

extension AudioBufferList {
  /// - Returns: the size in bytes of an `AudioBufferList` that can hold up to
  ///   `maximumBuffers` `AudioBuffer`s.
  static func sizeInBytes(maximumBuffers maximumBuffers: Int) -> Int
  /// Allocate an `AudioBufferList` with a capacity for the specified number of
  /// `AudioBuffer`s.
  ///
  /// The `count` property of the new `AudioBufferList` is initialized to
  /// `maximumBuffers`.
  ///
  /// The memory should be freed with `free()`.
  static func allocate(maximumBuffers maximumBuffers: Int) -> UnsafeMutableAudioBufferListPointer
}
@available(*, deprecated, message="The concept of canonical formats is deprecated")
typealias AudioSampleType = Float32
@available(*, deprecated, message="The concept of canonical formats is deprecated")
typealias AudioUnitSampleType = Float32

/*!
    @typedef        AudioFormatID
    @abstract       A four char code indicating the general kind of data in the stream.
*/
typealias AudioFormatID = UInt32

/*!
    @typedef        AudioFormatFlags
    @abstract       Flags that are specific to each format.
*/
typealias AudioFormatFlags = UInt32

/*!
    @struct         AudioStreamBasicDescription
    @abstract       This structure encapsulates all the information for describing the basic
                    format properties of a stream of audio data.
    @discussion     This structure is sufficient to describe any constant bit rate format that  has
                    channels that are the same size. Extensions are required for variable bit rate
                    data and for constant bit rate data where the channels have unequal sizes.
                    However, where applicable, the appropriate fields will be filled out correctly
                    for these kinds of formats (the extra data is provided via separate properties).
                    In all fields, a value of 0 indicates that the field is either unknown, not
                    applicable or otherwise is inapproprate for the format and should be ignored.
                    Note that 0 is still a valid value for most formats in the mFormatFlags field.

                    In audio data a frame is one sample across all channels. In non-interleaved
                    audio, the per frame fields identify one channel. In interleaved audio, the per
                    frame fields identify the set of n channels. In uncompressed audio, a Packet is
                    one frame, (mFramesPerPacket == 1). In compressed audio, a Packet is an
                    indivisible chunk of compressed data, for example an AAC packet will contain
                    1024 sample frames.
 
    @field          mSampleRate
                        The number of sample frames per second of the data in the stream.
    @field          mFormatID
                        The AudioFormatID indicating the general kind of data in the stream.
    @field          mFormatFlags
                        The AudioFormatFlags for the format indicated by mFormatID.
    @field          mBytesPerPacket
                        The number of bytes in a packet of data.
    @field          mFramesPerPacket
                        The number of sample frames in each packet of data.
    @field          mBytesPerFrame
                        The number of bytes in a single sample frame of data.
    @field          mChannelsPerFrame
                        The number of channels in each frame of data.
    @field          mBitsPerChannel
                        The number of bits of sample data for each channel in a frame of data.
    @field          mReserved
                        Pads the structure out to force an even 8 byte alignment.
*/
struct AudioStreamBasicDescription {
  var mSampleRate: Float64
  var mFormatID: AudioFormatID
  var mFormatFlags: AudioFormatFlags
  var mBytesPerPacket: UInt32
  var mFramesPerPacket: UInt32
  var mBytesPerFrame: UInt32
  var mChannelsPerFrame: UInt32
  var mBitsPerChannel: UInt32
  var mReserved: UInt32
  init()
  init(mSampleRate: Float64, mFormatID: AudioFormatID, mFormatFlags: AudioFormatFlags, mBytesPerPacket: UInt32, mFramesPerPacket: UInt32, mBytesPerFrame: UInt32, mChannelsPerFrame: UInt32, mBitsPerChannel: UInt32, mReserved: UInt32)
}

/*!
    @enum           AudioStreamBasicDescription Constants
    @constant       kAudioStreamAnyRate
                        The format can use any sample rate. Note that this constant can only appear
                        in listings of supported formats. It will never appear in a current format.
*/
let kAudioStreamAnyRate: Float64
var kAudioFormatLinearPCM: AudioFormatID { get }
var kAudioFormatAC3: AudioFormatID { get }
var kAudioFormat60958AC3: AudioFormatID { get }
var kAudioFormatAppleIMA4: AudioFormatID { get }
var kAudioFormatMPEG4AAC: AudioFormatID { get }
var kAudioFormatMPEG4CELP: AudioFormatID { get }
var kAudioFormatMPEG4HVXC: AudioFormatID { get }
var kAudioFormatMPEG4TwinVQ: AudioFormatID { get }
var kAudioFormatMACE3: AudioFormatID { get }
var kAudioFormatMACE6: AudioFormatID { get }
var kAudioFormatULaw: AudioFormatID { get }
var kAudioFormatALaw: AudioFormatID { get }
var kAudioFormatQDesign: AudioFormatID { get }
var kAudioFormatQDesign2: AudioFormatID { get }
var kAudioFormatQUALCOMM: AudioFormatID { get }
var kAudioFormatMPEGLayer1: AudioFormatID { get }
var kAudioFormatMPEGLayer2: AudioFormatID { get }
var kAudioFormatMPEGLayer3: AudioFormatID { get }
var kAudioFormatTimeCode: AudioFormatID { get }
var kAudioFormatMIDIStream: AudioFormatID { get }
var kAudioFormatParameterValueStream: AudioFormatID { get }
var kAudioFormatAppleLossless: AudioFormatID { get }
var kAudioFormatMPEG4AAC_HE: AudioFormatID { get }
var kAudioFormatMPEG4AAC_LD: AudioFormatID { get }
var kAudioFormatMPEG4AAC_ELD: AudioFormatID { get }
var kAudioFormatMPEG4AAC_ELD_SBR: AudioFormatID { get }
var kAudioFormatMPEG4AAC_ELD_V2: AudioFormatID { get }
var kAudioFormatMPEG4AAC_HE_V2: AudioFormatID { get }
var kAudioFormatMPEG4AAC_Spatial: AudioFormatID { get }
var kAudioFormatAMR: AudioFormatID { get }
var kAudioFormatAMR_WB: AudioFormatID { get }
var kAudioFormatAudible: AudioFormatID { get }
var kAudioFormatiLBC: AudioFormatID { get }
var kAudioFormatDVIIntelIMA: AudioFormatID { get }
var kAudioFormatMicrosoftGSM: AudioFormatID { get }
var kAudioFormatAES3: AudioFormatID { get }
var kAudioFormatEnhancedAC3: AudioFormatID { get }
var kAudioFormatFlagIsFloat: AudioFormatFlags { get }
var kAudioFormatFlagIsBigEndian: AudioFormatFlags { get }
var kAudioFormatFlagIsSignedInteger: AudioFormatFlags { get }
var kAudioFormatFlagIsPacked: AudioFormatFlags { get }
var kAudioFormatFlagIsAlignedHigh: AudioFormatFlags { get }
var kAudioFormatFlagIsNonInterleaved: AudioFormatFlags { get }
var kAudioFormatFlagIsNonMixable: AudioFormatFlags { get }
var kAudioFormatFlagsAreAllClear: AudioFormatFlags { get }
var kLinearPCMFormatFlagIsFloat: AudioFormatFlags { get }
var kLinearPCMFormatFlagIsBigEndian: AudioFormatFlags { get }
var kLinearPCMFormatFlagIsSignedInteger: AudioFormatFlags { get }
var kLinearPCMFormatFlagIsPacked: AudioFormatFlags { get }
var kLinearPCMFormatFlagIsAlignedHigh: AudioFormatFlags { get }
var kLinearPCMFormatFlagIsNonInterleaved: AudioFormatFlags { get }
var kLinearPCMFormatFlagIsNonMixable: AudioFormatFlags { get }
var kLinearPCMFormatFlagsSampleFractionShift: AudioFormatFlags { get }
var kLinearPCMFormatFlagsSampleFractionMask: AudioFormatFlags { get }
var kLinearPCMFormatFlagsAreAllClear: AudioFormatFlags { get }
var kAppleLosslessFormatFlag_16BitSourceData: AudioFormatFlags { get }
var kAppleLosslessFormatFlag_20BitSourceData: AudioFormatFlags { get }
var kAppleLosslessFormatFlag_24BitSourceData: AudioFormatFlags { get }
var kAppleLosslessFormatFlag_32BitSourceData: AudioFormatFlags { get }
var kAudioFormatFlagsNativeEndian: AudioFormatFlags { get }
@available(*, deprecated, message="The concept of canonical formats is deprecated")
var kAudioFormatFlagsCanonical: AudioFormatFlags { get }
@available(*, deprecated, message="The concept of canonical formats is deprecated")
var kAudioFormatFlagsAudioUnitCanonical: AudioFormatFlags { get }
var kAudioFormatFlagsNativeFloatPacked: AudioFormatFlags { get }

/*!
    @struct         AudioStreamPacketDescription
    @abstract       This structure describes the packet layout of a buffer of data where the size of
                    each packet may not be the same or where there is extraneous data between
                    packets.
    @field          mStartOffset
                        The number of bytes from the start of the buffer to the beginning of the
                        packet.
    @field          mVariableFramesInPacket
                        The number of sample frames of data in the packet. For formats with a
                        constant number of frames per packet, this field is set to 0.
    @field          mDataByteSize
                        The number of bytes in the packet.
*/
struct AudioStreamPacketDescription {
  var mStartOffset: Int64
  var mVariableFramesInPacket: UInt32
  var mDataByteSize: UInt32
  init()
  init(mStartOffset: Int64, mVariableFramesInPacket: UInt32, mDataByteSize: UInt32)
}

/*!
    @enum           SMPTE Time Types
    @abstract       Constants that describe the type of SMPTE time.
    @constant       kSMPTETimeType24
                        24 Frame
    @constant       kSMPTETimeType25
                        25 Frame
    @constant       kSMPTETimeType30Drop
                        30 Drop Frame
    @constant       kSMPTETimeType30
                        30 Frame
    @constant       kSMPTETimeType2997
                        29.97 Frame
    @constant       kSMPTETimeType2997Drop
                        29.97 Drop Frame
    @constant       kSMPTETimeType60
                        60 Frame
    @constant       kSMPTETimeType5994
                        59.94 Frame
    @constant       kSMPTETimeType60Drop
                        60 Drop Frame
    @constant       kSMPTETimeType5994Drop
                        59.94 Drop Frame
    @constant       kSMPTETimeType50
                        50 Frame
    @constant       kSMPTETimeType2398
                        23.98 Frame
*/
enum SMPTETimeType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Type24
  case Type25
  case Type30Drop
  case Type30
  case Type2997
  case Type2997Drop
  case Type60
  case Type5994
  case Type60Drop
  case Type5994Drop
  case Type50
  case Type2398
}

/*!
    @enum           SMPTE State Flags
    @abstract       Flags that describe the SMPTE time state.
    @constant       kSMPTETimeValid
                        The full time is valid.
    @constant       kSMPTETimeRunning
                        Time is running.
*/
struct SMPTETimeFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Unknown: SMPTETimeFlags { get }
  static var Valid: SMPTETimeFlags { get }
  static var Running: SMPTETimeFlags { get }
}

/*!
    @struct         SMPTETime
    @abstract       A structure for holding a SMPTE time.
    @field          mSubframes
                        The number of subframes in the full message.
    @field          mSubframeDivisor
                        The number of subframes per frame (typically 80).
    @field          mCounter
                        The total number of messages received.
    @field          mType
                        The kind of SMPTE time using the SMPTE time type constants.
    @field          mFlags
                        A set of flags that indicate the SMPTE state.
    @field          mHours
                        The number of hours in the full message.
    @field          mMinutes
                        The number of minutes in the full message.
    @field          mSeconds
                        The number of seconds in the full message.
    @field          mFrames
                        The number of frames in the full message.
*/
struct SMPTETime {
  var mSubframes: Int16
  var mSubframeDivisor: Int16
  var mCounter: UInt32
  var mType: SMPTETimeType
  var mFlags: SMPTETimeFlags
  var mHours: Int16
  var mMinutes: Int16
  var mSeconds: Int16
  var mFrames: Int16
  init()
  init(mSubframes: Int16, mSubframeDivisor: Int16, mCounter: UInt32, mType: SMPTETimeType, mFlags: SMPTETimeFlags, mHours: Int16, mMinutes: Int16, mSeconds: Int16, mFrames: Int16)
}

/*!
    @enum           AudioTimeStamp Flags
    @abstract       The flags that indicate which fields in an AudioTimeStamp structure are valid.
    @constant       kAudioTimeStampSampleTimeValid
                        The sample frame time is valid.
    @constant       kAudioTimeStampHostTimeValid
                        The host time is valid.
    @constant       kAudioTimeStampRateScalarValid
                        The rate scalar is valid.
    @constant       kAudioTimeStampWordClockTimeValid
                        The word clock time is valid.
    @constant       kAudioTimeStampSMPTETimeValid
                        The SMPTE time is valid.
    @constant       kAudioTimeStampSampleHostTimeValid
                        The sample frame time and the host time are valid.
*/
struct AudioTimeStampFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var NothingValid: AudioTimeStampFlags { get }
  static var SampleTimeValid: AudioTimeStampFlags { get }
  static var HostTimeValid: AudioTimeStampFlags { get }
  static var RateScalarValid: AudioTimeStampFlags { get }
  static var WordClockTimeValid: AudioTimeStampFlags { get }
  static var SMPTETimeValid: AudioTimeStampFlags { get }
  static var SampleHostTimeValid: AudioTimeStampFlags { get }
}

/*!
    @struct         AudioTimeStamp
    @abstract       A structure that holds different representations of the same point in time.
    @field          mSampleTime
                        The absolute sample frame time.
    @field          mHostTime
                        The host machine's time base, mach_absolute_time.
    @field          mRateScalar
                        The ratio of actual host ticks per sample frame to the nominal host ticks
                        per sample frame.
    @field          mWordClockTime
                        The word clock time.
    @field          mSMPTETime
                        The SMPTE time.
    @field          mFlags
                        A set of flags indicating which representations of the time are valid.
    @field          mReserved
                        Pads the structure out to force an even 8 byte alignment.
*/
struct AudioTimeStamp {
  var mSampleTime: Float64
  var mHostTime: UInt64
  var mRateScalar: Float64
  var mWordClockTime: UInt64
  var mSMPTETime: SMPTETime
  var mFlags: AudioTimeStampFlags
  var mReserved: UInt32
  init()
  init(mSampleTime: Float64, mHostTime: UInt64, mRateScalar: Float64, mWordClockTime: UInt64, mSMPTETime: SMPTETime, mFlags: AudioTimeStampFlags, mReserved: UInt32)
}

/*!
    @struct         AudioClassDescription
    @abstract       This structure is used to describe codecs installed on the system.
    @field          mType
                        The four char code codec type.
    @field          mSubType
                        The four char code codec subtype.
    @field          mManufacturer
                        The four char code codec manufacturer.
*/
struct AudioClassDescription {
  var mType: OSType
  var mSubType: OSType
  var mManufacturer: OSType
  init()
  init(mType: OSType, mSubType: OSType, mManufacturer: OSType)
}

/*!
    @typedef        AudioChannelLabel
    @abstract       A tag identifying how the channel is to be used.
*/
typealias AudioChannelLabel = UInt32

/*!
    @typedef        AudioChannelLayoutTag
    @abstract       A tag identifying a particular pre-defined channel layout.
*/
typealias AudioChannelLayoutTag = UInt32
var kAudioChannelLabel_Unknown: AudioChannelLabel { get }
var kAudioChannelLabel_Unused: AudioChannelLabel { get }
var kAudioChannelLabel_UseCoordinates: AudioChannelLabel { get }
var kAudioChannelLabel_Left: AudioChannelLabel { get }
var kAudioChannelLabel_Right: AudioChannelLabel { get }
var kAudioChannelLabel_Center: AudioChannelLabel { get }
var kAudioChannelLabel_LFEScreen: AudioChannelLabel { get }
var kAudioChannelLabel_LeftSurround: AudioChannelLabel { get }
var kAudioChannelLabel_RightSurround: AudioChannelLabel { get }
var kAudioChannelLabel_LeftCenter: AudioChannelLabel { get }
var kAudioChannelLabel_RightCenter: AudioChannelLabel { get }
var kAudioChannelLabel_CenterSurround: AudioChannelLabel { get }
var kAudioChannelLabel_LeftSurroundDirect: AudioChannelLabel { get }
var kAudioChannelLabel_RightSurroundDirect: AudioChannelLabel { get }
var kAudioChannelLabel_TopCenterSurround: AudioChannelLabel { get }
var kAudioChannelLabel_VerticalHeightLeft: AudioChannelLabel { get }
var kAudioChannelLabel_VerticalHeightCenter: AudioChannelLabel { get }
var kAudioChannelLabel_VerticalHeightRight: AudioChannelLabel { get }
var kAudioChannelLabel_TopBackLeft: AudioChannelLabel { get }
var kAudioChannelLabel_TopBackCenter: AudioChannelLabel { get }
var kAudioChannelLabel_TopBackRight: AudioChannelLabel { get }
var kAudioChannelLabel_RearSurroundLeft: AudioChannelLabel { get }
var kAudioChannelLabel_RearSurroundRight: AudioChannelLabel { get }
var kAudioChannelLabel_LeftWide: AudioChannelLabel { get }
var kAudioChannelLabel_RightWide: AudioChannelLabel { get }
var kAudioChannelLabel_LFE2: AudioChannelLabel { get }
var kAudioChannelLabel_LeftTotal: AudioChannelLabel { get }
var kAudioChannelLabel_RightTotal: AudioChannelLabel { get }
var kAudioChannelLabel_HearingImpaired: AudioChannelLabel { get }
var kAudioChannelLabel_Narration: AudioChannelLabel { get }
var kAudioChannelLabel_Mono: AudioChannelLabel { get }
var kAudioChannelLabel_DialogCentricMix: AudioChannelLabel { get }
var kAudioChannelLabel_CenterSurroundDirect: AudioChannelLabel { get }
var kAudioChannelLabel_Haptic: AudioChannelLabel { get }
var kAudioChannelLabel_Ambisonic_W: AudioChannelLabel { get }
var kAudioChannelLabel_Ambisonic_X: AudioChannelLabel { get }
var kAudioChannelLabel_Ambisonic_Y: AudioChannelLabel { get }
var kAudioChannelLabel_Ambisonic_Z: AudioChannelLabel { get }
var kAudioChannelLabel_MS_Mid: AudioChannelLabel { get }
var kAudioChannelLabel_MS_Side: AudioChannelLabel { get }
var kAudioChannelLabel_XY_X: AudioChannelLabel { get }
var kAudioChannelLabel_XY_Y: AudioChannelLabel { get }
var kAudioChannelLabel_HeadphonesLeft: AudioChannelLabel { get }
var kAudioChannelLabel_HeadphonesRight: AudioChannelLabel { get }
var kAudioChannelLabel_ClickTrack: AudioChannelLabel { get }
var kAudioChannelLabel_ForeignLanguage: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_0: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_1: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_2: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_3: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_4: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_5: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_6: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_7: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_8: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_9: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_10: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_11: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_12: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_13: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_14: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_15: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_65535: AudioChannelLabel { get }

/*!
    @enum           Channel Bitmap Constants
    @abstract       These constants are for use in the mChannelBitmap field of an
                    AudioChannelLayout structure.
*/
struct AudioChannelBitmap : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Bit_Left: AudioChannelBitmap { get }
  static var Bit_Right: AudioChannelBitmap { get }
  static var Bit_Center: AudioChannelBitmap { get }
  static var Bit_LFEScreen: AudioChannelBitmap { get }
  static var Bit_LeftSurround: AudioChannelBitmap { get }
  static var Bit_RightSurround: AudioChannelBitmap { get }
  static var Bit_LeftCenter: AudioChannelBitmap { get }
  static var Bit_RightCenter: AudioChannelBitmap { get }
  static var Bit_CenterSurround: AudioChannelBitmap { get }
  static var Bit_LeftSurroundDirect: AudioChannelBitmap { get }
  static var Bit_RightSurroundDirect: AudioChannelBitmap { get }
  static var Bit_TopCenterSurround: AudioChannelBitmap { get }
  static var Bit_VerticalHeightLeft: AudioChannelBitmap { get }
  static var Bit_VerticalHeightCenter: AudioChannelBitmap { get }
  static var Bit_VerticalHeightRight: AudioChannelBitmap { get }
  static var Bit_TopBackLeft: AudioChannelBitmap { get }
  static var Bit_TopBackCenter: AudioChannelBitmap { get }
  static var Bit_TopBackRight: AudioChannelBitmap { get }
}

/*!
    @enum           Channel Coordinate Flags
    @abstract       These constants are used in the mChannelFlags field of an
                    AudioChannelDescription structure.
    @constant       kAudioChannelFlags_RectangularCoordinates
                        The channel is specified by the cartesioan coordinates of the speaker
                        position. This flag is mutally exclusive with
                        kAudioChannelFlags_SphericalCoordinates.
    @constant       kAudioChannelFlags_SphericalCoordinates
                        The channel is specified by the spherical coordinates of the speaker
                        position. This flag is mutally exclusive with
                        kAudioChannelFlags_RectangularCoordinates.
    @constant       kAudioChannelFlags_Meters
                        Set to indicate the units are in meters, clear to indicate the units are
                        relative to the unit cube or unit sphere.
*/
struct AudioChannelFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var AllOff: AudioChannelFlags { get }
  static var RectangularCoordinates: AudioChannelFlags { get }
  static var SphericalCoordinates: AudioChannelFlags { get }
  static var Meters: AudioChannelFlags { get }
}

/*!
    @enum           Channel Coordinate Index Constants
    @abstract       Constants for indexing the mCoordinates array in an AudioChannelDescription
                    structure.
    @constant       kAudioChannelCoordinates_LeftRight
                        For rectangulare coordinates, negative is left and positive is right.
    @constant       kAudioChannelCoordinates_BackFront
                        For rectangulare coordinates, negative is back and positive is front.
    @constant       kAudioChannelCoordinates_DownUp
                        For rectangulare coordinates, negative is below ground level, 0 is ground
                        level, and positive is above ground level.
    @constant       kAudioChannelCoordinates_Azimuth
                        For spherical coordinates, 0 is front center, positive is right, negative is
                        left. This is measured in degrees.
    @constant       kAudioChannelCoordinates_Elevation
                        For spherical coordinates, +90 is zenith, 0 is horizontal, -90 is nadir.
                        This is measured in degrees.
    @constant       kAudioChannelCoordinates_Distance
                        For spherical coordinates, the units are described by flags.
*/
enum AudioChannelCoordinateIndex : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Coordinates_LeftRight
  case Coordinates_BackFront
  case Coordinates_DownUp
  static var Coordinates_Azimuth: AudioChannelCoordinateIndex { get }
  static var Coordinates_Elevation: AudioChannelCoordinateIndex { get }
  static var Coordinates_Distance: AudioChannelCoordinateIndex { get }
}
var kAudioChannelLayoutTag_UseChannelDescriptions: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_UseChannelBitmap: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Mono: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Stereo: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_StereoHeadphones: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MatrixStereo: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MidSide: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_XY: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Binaural: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Ambisonic_B_Format: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Quadraphonic: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Pentagonal: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Hexagonal: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Octagonal: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Cube: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_1_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_2_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_3_0_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_3_0_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_4_0_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_4_0_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_5_0_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_5_0_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_5_0_C: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_5_0_D: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_5_1_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_5_1_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_5_1_C: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_5_1_D: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_6_1_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_7_1_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_7_1_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_7_1_C: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Emagic_Default_7_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_SMPTE_DTV: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_ITU_1_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_ITU_2_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_ITU_2_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_ITU_2_2: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_ITU_3_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_ITU_3_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_ITU_3_2: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_ITU_3_2_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_ITU_3_4_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_2: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_3: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_4: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_5: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_6: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_7: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_8: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_9: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_10: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_11: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_12: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_13: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_14: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_15: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_16: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_17: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_18: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_19: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_20: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_4: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_5: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_6: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_8: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_5_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_6_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_7_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_7_0_Front: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_5_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_6_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_7_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_7_1_Front: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_3_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_Quadraphonic: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_4_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_5_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_5_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_6_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_6_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_7_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_7_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_7_1_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_7_1_C: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_Octagonal: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_TMH_10_2_std: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_TMH_10_2_full: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AC3_1_0_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AC3_3_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AC3_3_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AC3_3_0_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AC3_2_1_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AC3_3_1_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC_6_0_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC_7_0_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_6_1_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_6_1_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_6_1_C: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_7_1_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_7_1_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_7_1_C: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_7_1_D: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_7_1_E: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_7_1_F: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_7_1_G: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_7_1_H: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_3_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_4_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_6_0_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_6_0_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_6_0_C: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_6_1_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_6_1_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_6_1_C: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_7_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_7_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_8_0_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_8_0_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_8_1_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_8_1_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_6_1_D: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DiscreteInOrder: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Unknown: AudioChannelLayoutTag { get }

/*!
    @struct         AudioChannelDescription
    @abstract       This structure describes a single channel.
    @field          mChannelLabel
                        The AudioChannelLabel that describes the channel.
    @field          mChannelFlags
                        Flags that control the interpretation of mCoordinates.
    @field          mCoordinates
                        An ordered triple that specifies a precise speaker location.
*/
struct AudioChannelDescription {
  var mChannelLabel: AudioChannelLabel
  var mChannelFlags: AudioChannelFlags
  var mCoordinates: (Float32, Float32, Float32)
  init()
  init(mChannelLabel: AudioChannelLabel, mChannelFlags: AudioChannelFlags, mCoordinates: (Float32, Float32, Float32))
}

/*!
    @struct         AudioChannelLayout
    @abstract       This structure is used to specify channel layouts in files and hardware.
    @field          mChannelLayoutTag
                        The AudioChannelLayoutTag that indicates the layout.
    @field          mChannelBitmap
                        If mChannelLayoutTag is set to kAudioChannelLayoutTag_UseChannelBitmap, this
                        field is the channel usage bitmap.
    @field          mNumberChannelDescriptions
                        The number of items in the mChannelDescriptions array.
    @field          mChannelDescriptions
                        A variable length array of AudioChannelDescriptions that describe the
                        layout.
*/
struct AudioChannelLayout {
  var mChannelLayoutTag: AudioChannelLayoutTag
  var mChannelBitmap: AudioChannelBitmap
  var mNumberChannelDescriptions: UInt32
  var mChannelDescriptions: (AudioChannelDescription)
  init()
  init(mChannelLayoutTag: AudioChannelLayoutTag, mChannelBitmap: AudioChannelBitmap, mNumberChannelDescriptions: UInt32, mChannelDescriptions: (AudioChannelDescription))
}
func AudioChannelLayoutTag_GetNumberOfChannels(inLayoutTag: AudioChannelLayoutTag) -> UInt32

/*! @enum           MPEG-4 Audio Object IDs
    @deprecated     in version 10.5

    @abstract       Constants that describe the various kinds of MPEG-4 audio data.
    @discussion     These constants are used in the flags field of an AudioStreamBasicDescription
                    that describes an MPEG-4 audio stream.
*/
enum MPEG4ObjectID : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AAC_Main
  case AAC_LC
  case AAC_SSR
  case AAC_LTP
  case AAC_SBR
  case AAC_Scalable
  case TwinVQ
  case CELP
  case HVXC
}

/*!
    @function       AudioGetCurrentHostTime
    @abstract       Gets the current host time.
    @result         A UInt64 containing the current host time.
*/
@available(OSX 10.0, *)
func AudioGetCurrentHostTime() -> UInt64

/*!
    @function       AudioGetHostClockFrequency
    @abstract       Gets the number of ticks per second in the host time base.
    @result         A Float64 containing the number of ticks per second in the host time base.
*/
@available(OSX 10.0, *)
func AudioGetHostClockFrequency() -> Float64

/*!
    @function       AudioGetHostClockMinimumTimeDelta
    @abstract       Gets the smallest number of ticks that two succeeding values will ever differ.
                    by.
    @result         A UInt32 containing the smallest number of ticks that two succeeding values will
                    ever differ.
*/
@available(OSX 10.0, *)
func AudioGetHostClockMinimumTimeDelta() -> UInt32

/*!
    @function       AudioConvertHostTimeToNanos
    @abstract       Convert the given host time into a time in nanoseconds.
    @param          inHostTime
                        A UInt64 containing the host time to convert.
    @result         A UInt64 containining the converted host time.
*/
@available(OSX 10.0, *)
func AudioConvertHostTimeToNanos(inHostTime: UInt64) -> UInt64

/*!
    @function       AudioConvertNanosToHostTime
    @abstract       Convert the given nanosecond time into a host time.
    @param          inNanos
                        A UInt64 containing the nanosecond time to convert.
    @result         A UInt64 containining the converted nanosecond time.
*/
@available(OSX 10.0, *)
func AudioConvertNanosToHostTime(inNanos: UInt64) -> UInt64
