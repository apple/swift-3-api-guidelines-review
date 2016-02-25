
@available(OSX 10.11, *)
class AVMediaSelection : NSObject, NSCopying, NSMutableCopying {
  weak var asset: @sil_weak AVAsset? { get }
  func selectedMediaOptionInMediaSelectionGroup(_ mediaSelectionGroup: AVMediaSelectionGroup) -> AVMediaSelectionOption?
  func mediaSelectionCriteriaCanBeAppliedAutomaticallyToMediaSelectionGroup(_ mediaSelectionGroup: AVMediaSelectionGroup) -> Bool
  @available(OSX 10.11, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.11, *)
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
}
@available(OSX 10.11, *)
class AVMutableMediaSelection : AVMediaSelection {
  func selectMediaOption(_ mediaSelectionOption: AVMediaSelectionOption?, inMediaSelectionGroup mediaSelectionGroup: AVMediaSelectionGroup)
}
