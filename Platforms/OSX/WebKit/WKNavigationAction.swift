
@available(OSX 10.10, *)
enum WKNavigationType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case LinkActivated
  case FormSubmitted
  case BackForward
  case Reload
  case FormResubmitted
  case Other
}
@available(OSX 10.10, *)
class WKNavigationAction : NSObject {
  @NSCopying var sourceFrame: WKFrameInfo { get }
  @NSCopying var targetFrame: WKFrameInfo? { get }
  var navigationType: WKNavigationType { get }
  @NSCopying var request: NSURLRequest { get }
  var modifierFlags: NSEventModifierFlags { get }
  var buttonNumber: Int { get }
}
