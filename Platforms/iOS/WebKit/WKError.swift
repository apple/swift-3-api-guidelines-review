
@available(iOS 8.0, *)
let WKErrorDomain: String
@available(iOS 8.0, *)
enum WKErrorCode : Int {
  case Unknown
  case WebContentProcessTerminated
  case WebViewInvalidated
  case JavaScriptExceptionOccurred
  @available(iOS 9.0, *)
  case JavaScriptResultTypeIsUnsupported
}

@available(OSX 10.10, iOS 8.0, *)
extension WKErrorCode : _BridgedNSError {
}
