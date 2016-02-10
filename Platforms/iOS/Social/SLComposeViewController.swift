
enum SLComposeViewControllerResult : Int {
  init?(rawValue: Int)
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
  func setInitialText(text: String!) -> Bool
  func add(image: UIImage!) -> Bool
  func removeAllImages() -> Bool
  func add(url: URL!) -> Bool
  func removeAllURLs() -> Bool
  var completionHandler: SLComposeViewControllerCompletionHandler!
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
