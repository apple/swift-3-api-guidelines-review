
typealias MIDISetupRef = MIDIObjectRef
@available(OSX 10.0, *)
func MIDIDeviceAddEntity(device: MIDIDeviceRef, _ name: CFString, _ embedded: Bool, _ numSourceEndpoints: Int, _ numDestinationEndpoints: Int, _ newEntity: UnsafeMutablePointer<MIDIEntityRef>) -> OSStatus
@available(OSX 10.1, *)
func MIDIDeviceRemoveEntity(device: MIDIDeviceRef, _ entity: MIDIEntityRef) -> OSStatus
@available(OSX 10.2, *)
func MIDIEntityAddOrRemoveEndpoints(entity: MIDIEntityRef, _ numSourceEndpoints: Int, _ numDestinationEndpoints: Int) -> OSStatus
@available(OSX 10.1, *)
func MIDISetupAddDevice(device: MIDIDeviceRef) -> OSStatus
@available(OSX 10.1, *)
func MIDISetupRemoveDevice(device: MIDIDeviceRef) -> OSStatus
@available(OSX 10.1, *)
func MIDISetupAddExternalDevice(device: MIDIDeviceRef) -> OSStatus
@available(OSX 10.1, *)
func MIDISetupRemoveExternalDevice(device: MIDIDeviceRef) -> OSStatus
@available(OSX 10.1, *)
func MIDIExternalDeviceCreate(name: CFString, _ manufacturer: CFString, _ model: CFString, _ outDevice: UnsafeMutablePointer<MIDIDeviceRef>) -> OSStatus
