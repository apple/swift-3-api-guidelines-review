
enum AVContentAuthorizationStatus : Int {
  init?(rawValue: Int)
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
  var isAuthorizationRequiredForPlayback: Bool { get }
  @available(OSX 10.7, *)
  var isApplicationAuthorizedForPlayback: Bool { get }
  @available(OSX 10.7, *)
  var isContentAuthorizedForPlayback: Bool { get }
  @available(OSX 10.7, *)
  func requestContentAuthorizationAsynchronously(timeoutInterval timeoutInterval: TimeInterval, completionHandler handler: () -> Void)
  @available(OSX 10.7, *)
  func cancelContentAuthorizationRequest()
  @available(OSX 10.7, *)
  var contentAuthorizationRequestStatus: AVContentAuthorizationStatus { get }
}
