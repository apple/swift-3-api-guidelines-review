
@available(iOS 9.0, *)
class PHAssetResourceCreationOptions : NSObject, NSCopying {
  var originalFilename: String?
  var uniformTypeIdentifier: String?
  var shouldMoveFile: Bool
  @available(iOS 9.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(iOS 9.0, *)
class PHAssetCreationRequest : PHAssetChangeRequest {
  class func creationRequestForAsset() -> Self
  class func supportsAssetResourceTypes(_ types: [NSNumber]) -> Bool
  func addResourceWithType(_ type: PHAssetResourceType, fileURL fileURL: NSURL, options options: PHAssetResourceCreationOptions?)
  func addResourceWithType(_ type: PHAssetResourceType, data data: NSData, options options: PHAssetResourceCreationOptions?)
}
