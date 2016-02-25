
@available(tvOS 7.0, *)
class UICollectionViewTransitionLayout : UICollectionViewLayout {
  var transitionProgress: CGFloat
  var currentLayout: UICollectionViewLayout { get }
  var nextLayout: UICollectionViewLayout { get }
  init(currentLayout currentLayout: UICollectionViewLayout, nextLayout newLayout: UICollectionViewLayout)
  func updateValue(_ value: CGFloat, forAnimatedKey key: String)
  func value(forAnimatedKey key: String) -> CGFloat
}
