
@available(OSX 10.11, *)
class AVMediaSelection : NSObject, NSCopying, NSMutableCopying {
  weak var asset: @sil_weak AVAsset? { get }
  func selectedMediaOptionInMediaSelectionGroup(mediaSelectionGroup: AVMediaSelectionGroup) -> AVMediaSelectionOption?
  func mediaSelectionCriteriaCanBeAppliedAutomaticallyToMediaSelectionGroup(mediaSelectionGroup: AVMediaSelectionGroup) -> Bool
  init()
  @available(OSX 10.11, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.11, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
}
@available(OSX 10.11, *)
class AVMutableMediaSelection : AVMediaSelection {
  func selectMediaOption(mediaSelectionOption: AVMediaSelectionOption?, inMediaSelectionGroup mediaSelectionGroup: AVMediaSelectionGroup)
  init()
}
