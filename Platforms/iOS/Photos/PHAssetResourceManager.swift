
@available(iOS 9.0, *)
typealias PHAssetResourceDataRequestID = Int32
let PHInvalidAssetResourceDataRequestID: PHAssetResourceDataRequestID
@available(iOS 9.0, *)
typealias PHAssetResourceProgressHandler = (Double) -> Void
@available(iOS 9.0, *)
class PHAssetResourceRequestOptions : NSObject, NSCopying {
  var isNetworkAccessAllowed: Bool
  var progressHandler: PHAssetResourceProgressHandler?
  @available(iOS 9.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
@available(iOS 9.0, *)
class PHAssetResourceManager : NSObject {
  class func defaultManager() -> PHAssetResourceManager
  func requestData(for resource: PHAssetResource, options options: PHAssetResourceRequestOptions?, dataReceivedHandler handler: (NSData) -> Void, completionHandler completionHandler: (NSError?) -> Void) -> PHAssetResourceDataRequestID
  func writeData(for resource: PHAssetResource, toFile fileURL: NSURL, options options: PHAssetResourceRequestOptions?, completionHandler completionHandler: (NSError?) -> Void)
  func cancelDataRequest(_ requestID: PHAssetResourceDataRequestID)
}
