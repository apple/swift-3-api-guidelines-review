
@available(iOS 4.0, *)
class AVPlayerItemTrack : Object {
  var assetTrack: AVAssetTrack { get }
  var isEnabled: Bool
  @available(iOS 7.0, *)
  var currentVideoFrameRate: Float { get }
  init()
}
