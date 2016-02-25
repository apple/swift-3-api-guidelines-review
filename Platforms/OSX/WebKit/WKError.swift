
@available(OSX 10.10, *)
let WKErrorDomain: String
@available(OSX 10.10, *)
enum WKErrorCode : Int {
  case Unknown
  case WebContentProcessTerminated
  case WebViewInvalidated
  case JavaScriptExceptionOccurred
  @available(OSX 10.11, *)
  case JavaScriptResultTypeIsUnsupported
}

@available(OSX 10.10, iOS 8.0, *)
extension WKErrorCode : _BridgedNSError {
}
