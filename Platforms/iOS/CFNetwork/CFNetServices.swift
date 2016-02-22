
class CFNetService {
}
class CFNetServiceMonitor {
}
class CFNetServiceBrowser {
}
@available(iOS 2.0, *)
let kCFStreamErrorDomainMach: Int32
@available(iOS 2.0, *)
let kCFStreamErrorDomainNetServices: Int32
enum CFNetServicesError : Int32 {
  init?(rawValue rawValue: Int32)
  var rawValue: Int32 { get }
  case unknown
  case collision
  case notFound
  case inProgress
  case badArgument
  case cancel
  case invalid
  case timeout
}
enum CFNetServiceMonitorType : Int32 {
  init?(rawValue rawValue: Int32)
  var rawValue: Int32 { get }
  case TXT
}
struct CFNetServiceRegisterFlags : OptionSetType {
  init(rawValue rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var noAutoRename: CFNetServiceRegisterFlags { get }
}
struct CFNetServiceBrowserFlags : OptionSetType {
  init(rawValue rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var moreComing: CFNetServiceBrowserFlags { get }
  static var isDomain: CFNetServiceBrowserFlags { get }
  static var isDefault: CFNetServiceBrowserFlags { get }
  static var remove: CFNetServiceBrowserFlags { get }
}
struct CFNetServiceClientContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: CFAllocatorRetainCallBack?
  var release: CFAllocatorReleaseCallBack?
  var copyDescription: CFAllocatorCopyDescriptionCallBack?
  init()
  init(version version: CFIndex, info info: UnsafeMutablePointer<Void>, retain retain: CFAllocatorRetainCallBack?, release release: CFAllocatorReleaseCallBack?, copyDescription copyDescription: CFAllocatorCopyDescriptionCallBack?)
}
typealias CFNetServiceClientCallBack = @convention(c) (CFNetService, UnsafeMutablePointer<CFStreamError>, UnsafeMutablePointer<Void>) -> Void
typealias CFNetServiceMonitorClientCallBack = @convention(c) (CFNetServiceMonitor, CFNetService, CFNetServiceMonitorType, CFData, UnsafeMutablePointer<CFStreamError>, UnsafeMutablePointer<Void>) -> Void
typealias CFNetServiceBrowserClientCallBack = @convention(c) (CFNetServiceBrowser, CFOptionFlags, CFTypeRef, UnsafeMutablePointer<CFStreamError>, UnsafeMutablePointer<Void>) -> Void
@available(iOS 2.0, *)
func CFNetServiceGetTypeID() -> CFTypeID
@available(iOS 2.0, *)
func CFNetServiceMonitorGetTypeID() -> CFTypeID
@available(iOS 2.0, *)
func CFNetServiceBrowserGetTypeID() -> CFTypeID
@available(iOS 2.0, *)
func CFNetServiceCreate(_ alloc: CFAllocator?, _ domain: CFString, _ serviceType: CFString, _ name: CFString, _ port: Int32) -> Unmanaged<CFNetService>
@available(iOS 2.0, *)
func CFNetServiceCreateCopy(_ alloc: CFAllocator?, _ service: CFNetService) -> Unmanaged<CFNetService>
@available(iOS 2.0, *)
func CFNetServiceGetDomain(_ theService: CFNetService) -> Unmanaged<CFString>
@available(iOS 2.0, *)
func CFNetServiceGetType(_ theService: CFNetService) -> Unmanaged<CFString>
@available(iOS 2.0, *)
func CFNetServiceGetName(_ theService: CFNetService) -> Unmanaged<CFString>
@available(iOS 2.0, *)
func CFNetServiceRegisterWithOptions(_ theService: CFNetService, _ options: CFOptionFlags, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(iOS 2.0, *)
func CFNetServiceResolveWithTimeout(_ theService: CFNetService, _ timeout: CFTimeInterval, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(iOS 2.0, *)
func CFNetServiceCancel(_ theService: CFNetService)
@available(iOS 2.0, *)
func CFNetServiceGetTargetHost(_ theService: CFNetService) -> Unmanaged<CFString>?
@available(iOS 2.0, *)
func CFNetServiceGetPortNumber(_ theService: CFNetService) -> Int32
@available(iOS 2.0, *)
func CFNetServiceGetAddressing(_ theService: CFNetService) -> Unmanaged<CFArray>?
@available(iOS 2.0, *)
func CFNetServiceGetTXTData(_ theService: CFNetService) -> Unmanaged<CFData>?
@available(iOS 2.0, *)
func CFNetServiceSetTXTData(_ theService: CFNetService, _ txtRecord: CFData) -> Bool
@available(iOS 2.0, *)
func CFNetServiceCreateDictionaryWithTXTData(_ alloc: CFAllocator?, _ txtRecord: CFData) -> Unmanaged<CFDictionary>?
@available(iOS 2.0, *)
func CFNetServiceCreateTXTDataWithDictionary(_ alloc: CFAllocator?, _ keyValuePairs: CFDictionary) -> Unmanaged<CFData>?
@available(iOS 2.0, *)
func CFNetServiceSetClient(_ theService: CFNetService, _ clientCB: CFNetServiceClientCallBack?, _ clientContext: UnsafeMutablePointer<CFNetServiceClientContext>) -> Bool
@available(iOS 2.0, *)
func CFNetServiceScheduleWithRunLoop(_ theService: CFNetService, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(iOS 2.0, *)
func CFNetServiceUnscheduleFromRunLoop(_ theService: CFNetService, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(iOS 2.0, *)
func CFNetServiceMonitorCreate(_ alloc: CFAllocator?, _ theService: CFNetService, _ clientCB: CFNetServiceMonitorClientCallBack, _ clientContext: UnsafeMutablePointer<CFNetServiceClientContext>) -> Unmanaged<CFNetServiceMonitor>
@available(iOS 2.0, *)
func CFNetServiceMonitorInvalidate(_ monitor: CFNetServiceMonitor)
@available(iOS 2.0, *)
func CFNetServiceMonitorStart(_ monitor: CFNetServiceMonitor, _ recordType: CFNetServiceMonitorType, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(iOS 2.0, *)
func CFNetServiceMonitorStop(_ monitor: CFNetServiceMonitor, _ error: UnsafeMutablePointer<CFStreamError>)
@available(iOS 2.0, *)
func CFNetServiceMonitorScheduleWithRunLoop(_ monitor: CFNetServiceMonitor, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(iOS 2.0, *)
func CFNetServiceMonitorUnscheduleFromRunLoop(_ monitor: CFNetServiceMonitor, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(iOS 2.0, *)
func CFNetServiceBrowserCreate(_ alloc: CFAllocator?, _ clientCB: CFNetServiceBrowserClientCallBack, _ clientContext: UnsafeMutablePointer<CFNetServiceClientContext>) -> Unmanaged<CFNetServiceBrowser>
@available(iOS 2.0, *)
func CFNetServiceBrowserInvalidate(_ browser: CFNetServiceBrowser)
@available(iOS 2.0, *)
func CFNetServiceBrowserSearchForDomains(_ browser: CFNetServiceBrowser, _ registrationDomains: Bool, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(iOS 2.0, *)
func CFNetServiceBrowserSearchForServices(_ browser: CFNetServiceBrowser, _ domain: CFString, _ serviceType: CFString, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(iOS 2.0, *)
func CFNetServiceBrowserStopSearch(_ browser: CFNetServiceBrowser, _ error: UnsafeMutablePointer<CFStreamError>)
@available(iOS 2.0, *)
func CFNetServiceBrowserScheduleWithRunLoop(_ browser: CFNetServiceBrowser, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(iOS 2.0, *)
func CFNetServiceBrowserUnscheduleFromRunLoop(_ browser: CFNetServiceBrowser, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
