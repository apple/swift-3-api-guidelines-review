
@available(iOS 7.0, *)
class AVAssetTrackGroup : NSObject, NSCopying {
  var trackIDs: [NSNumber] { get }
  @available(iOS 7.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
