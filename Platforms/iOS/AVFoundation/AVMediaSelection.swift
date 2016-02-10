
@available(iOS 9.0, *)
class AVMediaSelection : Object, Copying, MutableCopying {
  weak var asset: @sil_weak AVAsset? { get }
  func selectedMediaOption(in mediaSelectionGroup: AVMediaSelectionGroup) -> AVMediaSelectionOption?
  func mediaSelectionCriteriaCanBeAppliedAutomatically(to mediaSelectionGroup: AVMediaSelectionGroup) -> Bool
  init()
  @available(iOS 9.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(iOS 9.0, *)
  func mutableCopy(with zone: Zone = nil) -> AnyObject
}
@available(iOS 9.0, *)
class AVMutableMediaSelection : AVMediaSelection {
  func selectMediaOption(mediaSelectionOption: AVMediaSelectionOption?, in mediaSelectionGroup: AVMediaSelectionGroup)
  init()
}
