
@available(iOS 8.0, *)
enum PHImageRequestOptionsVersion : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case current
  case unadjusted
  case original
}
@available(iOS 8.0, *)
enum PHImageRequestOptionsDeliveryMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case opportunistic
  case highQualityFormat
  case fastFormat
}
@available(iOS 8.0, *)
enum PHImageRequestOptionsResizeMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case fast
  case exact
}
@available(iOS 8.0, *)
typealias PHAssetImageProgressHandler = (Double, Error?, UnsafeMutablePointer<ObjCBool>, [Object : AnyObject]?) -> Void
@available(iOS 8.0, *)
class PHImageRequestOptions : Object, Copying {
  var version: PHImageRequestOptionsVersion
  var deliveryMode: PHImageRequestOptionsDeliveryMode
  var resizeMode: PHImageRequestOptionsResizeMode
  var normalizedCropRect: CGRect
  var isNetworkAccessAllowed: Bool
  var isSynchronous: Bool
  var progressHandler: PHAssetImageProgressHandler?
  init()
  @available(iOS 8.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
@available(iOS 9.1, *)
class PHLivePhotoRequestOptions : Object, Copying {
  var deliveryMode: PHImageRequestOptionsDeliveryMode
  var isNetworkAccessAllowed: Bool
  var progressHandler: PHAssetImageProgressHandler?
  init()
  @available(iOS 9.1, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
@available(iOS 8.0, *)
enum PHVideoRequestOptionsVersion : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case current
  case original
}
@available(iOS 8.0, *)
enum PHVideoRequestOptionsDeliveryMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case automatic
  case highQualityFormat
  case mediumQualityFormat
  case fastFormat
}
@available(iOS 8.0, *)
typealias PHAssetVideoProgressHandler = (Double, Error?, UnsafeMutablePointer<ObjCBool>, [Object : AnyObject]?) -> Void
@available(iOS 8.0, *)
class PHVideoRequestOptions : Object {
  var isNetworkAccessAllowed: Bool
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
class PHImageManager : Object {
  class func defaultManager() -> PHImageManager
  func requestImageFor(asset: PHAsset, targetSize: CGSize, contentMode: PHImageContentMode = .`default`, options: PHImageRequestOptions?, resultHandler: (UIImage?, [Object : AnyObject]?) -> Void) -> PHImageRequestID
  func requestImageDataFor(asset: PHAsset, options: PHImageRequestOptions?, resultHandler: (Data?, String?, UIImageOrientation, [Object : AnyObject]?) -> Void) -> PHImageRequestID
  func cancelImageRequest(requestID: PHImageRequestID)
  @available(iOS 9.1, *)
  func requestLivePhotoFor(asset: PHAsset, targetSize: CGSize, contentMode: PHImageContentMode = .`default`, options: PHLivePhotoRequestOptions?, resultHandler: (PHLivePhoto?, [Object : AnyObject]?) -> Void) -> PHImageRequestID
  func requestPlayerItemFor(video asset: PHAsset, options: PHVideoRequestOptions?, resultHandler: (AVPlayerItem?, [Object : AnyObject]?) -> Void) -> PHImageRequestID
  func requestExportSessionFor(video asset: PHAsset, options: PHVideoRequestOptions?, exportPreset: String, resultHandler: (AVAssetExportSession?, [Object : AnyObject]?) -> Void) -> PHImageRequestID
  func requestAVAssetFor(video asset: PHAsset, options: PHVideoRequestOptions?, resultHandler: (AVAsset?, AVAudioMix?, [Object : AnyObject]?) -> Void) -> PHImageRequestID
  init()
}
@available(iOS 8.0, *)
class PHCachingImageManager : PHImageManager {
  var allowsCachingHighQualityImages: Bool
  func startCachingImagesFor(assets: [PHAsset], targetSize: CGSize, contentMode: PHImageContentMode = .`default`, options: PHImageRequestOptions?)
  func stopCachingImagesFor(assets: [PHAsset], targetSize: CGSize, contentMode: PHImageContentMode = .`default`, options: PHImageRequestOptions?)
  func stopCachingImagesForAllAssets()
  init()
}
