
@available(OSX, introduced=10.8, deprecated=10.10, message="Use GKGameCenterViewController instead")
class GKLeaderboardViewController : GKGameCenterViewController {
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
}
extension GKLeaderboardViewController {
  var timeScope: GKLeaderboardTimeScope
  var category: String!
  unowned(unsafe) var leaderboardDelegate: @sil_unmanaged GKLeaderboardViewControllerDelegate!
}
@available(OSX, introduced=10.8, deprecated=10.10, message="Use GKGameCenterViewController instead")
protocol GKLeaderboardViewControllerDelegate : NSObjectProtocol {
  func leaderboardViewControllerDidFinish(viewController: GKLeaderboardViewController!)
}
