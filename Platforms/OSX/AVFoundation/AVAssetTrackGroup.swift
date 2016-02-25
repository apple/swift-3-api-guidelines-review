
@available(OSX 10.9, *)
class AVAssetTrackGroup : NSObject, NSCopying {
  var trackIDs: [NSNumber] { get }
  @available(OSX 10.9, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
