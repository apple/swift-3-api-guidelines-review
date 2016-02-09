
@available(iOS 9.0, *)
class PHAssetResourceCreationOptions : Object, Copying {
  var originalFilename: String?
  var uniformTypeIdentifier: String?
  var shouldMoveFile: Bool
  init()
  @available(iOS 9.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
@available(iOS 9.0, *)
class PHAssetCreationRequest : PHAssetChangeRequest {
  class func forAsset() -> Self
  class func supportsAssetResourceTypes(types: [Number]) -> Bool
  func addResource(withType type: PHAssetResourceType, fileURL: URL, options: PHAssetResourceCreationOptions?)
  func addResource(withType type: PHAssetResourceType, data: Data, options: PHAssetResourceCreationOptions?)
  convenience init(forAsset asset: PHAsset)
  init()
}
