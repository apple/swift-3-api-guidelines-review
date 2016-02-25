
@available(iOS 9.1, *)
typealias PHLivePhotoRequestID = Int32
let PHLivePhotoRequestIDInvalid: PHLivePhotoRequestID
@available(iOS 9.1, *)
let PHLivePhotoInfoErrorKey: String
@available(iOS 9.1, *)
let PHLivePhotoInfoIsDegradedKey: String
@available(iOS 9.1, *)
let PHLivePhotoInfoCancelledKey: String
@available(iOS 9.1, *)
class PHLivePhoto : NSObject, NSCopying, NSSecureCoding {
  var size: CGSize { get }
  class func requestLivePhotoWithResourceFileURLs(_ fileURLs: [NSURL], placeholderImage image: UIImage?, targetSize targetSize: CGSize, contentMode contentMode: PHImageContentMode, resultHandler resultHandler: (PHLivePhoto?, [NSObject : AnyObject]) -> Void) -> PHLivePhotoRequestID
  class func cancelLivePhotoRequestWithRequestID(_ requestID: PHLivePhotoRequestID)
  @available(iOS 9.1, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 9.1, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.1, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
