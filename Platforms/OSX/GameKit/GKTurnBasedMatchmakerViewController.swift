
@available(OSX 10.8, *)
class GKTurnBasedMatchmakerViewController : NSViewController, GKViewController {
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
}
extension GKTurnBasedMatchmakerViewController {
  unowned(unsafe) var turnBasedMatchmakerDelegate: @sil_unmanaged GKTurnBasedMatchmakerViewControllerDelegate?
  var showExistingMatches: Bool
  init(matchRequest request: GKMatchRequest)
}
protocol GKTurnBasedMatchmakerViewControllerDelegate : NSObjectProtocol {
  @available(OSX 10.8, *)
  func turnBasedMatchmakerViewControllerWasCancelled(viewController: GKTurnBasedMatchmakerViewController)
  @available(OSX 10.8, *)
  func turnBasedMatchmakerViewController(viewController: GKTurnBasedMatchmakerViewController, didFailWithError error: NSError)
  @available(OSX, introduced=10.8, deprecated=10.11, message="use GKTurnBasedEventListener player:receivedTurnEventForMatch:didBecomeActive:")
  optional func turnBasedMatchmakerViewController(viewController: GKTurnBasedMatchmakerViewController, didFindMatch match: GKTurnBasedMatch)
  @available(OSX, introduced=10.8, deprecated=10.11, message="use GKTurnBasedEventListener player:wantsToQuitMatch:")
  optional func turnBasedMatchmakerViewController(viewController: GKTurnBasedMatchmakerViewController, playerQuitForMatch match: GKTurnBasedMatch)
}
