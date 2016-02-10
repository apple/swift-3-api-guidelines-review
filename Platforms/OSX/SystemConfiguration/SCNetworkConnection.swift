
class SCNetworkConnection {
}
struct SCNetworkConnectionContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)?
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)?
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>)?
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)?, release: (@convention(c) (UnsafePointer<Void>) -> Void)?, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>)?)
}
enum SCNetworkConnectionStatus : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case invalid
  case disconnected
  case connecting
  case connected
  case disconnecting
}
enum SCNetworkConnectionPPPStatus : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case disconnected
  case initializing
  case connectingLink
  case dialOnTraffic
  case negotiatingLink
  case authenticating
  case waitingForCallBack
  case negotiatingNetwork
  case connected
  case terminating
  case disconnectingLink
  case holdingLinkOff
  case suspended
  case waitingForRedial
}
typealias SCNetworkConnectionCallBack = @convention(c) (SCNetworkConnection, SCNetworkConnectionStatus, UnsafeMutablePointer<Void>) -> Void
var kSCNetworkConnectionBytesIn: String { get }
var kSCNetworkConnectionBytesOut: String { get }
var kSCNetworkConnectionPacketsIn: String { get }
var kSCNetworkConnectionPacketsOut: String { get }
var kSCNetworkConnectionErrorsIn: String { get }
var kSCNetworkConnectionErrorsOut: String { get }
var kSCNetworkConnectionSelectionOptionOnDemandHostName: String { get }
var kSCNetworkConnectionSelectionOptionOnDemandRetry: String { get }
@available(OSX 10.3, *)
func SCNetworkConnectionGetTypeID() -> CFTypeID
@available(OSX 10.3, *)
func SCNetworkConnectionCopyUserPreferences(selectionOptions: CFDictionary?, _ serviceID: UnsafeMutablePointer<Unmanaged<CFString>?>, _ userOptions: UnsafeMutablePointer<Unmanaged<CFDictionary>?>) -> Bool
@available(OSX 10.3, *)
func SCNetworkConnectionCreateWithServiceID(allocator: CFAllocator?, _ serviceID: CFString, _ callout: SCNetworkConnectionCallBack?, _ context: UnsafeMutablePointer<SCNetworkConnectionContext>) -> SCNetworkConnection?
@available(OSX 10.3, *)
func SCNetworkConnectionCopyServiceID(connection: SCNetworkConnection) -> CFString?
@available(OSX 10.3, *)
func SCNetworkConnectionGetStatus(connection: SCNetworkConnection) -> SCNetworkConnectionStatus
@available(OSX 10.3, *)
func SCNetworkConnectionCopyExtendedStatus(connection: SCNetworkConnection) -> CFDictionary?
@available(OSX 10.3, *)
func SCNetworkConnectionCopyStatistics(connection: SCNetworkConnection) -> CFDictionary?
@available(OSX 10.3, *)
func SCNetworkConnectionStart(connection: SCNetworkConnection, _ userOptions: CFDictionary?, _ linger: Bool) -> Bool
@available(OSX 10.3, *)
func SCNetworkConnectionStop(connection: SCNetworkConnection, _ forceDisconnect: Bool) -> Bool
@available(OSX 10.3, *)
func SCNetworkConnectionCopyUserOptions(connection: SCNetworkConnection) -> CFDictionary?
@available(OSX 10.3, *)
func SCNetworkConnectionScheduleWithRunLoop(connection: SCNetworkConnection, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool
@available(OSX 10.3, *)
func SCNetworkConnectionUnscheduleFromRunLoop(connection: SCNetworkConnection, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool
@available(OSX 10.6, *)
func SCNetworkConnectionSetDispatchQueue(connection: SCNetworkConnection, _ queue: dispatch_queue_t?) -> Bool
