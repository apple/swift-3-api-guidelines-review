
enum AVContentAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case completed
  case cancelled
  case timedOut
  case busy
  case notAvailable
  case notPossible
}
extension AVPlayerItem {
  @available(OSX 10.7, *)
  var isAuthorizationRequiredForPlayback: Bool { get }
  @available(OSX 10.7, *)
  var isApplicationAuthorizedForPlayback: Bool { get }
  @available(OSX 10.7, *)
  var isContentAuthorizedForPlayback: Bool { get }
  @available(OSX 10.7, *)
  func requestContentAuthorizationAsynchronously(timeoutInterval timeoutInterval: NSTimeInterval, completionHandler handler: () -> Void)
  @available(OSX 10.7, *)
  func cancelContentAuthorizationRequest()
  @available(OSX 10.7, *)
  var contentAuthorizationRequestStatus: AVContentAuthorizationStatus { get }
}
