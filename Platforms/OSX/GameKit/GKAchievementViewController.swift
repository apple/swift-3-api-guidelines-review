
@available(OSX, introduced=10.8, deprecated=10.10, message="Use GKGameCenterViewController instead")
class GKAchievementViewController : GKGameCenterViewController {
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
}
extension GKAchievementViewController {
  unowned(unsafe) var achievementDelegate: @sil_unmanaged GKAchievementViewControllerDelegate!
}
@available(OSX, introduced=10.8, deprecated=10.10, message="Use GKGameCenterViewController instead")
protocol GKAchievementViewControllerDelegate : NSObjectProtocol {
  func achievementViewControllerDidFinish(viewController: GKAchievementViewController!)
}
