
@available(tvOS 4.1, *)
class GKMatchmakerViewController : UINavigationController {
  unowned(unsafe) var matchmakerDelegate: @sil_unmanaged GKMatchmakerViewControllerDelegate?
  var matchRequest: GKMatchRequest { get }
  var isHosted: Bool
  init?(matchRequest request: GKMatchRequest)
  init?(invite: GKInvite)
  @available(tvOS 5.0, *)
  func addPlayers(to match: GKMatch)
  @available(tvOS 8.0, *)
  func setHostedPlayer(player: GKPlayer, didConnect connected: Bool)
  @available(tvOS 5.0, *)
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol GKMatchmakerViewControllerDelegate : NSObjectProtocol {
  @available(tvOS 4.1, *)
  func matchmakerViewControllerWasCancelled(viewController: GKMatchmakerViewController)
  @available(tvOS 4.1, *)
  func matchmakerViewController(viewController: GKMatchmakerViewController, didFailWithError error: NSError)
  @available(tvOS 4.1, *)
  optional func matchmakerViewController(viewController: GKMatchmakerViewController, didFind match: GKMatch)
  @available(tvOS 8.0, *)
  optional func matchmakerViewController(viewController: GKMatchmakerViewController, didFindHostedPlayers players: [GKPlayer])
  @available(tvOS 8.0, *)
  optional func matchmakerViewController(viewController: GKMatchmakerViewController, hostedPlayerDidAccept player: GKPlayer)
}
