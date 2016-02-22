
@available(OSX 10.7, *)
class AVCompositionTrackSegment : AVAssetTrackSegment {
  init(url URL: NSURL, trackID trackID: CMPersistentTrackID, sourceTimeRange sourceTimeRange: CMTimeRange, targetTimeRange targetTimeRange: CMTimeRange)
  init(timeRange timeRange: CMTimeRange)
  var isEmpty: Bool { get }
  var sourceURL: NSURL? { get }
  var sourceTrackID: CMPersistentTrackID { get }
}
