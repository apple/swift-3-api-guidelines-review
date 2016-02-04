
@available(iOS 9.0, *)
class AVMediaSelection : NSObject, NSCopying, NSMutableCopying {
  weak var asset: @sil_weak AVAsset? { get }
  func selectedMediaOptionInMediaSelectionGroup(mediaSelectionGroup: AVMediaSelectionGroup) -> AVMediaSelectionOption?
  func mediaSelectionCriteriaCanBeAppliedAutomaticallyToMediaSelectionGroup(mediaSelectionGroup: AVMediaSelectionGroup) -> Bool
  init()
  @available(iOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 9.0, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 9.0, *)
class AVMutableMediaSelection : AVMediaSelection {
  func selectMediaOption(mediaSelectionOption: AVMediaSelectionOption?, inMediaSelectionGroup mediaSelectionGroup: AVMediaSelectionGroup)
  init()
}
