
@available(iOS 9.0, *)
class SFSafariViewController : UIViewController {
  weak var delegate: @sil_weak SFSafariViewControllerDelegate?
  init(URL: NSURL, entersReaderIfAvailable: Bool)
  convenience init(URL: NSURL)
}
@available(iOS 9.0, *)
protocol SFSafariViewControllerDelegate : NSObjectProtocol {
  optional func safariViewController(controller: SFSafariViewController, activityItemsForURL URL: NSURL, title: String?) -> [UIActivity]
  optional func safariViewControllerDidFinish(controller: SFSafariViewController)
  optional func safariViewController(controller: SFSafariViewController, didCompleteInitialLoad didLoadSuccessfully: Bool)
}
