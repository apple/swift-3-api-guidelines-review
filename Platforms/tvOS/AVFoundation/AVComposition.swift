
@available(tvOS 4.0, *)
class AVComposition : AVAsset, NSMutableCopying {
  @available(tvOS 9.0, *)
  var urlAssetInitializationOptions: [String : AnyObject] { get }
  @available(tvOS 4.0, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
}
extension AVComposition {
}
@available(tvOS 4.0, *)
class AVMutableComposition : AVComposition {
  @available(tvOS 9.0, *)
  convenience init(urlAssetInitializationOptions URLAssetInitializationOptions: [String : AnyObject]? = [:])
}
extension AVMutableComposition {
  func insert(_ timeRange: CMTimeRange, of asset: AVAsset, at startTime: CMTime) throws
  func insertEmpty(_ timeRange: CMTimeRange)
  func remove(_ timeRange: CMTimeRange)
  func scaleTimeRange(_ timeRange: CMTimeRange, toDuration duration: CMTime)
}
extension AVMutableComposition {
  func addMutableTrack(withMediaType mediaType: String, preferredTrackID preferredTrackID: CMPersistentTrackID) -> AVMutableCompositionTrack
  func removeTrack(_ track: AVCompositionTrack)
  func mutableTrack(compatibleWith track: AVAssetTrack) -> AVMutableCompositionTrack?
}
extension AVMutableComposition {
}
