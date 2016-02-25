
enum GKGameCenterViewControllerState : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Leaderboards
  case Achievements
  case Challenges
}
@available(iOS 6.0, *)
class GKGameCenterViewController : UINavigationController {
}
extension GKGameCenterViewController {
  unowned(unsafe) var gameCenterDelegate: @sil_unmanaged GKGameCenterControllerDelegate?
  var viewState: GKGameCenterViewControllerState
}
extension GKGameCenterViewController {
  @available(iOS 4.1, *)
  var leaderboardTimeScope: GKLeaderboardTimeScope
  @available(iOS 7.0, *)
  var leaderboardIdentifier: String?
}
protocol GKGameCenterControllerDelegate : NSObjectProtocol {
  @available(iOS 6.0, *)
  func gameCenterViewControllerDidFinish(_ gameCenterViewController: GKGameCenterViewController)
}
