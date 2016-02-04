
@available(iOS 9.0, *)
class AVMediaSelection : Object, Copying, MutableCopying {
  weak var asset: @sil_weak AVAsset? { get }
  func selectedMediaOptionIn(mediaSelectionGroup: AVMediaSelectionGroup) -> AVMediaSelectionOption?
  func mediaSelectionCriteriaCanBeAppliedAutomaticallyTo(mediaSelectionGroup: AVMediaSelectionGroup) -> Bool
  init()
  @available(iOS 9.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(iOS 9.0, *)
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
}
@available(iOS 9.0, *)
class AVMutableMediaSelection : AVMediaSelection {
  func selectMediaOption(mediaSelectionOption: AVMediaSelectionOption?, in mediaSelectionGroup: AVMediaSelectionGroup)
  init()
}
