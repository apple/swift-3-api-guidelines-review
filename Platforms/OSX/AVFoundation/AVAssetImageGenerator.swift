
@available(OSX 10.7, *)
let AVAssetImageGeneratorApertureModeCleanAperture: String
@available(OSX 10.7, *)
let AVAssetImageGeneratorApertureModeProductionAperture: String
@available(OSX 10.7, *)
let AVAssetImageGeneratorApertureModeEncodedPixels: String
enum AVAssetImageGeneratorResult : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Succeeded
  case Failed
  case Cancelled
}
@available(OSX 10.7, *)
class AVAssetImageGenerator : NSObject {
  @available(OSX 10.9, *)
  var asset: AVAsset { get }
  var appliesPreferredTrackTransform: Bool
  var maximumSize: CGSize
  var apertureMode: String?
  @NSCopying var videoComposition: AVVideoComposition?
  @available(OSX 10.9, *)
  var customVideoCompositor: AVVideoCompositing? { get }
  @available(OSX 10.7, *)
  var requestedTimeToleranceBefore: CMTime
  @available(OSX 10.7, *)
  var requestedTimeToleranceAfter: CMTime
  init(asset asset: AVAsset)
  func copyCGImageAtTime(_ requestedTime: CMTime, actualTime actualTime: UnsafeMutablePointer<CMTime>) throws -> CGImage
  func generateCGImagesAsynchronouslyForTimes(_ requestedTimes: [NSValue], completionHandler handler: AVAssetImageGeneratorCompletionHandler)
  func cancelAllCGImageGeneration()
}
typealias AVAssetImageGeneratorCompletionHandler = (CMTime, CGImage?, CMTime, AVAssetImageGeneratorResult, NSError?) -> Void
