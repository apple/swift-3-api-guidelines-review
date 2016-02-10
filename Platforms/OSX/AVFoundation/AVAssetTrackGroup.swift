
@available(OSX 10.9, *)
class AVAssetTrackGroup : Object, Copying {
  var trackIDs: [Number] { get }
  init()
  @available(OSX 10.9, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
