
@available(OSX 10.8, *)
class GKFriendRequestComposeViewController : NSViewController, GKViewController {
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder: Coder)
  convenience init()
}
extension GKFriendRequestComposeViewController {
  class func maxNumberOfRecipients() -> Int
  func setMessage(message: String?)
  @available(OSX 10.10, *)
  func addRecipientPlayers(players: [GKPlayer])
  @available(OSX, introduced=10.8, deprecated=10.10, message="use addRecipientPlayers:")
  func addRecipients(playerIDs playerIDs: [String])
  func addRecipients(emailAddresses emailAddresses: [String])
  unowned(unsafe) var composeViewDelegate: @sil_unmanaged GKFriendRequestComposeViewControllerDelegate?
}
protocol GKFriendRequestComposeViewControllerDelegate {
  @available(OSX 10.8, *)
  func friendRequestComposeViewControllerDidFinish(viewController: GKFriendRequestComposeViewController)
}
