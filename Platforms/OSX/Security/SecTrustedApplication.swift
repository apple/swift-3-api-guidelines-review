
func SecTrustedApplicationGetTypeID() -> CFTypeID
func SecTrustedApplicationCreateFromPath(path: UnsafePointer<Int8>, _ app: UnsafeMutablePointer<SecTrustedApplication?>) -> OSStatus
func SecTrustedApplicationCopyData(appRef: SecTrustedApplication, _ data: UnsafeMutablePointer<CFData?>) -> OSStatus
func SecTrustedApplicationSetData(appRef: SecTrustedApplication, _ data: CFData) -> OSStatus
