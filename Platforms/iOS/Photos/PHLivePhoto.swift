
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
class PHLivePhoto : Object, Copying, SecureCoding {
  var size: CGSize { get }
  class func request(resourceFileURLs fileURLs: [URL], placeholderImage image: UIImage?, targetSize: CGSize, contentMode: PHImageContentMode, resultHandler: (PHLivePhoto?, [Object : AnyObject]) -> Void) -> PHLivePhotoRequestID
  class func cancelRequest(requestID requestID: PHLivePhotoRequestID)
  init()
  @available(iOS 9.1, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(iOS 9.1, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.1, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
