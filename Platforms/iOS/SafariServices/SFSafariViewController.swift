
@available(iOS 9.0, *)
class SFSafariViewController : UIViewController {
  weak var delegate: @sil_weak SFSafariViewControllerDelegate?
  init(URL URL: NSURL, entersReaderIfAvailable entersReaderIfAvailable: Bool)
  convenience init(URL URL: NSURL)
}
@available(iOS 9.0, *)
protocol SFSafariViewControllerDelegate : NSObjectProtocol {
  optional func safariViewController(_ controller: SFSafariViewController, activityItemsForURL URL: NSURL, title title: String?) -> [UIActivity]
  optional func safariViewControllerDidFinish(_ controller: SFSafariViewController)
  optional func safariViewController(_ controller: SFSafariViewController, didCompleteInitialLoad didLoadSuccessfully: Bool)
}
