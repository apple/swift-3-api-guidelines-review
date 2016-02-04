
@available(iOS 9.0, *)
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
@available(iOS 9.0, *)
let NEAppProxyErrorDomain: String
@available(iOS 9.0, *)
class NEAppProxyFlow : Object {
  @available(iOS 9.0, *)
  func openWithLocalEndpoint(localEndpoint: NWHostEndpoint?, completionHandler: (Error?) -> Void)
  @available(iOS 9.0, *)
  func closeReadWithError(error: Error?)
  @available(iOS 9.0, *)
  func closeWriteWithError(error: Error?)
  @available(iOS 9.0, *)
  var metaData: NEFlowMetaData { get }
  init()
}
@available(iOS 9.0, *)
class NEFlowMetaData : Object {
  @available(iOS 9.0, *)
  var sourceAppUniqueIdentifier: Data { get }
  @available(iOS 9.0, *)
  var sourceAppSigningIdentifier: String { get }
  init()
}
