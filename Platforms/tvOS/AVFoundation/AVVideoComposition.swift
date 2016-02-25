
@available(tvOS 4.0, *)
class AVVideoComposition : NSObject, NSCopying, NSMutableCopying {
  @available(tvOS 6.0, *)
  /*not inherited*/ init(propertiesOfAsset asset: AVAsset)
  @available(tvOS 7.0, *)
  var customVideoCompositorClass: AnyObject.Type? { get }
  var frameDuration: CMTime { get }
  var renderSize: CGSize { get }
  var renderScale: Float { get }
  var instructions: [AVVideoCompositionInstructionProtocol] { get }
  var animationTool: AVVideoCompositionCoreAnimationTool? { get }
  @available(tvOS 4.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(tvOS 4.0, *)
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
}
extension AVVideoComposition {
  @available(tvOS 9.0, *)
  /*not inherited*/ init(asset asset: AVAsset, applyingCIFiltersWithHandler applier: (AVAsynchronousCIImageFilteringRequest) -> Void)
}
@available(tvOS 4.0, *)
class AVMutableVideoComposition : AVVideoComposition {
}
extension AVMutableVideoComposition {
}
@available(tvOS 4.0, *)
class AVVideoCompositionInstruction : NSObject, NSSecureCoding, NSCopying, NSMutableCopying, AVVideoCompositionInstructionProtocol {
  var timeRange: CMTimeRange { get }
  var backgroundColor: CGColor? { get }
  var layerInstructions: [AVVideoCompositionLayerInstruction] { get }
  var enablePostProcessing: Bool { get }
  @available(tvOS 7.0, *)
  var requiredSourceTrackIDs: [NSValue] { get }
  @available(tvOS 7.0, *)
  var passthroughTrackID: CMPersistentTrackID { get }
  @available(tvOS 4.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 4.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 4.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(tvOS 4.0, *)
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
  @available(tvOS 7.0, *)
  var containsTweening: Bool { get }
}
@available(tvOS 4.0, *)
class AVMutableVideoCompositionInstruction : AVVideoCompositionInstruction {
}
@available(tvOS 4.0, *)
class AVVideoCompositionLayerInstruction : NSObject, NSSecureCoding, NSCopying, NSMutableCopying {
  var trackID: CMPersistentTrackID { get }
  func getTransformRampForTime(_ time: CMTime, startTransform startTransform: UnsafeMutablePointer<CGAffineTransform>, endTransform endTransform: UnsafeMutablePointer<CGAffineTransform>, timeRange timeRange: UnsafeMutablePointer<CMTimeRange>) -> Bool
  func getOpacityRampForTime(_ time: CMTime, startOpacity startOpacity: UnsafeMutablePointer<Float>, endOpacity endOpacity: UnsafeMutablePointer<Float>, timeRange timeRange: UnsafeMutablePointer<CMTimeRange>) -> Bool
  @available(tvOS 7.0, *)
  func getCropRectangleRampForTime(_ time: CMTime, startCropRectangle startCropRectangle: UnsafeMutablePointer<CGRect>, endCropRectangle endCropRectangle: UnsafeMutablePointer<CGRect>, timeRange timeRange: UnsafeMutablePointer<CMTimeRange>) -> Bool
  @available(tvOS 4.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 4.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 4.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(tvOS 4.0, *)
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
}
@available(tvOS 4.0, *)
class AVMutableVideoCompositionLayerInstruction : AVVideoCompositionLayerInstruction {
  convenience init(assetTrack track: AVAssetTrack)
  func setTransformRampFromStartTransform(_ startTransform: CGAffineTransform, toEndTransform endTransform: CGAffineTransform, timeRange timeRange: CMTimeRange)
  func setTransform(_ transform: CGAffineTransform, atTime time: CMTime)
  func setOpacityRampFromStartOpacity(_ startOpacity: Float, toEndOpacity endOpacity: Float, timeRange timeRange: CMTimeRange)
  func setOpacity(_ opacity: Float, atTime time: CMTime)
  @available(tvOS 7.0, *)
  func setCropRectangleRampFromStartCropRectangle(_ startCropRectangle: CGRect, toEndCropRectangle endCropRectangle: CGRect, timeRange timeRange: CMTimeRange)
  @available(tvOS 7.0, *)
  func setCropRectangle(_ cropRectangle: CGRect, atTime time: CMTime)
}
@available(tvOS 4.0, *)
class AVVideoCompositionCoreAnimationTool : NSObject {
  convenience init(additionalLayer layer: CALayer, asTrackID trackID: CMPersistentTrackID)
  convenience init(postProcessingAsVideoLayer videoLayer: CALayer, inLayer animationLayer: CALayer)
  @available(tvOS 7.0, *)
  convenience init(postProcessingAsVideoLayers videoLayers: [CALayer], inLayer animationLayer: CALayer)
}
extension AVAsset {
  func unusedTrackID() -> CMPersistentTrackID
}
extension AVVideoComposition {
  @available(tvOS 5.0, *)
  func isValidForAsset(_ asset: AVAsset?, timeRange timeRange: CMTimeRange, validationDelegate validationDelegate: AVVideoCompositionValidationHandling?) -> Bool
}
protocol AVVideoCompositionValidationHandling : NSObjectProtocol {
  @available(tvOS 5.0, *)
  optional func videoComposition(_ videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingInvalidValueForKey key: String) -> Bool
  @available(tvOS 5.0, *)
  optional func videoComposition(_ videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingEmptyTimeRange timeRange: CMTimeRange) -> Bool
  @available(tvOS 5.0, *)
  optional func videoComposition(_ videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingInvalidTimeRangeInInstruction videoCompositionInstruction: AVVideoCompositionInstructionProtocol) -> Bool
  @available(tvOS 5.0, *)
  optional func videoComposition(_ videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingInvalidTrackIDInInstruction videoCompositionInstruction: AVVideoCompositionInstructionProtocol, layerInstruction layerInstruction: AVVideoCompositionLayerInstruction, asset asset: AVAsset) -> Bool
}
