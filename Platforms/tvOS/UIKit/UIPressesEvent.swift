
@available(tvOS 9.0, *)
class UIPressesEvent : UIEvent {
  func allPresses() -> Set<UIPress>
  func presses(for gesture: UIGestureRecognizer) -> Set<UIPress>
}
