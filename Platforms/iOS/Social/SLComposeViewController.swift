
enum SLComposeViewControllerResult : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case cancelled
  case done
}
typealias SLComposeViewControllerCompletionHandler = (SLComposeViewControllerResult) -> Void
@available(iOS 6.0, *)
class SLComposeViewController : UIViewController {
  class func isAvailable(forServiceType serviceType: String!) -> Bool
  /*not inherited*/ init!(forServiceType serviceType: String!)
  var serviceType: String! { get }
  func setInitialText(_ text: String!) -> Bool
  func add(_ image: UIImage!) -> Bool
  func removeAllImages() -> Bool
  func add(_ url: NSURL!) -> Bool
  func removeAllURLs() -> Bool
  var completionHandler: SLComposeViewControllerCompletionHandler!
}
