
@available(OSX 10.11, *)
class NSCollectionViewTransitionLayout : NSCollectionViewLayout {
  var transitionProgress: CGFloat
  var currentLayout: NSCollectionViewLayout { get }
  var nextLayout: NSCollectionViewLayout { get }
  init(currentLayout: NSCollectionViewLayout, nextLayout newLayout: NSCollectionViewLayout)
  func updateValue(value: CGFloat, forAnimatedKey key: String)
  func valueForAnimatedKey(key: String) -> CGFloat
  init()
  init?(coder aDecoder: NSCoder)
}
