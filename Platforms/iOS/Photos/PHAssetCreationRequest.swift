
@available(iOS 9.0, *)
class PHAssetResourceCreationOptions : NSObject, NSCopying {
  var originalFilename: String?
  var uniformTypeIdentifier: String?
  var shouldMoveFile: Bool
  init()
  @available(iOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 9.0, *)
class PHAssetCreationRequest : PHAssetChangeRequest {
  class func creationRequestForAsset() -> Self
  class func supportsAssetResourceTypes(types: [NSNumber]) -> Bool
  func addResourceWithType(type: PHAssetResourceType, fileURL: NSURL, options: PHAssetResourceCreationOptions?)
  func addResourceWithType(type: PHAssetResourceType, data: NSData, options: PHAssetResourceCreationOptions?)
  convenience init(forAsset asset: PHAsset)
  init()
}
