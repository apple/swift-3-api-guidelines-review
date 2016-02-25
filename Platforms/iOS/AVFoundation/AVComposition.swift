
@available(iOS 4.0, *)
class AVComposition : AVAsset, NSMutableCopying {
  @available(iOS 9.0, *)
  var URLAssetInitializationOptions: [String : AnyObject] { get }
  @available(iOS 4.0, *)
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
}
extension AVComposition {
}
@available(iOS 4.0, *)
class AVMutableComposition : AVComposition {
  @available(iOS 9.0, *)
  convenience init(URLAssetInitializationOptions URLAssetInitializationOptions: [String : AnyObject]?)
}
extension AVMutableComposition {
  func insertTimeRange(_ timeRange: CMTimeRange, ofAsset asset: AVAsset, atTime startTime: CMTime) throws
  func insertEmptyTimeRange(_ timeRange: CMTimeRange)
  func removeTimeRange(_ timeRange: CMTimeRange)
  func scaleTimeRange(_ timeRange: CMTimeRange, toDuration duration: CMTime)
}
extension AVMutableComposition {
  func addMutableTrackWithMediaType(_ mediaType: String, preferredTrackID preferredTrackID: CMPersistentTrackID) -> AVMutableCompositionTrack
  func removeTrack(_ track: AVCompositionTrack)
  func mutableTrackCompatibleWithTrack(_ track: AVAssetTrack) -> AVMutableCompositionTrack?
}
extension AVMutableComposition {
}
