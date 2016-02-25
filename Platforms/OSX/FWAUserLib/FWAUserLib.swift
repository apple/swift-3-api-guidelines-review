
typealias FWARef = COpaquePointer
typealias FWAIsochStreamRef = COpaquePointer
typealias FWADeviceRef = COpaquePointer
typealias FWAEngineRef = COpaquePointer
typealias FWAAudioStreamRef = COpaquePointer
typealias FWAMIDIStreamRef = COpaquePointer
typealias FWAMIDIPlugRef = COpaquePointer
typealias FWAAudioPlugRef = COpaquePointer
typealias FWAMIDIDeviceNubRef = COpaquePointer
typealias FWADeviceID = UInt32
func FWACountDevices(_ deviceNodeIDArray: UnsafeMutablePointer<UInt16>, _ deviceCount: UnsafeMutablePointer<UInt16>) -> OSStatus
func FWAOpen(_ nodeID: UInt32, _ outRef: UnsafeMutablePointer<FWARef>) -> OSStatus
func FWAOpenLocal(_ outRef: UnsafeMutablePointer<FWARef>) -> OSStatus
func FWAClose(_ inRef: FWARef) -> OSStatus
func FWARead(_ inRef: FWARef, _ inAddress: UInt8, _ inSubAddress: UInt8, _ inDataSize: Int, _ inDataPtr: UnsafeMutablePointer<Void>) -> OSStatus
func FWAWrite(_ inRef: FWARef, _ inAddress: UInt8, _ inSubAddress: UInt8, _ inDataSize: Int, _ inDataPtr: UnsafePointer<Void>) -> OSStatus
func FWAGetNodeID(_ inRef: FWARef, _ outNodeID: UnsafeMutablePointer<UInt32>, _ outGeneration: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWAGetGUID(_ inRef: FWARef, _ guid: UnsafeMutablePointer<UInt64>) -> OSStatus
func FWAGetMacGUID(_ inRef: FWARef, _ guid: UnsafeMutablePointer<UInt64>) -> OSStatus
func FWAReadQuadlet(_ inRef: FWARef, _ address: FWAddressPtr, _ outData: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWAReadBlock(_ inRef: FWARef, _ address: FWAddressPtr, _ size: UnsafeMutablePointer<UInt32>, _ outData: UnsafeMutablePointer<UInt8>) -> OSStatus
func FWAExecuteAVC(_ inRef: FWARef, _ cmd: UnsafeMutablePointer<UInt8>, _ cmdSize: UInt32, _ response: UnsafeMutablePointer<UInt8>, _ responseSize: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWAWriteQuadlet(_ inRef: FWARef, _ address: FWAddressPtr, _ data: UInt32) -> OSStatus
func FWAWriteBlock(_ inRef: FWARef, _ address: FWAddressPtr, _ size: UInt32, _ data: UnsafePointer<UInt8>) -> OSStatus
func FWACreateMIDIStream(_ inRef: FWARef, _ midiIO: UInt32, _ bufSizeInBytes: UInt32, _ buf: UnsafeMutablePointer<Void>, _ sequenceNum: UInt32, _ midiStreamRef: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWADisposeMIDIStream(_ inRef: FWARef, _ midiStreamRef: UInt32) -> OSStatus
func FWAWriteMIDIData(_ inRef: FWARef, _ midiStreamRef: UInt32, _ writeMsgLength: UInt32, _ buf: UnsafeMutablePointer<UInt8>) -> OSStatus
func FWAReadMIDIData(_ inRef: FWARef, _ midiStreamRef: UInt32, _ buf: UnsafeMutablePointer<FWAMIDIReadBuf>) -> OSStatus
func FWAGetCycleTimeOffset(_ inRef: FWARef, _ cycleTimeOffset: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWASetCycleTimeOffset(_ inRef: FWARef, _ cycleTimeOffset: UInt32) -> OSStatus
func FWAGetVendorID(_ inRef: FWARef, _ vendorID: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWAGetDeviceName(_ inRef: FWARef, _ name: UnsafeMutablePointer<Int8>) -> OSStatus
func FWAGetVendorName(_ inRef: FWARef, _ name: UnsafeMutablePointer<Int8>) -> OSStatus
func FWAIsMIDICapable(_ inRef: FWARef, _ supportsMIDI: UnsafeMutablePointer<Bool>) -> OSStatus
func FWAGetNumMIDIInputPlugs(_ inRef: FWARef, _ plugs: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWAGetNumMIDIOutputPlugs(_ inRef: FWARef, _ plugs: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWASetNumMIDIInputPlugs(_ inRef: FWARef, _ plugs: UInt32) -> OSStatus
func FWASetNumMIDIOutputPlugs(_ inRef: FWARef, _ plugs: UInt32) -> OSStatus
func FWAGetNumAudioInputPlugs(_ inRef: FWARef, _ plugs: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWAGetNumAudioOutputPlugs(_ inRef: FWARef, _ plugs: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWACreateAudioStream(_ inRef: FWARef, _ audioIO: UInt32, _ audioStreamRef: UnsafeMutablePointer<UInt32>, _ sequenceNum: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWADisposeAudioStream(_ inRef: FWARef, _ audioStreamRef: UInt32) -> OSStatus
func FWAGetDeviceSampleRate(_ inRef: FWARef, _ rate: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWAGetDeviceSendMode(_ inRef: FWARef, _ mode: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWAGetDeviceStatus(_ inRef: FWARef, _ outData: UnsafeMutablePointer<Void>, _ inSize: UInt32) -> OSStatus
func FWAGetDeviceStreamInfo(_ inRef: FWARef, _ audioStreamRef: UInt32, _ numInput: UnsafeMutablePointer<UInt32>, _ inputIsochChan: UnsafeMutablePointer<UInt32>, _ numOutput: UnsafeMutablePointer<UInt32>, _ outputIsochChan: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWAInitAEvntSource(_ inRef: FWARef, _ source: UnsafeMutablePointer<Unmanaged<CFRunLoopSource>?>, _ refcon: UnsafeMutablePointer<Void>) -> OSStatus
func CreateAsyncWakePort(_ inRef: FWARef, _ notifyPort: UnsafeMutablePointer<mach_port_t>) -> OSStatus
func FWAGetAEvntSource(_ inRef: FWARef) -> Unmanaged<CFRunLoopSource>!
func FWAWriteMIDIDataAsync(_ inRef: FWARef, _ midiStreamRef: UInt32, _ writeMsgLength: UInt32, _ callback: IOAsyncCallback1!, _ refCon: UnsafeMutablePointer<Void>) -> OSStatus
func FWAReadMIDIDataAsync(_ inRef: FWARef, _ midiStreamRef: UInt32, _ readBufSize: UInt32, _ callback: IOAsyncCallback2!, _ refCon: UnsafeMutablePointer<Void>) -> OSStatus
func FWASetDeviceStreamInfo(_ inRef: FWARef, _ audioStreamRef: UInt32, _ numInput: UInt32, _ inputIsochChan: UInt32, _ numOutput: UInt32, _ outputIsochChan: UInt32, _ update: Bool) -> OSStatus
func FWASyncUpDevice(_ inRef: FWARef) -> OSStatus
func FWAGetMaxSpeed(_ inRef: FWARef, _ speed: UnsafeMutablePointer<IOFWSpeed>) -> OSStatus
func FWAGetMaxIsochChannels(_ inRef: FWARef, _ inChannels: UnsafeMutablePointer<UInt32>, _ outChannels: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWAGetMaxSequences(_ inRef: FWARef, _ numSequences: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWAGetSupportedSampleRates(_ inRef: FWARef, _ sampleRates: UnsafeMutablePointer<UInt32>, _ count: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWAGetSupportedAudioTypes(_ inRef: FWARef, _ audioTypes: UnsafeMutablePointer<FWAudioType>, _ count: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWAGetCurrentIsochStreamRefs(_ inRef: FWARef, _ isochStreamRef: UnsafeMutablePointer<FWAIsochStreamRef>, _ count: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWAGetIsochStreamState(_ inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ state: UnsafeMutablePointer<FWAStreamState>) -> OSStatus
func FWAGetIsochStreamDirection(_ inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ direction: UnsafeMutablePointer<FWAStreamDirection>) -> OSStatus
func FWAGetIsochStreamChannelID(_ inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ channelID: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWASetIsochStreamChannelID(_ inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ channelID: UInt32) -> OSStatus
func FWAGetIsochStreamSampleRate(_ inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ rate: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWASetIsochStreamSampleRate(_ inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ rate: UInt32) -> OSStatus
func FWAGetIsochStreamOutputSpeed(_ inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ speed: UnsafeMutablePointer<IOFWSpeed>) -> OSStatus
func FWASetIsochStreamOutputSpeed(_ inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ speed: IOFWSpeed) -> OSStatus
func FWAGetIsochStreamAudioType(_ inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ type: UnsafeMutablePointer<FWAudioType>) -> OSStatus
func FWASetIsochStreamAudioType(_ inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ type: FWAudioType) -> OSStatus
func FWACreateIsochStream(_ inRef: FWARef, _ channelNumber: UInt32, _ direction: FWAStreamDirection, _ numAudioChannels: UInt32, _ numMIDIChannels: UInt32, _ isochStreamRef: UnsafeMutablePointer<FWAIsochStreamRef>) -> OSStatus
func FWADisposeIsochStream(_ inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef) -> OSStatus
func FWAStartIsochStream(_ inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef) -> OSStatus
func FWAStopIsochStream(_ inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef) -> OSStatus
func FWAGetIsochStreamAudioSequenceCount(_ inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ numAudioSequence: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWASetIsochStreamAudioSequenceCount(_ inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ numAudioSequence: UInt32) -> OSStatus
func FWAGetIsochStreamMIDISequenceCount(_ inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ numMIDISequence: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWASetIsochStreamMIDISequenceCount(_ inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ numMIDISequence: UInt32) -> OSStatus
func FWACreateFWAudioDevice(_ inRef: FWARef, _ deviceName: UnsafePointer<Int8>, _ vendorID: UInt32, _ guid: UnsafePointer<Int8>, _ device: UnsafeMutablePointer<FWADeviceRef>) -> OSStatus
func FWADisposeFWAudioDevice(_ inRef: FWARef, _ device: FWADeviceRef) -> OSStatus
func FWAStartFWAudioDevice(_ inRef: FWARef, _ device: FWADeviceRef) -> OSStatus
func FWAStopFWAudioDevice(_ inRef: FWARef, _ device: FWADeviceRef) -> OSStatus
func FWACreateFWAudioEngine(_ inRef: FWARef, _ owningDevice: FWADeviceRef, _ hasInput: Bool, _ hasOutput: Bool, _ engine: UnsafeMutablePointer<FWAEngineRef>) -> OSStatus
func FWADisposeFWAudioEngine(_ inRef: FWARef, _ engine: FWAEngineRef) -> OSStatus
func FWACreateFWAudioStream(_ inRef: FWARef, _ owningIsochStreamRef: FWAIsochStreamRef, _ channelNumber: UInt32, _ direction: UInt32, _ numAudioChannels: UInt32, _ streamName: UnsafeMutablePointer<Int8>, _ streamIdent: UnsafeMutablePointer<UInt8>, _ streamRef: UnsafeMutablePointer<FWAAudioStreamRef>) -> OSStatus
func FWADisposeFWAudioStream(_ inRef: FWARef, _ streamRef: FWAAudioStreamRef) -> OSStatus
func FWACreateFWAudioMIDIStream(_ inRef: FWARef, _ owningIsochStreamRef: FWAIsochStreamRef, _ sequenceNumber: UInt32, _ direction: UInt32, _ streamRef: UnsafeMutablePointer<FWAMIDIStreamRef>) -> OSStatus
func FWADisposeFWAudioMIDIStream(_ inRef: FWARef, _ streamRef: FWAMIDIStreamRef) -> OSStatus
func FWACreateFWAudioMIDIPlug(_ inRef: FWARef, _ owningMIDIStreamRef: FWAMIDIStreamRef, _ mpxID: UInt8, _ plugName: UnsafeMutablePointer<Int8>, _ plugIdent: UnsafeMutablePointer<UInt8>, _ streamRef: UnsafeMutablePointer<FWAMIDIPlugRef>) -> OSStatus
func FWADisposeFWAudioMIDIPlug(_ inRef: FWARef, _ plugRef: FWAMIDIPlugRef) -> OSStatus
func FWAGetClockSource(_ inRef: FWARef, _ streamRef: UnsafeMutablePointer<FWAIsochStreamRef>, _ sequence: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWASetClockSource(_ inRef: FWARef, _ streamRef: FWAIsochStreamRef, _ sequence: UInt32) -> OSStatus
func FWASetAutoLoad(_ inRef: FWARef, _ enable: Bool) -> OSStatus
func FWAGetProperty(_ inRef: FWARef, _ propertyID: UInt32, _ data: UnsafeMutablePointer<Void>, _ size: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWASetProperty(_ inRef: FWARef, _ propertyID: UInt32, _ data: UnsafeMutablePointer<Void>, _ size: UInt32) -> OSStatus
func FWASetPluginPath(_ inRef: FWARef, _ engine: FWAEngineRef, _ vendorID: UInt32, _ modelID: UInt32, _ pluginPath: UnsafePointer<Int8>) -> OSStatus
func FWACreateFWAudioPlug(_ inRef: FWARef, _ owningStream: FWAAudioStreamRef, _ channelID: UInt32, _ plugName: UnsafeMutablePointer<Int8>, _ plugIdent: UnsafeMutablePointer<UInt8>, _ streamRef: UnsafeMutablePointer<FWAAudioPlugRef>) -> OSStatus
func FWADisposeFWAudioPlug(_ inRef: FWARef, _ plugRef: FWAAudioPlugRef) -> OSStatus
func FWAGetFWAudioMIDIPlugChannel(_ inRef: FWARef, _ streamRef: FWAMIDIPlugRef, _ channelID: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWASetFWAudioMIDIPlugChannel(_ inRef: FWARef, _ streamRef: FWAMIDIPlugRef, _ channelID: UInt32) -> OSStatus
func FWAGetFWAudioPlugChannel(_ inRef: FWARef, _ streamRef: FWAAudioPlugRef, _ channelID: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWASetFWAudioPlugChannel(_ inRef: FWARef, _ streamRef: FWAAudioPlugRef, _ channelID: UInt32) -> OSStatus
func FWAGetIndexedFWAudioPlug(_ inRef: FWARef, _ device: FWADeviceRef, _ index: UInt32, _ dir: UInt32, _ plugRef: UnsafeMutablePointer<FWAAudioPlugRef>) -> OSStatus
func FWAGetIndexedFWAudioMIDIPlug(_ inRef: FWARef, _ device: FWAMIDIDeviceNubRef, _ index: UInt32, _ dir: UInt32, _ plugRef: UnsafeMutablePointer<FWAMIDIPlugRef>) -> OSStatus
func FWAAttachFWAudioStream(_ inRef: FWARef, _ streamRef: FWAAudioStreamRef, _ isochChannel: FWAIsochStreamRef) -> OSStatus
func FWAAttachFWAudioMIDIStream(_ inRef: FWARef, _ streamRef: FWAMIDIStreamRef, _ isochChannel: FWAIsochStreamRef) -> OSStatus
func FWASetFWAudioPlugProperty(_ inRef: FWARef, _ plugRef: FWAAudioPlugRef, _ keyname: UnsafePointer<Int8>, _ keyvalue: UnsafePointer<Int8>) -> OSStatus
func FWASetFWAudioMIDIPlugProperty(_ inRef: FWARef, _ plugRef: FWAMIDIPlugRef, _ keyname: UnsafePointer<Int8>, _ keyvalue: UnsafePointer<Int8>) -> OSStatus
func FWAOpenLocalWithInterface(_ guid: UInt64, _ options: UInt32, _ outRef: UnsafeMutablePointer<FWARef>) -> OSStatus
func FWAOpenWithService(_ _: io_service_t, _ options: UInt32, _ outRef: UnsafeMutablePointer<FWARef>) -> OSStatus
func FWAGetSessionRef(_ inRef: FWARef, _ sessionRef: UnsafeMutablePointer<IOFireWireSessionRef>) -> OSStatus
func FWAReserveIsochSequences(_ inRef: FWARef, _ isochStream: FWAIsochStreamRef, _ type: FWAudioType, _ count: UInt32) -> OSStatus
func FWACreateFWAudioMIDIDeviceNub(_ inRef: FWARef, _ owningDevice: FWADeviceRef, _ deviceName: UnsafePointer<Int8>, _ vendorID: UInt32, _ guid: UnsafePointer<Int8>, _ iconFilePath: UnsafePointer<Int8>, _ modelID: UInt32, _ editorPath: UnsafePointer<Int8>, _ device: UnsafeMutablePointer<FWAMIDIDeviceNubRef>) -> OSStatus
func FWADisposeFWAudioMIDIDeviceNub(_ inRef: FWARef, _ device: FWAMIDIDeviceNubRef) -> OSStatus
func FWAMIDIDeviceNubAttachMIDIPlug(_ inRef: FWARef, _ midiDeviceNub: FWAMIDIDeviceNubRef, _ midiPlug: FWAMIDIPlugRef) -> OSStatus
func FWAMIDIDeviceNubDetachMIDIPlug(_ inRef: FWARef, _ midiPlug: FWAMIDIPlugRef) -> OSStatus
