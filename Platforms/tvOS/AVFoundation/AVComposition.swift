
@available(tvOS 4.0, *)
class AVComposition : AVAsset, NSMutableCopying {
  var tracks: [AVCompositionTrack] { get }
  var naturalSize: CGSize { get }
  @available(tvOS 9.0, *)
  var urlAssetInitializationOptions: [String : AnyObject] { get }
  convenience init(url URL: NSURL)
  init()
  @available(tvOS 4.0, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
}
extension AVComposition {
  func track(withTrackID trackID: CMPersistentTrackID) -> AVCompositionTrack?
  func tracks(withMediaType mediaType: String) -> [AVCompositionTrack]
  func tracks(withMediaCharacteristic mediaCharacteristic: String) -> [AVCompositionTrack]
}
@available(tvOS 4.0, *)
class AVMutableComposition : AVComposition {
  var tracks: [AVMutableCompositionTrack] { get }
  var naturalSize: CGSize
  @available(tvOS 9.0, *)
  convenience init(urlAssetInitializationOptions URLAssetInitializationOptions: [String : AnyObject]? = [:])
  convenience init(url URL: NSURL)
  init()
}
extension AVMutableComposition {
  func insert(_ timeRange: CMTimeRange, of asset: AVAsset, at startTime: CMTime) throws
  func insertEmpty(_ timeRange: CMTimeRange)
  func remove(_ timeRange: CMTimeRange)
  func scaleTimeRange(_ timeRange: CMTimeRange, toDuration duration: CMTime)
}
extension AVMutableComposition {
  func addMutableTrack(mediaType mediaType: String, preferredTrackID preferredTrackID: CMPersistentTrackID) -> AVMutableCompositionTrack
  func removeTrack(_ track: AVCompositionTrack)
  func mutableTrack(compatibleWith track: AVAssetTrack) -> AVMutableCompositionTrack?
}
extension AVMutableComposition {
  func track(withTrackID trackID: CMPersistentTrackID) -> AVMutableCompositionTrack?
  func tracks(withMediaType mediaType: String) -> [AVMutableCompositionTrack]
  func tracks(withMediaCharacteristic mediaCharacteristic: String) -> [AVMutableCompositionTrack]
}
