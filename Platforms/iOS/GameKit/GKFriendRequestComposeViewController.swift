
@available(iOS 4.2, *)
class GKFriendRequestComposeViewController : UINavigationController {
  @available(iOS 5.0, *)
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
extension GKFriendRequestComposeViewController {
  class func maxNumberOfRecipients() -> Int
  func setMessage(message: String?)
  @available(iOS 8.0, *)
  func addRecipientPlayers(players: [GKPlayer])
  @available(iOS, introduced=4.2, deprecated=8.0, message="use addRecipientPlayers:")
  func addRecipientsWithPlayerIDs(playerIDs: [String])
  func addRecipientsWithEmailAddresses(emailAddresses: [String])
  unowned(unsafe) var composeViewDelegate: @sil_unmanaged GKFriendRequestComposeViewControllerDelegate?
}
protocol GKFriendRequestComposeViewControllerDelegate {
  @available(iOS 4.2, *)
  func friendRequestComposeViewControllerDidFinish(viewController: GKFriendRequestComposeViewController)
}
