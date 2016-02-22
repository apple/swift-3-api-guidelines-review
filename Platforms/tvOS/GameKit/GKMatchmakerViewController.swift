
@available(tvOS 4.1, *)
class GKMatchmakerViewController : UINavigationController {
  unowned(unsafe) var matchmakerDelegate: @sil_unmanaged GKMatchmakerViewControllerDelegate?
  var matchRequest: GKMatchRequest { get }
  var isHosted: Bool
  init?(matchRequest request: GKMatchRequest)
  init?(invite invite: GKInvite)
  @available(tvOS 5.0, *)
  func addPlayers(to match: GKMatch)
  @available(tvOS 8.0, *)
  func setHostedPlayer(_ player: GKPlayer, didConnect connected: Bool)
  @available(tvOS 5.0, *)
  init(navigationBarClass navigationBarClass: AnyClass?, toolbarClass toolbarClass: AnyClass?)
  init(rootViewController rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol GKMatchmakerViewControllerDelegate : NSObjectProtocol {
  @available(tvOS 4.1, *)
  func matchmakerViewControllerWasCancelled(_ viewController: GKMatchmakerViewController)
  @available(tvOS 4.1, *)
  func matchmakerViewController(_ viewController: GKMatchmakerViewController, didFailWithError error: NSError)
  @available(tvOS 4.1, *)
  optional func matchmakerViewController(_ viewController: GKMatchmakerViewController, didFind match: GKMatch)
  @available(tvOS 8.0, *)
  optional func matchmakerViewController(_ viewController: GKMatchmakerViewController, didFindHostedPlayers players: [GKPlayer])
  @available(tvOS 8.0, *)
  optional func matchmakerViewController(_ viewController: GKMatchmakerViewController, hostedPlayerDidAccept player: GKPlayer)
}
