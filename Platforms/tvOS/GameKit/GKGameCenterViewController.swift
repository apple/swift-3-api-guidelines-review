
enum GKGameCenterViewControllerState : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Leaderboards
  case Achievements
  case Challenges
}
@available(tvOS 6.0, *)
class GKGameCenterViewController : UINavigationController {
}
extension GKGameCenterViewController {
  unowned(unsafe) var gameCenterDelegate: @sil_unmanaged GKGameCenterControllerDelegate?
}
extension GKGameCenterViewController {
}
protocol GKGameCenterControllerDelegate : NSObjectProtocol {
  @available(tvOS 6.0, *)
  func gameCenterViewControllerDidFinish(_ gameCenterViewController: GKGameCenterViewController)
}
