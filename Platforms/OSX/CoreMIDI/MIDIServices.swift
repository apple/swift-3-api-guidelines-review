
var kMIDIInvalidClient: OSStatus { get }
var kMIDIInvalidPort: OSStatus { get }
var kMIDIWrongEndpointType: OSStatus { get }
var kMIDINoConnection: OSStatus { get }
var kMIDIUnknownEndpoint: OSStatus { get }
var kMIDIUnknownProperty: OSStatus { get }
var kMIDIWrongPropertyType: OSStatus { get }
var kMIDINoCurrentSetup: OSStatus { get }
var kMIDIMessageSendErr: OSStatus { get }
var kMIDIServerStartErr: OSStatus { get }
var kMIDISetupFormatErr: OSStatus { get }
var kMIDIWrongThread: OSStatus { get }
var kMIDIObjectNotFound: OSStatus { get }
var kMIDIIDNotUnique: OSStatus { get }
var kMIDINotPermitted: OSStatus { get }
typealias MIDIObjectRef = UInt32
typealias MIDIClientRef = MIDIObjectRef
typealias MIDIPortRef = MIDIObjectRef
typealias MIDIDeviceRef = MIDIObjectRef
typealias MIDIEntityRef = MIDIObjectRef
typealias MIDIEndpointRef = MIDIObjectRef
typealias MIDITimeStamp = UInt64
enum MIDIObjectType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Other
  case Device
  case Entity
  case Source
  case Destination
  case ExternalDevice
  case ExternalEntity
  case ExternalSource
  case ExternalDestination
}
let kMIDIObjectType_ExternalMask: MIDIObjectType
typealias MIDIUniqueID = Int32
var kMIDIInvalidUniqueID: MIDIUniqueID { get }
typealias MIDINotifyProc = @convention(c) (UnsafePointer<MIDINotification>, UnsafeMutablePointer<Void>) -> Void
typealias MIDINotifyBlock = (UnsafePointer<MIDINotification>) -> Void
typealias MIDIReadProc = @convention(c) (UnsafePointer<MIDIPacketList>, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> Void
typealias MIDIReadBlock = (UnsafePointer<MIDIPacketList>, UnsafeMutablePointer<Void>) -> Void
typealias MIDICompletionProc = @convention(c) (UnsafeMutablePointer<MIDISysexSendRequest>) -> Void
struct MIDIPacket {
  var timeStamp: MIDITimeStamp
  var length: UInt16
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(timeStamp: MIDITimeStamp, length: UInt16, data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct MIDIPacketList {
  var numPackets: UInt32
  var packet: (MIDIPacket)
  init()
  init(numPackets: UInt32, packet: (MIDIPacket))
}
struct MIDISysexSendRequest {
  var destination: MIDIEndpointRef
  var data: UnsafePointer<UInt8>
  var bytesToSend: UInt32
  var complete: DarwinBoolean
  var reserved: (UInt8, UInt8, UInt8)
  var completionProc: MIDICompletionProc
  var completionRefCon: UnsafeMutablePointer<Void>
}
enum MIDINotificationMessageID : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case MsgSetupChanged
  case MsgObjectAdded
  case MsgObjectRemoved
  case MsgPropertyChanged
  case MsgThruConnectionsChanged
  case MsgSerialPortOwnerChanged
  case MsgIOError
}
struct MIDINotification {
  var messageID: MIDINotificationMessageID
  var messageSize: UInt32
  init()
  init(messageID: MIDINotificationMessageID, messageSize: UInt32)
}
struct MIDIObjectAddRemoveNotification {
  var messageID: MIDINotificationMessageID
  var messageSize: UInt32
  var parent: MIDIObjectRef
  var parentType: MIDIObjectType
  var child: MIDIObjectRef
  var childType: MIDIObjectType
  init()
  init(messageID: MIDINotificationMessageID, messageSize: UInt32, parent: MIDIObjectRef, parentType: MIDIObjectType, child: MIDIObjectRef, childType: MIDIObjectType)
}
struct MIDIObjectPropertyChangeNotification {
  var messageID: MIDINotificationMessageID
  var messageSize: UInt32
  var object: MIDIObjectRef
  var objectType: MIDIObjectType
  var propertyName: Unmanaged<CFString>
}
struct MIDIIOErrorNotification {
  var messageID: MIDINotificationMessageID
  var messageSize: UInt32
  var driverDevice: MIDIDeviceRef
  var errorCode: OSStatus
  init()
  init(messageID: MIDINotificationMessageID, messageSize: UInt32, driverDevice: MIDIDeviceRef, errorCode: OSStatus)
}
@available(OSX 10.0, *)
let kMIDIPropertyName: CFString
@available(OSX 10.0, *)
let kMIDIPropertyManufacturer: CFString
@available(OSX 10.0, *)
let kMIDIPropertyModel: CFString
@available(OSX 10.0, *)
let kMIDIPropertyUniqueID: CFString
@available(OSX 10.0, *)
let kMIDIPropertyDeviceID: CFString
@available(OSX 10.0, *)
let kMIDIPropertyReceiveChannels: CFString
@available(OSX 10.2, *)
let kMIDIPropertyTransmitChannels: CFString
@available(OSX 10.0, *)
let kMIDIPropertyMaxSysExSpeed: CFString
@available(OSX 10.0, *)
let kMIDIPropertyAdvanceScheduleTimeMuSec: CFString
@available(OSX 10.1, *)
let kMIDIPropertyIsEmbeddedEntity: CFString
@available(OSX 10.2, *)
let kMIDIPropertyIsBroadcast: CFString
@available(OSX 10.2, *)
let kMIDIPropertySingleRealtimeEntity: CFString
@available(OSX 10.1, *)
let kMIDIPropertyConnectionUniqueID: CFString
@available(OSX 10.1, *)
let kMIDIPropertyOffline: CFString
@available(OSX 10.2, *)
let kMIDIPropertyPrivate: CFString
@available(OSX 10.1, *)
let kMIDIPropertyDriverOwner: CFString
@available(OSX 10.2, *)
let kMIDIPropertyNameConfiguration: CFString
@available(OSX 10.2, *)
let kMIDIPropertyImage: CFString
@available(OSX 10.2, *)
let kMIDIPropertyDriverVersion: CFString
@available(OSX 10.2, *)
let kMIDIPropertySupportsGeneralMIDI: CFString
@available(OSX 10.2, *)
let kMIDIPropertySupportsMMC: CFString
@available(OSX 10.0, *)
let kMIDIPropertyCanRoute: CFString
@available(OSX 10.2, *)
let kMIDIPropertyReceivesClock: CFString
@available(OSX 10.2, *)
let kMIDIPropertyReceivesMTC: CFString
@available(OSX 10.2, *)
let kMIDIPropertyReceivesNotes: CFString
@available(OSX 10.2, *)
let kMIDIPropertyReceivesProgramChanges: CFString
@available(OSX 10.2, *)
let kMIDIPropertyReceivesBankSelectMSB: CFString
@available(OSX 10.2, *)
let kMIDIPropertyReceivesBankSelectLSB: CFString
@available(OSX 10.2, *)
let kMIDIPropertyTransmitsClock: CFString
@available(OSX 10.2, *)
let kMIDIPropertyTransmitsMTC: CFString
@available(OSX 10.2, *)
let kMIDIPropertyTransmitsNotes: CFString
@available(OSX 10.2, *)
let kMIDIPropertyTransmitsProgramChanges: CFString
@available(OSX 10.2, *)
let kMIDIPropertyTransmitsBankSelectMSB: CFString
@available(OSX 10.2, *)
let kMIDIPropertyTransmitsBankSelectLSB: CFString
@available(OSX 10.2, *)
let kMIDIPropertyPanDisruptsStereo: CFString
@available(OSX 10.2, *)
let kMIDIPropertyIsSampler: CFString
@available(OSX 10.2, *)
let kMIDIPropertyIsDrumMachine: CFString
@available(OSX 10.2, *)
let kMIDIPropertyIsMixer: CFString
@available(OSX 10.2, *)
let kMIDIPropertyIsEffectUnit: CFString
@available(OSX 10.2, *)
let kMIDIPropertyMaxReceiveChannels: CFString
@available(OSX 10.2, *)
let kMIDIPropertyMaxTransmitChannels: CFString
@available(OSX 10.3, *)
let kMIDIPropertyDriverDeviceEditorApp: CFString
@available(OSX 10.4, *)
let kMIDIPropertySupportsShowControl: CFString
@available(OSX 10.4, *)
let kMIDIPropertyDisplayName: CFString
@available(OSX 10.0, *)
func MIDIClientCreate(name: CFString, _ notifyProc: MIDINotifyProc?, _ notifyRefCon: UnsafeMutablePointer<Void>, _ outClient: UnsafeMutablePointer<MIDIClientRef>) -> OSStatus
@available(OSX 10.11, *)
func MIDIClientCreateWithBlock(name: CFString, _ outClient: UnsafeMutablePointer<MIDIClientRef>, _ notifyBlock: MIDINotifyBlock?) -> OSStatus
@available(OSX 10.0, *)
func MIDIClientDispose(client: MIDIClientRef) -> OSStatus
@available(OSX 10.0, *)
func MIDIInputPortCreate(client: MIDIClientRef, _ portName: CFString, _ readProc: MIDIReadProc, _ refCon: UnsafeMutablePointer<Void>, _ outPort: UnsafeMutablePointer<MIDIPortRef>) -> OSStatus
@available(OSX 10.11, *)
func MIDIInputPortCreateWithBlock(client: MIDIClientRef, _ portName: CFString, _ outPort: UnsafeMutablePointer<MIDIPortRef>, _ readBlock: MIDIReadBlock) -> OSStatus
@available(OSX 10.0, *)
func MIDIOutputPortCreate(client: MIDIClientRef, _ portName: CFString, _ outPort: UnsafeMutablePointer<MIDIPortRef>) -> OSStatus
@available(OSX 10.0, *)
func MIDIPortDispose(port: MIDIPortRef) -> OSStatus
@available(OSX 10.0, *)
func MIDIPortConnectSource(port: MIDIPortRef, _ source: MIDIEndpointRef, _ connRefCon: UnsafeMutablePointer<Void>) -> OSStatus
@available(OSX 10.0, *)
func MIDIPortDisconnectSource(port: MIDIPortRef, _ source: MIDIEndpointRef) -> OSStatus
@available(OSX 10.0, *)
func MIDIGetNumberOfDevices() -> Int
@available(OSX 10.0, *)
func MIDIGetDevice(deviceIndex0: Int) -> MIDIDeviceRef
@available(OSX 10.0, *)
func MIDIDeviceGetNumberOfEntities(device: MIDIDeviceRef) -> Int
@available(OSX 10.0, *)
func MIDIDeviceGetEntity(device: MIDIDeviceRef, _ entityIndex0: Int) -> MIDIEntityRef
@available(OSX 10.0, *)
func MIDIEntityGetNumberOfSources(entity: MIDIEntityRef) -> Int
@available(OSX 10.0, *)
func MIDIEntityGetSource(entity: MIDIEntityRef, _ sourceIndex0: Int) -> MIDIEndpointRef
@available(OSX 10.0, *)
func MIDIEntityGetNumberOfDestinations(entity: MIDIEntityRef) -> Int
@available(OSX 10.0, *)
func MIDIEntityGetDestination(entity: MIDIEntityRef, _ destIndex0: Int) -> MIDIEndpointRef
@available(OSX 10.2, *)
func MIDIEntityGetDevice(inEntity: MIDIEntityRef, _ outDevice: UnsafeMutablePointer<MIDIDeviceRef>) -> OSStatus
@available(OSX 10.0, *)
func MIDIGetNumberOfSources() -> Int
@available(OSX 10.0, *)
func MIDIGetSource(sourceIndex0: Int) -> MIDIEndpointRef
@available(OSX 10.0, *)
func MIDIGetNumberOfDestinations() -> Int
@available(OSX 10.0, *)
func MIDIGetDestination(destIndex0: Int) -> MIDIEndpointRef
@available(OSX 10.2, *)
func MIDIEndpointGetEntity(inEndpoint: MIDIEndpointRef, _ outEntity: UnsafeMutablePointer<MIDIEntityRef>) -> OSStatus
@available(OSX 10.0, *)
func MIDIDestinationCreate(client: MIDIClientRef, _ name: CFString, _ readProc: MIDIReadProc, _ refCon: UnsafeMutablePointer<Void>, _ outDest: UnsafeMutablePointer<MIDIEndpointRef>) -> OSStatus
@available(OSX 10.11, *)
func MIDIDestinationCreateWithBlock(client: MIDIClientRef, _ name: CFString, _ outDest: UnsafeMutablePointer<MIDIEndpointRef>, _ readBlock: MIDIReadBlock) -> OSStatus
@available(OSX 10.0, *)
func MIDISourceCreate(client: MIDIClientRef, _ name: CFString, _ outSrc: UnsafeMutablePointer<MIDIEndpointRef>) -> OSStatus
@available(OSX 10.0, *)
func MIDIEndpointDispose(endpt: MIDIEndpointRef) -> OSStatus
@available(OSX 10.1, *)
func MIDIGetNumberOfExternalDevices() -> Int
@available(OSX 10.1, *)
func MIDIGetExternalDevice(deviceIndex0: Int) -> MIDIDeviceRef
@available(OSX 10.0, *)
func MIDIObjectGetIntegerProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ outValue: UnsafeMutablePointer<Int32>) -> OSStatus
@available(OSX 10.0, *)
func MIDIObjectSetIntegerProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ value: Int32) -> OSStatus
@available(OSX 10.0, *)
func MIDIObjectGetStringProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ str: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
@available(OSX 10.0, *)
func MIDIObjectSetStringProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ str: CFString) -> OSStatus
@available(OSX 10.0, *)
func MIDIObjectGetDataProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ outData: UnsafeMutablePointer<Unmanaged<CFData>?>) -> OSStatus
@available(OSX 10.0, *)
func MIDIObjectSetDataProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ data: CFData) -> OSStatus
@available(OSX 10.2, *)
func MIDIObjectGetDictionaryProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ outDict: UnsafeMutablePointer<Unmanaged<CFDictionary>?>) -> OSStatus
@available(OSX 10.2, *)
func MIDIObjectSetDictionaryProperty(obj: MIDIObjectRef, _ propertyID: CFString, _ dict: CFDictionary) -> OSStatus
@available(OSX 10.1, *)
func MIDIObjectGetProperties(obj: MIDIObjectRef, _ outProperties: UnsafeMutablePointer<Unmanaged<CFPropertyList>?>, _ deep: Bool) -> OSStatus
@available(OSX 10.2, *)
func MIDIObjectRemoveProperty(obj: MIDIObjectRef, _ propertyID: CFString) -> OSStatus
@available(OSX 10.2, *)
func MIDIObjectFindByUniqueID(inUniqueID: MIDIUniqueID, _ outObject: UnsafeMutablePointer<MIDIObjectRef>, _ outObjectType: UnsafeMutablePointer<MIDIObjectType>) -> OSStatus
@available(OSX 10.0, *)
func MIDISend(port: MIDIPortRef, _ dest: MIDIEndpointRef, _ pktlist: UnsafePointer<MIDIPacketList>) -> OSStatus
@available(OSX 10.0, *)
func MIDISendSysex(request: UnsafeMutablePointer<MIDISysexSendRequest>) -> OSStatus
@available(OSX 10.0, *)
func MIDIReceived(src: MIDIEndpointRef, _ pktlist: UnsafePointer<MIDIPacketList>) -> OSStatus
@available(OSX 10.1, *)
func MIDIFlushOutput(dest: MIDIEndpointRef) -> OSStatus
@available(OSX 10.1, *)
func MIDIRestart() -> OSStatus
func MIDIPacketNext(pkt: UnsafePointer<MIDIPacket>) -> UnsafeMutablePointer<MIDIPacket>
@available(OSX 10.0, *)
func MIDIPacketListInit(pktlist: UnsafeMutablePointer<MIDIPacketList>) -> UnsafeMutablePointer<MIDIPacket>
@available(OSX 10.0, *)
func MIDIPacketListAdd(pktlist: UnsafeMutablePointer<MIDIPacketList>, _ listSize: Int, _ curPacket: UnsafeMutablePointer<MIDIPacket>, _ time: MIDITimeStamp, _ nData: Int, _ data: UnsafePointer<UInt8>) -> UnsafeMutablePointer<MIDIPacket>
