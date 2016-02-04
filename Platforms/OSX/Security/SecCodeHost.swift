
var kSecCSDedicatedHost: UInt32 { get }
var kSecCSGenerateGuestHash: UInt32 { get }
func SecHostCreateGuest(host: SecGuestRef, _ status: UInt32, _ path: CFURL, _ attributes: CFDictionary?, _ flags: SecCSFlags, _ newGuest: UnsafeMutablePointer<SecGuestRef>) -> OSStatus
func SecHostRemoveGuest(host: SecGuestRef, _ guest: SecGuestRef, _ flags: SecCSFlags) -> OSStatus
func SecHostSelectGuest(guestRef: SecGuestRef, _ flags: SecCSFlags) -> OSStatus
func SecHostSelectedGuest(flags: SecCSFlags, _ guestRef: UnsafeMutablePointer<SecGuestRef>) -> OSStatus
func SecHostSetGuestStatus(guestRef: SecGuestRef, _ status: UInt32, _ attributes: CFDictionary?, _ flags: SecCSFlags) -> OSStatus
func SecHostSetHostingPort(hostingPort: mach_port_t, _ flags: SecCSFlags) -> OSStatus
