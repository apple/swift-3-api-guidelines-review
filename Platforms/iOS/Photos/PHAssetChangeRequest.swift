
@available(iOS 8.0, *)
class PHAssetChangeRequest : NSObject {
  class func creationRequestForAssetFromImage(image: UIImage) -> Self
  class func creationRequestForAssetFromImageAtFileURL(fileURL: NSURL) -> Self?
  class func creationRequestForAssetFromVideoAtFileURL(fileURL: NSURL) -> Self?
  var placeholderForCreatedAsset: PHObjectPlaceholder? { get }
  class func deleteAssets(assets: NSFastEnumeration)
  convenience init(forAsset asset: PHAsset)
  var creationDate: NSDate?
  var location: CLLocation?
  var favorite: Bool
  var hidden: Bool
  var contentEditingOutput: PHContentEditingOutput?
  func revertAssetContentToOriginal()
  init()
}
@available(iOS 8.0, *)
typealias PHContentEditingInputRequestID = Int
@available(iOS 8.0, *)
class PHContentEditingInputRequestOptions : NSObject {
  var canHandleAdjustmentData: (PHAdjustmentData) -> Bool
  var networkAccessAllowed: Bool
  var progressHandler: ((Double, UnsafeMutablePointer<ObjCBool>) -> Void)?
  init()
}
extension PHAsset {
  @available(iOS 8.0, *)
  func requestContentEditingInputWithOptions(options: PHContentEditingInputRequestOptions?, completionHandler: (PHContentEditingInput?, [NSObject : AnyObject]) -> Void) -> PHContentEditingInputRequestID
  @available(iOS 8.0, *)
  func cancelContentEditingInputRequest(requestID: PHContentEditingInputRequestID)
}
@available(iOS 8.0, *)
let PHContentEditingInputResultIsInCloudKey: String
@available(iOS 8.0, *)
let PHContentEditingInputCancelledKey: String
@available(iOS 8.0, *)
let PHContentEditingInputErrorKey: String
extension PHContentEditingOutput {
  init(placeholderForCreatedAsset: PHObjectPlaceholder)
}
