
enum SLComposeViewControllerResult : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Cancelled
  case Done
}
typealias SLComposeViewControllerCompletionHandler = (SLComposeViewControllerResult) -> Void
@available(iOS 6.0, *)
class SLComposeViewController : UIViewController {
  class func isAvailableForServiceType(_ serviceType: String!) -> Bool
  /*not inherited*/ init!(forServiceType serviceType: String!)
  var serviceType: String! { get }
  func setInitialText(_ text: String!) -> Bool
  func addImage(_ image: UIImage!) -> Bool
  func removeAllImages() -> Bool
  func addURL(_ url: NSURL!) -> Bool
  func removeAllURLs() -> Bool
  var completionHandler: SLComposeViewControllerCompletionHandler!
}
