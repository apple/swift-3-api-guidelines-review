
@available(iOS 9.0, *)
class PHAssetResourceCreationOptions : Object, Copying {
  var originalFilename: String?
  var uniformTypeIdentifier: String?
  var shouldMoveFile: Bool
  init()
  @available(iOS 9.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(iOS 9.0, *)
class PHAssetCreationRequest : PHAssetChangeRequest {
  class func forAsset() -> Self
  class func supportsAssetResourceTypes(types: [Number]) -> Bool
  func addResourceWith(type: PHAssetResourceType, fileURL: URL, options: PHAssetResourceCreationOptions?)
  func addResourceWith(type: PHAssetResourceType, data: Data, options: PHAssetResourceCreationOptions?)
  convenience init(forAsset asset: PHAsset)
  init()
}
