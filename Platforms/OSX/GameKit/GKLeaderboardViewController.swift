
@available(OSX, introduced=10.8, deprecated=10.10, message="Use GKGameCenterViewController instead")
class GKLeaderboardViewController : GKGameCenterViewController {
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder: Coder)
  convenience init()
}
extension GKLeaderboardViewController {
  var timeScope: GKLeaderboardTimeScope
  var category: String!
  unowned(unsafe) var leaderboardDelegate: @sil_unmanaged GKLeaderboardViewControllerDelegate!
}
@available(OSX, introduced=10.8, deprecated=10.10, message="Use GKGameCenterViewController instead")
protocol GKLeaderboardViewControllerDelegate : ObjectProtocol {
  func leaderboardViewControllerDidFinish(viewController: GKLeaderboardViewController!)
}
