
func SecRequirementGetTypeID() -> CFTypeID
func SecRequirementCreateWithData(_ data: CFData, _ flags: SecCSFlags, _ requirement: UnsafeMutablePointer<SecRequirement?>) -> OSStatus
func SecRequirementCreateWithString(_ text: CFString, _ flags: SecCSFlags, _ requirement: UnsafeMutablePointer<SecRequirement?>) -> OSStatus
func SecRequirementCreateWithStringAndErrors(_ text: CFString, _ flags: SecCSFlags, _ errors: UnsafeMutablePointer<Unmanaged<CFError>?>, _ requirement: UnsafeMutablePointer<SecRequirement?>) -> OSStatus
func SecRequirementCopyData(_ requirement: SecRequirement, _ flags: SecCSFlags, _ data: UnsafeMutablePointer<CFData?>) -> OSStatus
func SecRequirementCopyString(_ requirement: SecRequirement, _ flags: SecCSFlags, _ text: UnsafeMutablePointer<CFString?>) -> OSStatus
