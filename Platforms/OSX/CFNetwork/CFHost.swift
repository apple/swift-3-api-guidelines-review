
class CFHost {
}
@available(*, deprecated, renamed="CFHost")
typealias CFHostRef = CFHost
@available(OSX 10.3, *)
let kCFStreamErrorDomainNetDB: Int32
@available(OSX 10.3, *)
let kCFStreamErrorDomainSystemConfiguration: Int32
enum CFHostInfoType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Addresses
  case Names
  case Reachability
}
struct CFHostClientContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: CFAllocatorRetainCallBack?
  var release: CFAllocatorReleaseCallBack?
  var copyDescription: CFAllocatorCopyDescriptionCallBack
}
typealias CFHostClientCallBack = @convention(c) (CFHost, CFHostInfoType, UnsafePointer<CFStreamError>, UnsafeMutablePointer<Void>) -> Void
@available(OSX 10.3, *)
func CFHostGetTypeID() -> CFTypeID
@available(OSX 10.3, *)
func CFHostCreateWithName(allocator: CFAllocator?, _ hostname: CFString) -> Unmanaged<CFHost>
@available(OSX 10.3, *)
func CFHostCreateWithAddress(allocator: CFAllocator?, _ addr: CFData) -> Unmanaged<CFHost>
@available(OSX 10.3, *)
func CFHostCreateCopy(alloc: CFAllocator?, _ host: CFHost) -> Unmanaged<CFHost>
@available(OSX 10.3, *)
func CFHostStartInfoResolution(theHost: CFHost, _ info: CFHostInfoType, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(OSX 10.3, *)
func CFHostGetAddressing(theHost: CFHost, _ hasBeenResolved: UnsafeMutablePointer<DarwinBoolean>) -> Unmanaged<CFArray>?
@available(OSX 10.3, *)
func CFHostGetNames(theHost: CFHost, _ hasBeenResolved: UnsafeMutablePointer<DarwinBoolean>) -> Unmanaged<CFArray>?
@available(OSX 10.3, *)
func CFHostGetReachability(theHost: CFHost, _ hasBeenResolved: UnsafeMutablePointer<DarwinBoolean>) -> Unmanaged<CFData>?
@available(OSX 10.3, *)
func CFHostCancelInfoResolution(theHost: CFHost, _ info: CFHostInfoType)
@available(OSX 10.3, *)
func CFHostSetClient(theHost: CFHost, _ clientCB: CFHostClientCallBack?, _ clientContext: UnsafeMutablePointer<CFHostClientContext>) -> Bool
@available(OSX 10.3, *)
func CFHostScheduleWithRunLoop(theHost: CFHost, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(OSX 10.3, *)
func CFHostUnscheduleFromRunLoop(theHost: CFHost, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
