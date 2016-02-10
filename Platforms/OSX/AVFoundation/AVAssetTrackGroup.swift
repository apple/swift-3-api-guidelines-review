
@available(OSX 10.9, *)
class AVAssetTrackGroup : Object, Copying {
  var trackIDs: [Number] { get }
  init()
  @available(OSX 10.9, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
