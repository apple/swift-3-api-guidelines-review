
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
  class func request(withResourceFileURLs fileURLs: [NSURL], placeholderImage image: UIImage?, targetSize targetSize: CGSize, contentMode contentMode: PHImageContentMode, resultHandler resultHandler: (PHLivePhoto?, [NSObject : AnyObject]) -> Void) -> PHLivePhotoRequestID
  class func cancelRequest(withRequestID requestID: PHLivePhotoRequestID)
  @available(iOS 9.1, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 9.1, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.1, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
