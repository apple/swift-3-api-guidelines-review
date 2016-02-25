
@available(iOS 9.0, *)
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
@available(iOS 9.0, *)
let NEAppProxyErrorDomain: String
@available(iOS 9.0, *)
class NEAppProxyFlow : NSObject {
  @available(iOS 9.0, *)
  func openWithLocalEndpoint(_ localEndpoint: NWHostEndpoint?, completionHandler completionHandler: (NSError?) -> Void)
  @available(iOS 9.0, *)
  func closeReadWithError(_ error: NSError?)
  @available(iOS 9.0, *)
  func closeWriteWithError(_ error: NSError?)
  @available(iOS 9.0, *)
  var metaData: NEFlowMetaData { get }
}
@available(iOS 9.0, *)
class NEFlowMetaData : NSObject {
  @available(iOS 9.0, *)
  var sourceAppUniqueIdentifier: NSData { get }
  @available(iOS 9.0, *)
  var sourceAppSigningIdentifier: String { get }
}
