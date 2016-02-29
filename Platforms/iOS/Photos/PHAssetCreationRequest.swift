
@available(iOS 9.0, *)
class PHAssetResourceCreationOptions : NSObject, NSCopying {
  var originalFilename: String?
  var uniformTypeIdentifier: String?
  var shouldMoveFile: Bool
  @available(iOS 9.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
@available(iOS 9.0, *)
class PHAssetCreationRequest : PHAssetChangeRequest {
  class func forAsset() -> Self
  class func supportsAssetResourceTypes(_ types: [NSNumber]) -> Bool
  func addResource(with type: PHAssetResourceType, fileURL fileURL: NSURL, options options: PHAssetResourceCreationOptions?)
  func addResource(with type: PHAssetResourceType, data data: NSData, options options: PHAssetResourceCreationOptions?)
}
