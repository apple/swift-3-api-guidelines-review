
struct AVPixelAspectRatio {
  var horizontalSpacing: Int
  var verticalSpacing: Int
  init()
  init(horizontalSpacing: Int, verticalSpacing: Int)
}
struct AVEdgeWidths {
  var left: CGFloat
  var top: CGFloat
  var right: CGFloat
  var bottom: CGFloat
  init()
  init(left: CGFloat, top: CGFloat, right: CGFloat, bottom: CGFloat)
}
@available(tvOS 7.0, *)
class AVVideoCompositionRenderContext : Object {
  var size: CGSize { get }
  var renderTransform: CGAffineTransform { get }
  var renderScale: Float { get }
  var pixelAspectRatio: AVPixelAspectRatio { get }
  var edgeWidths: AVEdgeWidths { get }
  var highQualityRendering: Bool { get }
  var videoComposition: AVVideoComposition { get }
  func newPixelBuffer() -> CVPixelBuffer?
  init()
}
@available(tvOS 7.0, *)
protocol AVVideoCompositing : ObjectProtocol {
  var sourcePixelBufferAttributes: [String : AnyObject]? { get }
  var requiredPixelBufferAttributesForRenderContext: [String : AnyObject] { get }
  func renderContextChanged(newRenderContext: AVVideoCompositionRenderContext)
  func start(asyncVideoCompositionRequest: AVAsynchronousVideoCompositionRequest)
  optional func cancelAllPendingVideoCompositionRequests()
}
@available(tvOS 7.0, *)
class AVAsynchronousVideoCompositionRequest : Object, Copying {
  var renderContext: AVVideoCompositionRenderContext { get }
  var compositionTime: CMTime { get }
  var sourceTrackIDs: [Number] { get }
  var videoCompositionInstruction: AVVideoCompositionInstructionProtocol { get }
  func sourceFrame(byTrackID trackID: CMPersistentTrackID) -> CVPixelBuffer?
  func finish(withComposedVideoFrame composedVideoFrame: CVPixelBuffer)
  func finishWithError(error: Error)
  func finishCancelledRequest()
  init()
  @available(tvOS 7.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
@available(tvOS 9.0, *)
class AVAsynchronousCIImageFilteringRequest : Object, Copying {
  var renderSize: CGSize { get }
  var compositionTime: CMTime { get }
  func finishWithError(error: Error)
  init()
  @available(tvOS 9.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
@available(tvOS 7.0, *)
protocol AVVideoCompositionInstructionProtocol : ObjectProtocol {
  var timeRange: CMTimeRange { get }
  var enablePostProcessing: Bool { get }
  var containsTweening: Bool { get }
  var requiredSourceTrackIDs: [Value]? { get }
  var passthroughTrackID: CMPersistentTrackID { get }
}
