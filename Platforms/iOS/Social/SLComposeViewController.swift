
enum SLComposeViewControllerResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Cancelled
  case Done
}
typealias SLComposeViewControllerCompletionHandler = (SLComposeViewControllerResult) -> Void
@available(iOS 6.0, *)
class SLComposeViewController : UIViewController {
  class func isAvailableForServiceType(serviceType: String!) -> Bool
  /*not inherited*/ init!(forServiceType serviceType: String!)
  var serviceType: String! { get }
  func setInitialText(text: String!) -> Bool
  func addImage(image: UIImage!) -> Bool
  func removeAllImages() -> Bool
  func addURL(url: NSURL!) -> Bool
  func removeAllURLs() -> Bool
  var completionHandler: SLComposeViewControllerCompletionHandler!
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
