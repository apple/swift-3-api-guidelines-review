
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
@available(OSX 10.9, *)
class AVVideoCompositionRenderContext : NSObject {
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
@available(OSX 10.9, *)
protocol AVVideoCompositing : NSObjectProtocol {
  var sourcePixelBufferAttributes: [String : AnyObject]? { get }
  var requiredPixelBufferAttributesForRenderContext: [String : AnyObject] { get }
  func renderContextChanged(newRenderContext: AVVideoCompositionRenderContext)
  func start(asyncVideoCompositionRequest: AVAsynchronousVideoCompositionRequest)
  optional func cancelAllPendingVideoCompositionRequests()
}
@available(OSX 10.9, *)
class AVAsynchronousVideoCompositionRequest : NSObject, NSCopying {
  var renderContext: AVVideoCompositionRenderContext { get }
  var compositionTime: CMTime { get }
  var sourceTrackIDs: [NSNumber] { get }
  var videoCompositionInstruction: AVVideoCompositionInstructionProtocol { get }
  func sourceFrame(byTrackID trackID: CMPersistentTrackID) -> CVPixelBuffer?
  func finish(composedVideoFrame composedVideoFrame: CVPixelBuffer)
  func finishWithError(error: NSError)
  func finishCancelledRequest()
  init()
  @available(OSX 10.9, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.11, *)
class AVAsynchronousCIImageFilteringRequest : NSObject, NSCopying {
  var renderSize: CGSize { get }
  var compositionTime: CMTime { get }
  var sourceImage: CIImage { get }
  func finish(filteredImage: CIImage, context: CIContext?)
  func finishWithError(error: NSError)
  init()
  @available(OSX 10.11, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.9, *)
protocol AVVideoCompositionInstructionProtocol : NSObjectProtocol {
  var timeRange: CMTimeRange { get }
  var enablePostProcessing: Bool { get }
  var containsTweening: Bool { get }
  var requiredSourceTrackIDs: [NSValue]? { get }
  var passthroughTrackID: CMPersistentTrackID { get }
}
