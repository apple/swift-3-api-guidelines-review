
@available(OSX 10.7, *)
class AVAssetWriterInput : NSObject {
  convenience init(mediaType: String, outputSettings: [String : AnyObject]?)
  @available(OSX 10.8, *)
  init(mediaType: String, outputSettings: [String : AnyObject]?, sourceFormatHint: CMFormatDescription?)
  var mediaType: String { get }
  var outputSettings: [String : AnyObject]? { get }
  @available(OSX 10.8, *)
  var sourceFormatHint: CMFormatDescription? { get }
  var metadata: [AVMetadataItem]
  var readyForMoreMediaData: Bool { get }
  var expectsMediaDataInRealTime: Bool
  func requestMediaDataWhenReadyOnQueue(queue: dispatch_queue_t, usingBlock block: () -> Void)
  func appendSampleBuffer(sampleBuffer: CMSampleBuffer) -> Bool
  func markAsFinished()
}
extension AVAssetWriterInput {
  @available(OSX 10.9, *)
  var languageCode: String?
  @available(OSX 10.9, *)
  var extendedLanguageTag: String?
}
extension AVAssetWriterInput {
  @available(OSX 10.9, *)
  var naturalSize: CGSize
  var transform: CGAffineTransform
}
extension AVAssetWriterInput {
  @available(OSX 10.9, *)
  var preferredVolume: Float
}
extension AVAssetWriterInput {
  @available(OSX 10.9, *)
  var marksOutputTrackAsEnabled: Bool
  @available(OSX 10.7, *)
  var mediaTimeScale: CMTimeScale
  @available(OSX 10.10, *)
  var preferredMediaChunkDuration: CMTime
  @available(OSX 10.10, *)
  var preferredMediaChunkAlignment: Int
  @available(OSX 10.10, *)
  @NSCopying var sampleReferenceBaseURL: NSURL?
}
extension AVAssetWriterInput {
  @available(OSX 10.9, *)
  func canAddTrackAssociationWithTrackOfInput(input: AVAssetWriterInput, type trackAssociationType: String) -> Bool
  @available(OSX 10.9, *)
  func addTrackAssociationWithTrackOfInput(input: AVAssetWriterInput, type trackAssociationType: String)
}
extension AVAssetWriterInput {
  @available(OSX 10.10, *)
  var performsMultiPassEncodingIfSupported: Bool
  @available(OSX 10.10, *)
  var canPerformMultiplePasses: Bool { get }
  @available(OSX 10.10, *)
  var currentPassDescription: AVAssetWriterInputPassDescription? { get }
  @available(OSX 10.10, *)
  func respondToEachPassDescriptionOnQueue(queue: dispatch_queue_t, usingBlock block: dispatch_block_t)
  @available(OSX 10.10, *)
  func markCurrentPassAsFinished()
}
@available(OSX 10.10, *)
class AVAssetWriterInputPassDescription : NSObject {
  var sourceTimeRanges: [NSValue] { get }
}
@available(OSX 10.7, *)
class AVAssetWriterInputPixelBufferAdaptor : NSObject {
  init(assetWriterInput input: AVAssetWriterInput, sourcePixelBufferAttributes: [String : AnyObject]?)
  var assetWriterInput: AVAssetWriterInput { get }
  var sourcePixelBufferAttributes: [String : AnyObject]? { get }
  var pixelBufferPool: CVPixelBufferPool? { get }
  func appendPixelBuffer(pixelBuffer: CVPixelBuffer, withPresentationTime presentationTime: CMTime) -> Bool
}
@available(OSX 10.10, *)
class AVAssetWriterInputMetadataAdaptor : NSObject {
  init(assetWriterInput input: AVAssetWriterInput)
  var assetWriterInput: AVAssetWriterInput { get }
  func appendTimedMetadataGroup(timedMetadataGroup: AVTimedMetadataGroup) -> Bool
}
