
typealias MIDISetupRef = MIDIObjectRef
@available(iOS 4.2, *)
func MIDIDeviceAddEntity(device: MIDIDeviceRef, _ name: CFString, _ embedded: Bool, _ numSourceEndpoints: Int, _ numDestinationEndpoints: Int, _ newEntity: UnsafeMutablePointer<MIDIEntityRef>) -> OSStatus
@available(iOS 4.2, *)
func MIDIDeviceRemoveEntity(device: MIDIDeviceRef, _ entity: MIDIEntityRef) -> OSStatus
@available(iOS 4.2, *)
func MIDIEntityAddOrRemoveEndpoints(entity: MIDIEntityRef, _ numSourceEndpoints: Int, _ numDestinationEndpoints: Int) -> OSStatus
@available(iOS 4.2, *)
func MIDISetupAddDevice(device: MIDIDeviceRef) -> OSStatus
@available(iOS 4.2, *)
func MIDISetupRemoveDevice(device: MIDIDeviceRef) -> OSStatus
@available(iOS 4.2, *)
func MIDISetupAddExternalDevice(device: MIDIDeviceRef) -> OSStatus
@available(iOS 4.2, *)
func MIDISetupRemoveExternalDevice(device: MIDIDeviceRef) -> OSStatus
@available(iOS 4.2, *)
func MIDIExternalDeviceCreate(name: CFString, _ manufacturer: CFString, _ model: CFString, _ outDevice: UnsafeMutablePointer<MIDIDeviceRef>) -> OSStatus
