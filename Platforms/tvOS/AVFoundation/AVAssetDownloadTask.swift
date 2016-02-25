
@available(tvOS 9.0, *)
let AVAssetDownloadTaskMinimumRequiredMediaBitrateKey: String
@available(tvOS 9.0, *)
let AVAssetDownloadTaskMediaSelectionKey: String
@available(tvOS 9.0, *)
class AVAssetDownloadTask : NSURLSessionTask {
  var URLAsset: AVURLAsset { get }
  var destinationURL: NSURL { get }
  var options: [String : AnyObject]? { get }
  var loadedTimeRanges: [NSValue] { get }
}
protocol AVAssetDownloadDelegate : NSURLSessionTaskDelegate {
  @available(tvOS 9.0, *)
  optional func URLSession(_ session: NSURLSession, assetDownloadTask assetDownloadTask: AVAssetDownloadTask, didLoadTimeRange timeRange: CMTimeRange, totalTimeRangesLoaded loadedTimeRanges: [NSValue], timeRangeExpectedToLoad timeRangeExpectedToLoad: CMTimeRange)
  @available(tvOS 9.0, *)
  optional func URLSession(_ session: NSURLSession, assetDownloadTask assetDownloadTask: AVAssetDownloadTask, didResolveMediaSelection resolvedMediaSelection: AVMediaSelection)
}
@available(tvOS 9.0, *)
class AVAssetDownloadURLSession : NSURLSession {
  /*not inherited*/ init(configuration configuration: NSURLSessionConfiguration, assetDownloadDelegate delegate: AVAssetDownloadDelegate?, delegateQueue delegateQueue: NSOperationQueue?)
  func assetDownloadTaskWithURLAsset(_ URLAsset: AVURLAsset, destinationURL destinationURL: NSURL, options options: [String : AnyObject]?) -> AVAssetDownloadTask?
}
