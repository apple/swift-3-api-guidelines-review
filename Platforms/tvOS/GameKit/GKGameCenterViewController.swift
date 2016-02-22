
enum GKGameCenterViewControllerState : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case leaderboards
  case achievements
  case challenges
}
@available(tvOS 6.0, *)
class GKGameCenterViewController : UINavigationController {
  @available(tvOS 5.0, *)
  init(navigationBarClass navigationBarClass: AnyClass?, toolbarClass toolbarClass: AnyClass?)
  init(rootViewController rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
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
