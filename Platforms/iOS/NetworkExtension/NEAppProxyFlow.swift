
@available(iOS 9.0, *)
enum NEAppProxyFlowError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notConnected
  case peerReset
  case hostUnreachable
  case invalidArgument
  case aborted
  case refused
  case timedOut
  case `internal`
}
@available(iOS 9.0, *)
let NEAppProxyErrorDomain: String
@available(iOS 9.0, *)
class NEAppProxyFlow : NSObject {
  @available(iOS 9.0, *)
  func open(localEndpoint localEndpoint: NWHostEndpoint?, completionHandler: (NSError?) -> Void)
  @available(iOS 9.0, *)
  func closeReadWithError(error: NSError?)
  @available(iOS 9.0, *)
  func closeWriteWithError(error: NSError?)
  @available(iOS 9.0, *)
  var metaData: NEFlowMetaData { get }
  init()
}
@available(iOS 9.0, *)
class NEFlowMetaData : NSObject {
  @available(iOS 9.0, *)
  var sourceAppUniqueIdentifier: NSData { get }
  @available(iOS 9.0, *)
  var sourceAppSigningIdentifier: String { get }
  init()
}
