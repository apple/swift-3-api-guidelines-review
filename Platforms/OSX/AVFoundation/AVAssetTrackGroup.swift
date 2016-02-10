
@available(OSX 10.9, *)
class AVAssetTrackGroup : Object, Copying {
  var trackIDs: [Number] { get }
  init()
  @available(OSX 10.9, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
