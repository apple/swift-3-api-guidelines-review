
@available(iOS 9.0, *)
class UIPressesEvent : UIEvent {
  func allPresses() -> Set<UIPress>
  func pressesForGestureRecognizer(_ gesture: UIGestureRecognizer) -> Set<UIPress>
}
