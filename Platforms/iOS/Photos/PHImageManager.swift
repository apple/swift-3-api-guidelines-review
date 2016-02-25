
@available(iOS 8.0, *)
enum PHImageRequestOptionsVersion : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Current
  case Unadjusted
  case Original
}
@available(iOS 8.0, *)
enum PHImageRequestOptionsDeliveryMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Opportunistic
  case HighQualityFormat
  case FastFormat
}
@available(iOS 8.0, *)
enum PHImageRequestOptionsResizeMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case None
  case Fast
  case Exact
}
@available(iOS 8.0, *)
typealias PHAssetImageProgressHandler = (Double, NSError?, UnsafeMutablePointer<ObjCBool>, [NSObject : AnyObject]?) -> Void
@available(iOS 8.0, *)
class PHImageRequestOptions : NSObject, NSCopying {
  var version: PHImageRequestOptionsVersion
  var deliveryMode: PHImageRequestOptionsDeliveryMode
  var resizeMode: PHImageRequestOptionsResizeMode
  var normalizedCropRect: CGRect
  var networkAccessAllowed: Bool
  var synchronous: Bool
  var progressHandler: PHAssetImageProgressHandler?
  @available(iOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(iOS 9.1, *)
class PHLivePhotoRequestOptions : NSObject, NSCopying {
  var deliveryMode: PHImageRequestOptionsDeliveryMode
  var networkAccessAllowed: Bool
  var progressHandler: PHAssetImageProgressHandler?
  @available(iOS 9.1, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(iOS 8.0, *)
enum PHVideoRequestOptionsVersion : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Current
  case Original
}
@available(iOS 8.0, *)
enum PHVideoRequestOptionsDeliveryMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case HighQualityFormat
  case MediumQualityFormat
  case FastFormat
}
@available(iOS 8.0, *)
typealias PHAssetVideoProgressHandler = (Double, NSError?, UnsafeMutablePointer<ObjCBool>, [NSObject : AnyObject]?) -> Void
@available(iOS 8.0, *)
class PHVideoRequestOptions : NSObject {
  var networkAccessAllowed: Bool
  var version: PHVideoRequestOptionsVersion
  var deliveryMode: PHVideoRequestOptionsDeliveryMode
  var progressHandler: PHAssetVideoProgressHandler?
}
@available(iOS 8.0, *)
typealias PHImageRequestID = Int32
let PHInvalidImageRequestID: PHImageRequestID
@available(iOS 8.0, *)
let PHImageManagerMaximumSize: CGSize
@available(iOS 8.0, *)
let PHImageResultIsInCloudKey: String
@available(iOS 8.0, *)
let PHImageResultIsDegradedKey: String
@available(iOS 8.0, *)
let PHImageResultRequestIDKey: String
@available(iOS 8.0, *)
let PHImageCancelledKey: String
@available(iOS 8.0, *)
let PHImageErrorKey: String
@available(iOS 8.0, *)
class PHImageManager : NSObject {
  class func defaultManager() -> PHImageManager
  func requestImageForAsset(_ asset: PHAsset, targetSize targetSize: CGSize, contentMode contentMode: PHImageContentMode, options options: PHImageRequestOptions?, resultHandler resultHandler: (UIImage?, [NSObject : AnyObject]?) -> Void) -> PHImageRequestID
  func requestImageDataForAsset(_ asset: PHAsset, options options: PHImageRequestOptions?, resultHandler resultHandler: (NSData?, String?, UIImageOrientation, [NSObject : AnyObject]?) -> Void) -> PHImageRequestID
  func cancelImageRequest(_ requestID: PHImageRequestID)
  @available(iOS 9.1, *)
  func requestLivePhotoForAsset(_ asset: PHAsset, targetSize targetSize: CGSize, contentMode contentMode: PHImageContentMode, options options: PHLivePhotoRequestOptions?, resultHandler resultHandler: (PHLivePhoto?, [NSObject : AnyObject]?) -> Void) -> PHImageRequestID
  func requestPlayerItemForVideo(_ asset: PHAsset, options options: PHVideoRequestOptions?, resultHandler resultHandler: (AVPlayerItem?, [NSObject : AnyObject]?) -> Void) -> PHImageRequestID
  func requestExportSessionForVideo(_ asset: PHAsset, options options: PHVideoRequestOptions?, exportPreset exportPreset: String, resultHandler resultHandler: (AVAssetExportSession?, [NSObject : AnyObject]?) -> Void) -> PHImageRequestID
  func requestAVAssetForVideo(_ asset: PHAsset, options options: PHVideoRequestOptions?, resultHandler resultHandler: (AVAsset?, AVAudioMix?, [NSObject : AnyObject]?) -> Void) -> PHImageRequestID
}
@available(iOS 8.0, *)
class PHCachingImageManager : PHImageManager {
  var allowsCachingHighQualityImages: Bool
  func startCachingImagesForAssets(_ assets: [PHAsset], targetSize targetSize: CGSize, contentMode contentMode: PHImageContentMode, options options: PHImageRequestOptions?)
  func stopCachingImagesForAssets(_ assets: [PHAsset], targetSize targetSize: CGSize, contentMode contentMode: PHImageContentMode, options options: PHImageRequestOptions?)
  func stopCachingImagesForAllAssets()
}
