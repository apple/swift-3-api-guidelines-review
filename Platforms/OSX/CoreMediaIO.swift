
var kCMIOHardwareNoError: Int { get }
var kCMIOHardwareNotStoppedError: Int { get }
var kCMIOHardwareNotRunningError: Int { get }
var kCMIOHardwareUnspecifiedError: Int { get }
var kCMIOHardwareUnknownPropertyError: Int { get }
var kCMIOHardwareBadPropertySizeError: Int { get }
var kCMIOHardwareIllegalOperationError: Int { get }
var kCMIOHardwareBadObjectError: Int { get }
var kCMIOHardwareBadDeviceError: Int { get }
var kCMIOHardwareBadStreamError: Int { get }
var kCMIOHardwareUnsupportedOperationError: Int { get }
var kCMIOHardwareSuspendedBySystemError: Int { get }
var kCMIODeviceUnsupportedFormatError: Int { get }
var kCMIODevicePermissionsError: Int { get }
var kCMIOPlugInClassID: Int { get }
var kCMIOPlugInPropertyBundleID: Int { get }

/*!
    @typedef        CMIOControlID
    @abstract       CMIOControl is the base class for all objects that represent a Control of data on a CMIO device or CMIO stream.
    @discussion     CMIOControl is a subclass of CMIOObject.
*/
typealias CMIOControlID = CMIOObjectID
var kCMIOControlClassID: Int { get }
var kCMIOBooleanControlClassID: Int { get }
var kCMIOSelectorControlClassID: Int { get }
var kCMIOFeatureControlClassID: Int { get }
var kCMIOJackControlClassID: Int { get }
var kCMIODirectionControlClassID: Int { get }
var kCMIODataSourceControlClassID: Int { get }
var kCMIODataDestinationControlClassID: Int { get }
var kCMIOBlackLevelControlClassID: Int { get }
var kCMIOWhiteLevelControlClassID: Int { get }
var kCMIOHueControlClassID: Int { get }
var kCMIOSaturationControlClassID: Int { get }
var kCMIOContrastControlClassID: Int { get }
var kCMIOSharpnessControlClassID: Int { get }
var kCMIOBrightnessControlClassID: Int { get }
var kCMIOGainControlClassID: Int { get }
var kCMIOIrisControlClassID: Int { get }
var kCMIOShutterControlClassID: Int { get }
var kCMIOExposureControlClassID: Int { get }
var kCMIOWhiteBalanceUControlClassID: Int { get }
var kCMIOWhiteBalanceVControlClassID: Int { get }
var kCMIOWhiteBalanceControlClassID: Int { get }
var kCMIOGammaControlClassID: Int { get }
var kCMIOTemperatureControlClassID: Int { get }
var kCMIOZoomControlClassID: Int { get }
var kCMIOFocusControlClassID: Int { get }
var kCMIOPanControlClassID: Int { get }
var kCMIOTiltControlClassID: Int { get }
var kCMIOOpticalFilterClassID: Int { get }
var kCMIOBacklightCompensationControlClassID: Int { get }
var kCMIOPowerLineFrequencyControlClassID: Int { get }
var kCMIONoiseReductionControlClassID: Int { get }
var kCMIOControlPropertyScope: Int { get }
var kCMIOControlPropertyElement: Int { get }
var kCMIOControlPropertyVariant: Int { get }
var kCMIOBooleanControlPropertyValue: Int { get }
var kCMIOSelectorControlPropertyCurrentItem: Int { get }
var kCMIOSelectorControlPropertyAvailableItems: Int { get }
var kCMIOSelectorControlPropertyItemName: Int { get }
var kCMIOFeatureControlPropertyOnOff: Int { get }
var kCMIOFeatureControlPropertyAutomaticManual: Int { get }
var kCMIOFeatureControlPropertyAbsoluteNative: Int { get }
var kCMIOFeatureControlPropertyTune: Int { get }
var kCMIOFeatureControlPropertyNativeValue: Int { get }
var kCMIOFeatureControlPropertyAbsoluteValue: Int { get }
var kCMIOFeatureControlPropertyNativeRange: Int { get }
var kCMIOFeatureControlPropertyAbsoluteRange: Int { get }
var kCMIOFeatureControlPropertyConvertNativeToAbsolute: Int { get }
var kCMIOFeatureControlPropertyConvertAbsoluteToNative: Int { get }
var kCMIOFeatureControlPropertyAbsoluteUnitName: Int { get }
var kCMIOExposureControlPropertyRegionOfInterest: Int { get }
var kCMIOExposureControlPropertyLockThreshold: Int { get }
var kCMIOExposureControlPropertyUnlockThreshold: Int { get }
var kCMIOExposureControlPropertyTarget: Int { get }
var kCMIOExposureControlPropertyConvergenceSpeed: Int { get }
var kCMIOExposureControlPropertyStability: Int { get }
var kCMIOExposureControlPropertyStable: Int { get }
var kCMIOExposureControlPropertyIntegrationTime: Int { get }
var kCMIOExposureControlPropertyMaximumGain: Int { get }

/*!
    @typedef        CMIODeviceID
    @abstract       CMIODevice is the base class for all objects that represent a CMIO device.
    @discussion     CMIODevice is a subclass of CMIOObject. CMIODevices normally contain CMIOStreams and CMIOControls.
*/
typealias CMIODeviceID = CMIOObjectID

/*!
    @typedef        CMIODevicePropertyID
    @abstract       A CMIODevicePropertyID is an integer that identifies a specific piece of information about the object.
*/
typealias CMIODevicePropertyID = CMIOObjectPropertySelector

/*!
    @struct         CMIODeviceStreamConfiguration
    @abstract       This structure describes the list of streams and the number of channels in each stream.
    @field          mNumberStreams
                        The number of streams being described.
    @field          mNumberChannels
                        An array of UInt32's whose length is specified by mNumberStreams. Each element of the array corresponds to a stream and indicates the number of channels it has.
*/
struct CMIODeviceStreamConfiguration {
  var mNumberStreams: UInt32
  init()
}

/*!
    @struct         CMIODeviceAVCCommand
    @abstract       This structure allows an AVC command to be sent to a device. This is not intended to be a general purpose command interfaces, rather only for those devices which can
                    support the "AV/C Digital Interface Command Set General Specification Version 4.1" (1394 Trade Association Document 2001012). Devices indicate whether or not they can
                    process AVC commands via the kCMIODevicePropertyCanProcessAVCCommand property.
    @field          mCommand
                        The buffer containing the AVC command bytes.
    @field          mCommandLength
                        The size (in bytes) of the mCommand buffer.
    @field          mResponse
                        The buffer for returning the response bytes.
    @field          mResponseLength
                        The size (in bytes) of the mResponse buffer.
    @field          mResponseUsed
                        The size (in bytes) of the actual number response bytes returned.
*/
struct CMIODeviceAVCCommand {
  var mCommand: UnsafeMutablePointer<UInt8>
  var mCommandLength: UInt32
  var mResponse: UnsafeMutablePointer<UInt8>
  var mResponseLength: UInt32
  var mResponseUsed: UInt32
  init()
  init(mCommand: UnsafeMutablePointer<UInt8>, mCommandLength: UInt32, mResponse: UnsafeMutablePointer<UInt8>, mResponseLength: UInt32, mResponseUsed: UInt32)
}

/*!
    @struct         CMIODeviceRS422Command
    @abstract       This structure allows an RS422 command to be sent to a device. This is not intended to be a general purpose command interface, rather only for those devices which can
                    support the RS422 protocol. Devices indicate whether or not they can process RS422 commands via the kCMIODevicePropertyCanProcessRS422Command property.
    @field          mCommand
                        The buffer containing the RS422 command bytes.
    @field          mCommandLength
                        The size (in bytes) of the mCommand buffer.
    @field          mResponse
                        The buffer for returning the response bytes.
    @field          mResponseLength
                        The size (in bytes) of the mResponse buffer.
    @field          mResponseUsed
                        The size (in bytes) of the actual number response bytes returned.
*/
struct CMIODeviceRS422Command {
  var mCommand: UnsafeMutablePointer<UInt8>
  var mCommandLength: UInt32
  var mResponse: UnsafeMutablePointer<UInt8>
  var mResponseLength: UInt32
  var mResponseUsed: UInt32
  init()
  init(mCommand: UnsafeMutablePointer<UInt8>, mCommandLength: UInt32, mResponse: UnsafeMutablePointer<UInt8>, mResponseLength: UInt32, mResponseUsed: UInt32)
}

/*!
    @typedef        CMIODeviceGetSMPTETimeProc
    @abstract       Clients register a CMIODeviceGetSMPTETimeProc to specify a routine for the a device to call when it needs SMPTE timecode information. Some devices require
                    external means known only to their client to provide SMPTE timecode information (for example, devices conforming to the HDV-1 standard do not provide SMPTE timecode
                    information in the HDV datastream); the HDV device driver may call a provided SMPTE timecode callback when it needs the data.
    @discussion     The SMPTE time callback is invoked by the device when it needs SMPTE timecode information. The callback should be very low latency, as it may be called on a real-time
                    thread; as such, it may need to rely on a private thread to obtain the values it returns. It is understood that the callback may be obtaining its values in a manner
                    asynchronous to when the device requires it, and as such, there will be jitter in the values; sometimes a value will be repeated, sometimes a value skipped, depending
                    upon the cadence of the threads involved.
    @param          refCon
                        A pointer to client data established when the proc was registered via setting the kCMIODevicePropertySMPTETimeCallback property.
    @param          frameNumber
                        The current frame count.
    @param          isDropFrame
                        True when the frame count is drop frame based (two frames of time code are dropped every minute, on the minute, except every tenth minute), false otherwise.
    @param          tolerance
                        The maximum amount of jitter expected in the frame count. Differences observed outside of this value are an indication of dropped data.
    @result         An OSStatus indicating success or failure.


*/
typealias CMIODeviceGetSMPTETimeProc = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<UInt64>, UnsafeMutablePointer<DarwinBoolean>, UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
    @struct         CMIODeviceSMPTETimeCallback
    @abstract       This structure allows a client to specify a CMIODeviceGetSMPTETimeProc and its associated private data via the kCMIODevicePropertySMPTETimeCallback property. 
    @field          mGetSMPTETimeProc
                        The CMIODeviceGetSMPTETimeProc to invoke when SMPTE timecode information is needed.
    @field          mRefCon
                        Client supplied private provided when the kCMIODevicePropertySMPTETimeCallback property was set.
*/
struct CMIODeviceSMPTETimeCallback {
  var mGetSMPTETimeProc: CMIODeviceGetSMPTETimeProc!
  var mRefCon: UnsafeMutablePointer<Void>
  init()
  init(mGetSMPTETimeProc: CMIODeviceGetSMPTETimeProc!, mRefCon: UnsafeMutablePointer<Void>)
}
var kCMIODevicePropertyScopeInput: Int { get }
var kCMIODevicePropertyScopeOutput: Int { get }
var kCMIODevicePropertyScopePlayThrough: Int { get }
var kCMIODeviceClassID: Int { get }
var kCMIODeviceUnknown: Int { get }
var kCMIOAVCDeviceType_Unknown: Int { get }
var kCMIOAVCDeviceType_DV_NTSC: Int { get }
var kCMIOAVCDeviceType_DV_PAL: Int { get }
var kCMIOAVCDeviceType_DVCPro_NTSC: Int { get }
var kCMIOAVCDeviceType_DVCPro_PAL: Int { get }
var kCMIOAVCDeviceType_DVCPro50_NTSC: Int { get }
var kCMIOAVCDeviceType_DVCPro50_PAL: Int { get }
var kCMIOAVCDeviceType_DVCPro100_NTSC: Int { get }
var kCMIOAVCDeviceType_DVCPro100_PAL: Int { get }
var kCMIOAVCDeviceType_DVCPro100_720p: Int { get }
var kCMIOAVCDeviceType_DVCProHD_1080i50: Int { get }
var kCMIOAVCDeviceType_DVCProHD_1080i60: Int { get }
var kCMIOAVCDeviceType_MPEG2: Int { get }
var kCMIODeviceAVCSignalModeSD525_60: Int { get }
var kCMIODeviceAVCSignalModeSDL525_60: Int { get }
var kCMIODeviceAVCSignalModeHD1125_60: Int { get }
var kCMIODeviceAVCSignalModeSD625_50: Int { get }
var kCMIODeviceAVCSignalModeSDL625_50: Int { get }
var kCMIODeviceAVCSignalModeHD1250_50: Int { get }
var kCMIODeviceAVCSignalModeMPEG25Mbps_60: Int { get }
var kCMIODeviceAVCSignalModeHDV1_60: Int { get }
var kCMIODeviceAVCSignalModeMPEG12Mbps_60: Int { get }
var kCMIODeviceAVCSignalModeMPEG6Mbps_60: Int { get }
var kCMIODeviceAVCSignalModeMPEG25Mbps_50: Int { get }
var kCMIODeviceAVCSignalModeHDV1_50: Int { get }
var kCMIODeviceAVCSignalModeMPEG12Mbps_50: Int { get }
var kCMIODeviceAVCSignalModeMPEG6Mbps_50: Int { get }
var kCMIODeviceAVCSignalModeDVHS: Int { get }
var kCMIODeviceAVCSignalModeVHSNTSC: Int { get }
var kCMIODeviceAVCSignalModeVHSMPAL: Int { get }
var kCMIODeviceAVCSignalModeVHSPAL: Int { get }
var kCMIODeviceAVCSignalModeVHSNPAL: Int { get }
var kCMIODeviceAVCSignalModeVHSSECAM: Int { get }
var kCMIODeviceAVCSignalModeVHSMESECAM: Int { get }
var kCMIODeviceAVCSignalModeSVHS525_60: Int { get }
var kCMIODeviceAVCSignalModeSVHS625_50: Int { get }
var kCMIODeviceAVCSignalMode8mmNTSC: Int { get }
var kCMIODeviceAVCSignalMode8mmPAL: Int { get }
var kCMIODeviceAVCSignalModeHi8NTSC: Int { get }
var kCMIODeviceAVCSignalModeHi8PAL: Int { get }
var kCMIODeviceAVCSignalModeMicroMV12Mbps_60: Int { get }
var kCMIODeviceAVCSignalModeMicroMV6Mbps_60: Int { get }
var kCMIODeviceAVCSignalModeMicroMV12Mbps_50: Int { get }
var kCMIODeviceAVCSignalModeMicroMV6Mbps_50: Int { get }
var kCMIODeviceAVCSignalModeAudio: Int { get }
var kCMIODeviceAVCSignalModeHDV2_60: Int { get }
var kCMIODeviceAVCSignalModeHDV2_50: Int { get }
var kCMIODeviceAVCSignalModeDVCPro25_625_50: Int { get }
var kCMIODeviceAVCSignalModeDVCPro25_525_60: Int { get }
var kCMIODeviceAVCSignalModeDVCPro50_625_50: Int { get }
var kCMIODeviceAVCSignalModeDVCPro50_525_60: Int { get }
var kCMIODeviceAVCSignalModeDVCPro100_50: Int { get }
var kCMIODeviceAVCSignalModeDVCPro100_60: Int { get }
var kCMIODevicePropertyPlugIn: Int { get }
var kCMIODevicePropertyDeviceUID: Int { get }
var kCMIODevicePropertyModelUID: Int { get }
var kCMIODevicePropertyTransportType: Int { get }
var kCMIODevicePropertyDeviceIsAlive: Int { get }
var kCMIODevicePropertyDeviceHasChanged: Int { get }
var kCMIODevicePropertyDeviceIsRunning: Int { get }
var kCMIODevicePropertyDeviceIsRunningSomewhere: Int { get }
var kCMIODevicePropertyDeviceCanBeDefaultDevice: Int { get }
var kCMIODevicePropertyHogMode: Int { get }
var kCMIODevicePropertyLatency: Int { get }
var kCMIODevicePropertyStreams: Int { get }
var kCMIODevicePropertyStreamConfiguration: Int { get }
var kCMIODevicePropertyDeviceMaster: Int { get }
var kCMIODevicePropertyExcludeNonDALAccess: Int { get }
var kCMIODevicePropertyClientSyncDiscontinuity: Int { get }
var kCMIODevicePropertySMPTETimeCallback: Int { get }
var kCMIODevicePropertyCanProcessAVCCommand: Int { get }
var kCMIODevicePropertyAVCDeviceType: Int { get }
var kCMIODevicePropertyAVCDeviceSignalMode: Int { get }
var kCMIODevicePropertyCanProcessRS422Command: Int { get }
var kCMIODevicePropertyLinkedCoreAudioDeviceUID: Int { get }
var kCMIODevicePropertyVideoDigitizerComponents: Int { get }
var kCMIODevicePropertySuspendedByUser: Int { get }
var kCMIODevicePropertyLinkedAndSyncedCoreAudioDeviceUID: Int { get }
var kCMIODevicePropertyIIDCInitialUnitSpace: Int { get }
var kCMIODevicePropertyIIDCCSRData: Int { get }
var kCMIODevicePropertyCanSwitchFrameRatesWithoutFrameDrops: Int { get }

/*!
    @function       CMIODeviceStartStream
    @abstract       Starts the indicated CMIOStream of the specified CMIODevice.
    @param          deviceID
                        The CMIODevice that owns the CMIOStream.
    @param          streamID
                        The CMIOStream to start.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.7, *)
func CMIODeviceStartStream(deviceID: CMIODeviceID, _ streamID: CMIOStreamID) -> OSStatus

/*!
    @function       CMIODeviceStopStream
    @abstract       Stops the indicated CMIOStream.
    @param          deviceID
                        The CMIODevice that owns the CMIOStream.
    @param          streamID
                        The CMIOStream to stop.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.7, *)
func CMIODeviceStopStream(deviceID: CMIODeviceID, _ streamID: CMIOStreamID) -> OSStatus

/*!
    @function       CMIODeviceProcessAVCCommand
    @abstract       Allows an AVC command to be sent to a device for processing. This is not intended to be a general purpose command interface, rather only for those devices which can
                    support the "AV/C Digital Interface Command Set General Specification Version 4.1" (1394 Trade Association Document 2001012). Devices indicate whether or not they can
                    process AVC commands via the kCMIODevicePropertyCanProcessAVCCommand property.
    @param          deviceID
                        The CMIODevice for which the command is intended.
    @param          ioAVCCommand
                        The CMIODeviceAVCCommand to send to the device.
    @result         An OSStatus indicating success or failure of the command processing.
*/
@available(OSX 10.7, *)
func CMIODeviceProcessAVCCommand(deviceID: CMIODeviceID, _ ioAVCCommand: UnsafeMutablePointer<CMIODeviceAVCCommand>) -> OSStatus

/*!
    @function       CMIODeviceProcessRS422Command
    @abstract       Allows an RS422 command to be sent to a device for processing. This is not intended to be a general purpose command interface, rather only for those devices which can
                    support the RS422 protocol. Devices indicate whether or not they can process RS422 commands via the kCMIODevicePropertyCanProcessRS422Command property.
    @param          deviceID
                        The CMIODevice for which the command is intended.
    @param          ioRS422Command
                        The CMIODeviceRS422Command to send to the device.
    @result         An OSStatus indicating success or failure of the command processing.
*/
@available(OSX 10.7, *)
func CMIODeviceProcessRS422Command(deviceID: CMIODeviceID, _ ioRS422Command: UnsafeMutablePointer<CMIODeviceRS422Command>) -> OSStatus

/*!
    @typedef        CMIOObjectPropertySelector
    @abstract       A CMIOObjectPropertySelector is a four char code that identifies, along with the CMIOObjectPropertyScope and CMIOObjectPropertyElement, a specific piece of
                    information about a CMIOObject.
    @discussion     The property selector specifies the general classification of the property such as volume, streamID format, latency, etc. Note that each class has a different set of
                    selectors. A subclass inherits it's super class's set of selectors, although it may not implement them all.
*/
typealias CMIOObjectPropertySelector = UInt32

/*!
    @typedef        CMIOObjectPropertyScope
    @abstract       A CMIOObjectPropertyScope is a four char code that identifies, along with the CMIOObjectPropertySelector and CMIOObjectPropertyElement, a specific piece of
                    information about a CMIOObject.
    @discussion     The scope specifies the section of the object in which to look for the property, such as input, output, global, etc. Note that each class has a different set of scopes. A
                    subclass inherits it's superclass's set of scopes.
*/
typealias CMIOObjectPropertyScope = UInt32

/*!
    @typedef        CMIOObjectPropertyElement
    @abstract       A CMIOObjectPropertyElement is an integer that identifies, along with the CMIOObjectPropertySelector and CMIOObjectPropertyScope, a specific piece of information
                    about a CMIOObject.
    @discussion     The element selects one of possibly many items in the section of the object in which to look for the property. Elements are numbered sequentially where 0 represents the
                    master element. Elements are particular to an instance of a class, meaning that two instances can have different numbers of elements in the same scope. There is no
                    inheritance of elements.
*/
typealias CMIOObjectPropertyElement = UInt32

/*!
    @struct         CMIOObjectPropertyAddress
    @abstract       A CMIOObjectPropertyAddress collects the three parts that identify a specific property together in a struct for easy transmission.
    @field          mSelector
                        The CMIOObjectPropertySelector for the property.
    @field          mScope
                        The CMIOObjectPropertyScope for the property.
    @field          mElement
                        The CMIOObjectPropertyElement for the property.
*/
struct CMIOObjectPropertyAddress {
  var mSelector: CMIOObjectPropertySelector
  var mScope: CMIOObjectPropertyScope
  var mElement: CMIOObjectPropertyElement
  init()
  init(mSelector: CMIOObjectPropertySelector, mScope: CMIOObjectPropertyScope, mElement: CMIOObjectPropertyElement)
}
var kCMIOObjectPropertySelectorWildcard: UInt32 { get }
var kCMIOObjectPropertyScopeWildcard: UInt32 { get }
var kCMIOObjectPropertyElementWildcard: UInt32 { get }

/*!
    @typedef        CMIOClassID
    @abstract       CMIOClassIDs are used to identify the class of a CMIOObject.
*/
typealias CMIOClassID = UInt32

/*!
    @typedef        CMIOObjectID
    @abstract       CMIOObject is the base class for all the objects in the DAL.
    @discussion     CMIOObjects have properties and can contain other CMIOObjects.
*/
typealias CMIOObjectID = UInt32

/*!
    @typedef        CMIOObjectPropertyListenerProc
    @abstract       Clients register a CMIOObjectPropertyListenerProc with a CMIOObject in order to receive notifications when the properties of the object change.
    @discussion     Listeners will be called when possibly many properties have changed. Consequently, the implementation of a listener must go through the array of addresses to see what
                    exactly has changed. Note that the array of addresses will always have at least one address in it for which the listener is signed up to receive notifications about but
                    may contain addresses for properties for which the listener is not signed up to receive notifications.
    @param          objectID
                        The CMIOObject whose properties have changed.
    @param          numberAddresses
                        The number of elements in the addresses array.
    @param          addresses
                        An array of CMIOObjectPropertyAddresses indicating which properties changed.
    @param          clientData
                        A pointer to client data established when the listener proc was registered with the CMIOObject.
    @result         The return value is currently unused and should always be 0.
*/
typealias CMIOObjectPropertyListenerProc = @convention(c) (CMIOObjectID, UInt32, UnsafePointer<CMIOObjectPropertyAddress>, UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @typedef        CMIOObjectPropertyListenerBlock
    @abstract       Clients register an CMIOObjectPropertyListenerBlock with an CMIOObject in order to receive notifications when the properties of the object change.
    @discussion     Listeners will be called when possibly many properties have changed. Consequently, the implementation of a listener must go through the array of addresses to see what
                    exactly has changed. Note that the array of addresses will always have at least one address in it for which the listener is signed up to receive notifications about but
                    may contain addresses for properties for which the listener is not signed up to receive notifications.
    @param          numberAddresses
                        The number of elements in the addresses array.
    @param          addresses
                        An array of CMIOObjectPropertyAddresses indicating which properties changed.
*/
typealias CMIOObjectPropertyListenerBlock = (UInt32, UnsafePointer<CMIOObjectPropertyAddress>) -> Void
var kCMIOObjectPropertyScopeGlobal: Int { get }
var kCMIOObjectPropertyElementMaster: Int { get }
var kCMIOObjectClassID: Int { get }
var kCMIOObjectClassIDWildcard: Int { get }
var kCMIOObjectUnknown: Int { get }
var kCMIOObjectPropertyClass: Int { get }
var kCMIOObjectPropertyOwner: Int { get }
var kCMIOObjectPropertyCreator: Int { get }
var kCMIOObjectPropertyName: Int { get }
var kCMIOObjectPropertyManufacturer: Int { get }
var kCMIOObjectPropertyElementName: Int { get }
var kCMIOObjectPropertyElementCategoryName: Int { get }
var kCMIOObjectPropertyElementNumberName: Int { get }
var kCMIOObjectPropertyOwnedObjects: Int { get }
var kCMIOObjectPropertyListenerAdded: Int { get }
var kCMIOObjectPropertyListenerRemoved: Int { get }

/*!
    @function       CMIOObjectShow
    @abstract       Prints to standard out a textural description of the CMIOObject.
    @param          objectID
                        The CMIOObject to show.
*/
@available(OSX 10.7, *)
func CMIOObjectShow(objectID: CMIOObjectID)

/*!
    @function       CMIOObjectHasProperty
    @abstract       Queries a CMIOObject about whether or not it has the given property.
    @param          objectID
                        The CMIOObject to query.
    @param          address
                        A CMIOObjectPropertyAddress indicating which property is being queried.
    @result         A Boolean indicating whether or not the CMIOObject has the given property.
*/
@available(OSX 10.7, *)
func CMIOObjectHasProperty(objectID: CMIOObjectID, _ address: UnsafePointer<CMIOObjectPropertyAddress>) -> Bool

/*!
    @function       CMIOObjectIsPropertySettable
    @abstract       Queries a CMIOObject about whether or not the given property can be set using CMIOObjectSetPropertyData.
    @param          objectID
                        The CMIOObject to query.
    @param          address
                        A CMIOObjectPropertyAddress indicating which property is being queried.
    @param          isSettable
                        A Boolean indicating whether or not the property can be set.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.7, *)
func CMIOObjectIsPropertySettable(objectID: CMIOObjectID, _ address: UnsafePointer<CMIOObjectPropertyAddress>, _ isSettable: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus

/*!
    @function       CMIOObjectGetPropertyDataSize
    @abstract       Queries a CMIOObject to find the size of the data for the given property.
    @param          objectID
                        The CMIOObject to query.
    @param          address
                        A CMIOObjectPropertyAddress indicating which property is being queried.
    @param          qualifierDataSize
                        A UInt32 indicating the size of the buffer pointed to by qualifierData. Note that not all properties require qualification, in which case this value will be 0.
    @param          qualifierData
                        A buffer of data to be used in determining the data of the property being queried. Note that not all properties require qualification, in which case this value will be
                        NULL.
    @param          dataSize
                        A UInt32 indicating how many bytes the data for the given property occupies.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.7, *)
func CMIOObjectGetPropertyDataSize(objectID: CMIOObjectID, _ address: UnsafePointer<CMIOObjectPropertyAddress>, _ qualifierDataSize: UInt32, _ qualifierData: UnsafePointer<Void>, _ dataSize: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
    @function       CMIOObjectGetPropertyData
    @abstract       Queries a CMIOObject to get the data of the given property and places it in the provided buffer.
    @param          objectID
                        The CMIOObject to query.
    @param          address
                        A CMIOObjectPropertyAddress indicating which property is being queried.
    @param          qualifierDataSize
                        A UInt32 indicating the size of the buffer pointed to by qualifierData. Note that not all properties require qualification, in which case this value will be 0.
    @param          qualifierData
                        A buffer of data to be used in determining the data of the property being queried. Note that not all properties require qualification, in which case this value will be
                        NULL.
    @param          dataSize
                        A UInt32 which indicates the size (in bytes) of the buffer pointed to by data.
    @param          dataUsed
                        A UInt32 which indicates how much (in bytes) of the buffer was used.
    @param          data
                        The buffer into which the CMIOObject will put the data for the given property.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.7, *)
func CMIOObjectGetPropertyData(objectID: CMIOObjectID, _ address: UnsafePointer<CMIOObjectPropertyAddress>, _ qualifierDataSize: UInt32, _ qualifierData: UnsafePointer<Void>, _ dataSize: UInt32, _ dataUsed: UnsafeMutablePointer<UInt32>, _ data: UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @function       CMIOObjectSetPropertyData
    @abstract       Tells a CMIOObject to change the value of the given property using the provided data.
    @discussion     Note that the value of the property should not be considered changed until the DAL has called the listeners as many properties values are changed asynchronously.
    @param          objectID
                        The CMIOObject to change.
    @param          address
                        A CMIOObjectPropertyAddress indicating which property is being changed.
    @param          qualifierDataSize
                        A UInt32 indicating the size of the buffer pointed to by qualifierData. Note that not all properties require qualification, in which case this value will be 0.
    @param          qualifierData
                        A buffer of data to be used in determining the data of the property being queried. Note that not all properties require qualification, in which case this value will be
                        NULL.
    @param          dataSize
                        A UInt32 indicating the size of the buffer pointed to by data.
    @param          data
                        The buffer containing the data to be used to change the property's value.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.7, *)
func CMIOObjectSetPropertyData(objectID: CMIOObjectID, _ address: UnsafePointer<CMIOObjectPropertyAddress>, _ qualifierDataSize: UInt32, _ qualifierData: UnsafePointer<Void>, _ dataSize: UInt32, _ data: UnsafePointer<Void>) -> OSStatus

/*!
    @function       CMIOObjectAddPropertyListener
    @abstract       Registers the given CMIOObjectPropertyListenerProc to receive notifications when the given properties change.
    @param          objectID
                        The CMIOObject to register the listener with.
    @param          address
                        The CMIOObjectPropertyAddresses indicating which property the listener should be notified about.
    @param          listener
                        The CMIOObjectPropertyListenerProc to call.
    @param          clientData
                        A pointer to client data that is passed to the listener when it is called.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.7, *)
func CMIOObjectAddPropertyListener(objectID: CMIOObjectID, _ address: UnsafePointer<CMIOObjectPropertyAddress>, _ listener: CMIOObjectPropertyListenerProc!, _ clientData: UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @function       CMIOObjectRemovePropertyListener
    @abstract       Unregisters the given CMIOObjectPropertyListenerProc from receiving notifications when the given properties change.
    @param          objectID
                        The CMIOObject to unregister the listener from.
    @param          address
                        The CMIOObjectPropertyAddress indicating which property the listener should be removed from.
    @param          listener
                        The CMIOObjectPropertyListenerProc being removed.
    @param          clientData
                        A pointer to client data that is passed to the listener when it is called.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.7, *)
func CMIOObjectRemovePropertyListener(objectID: CMIOObjectID, _ address: UnsafePointer<CMIOObjectPropertyAddress>, _ listener: CMIOObjectPropertyListenerProc!, _ clientData: UnsafeMutablePointer<Void>) -> OSStatus

/*!
    @function       CMIOObjectAddPropertyListenerBlock
    @abstract       Registers the given CMIOObjectPropertyListenerBlock to receive notifications when the given properties change.
    @param          objectID
                        The CMIOObject to register the listener with.
    @param          address
                        The CMIOObjectPropertyAddresses indicating which property the listener should be notified about.
    @param          dispatchQueue
                        The dispatch queue on which the listener block will be dispatched. All listener blocks will be dispatched asynchronously save for those dispatched from the IO context
                        (of which kCMIODevicePropertyDeviceIsRunning and kCMIODeviceProcessorOverload are the only examples) which will be dispatched synchronously. Note that this dispatch
                        queue will be retained until a matching call to CMIOObjectRemovePropertyListenerBlock is made. If this value is NULL, then the block will be directly invoked.
    @param          listener
                        The CMIOObjectPropertyListenerBlock to call. Note that this block will be Block_copy'd and the reference maintained until a matching call to
                        CMIOObjectRemovePropertyListenerBlock is made.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.8, *)
func CMIOObjectAddPropertyListenerBlock(objectID: CMIOObjectID, _ address: UnsafePointer<CMIOObjectPropertyAddress>, _ dispatchQueue: dispatch_queue_t!, _ listener: CMIOObjectPropertyListenerBlock!) -> OSStatus

/*!
    @function       CMIOObjectRemovePropertyListenerBlock
    @abstract       Unregisters the given CMIOObjectPropertyListenerBlock from receiving notifications when the given properties change.
    @param          objectID
                        The CMIOObject to unregister the listener from.
    @param          numberAddresses
                        The number of elements in the addresses array.
    @param          addresses
                        The CMIOObjectPropertyAddress indicating which property the listener should be removed from.
    @param          dispatchQueue
                        The dispatch queue on which the listener block was being dispatched to. 
    @param          listener
                        The CMIOObjectPropertyListenerBlock being removed.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.8, *)
func CMIOObjectRemovePropertyListenerBlock(objectID: CMIOObjectID, _ address: UnsafePointer<CMIOObjectPropertyAddress>, _ dispatchQueue: dispatch_queue_t!, _ listener: CMIOObjectPropertyListenerBlock!) -> OSStatus

/*!
    @typedef        CMIOStreamID
    @abstract       CMIOStream is the base class for all objects that represent a stream of data on a CMIO device.
    @discussion     CMIOStream is a subclass of CMIOObject and can contain CMIOControls.
*/
typealias CMIOStreamID = CMIOObjectID

/*!
    @typedef        CMIODeviceStreamQueueAlteredProc
    @abstract       Clients register a CMIODeviceStreamQueueAlteredProc when invoking CMIOStreamCopyBufferQueue() to specify a routine for the stream to call when it alters its
                    buffer queue. Input streams invoke it following the insertion of a buffer into the queue, and output streams will invoke it upon removal.
    @param          streamID
                        The stream whose queue has been altered
    @param          token
                        The token which was inserted / removed
    @param          refCon
                        A pointer to client data established when the proc was registered via CMIOStreamCopyBufferQueue().
*/
typealias CMIODeviceStreamQueueAlteredProc = @convention(c) (CMIOStreamID, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> Void

/*!
    @struct         CMIOStreamDeck
    @abstract       This structure is returned in response to the kCMIOStreamPropertyDeck property queries. 
    @field          mStatus
                        The CMIO Deck Status constant that changed.
    @field          mState
                        If kCMIODeckStatusOpcode == mStatus, this can be used to determine more specific status. The values are CMIO Deck State constants.
    @field          mState2
                        if kCMIODeckStatusOpcode == mStatus, this can be used to determine more specific status. The values are device specific.
*/
struct CMIOStreamDeck {
  var mStatus: UInt32
  var mState: UInt32
  var mState2: UInt32
  init()
  init(mStatus: UInt32, mState: UInt32, mState2: UInt32)
}
var kCMIOStreamClassID: Int { get }
var kCMIOStreamUnknown: Int { get }
var kCMIODeckStatusBusy: Int { get }
var kCMIODeckStatusLocal: Int { get }
var kCMIODeckStatusNotThreaded: Int { get }
var kCMIODeckStatusTapeInserted: Int { get }
var kCMIODeckStatusOpcode: Int { get }
var kCMIODeckStatusSearchingForDevice: Int { get }
var kCMIODeckStatusNoDevice: Int { get }
var kCMIODeckStateStop: Int { get }
var kCMIODeckStatePlay: Int { get }
var kCMIODeckStatePause: Int { get }
var kCMIODeckStatePlaySlow: Int { get }
var kCMIODeckStateReverseSlow: Int { get }
var kCMIODeckStatePlayReverse: Int { get }
var kCMIODeckStateFastForward: Int { get }
var kCMIODeckStateFastRewind: Int { get }
var kCMIODeckShuttleReverseHighSpeed: Int { get }
var kCMIODeckShuttleReverseFastest: Int { get }
var kCMIODeckShuttleReverseFaster: Int { get }
var kCMIODeckShuttleReverseFast: Int { get }
var kCMIODeckShuttleReverse1x: Int { get }
var kCMIODeckShuttleReverseSlow3: Int { get }
var kCMIODeckShuttleReverseSlow2: Int { get }
var kCMIODeckShuttleReverseSlow1: Int { get }
var kCMIODeckShuttleReverseSlowest: Int { get }
var kCMIODeckShuttlePlayPreviousFrame: Int { get }
var kCMIODeckShuttlePause: Int { get }
var kCMIODeckShuttlePlayNextFrame: Int { get }
var kCMIODeckShuttlePlaySlowest: Int { get }
var kCMIODeckShuttlePlaySlow1: Int { get }
var kCMIODeckShuttlePlaySlow2: Int { get }
var kCMIODeckShuttlePlaySlow3: Int { get }
var kCMIODeckShuttlePlay1x: Int { get }
var kCMIODeckShuttlePlayFast: Int { get }
var kCMIODeckShuttlePlayFaster: Int { get }
var kCMIODeckShuttlePlayFastest: Int { get }
var kCMIODeckShuttlePlayHighSpeed: Int { get }
var kCMIOStreamPropertyDirection: Int { get }
var kCMIOStreamPropertyTerminalType: Int { get }
var kCMIOStreamPropertyStartingChannel: Int { get }
var kCMIOStreamPropertyLatency: Int { get }
var kCMIOStreamPropertyFormatDescription: Int { get }
var kCMIOStreamPropertyFormatDescriptions: Int { get }
var kCMIOStreamPropertyStillImage: Int { get }
var kCMIOStreamPropertyStillImageFormatDescriptions: Int { get }
var kCMIOStreamPropertyFrameRate: Int { get }
var kCMIOStreamPropertyMinimumFrameRate: Int { get }
var kCMIOStreamPropertyFrameRates: Int { get }
var kCMIOStreamPropertyFrameRateRanges: Int { get }
var kCMIOStreamPropertyNoDataTimeoutInMSec: Int { get }
var kCMIOStreamPropertyDeviceSyncTimeoutInMSec: Int { get }
var kCMIOStreamPropertyNoDataEventCount: Int { get }
var kCMIOStreamPropertyOutputBufferUnderrunCount: Int { get }
var kCMIOStreamPropertyOutputBufferRepeatCount: Int { get }
var kCMIOStreamPropertyOutputBufferQueueSize: Int { get }
var kCMIOStreamPropertyOutputBuffersRequiredForStartup: Int { get }
var kCMIOStreamPropertyOutputBuffersNeededForThrottledPlayback: Int { get }
var kCMIOStreamPropertyFirstOutputPresentationTimeStamp: Int { get }
var kCMIOStreamPropertyEndOfData: Int { get }
var kCMIOStreamPropertyClock: Int { get }
var kCMIOStreamPropertyCanProcessDeckCommand: Int { get }
var kCMIOStreamPropertyDeck: Int { get }
var kCMIOStreamPropertyDeckFrameNumber: Int { get }
var kCMIOStreamPropertyDeckDropness: Int { get }
var kCMIOStreamPropertyDeckThreaded: Int { get }
var kCMIOStreamPropertyDeckLocal: Int { get }
var kCMIOStreamPropertyDeckCueing: Int { get }
var kCMIOStreamPropertyInitialPresentationTimeStampForLinkedAndSyncedAudio: Int { get }
var kCMIOStreamPropertyScheduledOutputNotificationProc: Int { get }
var kCMIOStreamPropertyPreferredFormatDescription: Int { get }
var kCMIOStreamPropertyPreferredFrameRate: Int { get }

/*!
    @function       CMIOStreamCopyBufferQueue
    @abstract       Gets the CMSimpleQueue of the specified CMIOStream and registers a 'queue altered' callback function to be invoked when the stream alters the queue.
                    The stream will only invoke the most recent callback function registered. To unregister the existing callback function, pass NULL as the queueAlteredProc.
    @param          streamID
                        The CMIOStream to create the CMSimpleQueue.
    @param          queueAlteredProc
                        Routine to be invoked when the stream alters the queue for insertions (input streams) and removals (output streams).
                        Set this value to NULL to unregister any existing callbacks.
    @param          queueAlteredRefCon
                        The client refCon to pass back when the queue altered proc is invoked.
    @param          queue
                        The CMSimpleQueue to fill (for input streams) or to drain (for output streams).
                        If the return value is non-NULL, the client will need to release the queue when done with it.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.7, *)
func CMIOStreamCopyBufferQueue(streamID: CMIOStreamID, _ queueAlteredProc: CMIODeviceStreamQueueAlteredProc!, _ queueAlteredRefCon: UnsafeMutablePointer<Void>, _ queue: UnsafeMutablePointer<Unmanaged<CMSimpleQueue>?>) -> OSStatus

/*!
    @function       CMIOStreamDeckPlay
    @abstract       Sends a generic deck play command to the specified CMIOStream, instructing its associated deck to play.
    @param          streamID
                        The CMIOStream whose deck controls are being manipulated.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.7, *)
func CMIOStreamDeckPlay(streamID: CMIOStreamID) -> OSStatus

/*!
    @function       CMIOStreamDeckStop
    @abstract       Sends a generic deck stop command to the specified CMIOStream, instructing the associated deck to stop.
    @param          streamID
                        The CMIOStream whose deck controls are being manipulated.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.7, *)
func CMIOStreamDeckStop(streamID: CMIOStreamID) -> OSStatus

/*!
    @function       CMIOStreamDeckJog
    @abstract       Sends a generic deck jog command to the specified CMIOStream, instructing the associated deck to wind at the specified speed.
    @param          streamID
                        The CMIOStream whose deck controls are being manipulated.
    @param          speed
                        One of the CMIO Deck Shuttle Speed constants to specify the speed of movement of the associated deck.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.7, *)
func CMIOStreamDeckJog(streamID: CMIOStreamID, _ speed: Int32) -> OSStatus

/*!
    @function       CMIOStreamDeckCueTo
    @abstract       Sends a generic deck cue-to command to the specified CMIOStream, instructing the associated deck to seek to a specific point.
    @param          streamID
                        The CMIOStream whose deck controls are being manipulated.
    @param          frameNumber
                        The desired frame number that the deck should cue to.
    @param          playOnCue
                        An indicator that the deck should start playing when the cue-to point is reached.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.7, *)
func CMIOStreamDeckCueTo(streamID: CMIOStreamID, _ frameNumber: UInt64, _ playOnCue: Bool) -> OSStatus

/*!
    @function       CMIOStreamClockCreate
    @abstract       Creates a clock object that can be vended by kCMIOStreamPropertyClock, and driven
                    by CMIOStreamClockPostTimingEvent.
    @param          allocator
                        Used to allocate the memory for the clock.
    @param          sourceIdentifier
                        An opaque reference to the entity that is driving the clock. This value is used internally to determine if two CMIO Device Clocks have the same hardware source, and
                        thus determine whether or not they will drift relative to one another. This parameter is used in the following way: if a device supports multiple active streams that
                        are internally clocked by a common source, then instead of sharing one clock between each stream, a clock per stream can be created with the sourceIdentifier for each
                        clock set to be the same value.
    @param          getTimeCallMinimumInterval
                        If the clock is queried for its current time more often than this interval, an interpolated value will be returned.
    @param          numberOfEventsForRateSmoothing
                        The number of events to use for rate smoothing; must be > 0.
    @param          numberOfAveragesForRateSmoothing
                        The number of averages used for rate smoothing; if 0, the CA HAL smoothing algorithm is used.
    @param          clock
                        Receives the created clock. When the clock is no longer needed, CMIOStreamClockInvalidate should be called, followed by CFRelease.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.7, *)
func CMIOStreamClockCreate(allocator: CFAllocator!, _ clockName: CFString!, _ sourceIdentifier: UnsafePointer<Void>, _ getTimeCallMinimumInterval: CMTime, _ numberOfEventsForRateSmoothing: UInt32, _ numberOfAveragesForRateSmoothing: UInt32, _ clock: UnsafeMutablePointer<Unmanaged<AnyObject>?>) -> OSStatus

/*!
    @function       CMIOStreamClockPostTimingEvent
    @abstract       Used to drive a clock created by CMIOStreamClockCreate.
    @discussion     A CMIO Stream Clock is driven by events that occur on the stream. These events have a "stream time" value, and a host time value. For example, a camera might be set to
                    capture images at a rate of 29.97 frames per second. This rate is determined by the camera's clocking circuitry, which is not synchronized to the computer's host clock.
                    Every time a frame comes in, the CMIO device driver increments the event time by 1/29.97, and calls this routine with the host time for when that frame was captured. 
    @param          eventTime
                        Time when the event occurred, on the stream's timeline.
    @param          hostTime
                        The host time at which the event occurred.
    @param          resynchronize
                        If true, indicates that a device has experienced a disruption in its data stream, and a new anchor point for measuring time is created.
    @param          clock
                        The CMIO Device Clock returned by CMIOStreamClockCreate.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.7, *)
func CMIOStreamClockPostTimingEvent(eventTime: CMTime, _ hostTime: UInt64, _ resynchronize: Bool, _ clock: AnyObject!) -> OSStatus

/*!
    @function       CMIOStreamClockInvalidate
    @abstract       Indicates that a clock is no longer valid.
    @discussion     Since a CMIO Stream Clock is a reference counted object, it may be retained by clients for longer than its valid (for example, the device is stopped). When a device is no
                    longer going to be posting events for a clock, it needs to call this routine, followed by CFRelease. After this point, any clients that query the clock for the current
                    time will get kCMTimeInvalid.
    @param          clock
                        The CMIO Stream Clock returned by CMIOStreamClockCreate.
    @result         An OSStatus indicating success or failure.
*/
@available(OSX 10.7, *)
func CMIOStreamClockInvalidate(clock: AnyObject!) -> OSStatus

/*!
    @function       CMIOStreamClockConvertHostTimeToDeviceTime
    @abstract       Converts a host time value to the equivalent time on a device's clock.
    @param          hostTime
                        The host time value to convert.
    @param          clock
                        The device clock object returned by CMIOStreamClockCreate.
    @result         The time on clock that is equivalent to the given hosttime.
*/
@available(OSX 10.7, *)
func CMIOStreamClockConvertHostTimeToDeviceTime(hostTime: UInt64, _ clock: AnyObject!) -> CMTime

/*!
    @typedef    CMIOStreamScheduledOutputNotificationProc
    @discussion Callback used to notify a client when a buffer was output.
*/
/*!
    @typedef        CMIOStreamScheduledOutputNotificationProc
    @abstract       Clients register a CMIOStreamScheduledOutputNotificationProc using kCMIOStreamPropertyScheduledOutputNotificationProc.
                    The procedure is called when the stream determines when a particular buffer was output.
    @param          sequenceNumberOfBufferThatWasOutput
                        The sequence number of the buffer that was output
    @param          outputHostTime
                        The host time that buffer was output
    @param          scheduledOutputNotificationRefCon
                        A pointer to client data, established when the proc was registered using kCMIOStreamPropertyScheduledOutputNotificationProc
*/
typealias CMIOStreamScheduledOutputNotificationProc = @convention(c) (UInt64, UInt64, UnsafeMutablePointer<Void>) -> Void

/*!
    @struct     CMIOStreamScheduledOutputNotificationProcAndRefCon
    @discussion The payload for kCMIOStreamPropertyScheduledOutputNotificationProc.
    @field      scheduledOutputNotificationProc
                    The procedure to call when a buffer was output
    @field      scheduledOutputNotificationRefCon
                    A pointer to client data that will be passed to the scheduledOutputNotificationProc
*/
struct CMIOStreamScheduledOutputNotificationProcAndRefCon {
  var scheduledOutputNotificationProc: CMIOStreamScheduledOutputNotificationProc!
  var scheduledOutputNotificationRefCon: UnsafeMutablePointer<Void>
  init()
  init(scheduledOutputNotificationProc: CMIOStreamScheduledOutputNotificationProc!, scheduledOutputNotificationRefCon: UnsafeMutablePointer<Void>)
}

/*!
    @typedef        CMIOHardwarePropertyID
    @abstract       A CMIOHardwarePropertyID is an integer that identifies a specific piece of information about the CMIOSystemObject.
*/
typealias CMIOHardwarePropertyID = CMIOObjectPropertySelector
var kCMIOSystemObjectClassID: Int { get }
var kCMIOObjectSystemObject: Int { get }
var kCMIOHardwarePropertyProcessIsMaster: Int { get }
var kCMIOHardwarePropertyIsInitingOrExiting: Int { get }
var kCMIOHardwarePropertyDevices: Int { get }
var kCMIOHardwarePropertyDefaultInputDevice: Int { get }
var kCMIOHardwarePropertyDefaultOutputDevice: Int { get }
var kCMIOHardwarePropertyDeviceForUID: Int { get }
var kCMIOHardwarePropertySleepingIsAllowed: Int { get }
var kCMIOHardwarePropertyUnloadingIsAllowed: Int { get }
var kCMIOHardwarePropertyPlugInForBundleID: Int { get }
var kCMIOHardwarePropertyUserSessionIsActiveOrHeadless: Int { get }
var kCMIOHardwarePropertySuspendedBySystem: Int { get }
var kCMIOHardwarePropertyAllowScreenCaptureDevices: Int { get }
