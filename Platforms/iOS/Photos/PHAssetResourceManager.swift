
@available(iOS 9.0, *)
typealias PHAssetResourceDataRequestID = Int32
let PHInvalidAssetResourceDataRequestID: PHAssetResourceDataRequestID
@available(iOS 9.0, *)
typealias PHAssetResourceProgressHandler = (Double) -> Void
@available(iOS 9.0, *)
class PHAssetResourceRequestOptions : Object, Copying {
  var isNetworkAccessAllowed: Bool
  var progressHandler: PHAssetResourceProgressHandler?
  init()
  @available(iOS 9.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(iOS 9.0, *)
class PHAssetResourceManager : Object {
  class func defaultManager() -> PHAssetResourceManager
  func requestDataFor(resource: PHAssetResource, options: PHAssetResourceRequestOptions?, dataReceivedHandler handler: (Data) -> Void, completionHandler: (Error?) -> Void) -> PHAssetResourceDataRequestID
  func writeDataFor(resource: PHAssetResource, toFile fileURL: URL, options: PHAssetResourceRequestOptions?, completionHandler: (Error?) -> Void)
  func cancelDataRequest(requestID: PHAssetResourceDataRequestID)
  init()
}
