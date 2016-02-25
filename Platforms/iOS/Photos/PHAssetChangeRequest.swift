
@available(iOS 8.0, *)
class PHAssetChangeRequest : NSObject {
  class func creationRequestForAssetFromImage(_ image: UIImage) -> Self
  class func creationRequestForAssetFromImageAtFileURL(_ fileURL: NSURL) -> Self?
  class func creationRequestForAssetFromVideoAtFileURL(_ fileURL: NSURL) -> Self?
  var placeholderForCreatedAsset: PHObjectPlaceholder? { get }
  class func deleteAssets(_ assets: NSFastEnumeration)
  convenience init(forAsset asset: PHAsset)
  var creationDate: NSDate?
  var location: CLLocation?
  var favorite: Bool
  var hidden: Bool
  var contentEditingOutput: PHContentEditingOutput?
  func revertAssetContentToOriginal()
}
@available(iOS 8.0, *)
typealias PHContentEditingInputRequestID = Int
@available(iOS 8.0, *)
class PHContentEditingInputRequestOptions : NSObject {
  var canHandleAdjustmentData: (PHAdjustmentData) -> Bool
  var networkAccessAllowed: Bool
  var progressHandler: ((Double, UnsafeMutablePointer<ObjCBool>) -> Void)?
}
extension PHAsset {
  @available(iOS 8.0, *)
  func requestContentEditingInputWithOptions(_ options: PHContentEditingInputRequestOptions?, completionHandler completionHandler: (PHContentEditingInput?, [NSObject : AnyObject]) -> Void) -> PHContentEditingInputRequestID
  @available(iOS 8.0, *)
  func cancelContentEditingInputRequest(_ requestID: PHContentEditingInputRequestID)
}
@available(iOS 8.0, *)
let PHContentEditingInputResultIsInCloudKey: String
@available(iOS 8.0, *)
let PHContentEditingInputCancelledKey: String
@available(iOS 8.0, *)
let PHContentEditingInputErrorKey: String
extension PHContentEditingOutput {
  init(placeholderForCreatedAsset placeholderForCreatedAsset: PHObjectPlaceholder)
}
