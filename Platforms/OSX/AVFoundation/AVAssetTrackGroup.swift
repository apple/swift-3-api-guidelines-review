
@available(OSX 10.9, *)
class AVAssetTrackGroup : NSObject, NSCopying {
  var trackIDs: [NSNumber] { get }
  @available(OSX 10.9, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
