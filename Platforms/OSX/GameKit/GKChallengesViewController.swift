
@available(OSX, introduced=10.8, deprecated=10.10)
class GKChallengesViewController : NSViewController, GKViewController {
  unowned(unsafe) var challengeDelegate: @sil_unmanaged GKChallengesViewControllerDelegate!
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder: Coder)
  convenience init()
}
protocol GKChallengesViewControllerDelegate {
  @available(OSX 10.8, *)
  func challengesViewControllerDidFinish(viewController: GKChallengesViewController!)
}
