
@available(iOS 9.0, *)
class PHAssetResourceCreationOptions : Object, Copying {
  var originalFilename: String?
  var uniformTypeIdentifier: String?
  var shouldMoveFile: Bool
  init()
  @available(iOS 9.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
@available(iOS 9.0, *)
class PHAssetCreationRequest : PHAssetChangeRequest {
  class func forAsset() -> Self
  class func supportsAssetResourceTypes(types: [Number]) -> Bool
  func addResource(type: PHAssetResourceType, fileURL: URL, options: PHAssetResourceCreationOptions?)
  func addResource(type: PHAssetResourceType, data: Data, options: PHAssetResourceCreationOptions?)
  convenience init(for asset: PHAsset)
  init()
}
