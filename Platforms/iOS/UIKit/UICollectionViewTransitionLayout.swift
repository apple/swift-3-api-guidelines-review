
@available(iOS 7.0, *)
class UICollectionViewTransitionLayout : UICollectionViewLayout {
  var transitionProgress: CGFloat
  var currentLayout: UICollectionViewLayout { get }
  var nextLayout: UICollectionViewLayout { get }
  init(currentLayout: UICollectionViewLayout, nextLayout newLayout: UICollectionViewLayout)
  init?(coder aDecoder: Coder)
  func updateValue(value: CGFloat, forAnimatedKey key: String)
  func valueFor(animatedKey key: String) -> CGFloat
}
