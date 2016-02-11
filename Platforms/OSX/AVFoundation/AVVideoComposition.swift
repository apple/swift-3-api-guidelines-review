
@available(OSX 10.7, *)
class AVVideoComposition : Object, Copying, MutableCopying {
  @available(OSX 10.9, *)
  /*not inherited*/ init(propertiesOf asset: AVAsset)
  @available(OSX 10.9, *)
  var customVideoCompositorClass: AnyObject.Type? { get }
  var frameDuration: CMTime { get }
  var renderSize: CGSize { get }
  var instructions: [AVVideoCompositionInstructionProtocol] { get }
  var animationTool: AVVideoCompositionCoreAnimationTool? { get }
  init()
  @available(OSX 10.7, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopy(with zone: Zone = nil) -> AnyObject
}
extension AVVideoComposition {
  @available(OSX 10.11, *)
  /*not inherited*/ init(asset: AVAsset, applyingCIFiltersWithHandler applier: (AVAsynchronousCIImageFilteringRequest) -> Void)
}
@available(OSX 10.7, *)
class AVMutableVideoComposition : AVVideoComposition {
  @available(OSX 10.9, *)
  /*not inherited*/ init(propertiesOf asset: AVAsset)
  @available(OSX 10.9, *)
  var customVideoCompositorClass: AnyObject.Type?
  var frameDuration: CMTime
  var renderSize: CGSize
  var instructions: [AVVideoCompositionInstructionProtocol]
  var animationTool: AVVideoCompositionCoreAnimationTool?
  init()
}
extension AVMutableVideoComposition {
  @available(OSX 10.11, *)
  /*not inherited*/ init(asset: AVAsset, applyingCIFiltersWithHandler applier: (AVAsynchronousCIImageFilteringRequest) -> Void)
}
@available(OSX 10.7, *)
class AVVideoCompositionInstruction : Object, SecureCoding, Copying, MutableCopying, AVVideoCompositionInstructionProtocol {
  var timeRange: CMTimeRange { get }
  var backgroundColor: CGColor? { get }
  var layerInstructions: [AVVideoCompositionLayerInstruction] { get }
  var enablePostProcessing: Bool { get }
  @available(OSX 10.9, *)
  var requiredSourceTrackIDs: [Value] { get }
  @available(OSX 10.9, *)
  var passthroughTrackID: CMPersistentTrackID { get }
  init()
  @available(OSX 10.7, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.7, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.7, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopy(with zone: Zone = nil) -> AnyObject
  @available(OSX 10.9, *)
  var containsTweening: Bool { get }
}
@available(OSX 10.7, *)
class AVMutableVideoCompositionInstruction : AVVideoCompositionInstruction {
  var timeRange: CMTimeRange
  var backgroundColor: CGColor?
  var layerInstructions: [AVVideoCompositionLayerInstruction]
  var enablePostProcessing: Bool
  init()
  init?(coder aDecoder: Coder)
}
@available(OSX 10.7, *)
class AVVideoCompositionLayerInstruction : Object, SecureCoding, Copying, MutableCopying {
  var trackID: CMPersistentTrackID { get }
  func getTransformRamp(for time: CMTime, start startTransform: UnsafeMutablePointer<CGAffineTransform>, end endTransform: UnsafeMutablePointer<CGAffineTransform>, timeRange: UnsafeMutablePointer<CMTimeRange>) -> Bool
  func getOpacityRamp(for time: CMTime, startOpacity: UnsafeMutablePointer<Float>, endOpacity: UnsafeMutablePointer<Float>, timeRange: UnsafeMutablePointer<CMTimeRange>) -> Bool
  @available(OSX 10.9, *)
  func getCropRectangleRamp(for time: CMTime, startCropRectangle: UnsafeMutablePointer<CGRect>, endCropRectangle: UnsafeMutablePointer<CGRect>, timeRange: UnsafeMutablePointer<CMTimeRange>) -> Bool
  init()
  @available(OSX 10.7, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.7, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.7, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopy(with zone: Zone = nil) -> AnyObject
}
@available(OSX 10.7, *)
class AVMutableVideoCompositionLayerInstruction : AVVideoCompositionLayerInstruction {
  convenience init(assetTrack track: AVAssetTrack)
  var trackID: CMPersistentTrackID
  func setTransformRampFromStart(startTransform: CGAffineTransform, toEnd endTransform: CGAffineTransform, timeRange: CMTimeRange)
  func setTransform(transform: CGAffineTransform, at time: CMTime)
  func setOpacityRampFromStartOpacity(startOpacity: Float, toEndOpacity endOpacity: Float, timeRange: CMTimeRange)
  func setOpacity(opacity: Float, at time: CMTime)
  @available(OSX 10.9, *)
  func setCropRectangleRampFromStartCropRectangle(startCropRectangle: CGRect, toEndCropRectangle endCropRectangle: CGRect, timeRange: CMTimeRange)
  @available(OSX 10.9, *)
  func setCropRectangle(cropRectangle: CGRect, at time: CMTime)
  init()
  init?(coder aDecoder: Coder)
}
@available(OSX 10.7, *)
class AVVideoCompositionCoreAnimationTool : Object {
  convenience init(additionalLayer layer: CALayer, asTrackID trackID: CMPersistentTrackID)
  convenience init(postProcessingAsVideoLayer videoLayer: CALayer, in animationLayer: CALayer)
  @available(OSX 10.9, *)
  convenience init(postProcessingAsVideoLayers videoLayers: [CALayer], in animationLayer: CALayer)
  init()
}
extension AVAsset {
  func unusedTrackID() -> CMPersistentTrackID
}
extension AVVideoComposition {
  @available(OSX 10.8, *)
  func isValid(for asset: AVAsset?, timeRange: CMTimeRange, validationDelegate: AVVideoCompositionValidationHandling?) -> Bool
}
protocol AVVideoCompositionValidationHandling : ObjectProtocol {
  @available(OSX 10.8, *)
  optional func videoComposition(videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingInvalidValueForKey key: String) -> Bool
  @available(OSX 10.8, *)
  optional func videoComposition(videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingEmpty timeRange: CMTimeRange) -> Bool
  @available(OSX 10.8, *)
  optional func videoComposition(videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingInvalidTimeRangeIn videoCompositionInstruction: AVVideoCompositionInstructionProtocol) -> Bool
  @available(OSX 10.8, *)
  optional func videoComposition(videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingInvalidTrackIDIn videoCompositionInstruction: AVVideoCompositionInstructionProtocol, layerInstruction: AVVideoCompositionLayerInstruction, asset: AVAsset) -> Bool
}
