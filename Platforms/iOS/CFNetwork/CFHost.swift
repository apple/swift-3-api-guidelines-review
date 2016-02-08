
class CFHost {
}
@available(iOS 2.0, *)
let kCFStreamErrorDomainNetDB: Int32
@available(iOS 2.0, *)
let kCFStreamErrorDomainSystemConfiguration: Int32
enum CFHostInfoType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case addresses
  case names
  case reachability
}
struct CFHostClientContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: CFAllocatorRetainCallBack?
  var release: CFAllocatorReleaseCallBack?
  var copyDescription: CFAllocatorCopyDescriptionCallBack
}
typealias CFHostClientCallBack = @convention(c) (CFHost, CFHostInfoType, UnsafePointer<CFStreamError>, UnsafeMutablePointer<Void>) -> Void
@available(iOS 2.0, *)
func CFHostGetTypeID() -> CFTypeID
@available(iOS 2.0, *)
func CFHostCreateWithName(allocator: CFAllocator?, _ hostname: CFString) -> Unmanaged<CFHost>
@available(iOS 2.0, *)
func CFHostCreateWithAddress(allocator: CFAllocator?, _ addr: CFData) -> Unmanaged<CFHost>
@available(iOS 2.0, *)
func CFHostCreateCopy(alloc: CFAllocator?, _ host: CFHost) -> Unmanaged<CFHost>
@available(iOS 2.0, *)
func CFHostStartInfoResolution(theHost: CFHost, _ info: CFHostInfoType, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(iOS 2.0, *)
func CFHostGetAddressing(theHost: CFHost, _ hasBeenResolved: UnsafeMutablePointer<DarwinBoolean>) -> Unmanaged<CFArray>?
@available(iOS 2.0, *)
func CFHostGetNames(theHost: CFHost, _ hasBeenResolved: UnsafeMutablePointer<DarwinBoolean>) -> Unmanaged<CFArray>?
@available(iOS 2.0, *)
func CFHostGetReachability(theHost: CFHost, _ hasBeenResolved: UnsafeMutablePointer<DarwinBoolean>) -> Unmanaged<CFData>?
@available(iOS 2.0, *)
func CFHostCancelInfoResolution(theHost: CFHost, _ info: CFHostInfoType)
@available(iOS 2.0, *)
func CFHostSetClient(theHost: CFHost, _ clientCB: CFHostClientCallBack?, _ clientContext: UnsafeMutablePointer<CFHostClientContext>) -> Bool
@available(iOS 2.0, *)
func CFHostScheduleWithRunLoop(theHost: CFHost, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(iOS 2.0, *)
func CFHostUnscheduleFromRunLoop(theHost: CFHost, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
