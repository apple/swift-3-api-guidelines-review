
@available(OSX 10.7, *)
class AVComposition : AVAsset, NSMutableCopying {
  @available(OSX 10.11, *)
  var urlAssetInitializationOptions: [String : AnyObject] { get }
  @available(OSX 10.7, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
}
extension AVComposition {
}
@available(OSX 10.7, *)
class AVMutableComposition : AVComposition {
  @available(OSX 10.11, *)
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
