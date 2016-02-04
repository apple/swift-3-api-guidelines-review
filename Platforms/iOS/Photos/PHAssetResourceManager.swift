
@available(iOS 9.0, *)
typealias PHAssetResourceDataRequestID = Int32
let PHInvalidAssetResourceDataRequestID: PHAssetResourceDataRequestID
@available(iOS 9.0, *)
typealias PHAssetResourceProgressHandler = (Double) -> Void
@available(iOS 9.0, *)
class PHAssetResourceRequestOptions : NSObject, NSCopying {
  var networkAccessAllowed: Bool
  var progressHandler: PHAssetResourceProgressHandler?
  init()
  @available(iOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 9.0, *)
class PHAssetResourceManager : NSObject {
  class func defaultManager() -> PHAssetResourceManager
  func requestDataForAssetResource(resource: PHAssetResource, options: PHAssetResourceRequestOptions?, dataReceivedHandler handler: (NSData) -> Void, completionHandler: (NSError?) -> Void) -> PHAssetResourceDataRequestID
  func writeDataForAssetResource(resource: PHAssetResource, toFile fileURL: NSURL, options: PHAssetResourceRequestOptions?, completionHandler: (NSError?) -> Void)
  func cancelDataRequest(requestID: PHAssetResourceDataRequestID)
  init()
}
