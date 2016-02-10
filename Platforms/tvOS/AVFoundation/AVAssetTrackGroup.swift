
@available(tvOS 7.0, *)
class AVAssetTrackGroup : Object, Copying {
  var trackIDs: [Number] { get }
  init()
  @available(tvOS 7.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
