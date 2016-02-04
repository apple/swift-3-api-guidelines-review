
@available(OSX 10.10, *)
let WKErrorDomain: String
@available(OSX 10.10, *)
enum WKErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case WebContentProcessTerminated
  case WebViewInvalidated
  case JavaScriptExceptionOccurred
  @available(OSX 10.11, *)
  case JavaScriptResultTypeIsUnsupported
}

@available(OSX 10.10, iOS 8.0, *)
extension WKErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
