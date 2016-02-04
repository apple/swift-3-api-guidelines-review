
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
func FWACountDevices(deviceNodeIDArray: UnsafeMutablePointer<UInt16>, _ deviceCount: UnsafeMutablePointer<UInt16>) -> OSStatus
func FWAOpen(nodeID: UInt32, _ outRef: UnsafeMutablePointer<FWARef>) -> OSStatus
func FWAOpenLocal(outRef: UnsafeMutablePointer<FWARef>) -> OSStatus
func FWAClose(inRef: FWARef) -> OSStatus
func FWARead(inRef: FWARef, _ inAddress: UInt8, _ inSubAddress: UInt8, _ inDataSize: Int, _ inDataPtr: UnsafeMutablePointer<Void>) -> OSStatus
func FWAWrite(inRef: FWARef, _ inAddress: UInt8, _ inSubAddress: UInt8, _ inDataSize: Int, _ inDataPtr: UnsafePointer<Void>) -> OSStatus
func FWAGetNodeID(inRef: FWARef, _ outNodeID: UnsafeMutablePointer<UInt32>, _ outGeneration: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWAGetGUID(inRef: FWARef, _ guid: UnsafeMutablePointer<UInt64>) -> OSStatus
func FWAGetMacGUID(inRef: FWARef, _ guid: UnsafeMutablePointer<UInt64>) -> OSStatus
func FWAReadQuadlet(inRef: FWARef, _ address: FWAddressPtr, _ outData: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWAReadBlock(inRef: FWARef, _ address: FWAddressPtr, _ size: UnsafeMutablePointer<UInt32>, _ outData: UnsafeMutablePointer<UInt8>) -> OSStatus
func FWAExecuteAVC(inRef: FWARef, _ cmd: UnsafeMutablePointer<UInt8>, _ cmdSize: UInt32, _ response: UnsafeMutablePointer<UInt8>, _ responseSize: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWAWriteQuadlet(inRef: FWARef, _ address: FWAddressPtr, _ data: UInt32) -> OSStatus
func FWAWriteBlock(inRef: FWARef, _ address: FWAddressPtr, _ size: UInt32, _ data: UnsafePointer<UInt8>) -> OSStatus
func FWACreateMIDIStream(inRef: FWARef, _ midiIO: UInt32, _ bufSizeInBytes: UInt32, _ buf: UnsafeMutablePointer<Void>, _ sequenceNum: UInt32, _ midiStreamRef: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWADisposeMIDIStream(inRef: FWARef, _ midiStreamRef: UInt32) -> OSStatus
func FWAWriteMIDIData(inRef: FWARef, _ midiStreamRef: UInt32, _ writeMsgLength: UInt32, _ buf: UnsafeMutablePointer<UInt8>) -> OSStatus
func FWAReadMIDIData(inRef: FWARef, _ midiStreamRef: UInt32, _ buf: UnsafeMutablePointer<FWAMIDIReadBuf>) -> OSStatus
func FWAGetCycleTimeOffset(inRef: FWARef, _ cycleTimeOffset: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWASetCycleTimeOffset(inRef: FWARef, _ cycleTimeOffset: UInt32) -> OSStatus
func FWAGetVendorID(inRef: FWARef, _ vendorID: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWAGetDeviceName(inRef: FWARef, _ name: UnsafeMutablePointer<Int8>) -> OSStatus
func FWAGetVendorName(inRef: FWARef, _ name: UnsafeMutablePointer<Int8>) -> OSStatus
func FWAIsMIDICapable(inRef: FWARef, _ supportsMIDI: UnsafeMutablePointer<Bool>) -> OSStatus
func FWAGetNumMIDIInputPlugs(inRef: FWARef, _ plugs: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWAGetNumMIDIOutputPlugs(inRef: FWARef, _ plugs: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWASetNumMIDIInputPlugs(inRef: FWARef, _ plugs: UInt32) -> OSStatus
func FWASetNumMIDIOutputPlugs(inRef: FWARef, _ plugs: UInt32) -> OSStatus
func FWAGetNumAudioInputPlugs(inRef: FWARef, _ plugs: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWAGetNumAudioOutputPlugs(inRef: FWARef, _ plugs: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWACreateAudioStream(inRef: FWARef, _ audioIO: UInt32, _ audioStreamRef: UnsafeMutablePointer<UInt32>, _ sequenceNum: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWADisposeAudioStream(inRef: FWARef, _ audioStreamRef: UInt32) -> OSStatus
func FWAGetDeviceSampleRate(inRef: FWARef, _ rate: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWAGetDeviceSendMode(inRef: FWARef, _ mode: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWAGetDeviceStatus(inRef: FWARef, _ outData: UnsafeMutablePointer<Void>, _ inSize: UInt32) -> OSStatus
func FWAGetDeviceStreamInfo(inRef: FWARef, _ audioStreamRef: UInt32, _ numInput: UnsafeMutablePointer<UInt32>, _ inputIsochChan: UnsafeMutablePointer<UInt32>, _ numOutput: UnsafeMutablePointer<UInt32>, _ outputIsochChan: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWAInitAEvntSource(inRef: FWARef, _ source: UnsafeMutablePointer<Unmanaged<CFRunLoopSource>?>, _ refcon: UnsafeMutablePointer<Void>) -> OSStatus
func CreateAsyncWakePort(inRef: FWARef, _ notifyPort: UnsafeMutablePointer<mach_port_t>) -> OSStatus
func FWAGetAEvntSource(inRef: FWARef) -> Unmanaged<CFRunLoopSource>!
func FWAWriteMIDIDataAsync(inRef: FWARef, _ midiStreamRef: UInt32, _ writeMsgLength: UInt32, _ callback: IOAsyncCallback1!, _ refCon: UnsafeMutablePointer<Void>) -> OSStatus
func FWAReadMIDIDataAsync(inRef: FWARef, _ midiStreamRef: UInt32, _ readBufSize: UInt32, _ callback: IOAsyncCallback2!, _ refCon: UnsafeMutablePointer<Void>) -> OSStatus
func FWASetDeviceStreamInfo(inRef: FWARef, _ audioStreamRef: UInt32, _ numInput: UInt32, _ inputIsochChan: UInt32, _ numOutput: UInt32, _ outputIsochChan: UInt32, _ update: Bool) -> OSStatus
func FWASyncUpDevice(inRef: FWARef) -> OSStatus
func FWAGetMaxSpeed(inRef: FWARef, _ speed: UnsafeMutablePointer<IOFWSpeed>) -> OSStatus
func FWAGetMaxIsochChannels(inRef: FWARef, _ inChannels: UnsafeMutablePointer<UInt32>, _ outChannels: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWAGetMaxSequences(inRef: FWARef, _ numSequences: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWAGetSupportedSampleRates(inRef: FWARef, _ sampleRates: UnsafeMutablePointer<UInt32>, _ count: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWAGetSupportedAudioTypes(inRef: FWARef, _ audioTypes: UnsafeMutablePointer<FWAudioType>, _ count: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWAGetCurrentIsochStreamRefs(inRef: FWARef, _ isochStreamRef: UnsafeMutablePointer<FWAIsochStreamRef>, _ count: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWAGetIsochStreamState(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ state: UnsafeMutablePointer<FWAStreamState>) -> OSStatus
func FWAGetIsochStreamDirection(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ direction: UnsafeMutablePointer<FWAStreamDirection>) -> OSStatus
func FWAGetIsochStreamChannelID(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ channelID: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWASetIsochStreamChannelID(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ channelID: UInt32) -> OSStatus
func FWAGetIsochStreamSampleRate(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ rate: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWASetIsochStreamSampleRate(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ rate: UInt32) -> OSStatus
func FWAGetIsochStreamOutputSpeed(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ speed: UnsafeMutablePointer<IOFWSpeed>) -> OSStatus
func FWASetIsochStreamOutputSpeed(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ speed: IOFWSpeed) -> OSStatus
func FWAGetIsochStreamAudioType(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ type: UnsafeMutablePointer<FWAudioType>) -> OSStatus
func FWASetIsochStreamAudioType(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ type: FWAudioType) -> OSStatus
func FWACreateIsochStream(inRef: FWARef, _ channelNumber: UInt32, _ direction: FWAStreamDirection, _ numAudioChannels: UInt32, _ numMIDIChannels: UInt32, _ isochStreamRef: UnsafeMutablePointer<FWAIsochStreamRef>) -> OSStatus
func FWADisposeIsochStream(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef) -> OSStatus
func FWAStartIsochStream(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef) -> OSStatus
func FWAStopIsochStream(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef) -> OSStatus
func FWAGetIsochStreamAudioSequenceCount(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ numAudioSequence: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWASetIsochStreamAudioSequenceCount(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ numAudioSequence: UInt32) -> OSStatus
func FWAGetIsochStreamMIDISequenceCount(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ numMIDISequence: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWASetIsochStreamMIDISequenceCount(inRef: FWARef, _ isochStreamRef: FWAIsochStreamRef, _ numMIDISequence: UInt32) -> OSStatus
func FWACreateFWAudioDevice(inRef: FWARef, _ deviceName: UnsafePointer<Int8>, _ vendorID: UInt32, _ guid: UnsafePointer<Int8>, _ device: UnsafeMutablePointer<FWADeviceRef>) -> OSStatus
func FWADisposeFWAudioDevice(inRef: FWARef, _ device: FWADeviceRef) -> OSStatus
func FWAStartFWAudioDevice(inRef: FWARef, _ device: FWADeviceRef) -> OSStatus
func FWAStopFWAudioDevice(inRef: FWARef, _ device: FWADeviceRef) -> OSStatus
func FWACreateFWAudioEngine(inRef: FWARef, _ owningDevice: FWADeviceRef, _ hasInput: Bool, _ hasOutput: Bool, _ engine: UnsafeMutablePointer<FWAEngineRef>) -> OSStatus
func FWADisposeFWAudioEngine(inRef: FWARef, _ engine: FWAEngineRef) -> OSStatus
func FWACreateFWAudioStream(inRef: FWARef, _ owningIsochStreamRef: FWAIsochStreamRef, _ channelNumber: UInt32, _ direction: UInt32, _ numAudioChannels: UInt32, _ streamName: UnsafeMutablePointer<Int8>, _ streamIdent: UnsafeMutablePointer<UInt8>, _ streamRef: UnsafeMutablePointer<FWAAudioStreamRef>) -> OSStatus
func FWADisposeFWAudioStream(inRef: FWARef, _ streamRef: FWAAudioStreamRef) -> OSStatus
func FWACreateFWAudioMIDIStream(inRef: FWARef, _ owningIsochStreamRef: FWAIsochStreamRef, _ sequenceNumber: UInt32, _ direction: UInt32, _ streamRef: UnsafeMutablePointer<FWAMIDIStreamRef>) -> OSStatus
func FWADisposeFWAudioMIDIStream(inRef: FWARef, _ streamRef: FWAMIDIStreamRef) -> OSStatus
func FWACreateFWAudioMIDIPlug(inRef: FWARef, _ owningMIDIStreamRef: FWAMIDIStreamRef, _ mpxID: UInt8, _ plugName: UnsafeMutablePointer<Int8>, _ plugIdent: UnsafeMutablePointer<UInt8>, _ streamRef: UnsafeMutablePointer<FWAMIDIPlugRef>) -> OSStatus
func FWADisposeFWAudioMIDIPlug(inRef: FWARef, _ plugRef: FWAMIDIPlugRef) -> OSStatus
func FWAGetClockSource(inRef: FWARef, _ streamRef: UnsafeMutablePointer<FWAIsochStreamRef>, _ sequence: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWASetClockSource(inRef: FWARef, _ streamRef: FWAIsochStreamRef, _ sequence: UInt32) -> OSStatus
func FWASetAutoLoad(inRef: FWARef, _ enable: Bool) -> OSStatus
func FWAGetProperty(inRef: FWARef, _ propertyID: UInt32, _ data: UnsafeMutablePointer<Void>, _ size: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWASetProperty(inRef: FWARef, _ propertyID: UInt32, _ data: UnsafeMutablePointer<Void>, _ size: UInt32) -> OSStatus
func FWASetPluginPath(inRef: FWARef, _ engine: FWAEngineRef, _ vendorID: UInt32, _ modelID: UInt32, _ pluginPath: UnsafePointer<Int8>) -> OSStatus
func FWACreateFWAudioPlug(inRef: FWARef, _ owningStream: FWAAudioStreamRef, _ channelID: UInt32, _ plugName: UnsafeMutablePointer<Int8>, _ plugIdent: UnsafeMutablePointer<UInt8>, _ streamRef: UnsafeMutablePointer<FWAAudioPlugRef>) -> OSStatus
func FWADisposeFWAudioPlug(inRef: FWARef, _ plugRef: FWAAudioPlugRef) -> OSStatus
func FWAGetFWAudioMIDIPlugChannel(inRef: FWARef, _ streamRef: FWAMIDIPlugRef, _ channelID: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWASetFWAudioMIDIPlugChannel(inRef: FWARef, _ streamRef: FWAMIDIPlugRef, _ channelID: UInt32) -> OSStatus
func FWAGetFWAudioPlugChannel(inRef: FWARef, _ streamRef: FWAAudioPlugRef, _ channelID: UnsafeMutablePointer<UInt32>) -> OSStatus
func FWASetFWAudioPlugChannel(inRef: FWARef, _ streamRef: FWAAudioPlugRef, _ channelID: UInt32) -> OSStatus
func FWAGetIndexedFWAudioPlug(inRef: FWARef, _ device: FWADeviceRef, _ index: UInt32, _ dir: UInt32, _ plugRef: UnsafeMutablePointer<FWAAudioPlugRef>) -> OSStatus
func FWAGetIndexedFWAudioMIDIPlug(inRef: FWARef, _ device: FWAMIDIDeviceNubRef, _ index: UInt32, _ dir: UInt32, _ plugRef: UnsafeMutablePointer<FWAMIDIPlugRef>) -> OSStatus
func FWAAttachFWAudioStream(inRef: FWARef, _ streamRef: FWAAudioStreamRef, _ isochChannel: FWAIsochStreamRef) -> OSStatus
func FWAAttachFWAudioMIDIStream(inRef: FWARef, _ streamRef: FWAMIDIStreamRef, _ isochChannel: FWAIsochStreamRef) -> OSStatus
func FWASetFWAudioPlugProperty(inRef: FWARef, _ plugRef: FWAAudioPlugRef, _ keyname: UnsafePointer<Int8>, _ keyvalue: UnsafePointer<Int8>) -> OSStatus
func FWASetFWAudioMIDIPlugProperty(inRef: FWARef, _ plugRef: FWAMIDIPlugRef, _ keyname: UnsafePointer<Int8>, _ keyvalue: UnsafePointer<Int8>) -> OSStatus
func FWAOpenLocalWithInterface(guid: UInt64, _ options: UInt32, _ outRef: UnsafeMutablePointer<FWARef>) -> OSStatus
func FWAOpenWithService(_: io_service_t, _ options: UInt32, _ outRef: UnsafeMutablePointer<FWARef>) -> OSStatus
func FWAGetSessionRef(inRef: FWARef, _ sessionRef: UnsafeMutablePointer<IOFireWireSessionRef>) -> OSStatus
func FWAReserveIsochSequences(inRef: FWARef, _ isochStream: FWAIsochStreamRef, _ type: FWAudioType, _ count: UInt32) -> OSStatus
func FWACreateFWAudioMIDIDeviceNub(inRef: FWARef, _ owningDevice: FWADeviceRef, _ deviceName: UnsafePointer<Int8>, _ vendorID: UInt32, _ guid: UnsafePointer<Int8>, _ iconFilePath: UnsafePointer<Int8>, _ modelID: UInt32, _ editorPath: UnsafePointer<Int8>, _ device: UnsafeMutablePointer<FWAMIDIDeviceNubRef>) -> OSStatus
func FWADisposeFWAudioMIDIDeviceNub(inRef: FWARef, _ device: FWAMIDIDeviceNubRef) -> OSStatus
func FWAMIDIDeviceNubAttachMIDIPlug(inRef: FWARef, _ midiDeviceNub: FWAMIDIDeviceNubRef, _ midiPlug: FWAMIDIPlugRef) -> OSStatus
func FWAMIDIDeviceNubDetachMIDIPlug(inRef: FWARef, _ midiPlug: FWAMIDIPlugRef) -> OSStatus
