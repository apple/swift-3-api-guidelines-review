
@available(OSX 10.9, *)
class AVAssetTrackGroup : NSObject, NSCopying {
  var trackIDs: [NSNumber] { get }
  init()
  @available(OSX 10.9, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
