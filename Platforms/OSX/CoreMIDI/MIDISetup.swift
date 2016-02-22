
typealias MIDISetupRef = MIDIObjectRef
@available(OSX 10.0, *)
func MIDIDeviceAddEntity(_ device: MIDIDeviceRef, _ name: CFString, _ embedded: Bool, _ numSourceEndpoints: Int, _ numDestinationEndpoints: Int, _ newEntity: UnsafeMutablePointer<MIDIEntityRef>) -> OSStatus
@available(OSX 10.1, *)
func MIDIDeviceRemoveEntity(_ device: MIDIDeviceRef, _ entity: MIDIEntityRef) -> OSStatus
@available(OSX 10.2, *)
func MIDIEntityAddOrRemoveEndpoints(_ entity: MIDIEntityRef, _ numSourceEndpoints: Int, _ numDestinationEndpoints: Int) -> OSStatus
@available(OSX 10.1, *)
func MIDISetupAddDevice(_ device: MIDIDeviceRef) -> OSStatus
@available(OSX 10.1, *)
func MIDISetupRemoveDevice(_ device: MIDIDeviceRef) -> OSStatus
@available(OSX 10.1, *)
func MIDISetupAddExternalDevice(_ device: MIDIDeviceRef) -> OSStatus
@available(OSX 10.1, *)
func MIDISetupRemoveExternalDevice(_ device: MIDIDeviceRef) -> OSStatus
@available(OSX 10.1, *)
func MIDIExternalDeviceCreate(_ name: CFString, _ manufacturer: CFString, _ model: CFString, _ outDevice: UnsafeMutablePointer<MIDIDeviceRef>) -> OSStatus
