
@available(iOS 9.0, *)
class PHAssetResourceCreationOptions : NSObject, NSCopying {
  var originalFilename: String?
  var uniformTypeIdentifier: String?
  var shouldMoveFile: Bool
  init()
  @available(iOS 9.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
@available(iOS 9.0, *)
class PHAssetCreationRequest : PHAssetChangeRequest {
  class func forAsset() -> Self
  class func supportsAssetResourceTypes(types: [NSNumber]) -> Bool
  func addResource(type: PHAssetResourceType, fileURL: NSURL, options: PHAssetResourceCreationOptions?)
  func addResource(type: PHAssetResourceType, data: NSData, options: PHAssetResourceCreationOptions?)
  convenience init(for asset: PHAsset)
  init()
}
