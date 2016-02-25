
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
  @available(iOS 4.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 4.0, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
}
extension AVVideoComposition {
  @available(iOS 9.0, *)
  /*not inherited*/ init(asset asset: AVAsset, applyingCIFiltersWithHandler applier: (AVAsynchronousCIImageFilteringRequest) -> Void)
}
@available(iOS 4.0, *)
class AVMutableVideoComposition : AVVideoComposition {
}
extension AVMutableVideoComposition {
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
}
@available(iOS 4.0, *)
class AVVideoCompositionLayerInstruction : NSObject, NSSecureCoding, NSCopying, NSMutableCopying {
  var trackID: CMPersistentTrackID { get }
  func getTransformRamp(for time: CMTime, start startTransform: UnsafeMutablePointer<CGAffineTransform>, end endTransform: UnsafeMutablePointer<CGAffineTransform>, timeRange timeRange: UnsafeMutablePointer<CMTimeRange>) -> Bool
  func getOpacityRamp(for time: CMTime, startOpacity startOpacity: UnsafeMutablePointer<Float>, endOpacity endOpacity: UnsafeMutablePointer<Float>, timeRange timeRange: UnsafeMutablePointer<CMTimeRange>) -> Bool
  @available(iOS 7.0, *)
  func getCropRectangleRamp(for time: CMTime, startCropRectangle startCropRectangle: UnsafeMutablePointer<CGRect>, endCropRectangle endCropRectangle: UnsafeMutablePointer<CGRect>, timeRange timeRange: UnsafeMutablePointer<CMTimeRange>) -> Bool
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
  func setTransformRampFromStart(_ startTransform: CGAffineTransform, toEnd endTransform: CGAffineTransform, timeRange timeRange: CMTimeRange)
  func setTransform(_ transform: CGAffineTransform, at time: CMTime)
  func setOpacityRampFromStartOpacity(_ startOpacity: Float, toEndOpacity endOpacity: Float, timeRange timeRange: CMTimeRange)
  func setOpacity(_ opacity: Float, at time: CMTime)
  @available(iOS 7.0, *)
  func setCropRectangleRampFromStartCropRectangle(_ startCropRectangle: CGRect, toEndCropRectangle endCropRectangle: CGRect, timeRange timeRange: CMTimeRange)
  @available(iOS 7.0, *)
  func setCropRectangle(_ cropRectangle: CGRect, at time: CMTime)
}
@available(iOS 4.0, *)
class AVVideoCompositionCoreAnimationTool : NSObject {
  convenience init(additionalLayer layer: CALayer, asTrackID trackID: CMPersistentTrackID)
  convenience init(postProcessingAsVideoLayer videoLayer: CALayer, in animationLayer: CALayer)
  @available(iOS 7.0, *)
  convenience init(postProcessingAsVideoLayers videoLayers: [CALayer], in animationLayer: CALayer)
}
extension AVAsset {
  func unusedTrackID() -> CMPersistentTrackID
}
extension AVVideoComposition {
  @available(iOS 5.0, *)
  func isValid(for asset: AVAsset?, timeRange timeRange: CMTimeRange, validationDelegate validationDelegate: AVVideoCompositionValidationHandling?) -> Bool
}
protocol AVVideoCompositionValidationHandling : NSObjectProtocol {
  @available(iOS 5.0, *)
  optional func videoComposition(_ videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingInvalidValueForKey key: String) -> Bool
  @available(iOS 5.0, *)
  optional func videoComposition(_ videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingEmpty timeRange: CMTimeRange) -> Bool
  @available(iOS 5.0, *)
  optional func videoComposition(_ videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingInvalidTimeRangeIn videoCompositionInstruction: AVVideoCompositionInstructionProtocol) -> Bool
  @available(iOS 5.0, *)
  optional func videoComposition(_ videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingInvalidTrackIDIn videoCompositionInstruction: AVVideoCompositionInstructionProtocol, layerInstruction layerInstruction: AVVideoCompositionLayerInstruction, asset asset: AVAsset) -> Bool
}
