
class CFNetService {
}
@available(*, deprecated, renamed="CFNetService")
typealias CFNetServiceRef = CFNetService
@available(*, deprecated, renamed="CFNetServiceMonitor")
typealias CFNetServiceMonitorRef = CFNetServiceMonitor
class CFNetServiceMonitor {
}
class CFNetServiceBrowser {
}
@available(*, deprecated, renamed="CFNetServiceBrowser")
typealias CFNetServiceBrowserRef = CFNetServiceBrowser
@available(OSX 10.2, *)
let kCFStreamErrorDomainMach: Int32
@available(OSX 10.2, *)
let kCFStreamErrorDomainNetServices: Int32
enum CFNetServicesError : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Unknown
  case Collision
  case NotFound
  case InProgress
  case BadArgument
  case Cancel
  case Invalid
  case Timeout
}
enum CFNetServiceMonitorType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case TXT
}
struct CFNetServiceRegisterFlags : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var NoAutoRename: CFNetServiceRegisterFlags { get }
}
struct CFNetServiceBrowserFlags : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var MoreComing: CFNetServiceBrowserFlags { get }
  static var IsDomain: CFNetServiceBrowserFlags { get }
  static var IsDefault: CFNetServiceBrowserFlags { get }
  static var Remove: CFNetServiceBrowserFlags { get }
}
struct CFNetServiceClientContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: CFAllocatorRetainCallBack?
  var release: CFAllocatorReleaseCallBack?
  var copyDescription: CFAllocatorCopyDescriptionCallBack?
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: CFAllocatorRetainCallBack?, release: CFAllocatorReleaseCallBack?, copyDescription: CFAllocatorCopyDescriptionCallBack?)
}
typealias CFNetServiceClientCallBack = @convention(c) (CFNetService, UnsafeMutablePointer<CFStreamError>, UnsafeMutablePointer<Void>) -> Void
typealias CFNetServiceMonitorClientCallBack = @convention(c) (CFNetServiceMonitor, CFNetService, CFNetServiceMonitorType, CFData, UnsafeMutablePointer<CFStreamError>, UnsafeMutablePointer<Void>) -> Void
typealias CFNetServiceBrowserClientCallBack = @convention(c) (CFNetServiceBrowser, CFOptionFlags, CFTypeRef, UnsafeMutablePointer<CFStreamError>, UnsafeMutablePointer<Void>) -> Void
@available(OSX 10.2, *)
func CFNetServiceGetTypeID() -> CFTypeID
@available(OSX 10.4, *)
func CFNetServiceMonitorGetTypeID() -> CFTypeID
@available(OSX 10.2, *)
func CFNetServiceBrowserGetTypeID() -> CFTypeID
@available(OSX 10.2, *)
func CFNetServiceCreate(alloc: CFAllocator?, _ domain: CFString, _ serviceType: CFString, _ name: CFString, _ port: Int32) -> Unmanaged<CFNetService>
@available(OSX 10.3, *)
func CFNetServiceCreateCopy(alloc: CFAllocator?, _ service: CFNetService) -> Unmanaged<CFNetService>
@available(OSX 10.2, *)
func CFNetServiceGetDomain(theService: CFNetService) -> Unmanaged<CFString>
@available(OSX 10.2, *)
func CFNetServiceGetType(theService: CFNetService) -> Unmanaged<CFString>
@available(OSX 10.2, *)
func CFNetServiceGetName(theService: CFNetService) -> Unmanaged<CFString>
@available(OSX 10.4, *)
func CFNetServiceRegisterWithOptions(theService: CFNetService, _ options: CFOptionFlags, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(OSX 10.4, *)
func CFNetServiceResolveWithTimeout(theService: CFNetService, _ timeout: CFTimeInterval, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(OSX 10.2, *)
func CFNetServiceCancel(theService: CFNetService)
@available(OSX 10.4, *)
func CFNetServiceGetTargetHost(theService: CFNetService) -> Unmanaged<CFString>?
@available(OSX 10.5, *)
func CFNetServiceGetPortNumber(theService: CFNetService) -> Int32
@available(OSX 10.2, *)
func CFNetServiceGetAddressing(theService: CFNetService) -> Unmanaged<CFArray>?
@available(OSX 10.4, *)
func CFNetServiceGetTXTData(theService: CFNetService) -> Unmanaged<CFData>?
@available(OSX 10.4, *)
func CFNetServiceSetTXTData(theService: CFNetService, _ txtRecord: CFData) -> Bool
@available(OSX 10.4, *)
func CFNetServiceCreateDictionaryWithTXTData(alloc: CFAllocator?, _ txtRecord: CFData) -> Unmanaged<CFDictionary>?
@available(OSX 10.4, *)
func CFNetServiceCreateTXTDataWithDictionary(alloc: CFAllocator?, _ keyValuePairs: CFDictionary) -> Unmanaged<CFData>?
@available(OSX 10.2, *)
func CFNetServiceSetClient(theService: CFNetService, _ clientCB: CFNetServiceClientCallBack?, _ clientContext: UnsafeMutablePointer<CFNetServiceClientContext>) -> Bool
@available(OSX 10.2, *)
func CFNetServiceScheduleWithRunLoop(theService: CFNetService, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(OSX 10.2, *)
func CFNetServiceUnscheduleFromRunLoop(theService: CFNetService, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(OSX 10.4, *)
func CFNetServiceMonitorCreate(alloc: CFAllocator?, _ theService: CFNetService, _ clientCB: CFNetServiceMonitorClientCallBack, _ clientContext: UnsafeMutablePointer<CFNetServiceClientContext>) -> Unmanaged<CFNetServiceMonitor>
@available(OSX 10.4, *)
func CFNetServiceMonitorInvalidate(monitor: CFNetServiceMonitor)
@available(OSX 10.4, *)
func CFNetServiceMonitorStart(monitor: CFNetServiceMonitor, _ recordType: CFNetServiceMonitorType, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(OSX 10.4, *)
func CFNetServiceMonitorStop(monitor: CFNetServiceMonitor, _ error: UnsafeMutablePointer<CFStreamError>)
@available(OSX 10.4, *)
func CFNetServiceMonitorScheduleWithRunLoop(monitor: CFNetServiceMonitor, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(OSX 10.4, *)
func CFNetServiceMonitorUnscheduleFromRunLoop(monitor: CFNetServiceMonitor, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(OSX 10.2, *)
func CFNetServiceBrowserCreate(alloc: CFAllocator?, _ clientCB: CFNetServiceBrowserClientCallBack, _ clientContext: UnsafeMutablePointer<CFNetServiceClientContext>) -> Unmanaged<CFNetServiceBrowser>
@available(OSX 10.2, *)
func CFNetServiceBrowserInvalidate(browser: CFNetServiceBrowser)
@available(OSX 10.2, *)
func CFNetServiceBrowserSearchForDomains(browser: CFNetServiceBrowser, _ registrationDomains: Bool, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(OSX 10.2, *)
func CFNetServiceBrowserSearchForServices(browser: CFNetServiceBrowser, _ domain: CFString, _ serviceType: CFString, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(OSX 10.2, *)
func CFNetServiceBrowserStopSearch(browser: CFNetServiceBrowser, _ error: UnsafeMutablePointer<CFStreamError>)
@available(OSX 10.2, *)
func CFNetServiceBrowserScheduleWithRunLoop(browser: CFNetServiceBrowser, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(OSX 10.2, *)
func CFNetServiceBrowserUnscheduleFromRunLoop(browser: CFNetServiceBrowser, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
