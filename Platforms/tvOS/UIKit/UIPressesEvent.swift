
@available(tvOS 9.0, *)
class UIPressesEvent : UIEvent {
  func allPresses() -> Set<UIPress>
  func presses(forGestureRecognizer gesture: UIGestureRecognizer) -> Set<UIPress>
  init()
}
