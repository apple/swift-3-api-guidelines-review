
@available(OSX 10.7, *)
class AVComposition : AVAsset, MutableCopying {
  var tracks: [AVCompositionTrack] { get }
  var naturalSize: CGSize { get }
  @available(OSX 10.11, *)
  var urlAssetInitializationOptions: [String : AnyObject] { get }
  convenience init(url URL: URL)
  init()
  @available(OSX 10.7, *)
  func mutableCopy(with zone: Zone = nil) -> AnyObject
}
extension AVComposition {
  func track(withTrackID trackID: CMPersistentTrackID) -> AVCompositionTrack?
  func tracks(withMediaType mediaType: String) -> [AVCompositionTrack]
  func tracks(withMediaCharacteristic mediaCharacteristic: String) -> [AVCompositionTrack]
}
@available(OSX 10.7, *)
class AVMutableComposition : AVComposition {
  var tracks: [AVMutableCompositionTrack] { get }
  var naturalSize: CGSize
  @available(OSX 10.11, *)
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
