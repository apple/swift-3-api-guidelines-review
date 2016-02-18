
@available(OSX 10.11, *)
class AVMediaSelection : Object, Copying, MutableCopying {
  weak var asset: @sil_weak AVAsset? { get }
  func selectedMediaOption(in mediaSelectionGroup: AVMediaSelectionGroup) -> AVMediaSelectionOption?
  func mediaSelectionCriteriaCanBeAppliedAutomatically(to mediaSelectionGroup: AVMediaSelectionGroup) -> Bool
  init()
  @available(OSX 10.11, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(OSX 10.11, *)
  func mutableCopy(zone: Zone = nil) -> AnyObject
}
@available(OSX 10.11, *)
class AVMutableMediaSelection : AVMediaSelection {
  func selectMediaOption(mediaSelectionOption: AVMediaSelectionOption?, in mediaSelectionGroup: AVMediaSelectionGroup)
  init()
}
