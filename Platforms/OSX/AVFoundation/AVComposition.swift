
@available(OSX 10.7, *)
class AVComposition : AVAsset, NSMutableCopying {
  @available(OSX 10.11, *)
  var URLAssetInitializationOptions: [String : AnyObject] { get }
  @available(OSX 10.7, *)
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
}
extension AVComposition {
}
@available(OSX 10.7, *)
class AVMutableComposition : AVComposition {
  @available(OSX 10.11, *)
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
