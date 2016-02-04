
@available(iOS 8.0, *)
enum PHImageRequestOptionsVersion : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Current
  case Unadjusted
  case Original
}
@available(iOS 8.0, *)
enum PHImageRequestOptionsDeliveryMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Opportunistic
  case HighQualityFormat
  case FastFormat
}
@available(iOS 8.0, *)
enum PHImageRequestOptionsResizeMode : Int {
  init?(rawValue: Int)
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
  init()
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 9.1, *)
class PHLivePhotoRequestOptions : NSObject, NSCopying {
  var deliveryMode: PHImageRequestOptionsDeliveryMode
  var networkAccessAllowed: Bool
  var progressHandler: PHAssetImageProgressHandler?
  init()
  @available(iOS 9.1, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 8.0, *)
enum PHVideoRequestOptionsVersion : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Current
  case Original
}
@available(iOS 8.0, *)
enum PHVideoRequestOptionsDeliveryMode : Int {
  init?(rawValue: Int)
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
  init()
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
  func requestImageForAsset(asset: PHAsset, targetSize: CGSize, contentMode: PHImageContentMode, options: PHImageRequestOptions?, resultHandler: (UIImage?, [NSObject : AnyObject]?) -> Void) -> PHImageRequestID
  func requestImageDataForAsset(asset: PHAsset, options: PHImageRequestOptions?, resultHandler: (NSData?, String?, UIImageOrientation, [NSObject : AnyObject]?) -> Void) -> PHImageRequestID
  func cancelImageRequest(requestID: PHImageRequestID)
  @available(iOS 9.1, *)
  func requestLivePhotoForAsset(asset: PHAsset, targetSize: CGSize, contentMode: PHImageContentMode, options: PHLivePhotoRequestOptions?, resultHandler: (PHLivePhoto?, [NSObject : AnyObject]?) -> Void) -> PHImageRequestID
  func requestPlayerItemForVideo(asset: PHAsset, options: PHVideoRequestOptions?, resultHandler: (AVPlayerItem?, [NSObject : AnyObject]?) -> Void) -> PHImageRequestID
  func requestExportSessionForVideo(asset: PHAsset, options: PHVideoRequestOptions?, exportPreset: String, resultHandler: (AVAssetExportSession?, [NSObject : AnyObject]?) -> Void) -> PHImageRequestID
  func requestAVAssetForVideo(asset: PHAsset, options: PHVideoRequestOptions?, resultHandler: (AVAsset?, AVAudioMix?, [NSObject : AnyObject]?) -> Void) -> PHImageRequestID
  init()
}
@available(iOS 8.0, *)
class PHCachingImageManager : PHImageManager {
  var allowsCachingHighQualityImages: Bool
  func startCachingImagesForAssets(assets: [PHAsset], targetSize: CGSize, contentMode: PHImageContentMode, options: PHImageRequestOptions?)
  func stopCachingImagesForAssets(assets: [PHAsset], targetSize: CGSize, contentMode: PHImageContentMode, options: PHImageRequestOptions?)
  func stopCachingImagesForAllAssets()
  init()
}
