
enum AVContentAuthorizationStatus : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Completed
  case Cancelled
  case TimedOut
  case Busy
  case NotAvailable
  case NotPossible
}
extension AVPlayerItem {
  @available(OSX 10.7, *)
  var authorizationRequiredForPlayback: Bool { get }
  @available(OSX 10.7, *)
  var applicationAuthorizedForPlayback: Bool { get }
  @available(OSX 10.7, *)
  var contentAuthorizedForPlayback: Bool { get }
  @available(OSX 10.7, *)
  func requestContentAuthorizationAsynchronouslyWithTimeoutInterval(_ timeoutInterval: NSTimeInterval, completionHandler handler: () -> Void)
  @available(OSX 10.7, *)
  func cancelContentAuthorizationRequest()
  @available(OSX 10.7, *)
  var contentAuthorizationRequestStatus: AVContentAuthorizationStatus { get }
}
