
@available(OSX 10.11, *)
enum NEAppProxyFlowError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotConnected
  case PeerReset
  case HostUnreachable
  case InvalidArgument
  case Aborted
  case Refused
  case TimedOut
  case Internal
}
@available(OSX 10.11, *)
let NEAppProxyErrorDomain: String
@available(OSX 10.11, *)
class NEAppProxyFlow : NSObject {
  @available(OSX 10.11, *)
  func openWithLocalEndpoint(localEndpoint: NWHostEndpoint?, completionHandler: (NSError?) -> Void)
  @available(OSX 10.11, *)
  func closeReadWithError(error: NSError?)
  @available(OSX 10.11, *)
  func closeWriteWithError(error: NSError?)
  @available(OSX 10.11, *)
  var metaData: NEFlowMetaData { get }
  init()
}
@available(OSX 10.11, *)
class NEFlowMetaData : NSObject {
  @available(OSX 10.11, *)
  var sourceAppUniqueIdentifier: NSData { get }
  @available(OSX 10.11, *)
  var sourceAppSigningIdentifier: String { get }
  init()
}
