
@available(iOS 9.0, *)
class SFSafariViewController : UIViewController {
  weak var delegate: @sil_weak SFSafariViewControllerDelegate?
  init(url URL: URL, entersReaderIfAvailable: Bool)
  convenience init(url URL: URL)
}
@available(iOS 9.0, *)
protocol SFSafariViewControllerDelegate : ObjectProtocol {
  optional func safariViewController(controller: SFSafariViewController, activityItemsFor URL: URL, title: String?) -> [UIActivity]
  optional func safariViewControllerDidFinish(controller: SFSafariViewController)
  optional func safariViewController(controller: SFSafariViewController, didCompleteInitialLoad didLoadSuccessfully: Bool)
}
