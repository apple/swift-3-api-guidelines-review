
@available(OSX 10.10, *)
enum WKNavigationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LinkActivated
  case FormSubmitted
  case BackForward
  case Reload
  case FormResubmitted
  case Other
}
@available(OSX 10.10, *)
class WKNavigationAction : Object {
  @NSCopying var sourceFrame: WKFrameInfo { get }
  @NSCopying var targetFrame: WKFrameInfo? { get }
  var navigationType: WKNavigationType { get }
  @NSCopying var request: URLRequest { get }
  var modifierFlags: NSEventModifierFlags { get }
  var buttonNumber: Int { get }
  init()
}
