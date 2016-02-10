
@available(iOS 4.0, *)
class AVComposition : AVAsset, MutableCopying {
  var tracks: [AVCompositionTrack] { get }
  var naturalSize: CGSize { get }
  @available(iOS 9.0, *)
  var urlAssetInitializationOptions: [String : AnyObject] { get }
  convenience init(url URL: URL)
  init()
  @available(iOS 4.0, *)
  func mutableCopy(withZone zone: Zone = nil) -> AnyObject
}
extension AVComposition {
  func track(withTrackID trackID: CMPersistentTrackID) -> AVCompositionTrack?
  func tracks(withMediaType mediaType: String) -> [AVCompositionTrack]
  func tracks(withMediaCharacteristic mediaCharacteristic: String) -> [AVCompositionTrack]
}
@available(iOS 4.0, *)
class AVMutableComposition : AVComposition {
  var tracks: [AVMutableCompositionTrack] { get }
  var naturalSize: CGSize
  @available(iOS 9.0, *)
  convenience init(urlAssetInitializationOptions URLAssetInitializationOptions: [String : AnyObject]? = [:])
  convenience init(url URL: URL)
  init()
}
extension AVMutableComposition {
  func insert(timeRange: CMTimeRange, of asset: AVAsset, at startTime: CMTime) throws
  func insertEmpty(timeRange: CMTimeRange)
  func remove(timeRange: CMTimeRange)
  func scaleTimeRange(timeRange: CMTimeRange, toDuration duration: CMTime)
}
extension AVMutableComposition {
  func addMutableTrack(mediaType mediaType: String, preferredTrackID: CMPersistentTrackID) -> AVMutableCompositionTrack
  func removeTrack(track: AVCompositionTrack)
  func mutableTrackCompatibleWith(track: AVAssetTrack) -> AVMutableCompositionTrack?
}
extension AVMutableComposition {
  func track(withTrackID trackID: CMPersistentTrackID) -> AVMutableCompositionTrack?
  func tracks(withMediaType mediaType: String) -> [AVMutableCompositionTrack]
  func tracks(withMediaCharacteristic mediaCharacteristic: String) -> [AVMutableCompositionTrack]
}
