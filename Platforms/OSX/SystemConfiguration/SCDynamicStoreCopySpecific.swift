
@available(OSX 10.1, *)
func SCDynamicStoreCopyComputerName(store: SCDynamicStore?, _ nameEncoding: UnsafeMutablePointer<CFStringEncoding>) -> CFString?
@available(OSX 10.1, *)
func SCDynamicStoreCopyConsoleUser(store: SCDynamicStore?, _ uid: UnsafeMutablePointer<uid_t>, _ gid: UnsafeMutablePointer<gid_t>) -> CFString?
@available(OSX 10.1, *)
func SCDynamicStoreCopyLocalHostName(store: SCDynamicStore?) -> CFString?
@available(OSX 10.1, *)
func SCDynamicStoreCopyLocation(store: SCDynamicStore?) -> CFString?
@available(OSX 10.1, *)
func SCDynamicStoreCopyProxies(store: SCDynamicStore?) -> CFDictionary?
