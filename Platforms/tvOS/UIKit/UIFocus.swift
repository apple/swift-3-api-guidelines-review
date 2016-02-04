
@available(tvOS 9.0, *)
struct UIFocusHeading : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Up: UIFocusHeading { get }
  static var Down: UIFocusHeading { get }
  static var Left: UIFocusHeading { get }
  static var Right: UIFocusHeading { get }
  static var Next: UIFocusHeading { get }
  static var Previous: UIFocusHeading { get }
}
@available(tvOS 9.0, *)
class UIFocusUpdateContext : NSObject {
  weak var previouslyFocusedView: @sil_weak UIView? { get }
  weak var nextFocusedView: @sil_weak UIView? { get }
  var focusHeading: UIFocusHeading { get }
  init()
}
@available(tvOS 9.0, *)
protocol UIFocusEnvironment : NSObjectProtocol {
  weak var preferredFocusedView: @sil_weak UIView? { get }
  func setNeedsFocusUpdate()
  func updateFocusIfNeeded()
  func shouldUpdateFocusInContext(context: UIFocusUpdateContext) -> Bool
  func didUpdateFocusInContext(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
}
@available(tvOS 9.0, *)
class UIFocusGuide : UILayoutGuide {
  var enabled: Bool
  weak var preferredFocusedView: @sil_weak UIView?
  init()
  init?(coder aDecoder: NSCoder)
}
