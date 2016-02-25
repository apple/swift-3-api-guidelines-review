
@available(OSX 10.11, *)
class AVMediaSelection : NSObject, NSCopying, NSMutableCopying {
  weak var asset: @sil_weak AVAsset? { get }
  func selectedMediaOption(in mediaSelectionGroup: AVMediaSelectionGroup) -> AVMediaSelectionOption?
  func mediaSelectionCriteriaCanBeAppliedAutomatically(to mediaSelectionGroup: AVMediaSelectionGroup) -> Bool
  @available(OSX 10.11, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.11, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.11, *)
class AVMutableMediaSelection : AVMediaSelection {
  func selectMediaOption(_ mediaSelectionOption: AVMediaSelectionOption?, in mediaSelectionGroup: AVMediaSelectionGroup)
}
