
enum GKGameCenterViewControllerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Leaderboards
  case Achievements
  case Challenges
}
@available(iOS 6.0, *)
class GKGameCenterViewController : UINavigationController {
  @available(iOS 5.0, *)
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
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
  func gameCenterViewControllerDidFinish(gameCenterViewController: GKGameCenterViewController)
}
