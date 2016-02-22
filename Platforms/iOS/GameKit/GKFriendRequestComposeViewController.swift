
@available(iOS 4.2, *)
class GKFriendRequestComposeViewController : UINavigationController {
  @available(iOS 5.0, *)
  init(navigationBarClass navigationBarClass: AnyClass?, toolbarClass toolbarClass: AnyClass?)
  init(rootViewController rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
extension GKFriendRequestComposeViewController {
  class func maxNumberOfRecipients() -> Int
  func setMessage(_ message: String?)
  @available(iOS 8.0, *)
  func addRecipientPlayers(_ players: [GKPlayer])
  @available(iOS, introduced=4.2, deprecated=8.0, message="use addRecipientPlayers:")
  func addRecipients(playerIDs playerIDs: [String])
  func addRecipients(emailAddresses emailAddresses: [String])
  unowned(unsafe) var composeViewDelegate: @sil_unmanaged GKFriendRequestComposeViewControllerDelegate?
}
protocol GKFriendRequestComposeViewControllerDelegate {
  @available(iOS 4.2, *)
  func friendRequestComposeViewControllerDidFinish(_ viewController: GKFriendRequestComposeViewController)
}
