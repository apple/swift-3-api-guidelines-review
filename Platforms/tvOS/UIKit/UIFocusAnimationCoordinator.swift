
@available(tvOS 9.0, *)
class UIFocusAnimationCoordinator : NSObject {
  func addCoordinatedAnimations(animations: (() -> Void)?, completion: (() -> Void)?)
  init()
}
