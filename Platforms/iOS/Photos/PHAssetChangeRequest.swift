
@available(iOS 8.0, *)
class PHAssetChangeRequest : Object {
  class func creationRequestForAsset(from image: UIImage) -> Self
  class func creationRequestForAssetFromImage(atFileURL fileURL: URL) -> Self?
  class func creationRequestForAssetFromVideo(atFileURL fileURL: URL) -> Self?
  var placeholderForCreatedAsset: PHObjectPlaceholder? { get }
  class func deleteAssets(assets: FastEnumeration)
  convenience init(for asset: PHAsset)
  var creationDate: Date?
  var location: CLLocation?
  var isFavorite: Bool
  var isHidden: Bool
  var contentEditingOutput: PHContentEditingOutput?
  func revertAssetContentToOriginal()
  init()
}
@available(iOS 8.0, *)
typealias PHContentEditingInputRequestID = Int
@available(iOS 8.0, *)
class PHContentEditingInputRequestOptions : Object {
  var canHandleAdjustmentData: (PHAdjustmentData) -> Bool
  var isNetworkAccessAllowed: Bool
  var progressHandler: ((Double, UnsafeMutablePointer<ObjCBool>) -> Void)?
  init()
}
extension PHAsset {
  @available(iOS 8.0, *)
  func requestContentEditingInput(with options: PHContentEditingInputRequestOptions?, completionHandler: (PHContentEditingInput?, [Object : AnyObject]) -> Void) -> PHContentEditingInputRequestID
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
