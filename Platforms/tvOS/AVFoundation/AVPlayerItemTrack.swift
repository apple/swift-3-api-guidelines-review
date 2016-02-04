
@available(tvOS 4.0, *)
class AVPlayerItemTrack : NSObject {
  var assetTrack: AVAssetTrack { get }
  var enabled: Bool
  @available(tvOS 7.0, *)
  var currentVideoFrameRate: Float { get }
  init()
}
