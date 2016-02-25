
@available(OSX 10.11, *)
enum NEAppProxyFlowError : Int {
  init?(rawValue rawValue: Int)
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
  func openWithLocalEndpoint(_ localEndpoint: NWHostEndpoint?, completionHandler completionHandler: (NSError?) -> Void)
  @available(OSX 10.11, *)
  func closeReadWithError(_ error: NSError?)
  @available(OSX 10.11, *)
  func closeWriteWithError(_ error: NSError?)
  @available(OSX 10.11, *)
  var metaData: NEFlowMetaData { get }
}
@available(OSX 10.11, *)
class NEFlowMetaData : NSObject {
  @available(OSX 10.11, *)
  var sourceAppUniqueIdentifier: NSData { get }
  @available(OSX 10.11, *)
  var sourceAppSigningIdentifier: String { get }
}
