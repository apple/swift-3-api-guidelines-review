
@available(tvOS 9.0, *)
class UIFocusAnimationCoordinator : Object {
  func addCoordinatedAnimations(animations: (() -> Void)?, completion: (() -> Void)? = nil)
  init()
}
