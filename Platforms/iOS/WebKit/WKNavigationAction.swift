
@available(iOS 8.0, *)
enum WKNavigationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case linkActivated
  case formSubmitted
  case backForward
  case reload
  case formResubmitted
  case other
}
@available(iOS 8.0, *)
class WKNavigationAction : Object {
  @NSCopying var sourceFrame: WKFrameInfo { get }
  @NSCopying var targetFrame: WKFrameInfo? { get }
  var navigationType: WKNavigationType { get }
  @NSCopying var request: URLRequest { get }
  init()
}
