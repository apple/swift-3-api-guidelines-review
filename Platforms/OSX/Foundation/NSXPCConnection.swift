
protocol NSXPCProxyCreating {
  func remoteObjectProxy() -> AnyObject
  func remoteObjectProxyWithErrorHandler(handler: (NSError) -> Void) -> AnyObject
}
@available(OSX 10.8, *)
struct NSXPCConnectionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Privileged: NSXPCConnectionOptions { get }
}
@available(OSX 10.8, *)
class NSXPCConnection : NSObject, NSXPCProxyCreating {
  init(serviceName: String)
  var serviceName: String? { get }
  init(machServiceName name: String, options: NSXPCConnectionOptions)
  init(listenerEndpoint endpoint: NSXPCListenerEndpoint)
  var endpoint: NSXPCListenerEndpoint { get }
  var exportedInterface: NSXPCInterface?
  var exportedObject: AnyObject?
  var remoteObjectInterface: NSXPCInterface?
  var remoteObjectProxy: AnyObject { get }
  func remoteObjectProxyWithErrorHandler(handler: (NSError) -> Void) -> AnyObject
  var interruptionHandler: (() -> Void)?
  var invalidationHandler: (() -> Void)?
  func resume()
  func suspend()
  func invalidate()
  var auditSessionIdentifier: au_asid_t { get }
  var processIdentifier: pid_t { get }
  var effectiveUserIdentifier: uid_t { get }
  var effectiveGroupIdentifier: gid_t { get }
  init()
}
@available(OSX 10.8, *)
class NSXPCListener : NSObject {
  class func serviceListener() -> NSXPCListener
  class func anonymousListener() -> NSXPCListener
  init(machServiceName name: String)
  unowned(unsafe) var delegate: @sil_unmanaged NSXPCListenerDelegate?
  var endpoint: NSXPCListenerEndpoint { get }
  func resume()
  func suspend()
  func invalidate()
  convenience init()
}
protocol NSXPCListenerDelegate : NSObjectProtocol {
  @available(OSX 10.8, *)
  optional func listener(listener: NSXPCListener, shouldAcceptNewConnection newConnection: NSXPCConnection) -> Bool
}
@available(OSX 10.8, *)
class NSXPCInterface : NSObject {
  /*not inherited*/ init(withProtocol protocol: Protocol)
  unowned(unsafe) var `protocol`: @sil_unmanaged Protocol
  func setClasses(classes: Set<NSObject>, forSelector sel: Selector, argumentIndex arg: Int, ofReply: Bool)
  func classesForSelector(sel: Selector, argumentIndex arg: Int, ofReply: Bool) -> Set<NSObject>
  func setInterface(ifc: NSXPCInterface, forSelector sel: Selector, argumentIndex arg: Int, ofReply: Bool)
  func interfaceForSelector(sel: Selector, argumentIndex arg: Int, ofReply: Bool) -> NSXPCInterface?
  init()
}
@available(OSX 10.8, *)
class NSXPCListenerEndpoint : NSObject, NSSecureCoding {
  init()
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
