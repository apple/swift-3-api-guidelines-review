
@available(iOS 9.0, *)
class AVMediaSelection : NSObject, NSCopying, NSMutableCopying {
  weak var asset: @sil_weak AVAsset? { get }
  func selectedMediaOptionInMediaSelectionGroup(_ mediaSelectionGroup: AVMediaSelectionGroup) -> AVMediaSelectionOption?
  func mediaSelectionCriteriaCanBeAppliedAutomaticallyToMediaSelectionGroup(_ mediaSelectionGroup: AVMediaSelectionGroup) -> Bool
  @available(iOS 9.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 9.0, *)
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
}
@available(iOS 9.0, *)
class AVMutableMediaSelection : AVMediaSelection {
  func selectMediaOption(_ mediaSelectionOption: AVMediaSelectionOption?, inMediaSelectionGroup mediaSelectionGroup: AVMediaSelectionGroup)
}
