
@available(iOS 8.0, *)
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
@available(iOS 8.0, *)
class WKNavigationAction : Object {
  @NSCopying var sourceFrame: WKFrameInfo { get }
  @NSCopying var targetFrame: WKFrameInfo? { get }
  var navigationType: WKNavigationType { get }
  @NSCopying var request: URLRequest { get }
  init()
}
