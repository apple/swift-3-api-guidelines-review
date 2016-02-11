
@available(tvOS 4.1, *)
class AVAssetWriterInput : Object {
  convenience init(mediaType: String, outputSettings: [String : AnyObject]?)
  @available(tvOS 6.0, *)
  init(mediaType: String, outputSettings: [String : AnyObject]?, sourceFormatHint: CMFormatDescription?)
  var mediaType: String { get }
  var outputSettings: [String : AnyObject]? { get }
  @available(tvOS 6.0, *)
  var sourceFormatHint: CMFormatDescription? { get }
  var metadata: [AVMetadataItem]
  var isReadyForMoreMediaData: Bool { get }
  var expectsMediaDataInRealTime: Bool
  func requestMediaDataWhenReady(on queue: dispatch_queue_t, using block: () -> Void)
  func append(sampleBuffer: CMSampleBuffer) -> Bool
  func markAsFinished()
}
extension AVAssetWriterInput {
  @available(tvOS 7.0, *)
  var languageCode: String?
  @available(tvOS 7.0, *)
  var extendedLanguageTag: String?
}
extension AVAssetWriterInput {
  @available(tvOS 7.0, *)
  var naturalSize: CGSize
  var transform: CGAffineTransform
}
extension AVAssetWriterInput {
  @available(tvOS 7.0, *)
  var preferredVolume: Float
}
extension AVAssetWriterInput {
  @available(tvOS 7.0, *)
  var marksOutputTrackAsEnabled: Bool
  @available(tvOS 4.3, *)
  var mediaTimeScale: CMTimeScale
  @available(tvOS 8.0, *)
  var preferredMediaChunkDuration: CMTime
  @available(tvOS 8.0, *)
  var preferredMediaChunkAlignment: Int
  @available(tvOS 8.0, *)
  @NSCopying var sampleReferenceBaseURL: URL?
}
extension AVAssetWriterInput {
  @available(tvOS 7.0, *)
  func canAddTrackAssociation(withTrackOf input: AVAssetWriterInput, type trackAssociationType: String) -> Bool
  @available(tvOS 7.0, *)
  func addTrackAssociation(trackOf input: AVAssetWriterInput, type trackAssociationType: String)
}
extension AVAssetWriterInput {
  @available(tvOS 8.0, *)
  var performsMultiPassEncodingIfSupported: Bool
  @available(tvOS 8.0, *)
  var canPerformMultiplePasses: Bool { get }
  @available(tvOS 8.0, *)
  var currentPassDescription: AVAssetWriterInputPassDescription? { get }
  @available(tvOS 8.0, *)
  func respondToEachPassDescription(on queue: dispatch_queue_t, using block: dispatch_block_t)
  @available(tvOS 8.0, *)
  func markCurrentPassAsFinished()
}
@available(tvOS 8.0, *)
class AVAssetWriterInputPassDescription : Object {
  var sourceTimeRanges: [Value] { get }
}
@available(tvOS 4.1, *)
class AVAssetWriterInputPixelBufferAdaptor : Object {
  init(assetWriterInput input: AVAssetWriterInput, sourcePixelBufferAttributes: [String : AnyObject]? = [:])
  var assetWriterInput: AVAssetWriterInput { get }
  var sourcePixelBufferAttributes: [String : AnyObject]? { get }
  var pixelBufferPool: CVPixelBufferPool? { get }
  func append(pixelBuffer: CVPixelBuffer, withPresentationTime presentationTime: CMTime) -> Bool
}
@available(tvOS 8.0, *)
class AVAssetWriterInputMetadataAdaptor : Object {
  init(assetWriterInput input: AVAssetWriterInput)
  var assetWriterInput: AVAssetWriterInput { get }
  func append(timedMetadataGroup: AVTimedMetadataGroup) -> Bool
}
