
@available(OSX 10.1, *)
func SCDynamicStoreCopyComputerName(_ store: SCDynamicStore?, _ nameEncoding: UnsafeMutablePointer<CFStringEncoding>) -> CFString?
@available(OSX 10.1, *)
func SCDynamicStoreCopyConsoleUser(_ store: SCDynamicStore?, _ uid: UnsafeMutablePointer<uid_t>, _ gid: UnsafeMutablePointer<gid_t>) -> CFString?
@available(OSX 10.1, *)
func SCDynamicStoreCopyLocalHostName(_ store: SCDynamicStore?) -> CFString?
@available(OSX 10.1, *)
func SCDynamicStoreCopyLocation(_ store: SCDynamicStore?) -> CFString?
@available(OSX 10.1, *)
func SCDynamicStoreCopyProxies(_ store: SCDynamicStore?) -> CFDictionary?
