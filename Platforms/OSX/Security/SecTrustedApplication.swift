
func SecTrustedApplicationGetTypeID() -> CFTypeID
func SecTrustedApplicationCreateFromPath(_ path: UnsafePointer<Int8>, _ app: UnsafeMutablePointer<SecTrustedApplication?>) -> OSStatus
func SecTrustedApplicationCopyData(_ appRef: SecTrustedApplication, _ data: UnsafeMutablePointer<CFData?>) -> OSStatus
func SecTrustedApplicationSetData(_ appRef: SecTrustedApplication, _ data: CFData) -> OSStatus
