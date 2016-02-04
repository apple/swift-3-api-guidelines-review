
@available(iOS 4.1, *)
class AVAssetReaderOutput : Object {
  var mediaType: String { get }
  @available(iOS 5.0, *)
  var alwaysCopiesSampleData: Bool
  func copyNextSampleBuffer() -> CMSampleBuffer?
  init()
}
extension AVAssetReaderOutput {
  @available(iOS 8.0, *)
  var supportsRandomAccess: Bool
  @available(iOS 8.0, *)
  func resetForReadingTimeRanges(timeRanges: [Value])
  @available(iOS 8.0, *)
  func markConfigurationAsFinal()
}
@available(iOS 4.1, *)
class AVAssetReaderTrackOutput : AVAssetReaderOutput {
  init(track: AVAssetTrack, outputSettings: [String : AnyObject]?)
  var track: AVAssetTrack { get }
  var outputSettings: [String : AnyObject]? { get }
  @available(iOS 7.0, *)
  var audioTimePitchAlgorithm: String
}
@available(iOS 4.1, *)
class AVAssetReaderAudioMixOutput : AVAssetReaderOutput {
  init(audioTracks: [AVAssetTrack], audioSettings: [String : AnyObject]?)
  var audioTracks: [AVAssetTrack] { get }
  var audioSettings: [String : AnyObject]? { get }
  @NSCopying var audioMix: AVAudioMix?
  @available(iOS 7.0, *)
  var audioTimePitchAlgorithm: String
}
@available(iOS 4.1, *)
class AVAssetReaderVideoCompositionOutput : AVAssetReaderOutput {
  init(videoTracks: [AVAssetTrack], videoSettings: [String : AnyObject]?)
  var videoTracks: [AVAssetTrack] { get }
  var videoSettings: [String : AnyObject]? { get }
  @NSCopying var videoComposition: AVVideoComposition?
  @available(iOS 7.0, *)
  var customVideoCompositor: AVVideoCompositing? { get }
}
@available(iOS 8.0, *)
class AVAssetReaderOutputMetadataAdaptor : Object {
  init(assetReaderTrackOutput trackOutput: AVAssetReaderTrackOutput)
  var assetReaderTrackOutput: AVAssetReaderTrackOutput { get }
  func nextTimedMetadataGroup() -> AVTimedMetadataGroup?
}
@available(iOS 8.0, *)
class AVAssetReaderSampleReferenceOutput : AVAssetReaderOutput {
  init(track: AVAssetTrack)
  var track: AVAssetTrack { get }
}
