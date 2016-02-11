
@available(OSX 10.8, *)
class GKMatchmakerViewController : NSViewController, GKViewController {
  unowned(unsafe) var matchmakerDelegate: @sil_unmanaged GKMatchmakerViewControllerDelegate?
  var matchRequest: GKMatchRequest { get }
  var isHosted: Bool
  init?(matchRequest request: GKMatchRequest)
  init?(invite: GKInvite)
  @available(OSX 10.8, *)
  func addPlayers(to match: GKMatch)
  @available(OSX, introduced=10.8, deprecated=10.10, message="use setHostedPlayer:didConnect:")
  func setHostedPlayer(playerID: String, connected: Bool)
  @available(OSX 10.10, *)
  func setHostedPlayer(player: GKPlayer, didConnect connected: Bool)
  @available(OSX, introduced=10.8, deprecated=10.10)
  var defaultInvitationMessage: String?
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder: Coder)
  convenience init()
}
protocol GKMatchmakerViewControllerDelegate : ObjectProtocol {
  @available(OSX 10.8, *)
  func matchmakerViewControllerWasCancelled(viewController: GKMatchmakerViewController)
  @available(OSX 10.8, *)
  func matchmakerViewController(viewController: GKMatchmakerViewController, didFailWithError error: Error)
  @available(OSX 10.8, *)
  optional func matchmakerViewController(viewController: GKMatchmakerViewController, didFind match: GKMatch)
  @available(OSX 10.10, *)
  optional func matchmakerViewController(viewController: GKMatchmakerViewController, didFindHostedPlayers players: [GKPlayer])
  @available(OSX, introduced=10.8, deprecated=10.10, message="use matchmakerViewController:didFindHostedPlayers:")
  optional func matchmakerViewController(viewController: GKMatchmakerViewController, didFindPlayers playerIDs: [String])
  @available(OSX 10.10, *)
  optional func matchmakerViewController(viewController: GKMatchmakerViewController, hostedPlayerDidAccept player: GKPlayer)
  @available(OSX, introduced=10.8, deprecated=10.10, message="use matchmakerViewController:hostedPlayerDidAccept:")
  optional func matchmakerViewController(viewController: GKMatchmakerViewController, didReceiveAcceptFromHostedPlayer playerID: String)
}
