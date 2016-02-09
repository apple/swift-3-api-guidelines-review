
protocol XPCProxyCreating {
  func remoteObjectProxy() -> AnyObject
  func remoteObjectProxyWithErrorHandler(handler: (Error) -> Void) -> AnyObject
}
@available(OSX 10.8, *)
struct XPCConnectionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var privileged: XPCConnectionOptions { get }
}
@available(OSX 10.8, *)
class XPCConnection : Object, XPCProxyCreating {
  init(serviceName: String)
  var serviceName: String? { get }
  init(machServiceName name: String, options: XPCConnectionOptions = [])
  init(listenerEndpoint endpoint: XPCListenerEndpoint)
  var endpoint: XPCListenerEndpoint { get }
  var exportedInterface: XPCInterface?
  var exportedObject: AnyObject?
  var remoteObjectInterface: XPCInterface?
  var remoteObjectProxy: AnyObject { get }
  func remoteObjectProxyWithErrorHandler(handler: (Error) -> Void) -> AnyObject
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
class XPCListener : Object {
  class func service() -> XPCListener
  class func anonymous() -> XPCListener
  init(machServiceName name: String)
  unowned(unsafe) var delegate: @sil_unmanaged XPCListenerDelegate?
  var endpoint: XPCListenerEndpoint { get }
  func resume()
  func suspend()
  func invalidate()
  convenience init()
}
protocol XPCListenerDelegate : ObjectProtocol {
  @available(OSX 10.8, *)
  optional func listener(listener: XPCListener, shouldAcceptNewConnection newConnection: XPCConnection) -> Bool
}
@available(OSX 10.8, *)
class XPCInterface : Object {
  /*not inherited*/ init(withProtocol protocol: Protocol)
  unowned(unsafe) var `protocol`: @sil_unmanaged Protocol
  func setClasses(classes: Set<Object>, forSelector sel: Selector, argumentIndex arg: Int, ofReply: Bool)
  func classes(forSelector sel: Selector, argumentIndex arg: Int, ofReply: Bool) -> Set<Object>
  func setInterface(ifc: XPCInterface, forSelector sel: Selector, argumentIndex arg: Int, ofReply: Bool)
  func forSelector(sel: Selector, argumentIndex arg: Int, ofReply: Bool) -> XPCInterface?
  init()
}
@available(OSX 10.8, *)
class XPCListenerEndpoint : Object, SecureCoding {
  init()
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
