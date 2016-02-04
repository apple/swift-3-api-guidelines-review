
@available(OSX 10.7, *)
class AVComposition : AVAsset, NSMutableCopying {
  var tracks: [AVCompositionTrack] { get }
  var naturalSize: CGSize { get }
  @available(OSX 10.11, *)
  var URLAssetInitializationOptions: [String : AnyObject] { get }
  convenience init(URL: NSURL)
  init()
  @available(OSX 10.7, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
}
extension AVComposition {
  func trackWithTrackID(trackID: CMPersistentTrackID) -> AVCompositionTrack?
  func tracksWithMediaType(mediaType: String) -> [AVCompositionTrack]
  func tracksWithMediaCharacteristic(mediaCharacteristic: String) -> [AVCompositionTrack]
}
@available(OSX 10.7, *)
class AVMutableComposition : AVComposition {
  var tracks: [AVMutableCompositionTrack] { get }
  var naturalSize: CGSize
  @available(OSX 10.11, *)
  convenience init(URLAssetInitializationOptions: [String : AnyObject]?)
  convenience init(URL: NSURL)
  init()
}
extension AVMutableComposition {
  func insertTimeRange(timeRange: CMTimeRange, ofAsset asset: AVAsset, atTime startTime: CMTime) throws
  func insertEmptyTimeRange(timeRange: CMTimeRange)
  func removeTimeRange(timeRange: CMTimeRange)
  func scaleTimeRange(timeRange: CMTimeRange, toDuration duration: CMTime)
}
extension AVMutableComposition {
  func addMutableTrackWithMediaType(mediaType: String, preferredTrackID: CMPersistentTrackID) -> AVMutableCompositionTrack
  func removeTrack(track: AVCompositionTrack)
  func mutableTrackCompatibleWithTrack(track: AVAssetTrack) -> AVMutableCompositionTrack?
}
extension AVMutableComposition {
  func trackWithTrackID(trackID: CMPersistentTrackID) -> AVMutableCompositionTrack?
  func tracksWithMediaType(mediaType: String) -> [AVMutableCompositionTrack]
  func tracksWithMediaCharacteristic(mediaCharacteristic: String) -> [AVMutableCompositionTrack]
}
