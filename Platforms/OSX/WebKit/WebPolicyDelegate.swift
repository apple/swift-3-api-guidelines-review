
enum WebNavigationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LinkClicked
  case FormSubmitted
  case BackForward
  case Reload
  case FormResubmitted
  case Other
}
let WebActionNavigationTypeKey: String
let WebActionElementKey: String
let WebActionButtonKey: String
let WebActionModifierFlagsKey: String
let WebActionOriginalURLKey: String
protocol WebPolicyDecisionListener : ObjectProtocol {
  func use()
  func download()
  func ignore()
}
protocol WebPolicyDelegate : ObjectProtocol {
  @available(OSX 10.0, *)
  optional func webView(webView: WebView!, decidePolicyForNavigationAction actionInformation: [Object : AnyObject]!, request: URLRequest!, frame: WebFrame!, decisionListener listener: WebPolicyDecisionListener!)
  @available(OSX 10.0, *)
  optional func webView(webView: WebView!, decidePolicyForNewWindowAction actionInformation: [Object : AnyObject]!, request: URLRequest!, newFrameName frameName: String!, decisionListener listener: WebPolicyDecisionListener!)
  optional func webView(webView: WebView!, decidePolicyForMIMEType type: String!, request: URLRequest!, frame: WebFrame!, decisionListener listener: WebPolicyDecisionListener!)
  optional func webView(webView: WebView!, unableToImplementPolicyWithError error: Error!, frame: WebFrame!)
}
