
@available(iOS 4.0, *)
class AVVideoComposition : NSObject, NSCopying, NSMutableCopying {
  @available(iOS 6.0, *)
  /*not inherited*/ init(propertiesOf asset: AVAsset)
  @available(iOS 7.0, *)
  var customVideoCompositorClass: AnyObject.Type? { get }
  var frameDuration: CMTime { get }
  var renderSize: CGSize { get }
  var renderScale: Float { get }
  var instructions: [AVVideoCompositionInstructionProtocol] { get }
  var animationTool: AVVideoCompositionCoreAnimationTool? { get }
  init()
  @available(iOS 4.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 4.0, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
}
extension AVVideoComposition {
  @available(iOS 9.0, *)
  /*not inherited*/ init(asset: AVAsset, applyingCIFiltersWithHandler applier: (AVAsynchronousCIImageFilteringRequest) -> Void)
}
@available(iOS 4.0, *)
class AVMutableVideoComposition : AVVideoComposition {
  @available(iOS 6.0, *)
  /*not inherited*/ init(propertiesOf asset: AVAsset)
  @available(iOS 7.0, *)
  var customVideoCompositorClass: AnyObject.Type?
  var frameDuration: CMTime
  var renderSize: CGSize
  var renderScale: Float
  var instructions: [AVVideoCompositionInstructionProtocol]
  var animationTool: AVVideoCompositionCoreAnimationTool?
  init()
}
extension AVMutableVideoComposition {
  @available(iOS 9.0, *)
  /*not inherited*/ init(asset: AVAsset, applyingCIFiltersWithHandler applier: (AVAsynchronousCIImageFilteringRequest) -> Void)
}
@available(iOS 4.0, *)
class AVVideoCompositionInstruction : NSObject, NSSecureCoding, NSCopying, NSMutableCopying, AVVideoCompositionInstructionProtocol {
  var timeRange: CMTimeRange { get }
  var backgroundColor: CGColor? { get }
  var layerInstructions: [AVVideoCompositionLayerInstruction] { get }
  var enablePostProcessing: Bool { get }
  @available(iOS 7.0, *)
  var requiredSourceTrackIDs: [NSValue] { get }
  @available(iOS 7.0, *)
  var passthroughTrackID: CMPersistentTrackID { get }
  init()
  @available(iOS 4.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 4.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 4.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 4.0, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 7.0, *)
  var containsTweening: Bool { get }
}
@available(iOS 4.0, *)
class AVMutableVideoCompositionInstruction : AVVideoCompositionInstruction {
  var timeRange: CMTimeRange
  var backgroundColor: CGColor?
  var layerInstructions: [AVVideoCompositionLayerInstruction]
  var enablePostProcessing: Bool
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 4.0, *)
class AVVideoCompositionLayerInstruction : NSObject, NSSecureCoding, NSCopying, NSMutableCopying {
  var trackID: CMPersistentTrackID { get }
  func getTransformRamp(for time: CMTime, start startTransform: UnsafeMutablePointer<CGAffineTransform>, end endTransform: UnsafeMutablePointer<CGAffineTransform>, timeRange: UnsafeMutablePointer<CMTimeRange>) -> Bool
  func getOpacityRamp(for time: CMTime, startOpacity: UnsafeMutablePointer<Float>, endOpacity: UnsafeMutablePointer<Float>, timeRange: UnsafeMutablePointer<CMTimeRange>) -> Bool
  @available(iOS 7.0, *)
  func getCropRectangleRamp(for time: CMTime, startCropRectangle: UnsafeMutablePointer<CGRect>, endCropRectangle: UnsafeMutablePointer<CGRect>, timeRange: UnsafeMutablePointer<CMTimeRange>) -> Bool
  init()
  @available(iOS 4.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 4.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 4.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 4.0, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
}
@available(iOS 4.0, *)
class AVMutableVideoCompositionLayerInstruction : AVVideoCompositionLayerInstruction {
  convenience init(assetTrack track: AVAssetTrack)
  var trackID: CMPersistentTrackID
  func setTransformRampFromStart(startTransform: CGAffineTransform, toEnd endTransform: CGAffineTransform, timeRange: CMTimeRange)
  func setTransform(transform: CGAffineTransform, at time: CMTime)
  func setOpacityRampFromStartOpacity(startOpacity: Float, toEndOpacity endOpacity: Float, timeRange: CMTimeRange)
  func setOpacity(opacity: Float, at time: CMTime)
  @available(iOS 7.0, *)
  func setCropRectangleRampFromStartCropRectangle(startCropRectangle: CGRect, toEndCropRectangle endCropRectangle: CGRect, timeRange: CMTimeRange)
  @available(iOS 7.0, *)
  func setCropRectangle(cropRectangle: CGRect, at time: CMTime)
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 4.0, *)
class AVVideoCompositionCoreAnimationTool : NSObject {
  convenience init(additionalLayer layer: CALayer, asTrackID trackID: CMPersistentTrackID)
  convenience init(postProcessingAsVideoLayer videoLayer: CALayer, in animationLayer: CALayer)
  @available(iOS 7.0, *)
  convenience init(postProcessingAsVideoLayers videoLayers: [CALayer], in animationLayer: CALayer)
  init()
}
extension AVAsset {
  func unusedTrackID() -> CMPersistentTrackID
}
extension AVVideoComposition {
  @available(iOS 5.0, *)
  func isValid(for asset: AVAsset?, timeRange: CMTimeRange, validationDelegate: AVVideoCompositionValidationHandling?) -> Bool
}
protocol AVVideoCompositionValidationHandling : NSObjectProtocol {
  @available(iOS 5.0, *)
  optional func videoComposition(videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingInvalidValueForKey key: String) -> Bool
  @available(iOS 5.0, *)
  optional func videoComposition(videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingEmpty timeRange: CMTimeRange) -> Bool
  @available(iOS 5.0, *)
  optional func videoComposition(videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingInvalidTimeRangeIn videoCompositionInstruction: AVVideoCompositionInstructionProtocol) -> Bool
  @available(iOS 5.0, *)
  optional func videoComposition(videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingInvalidTrackIDIn videoCompositionInstruction: AVVideoCompositionInstructionProtocol, layerInstruction: AVVideoCompositionLayerInstruction, asset: AVAsset) -> Bool
}
