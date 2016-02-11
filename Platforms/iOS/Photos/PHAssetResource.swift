
@available(iOS 9.0, *)
class PHAssetResource : Object {
  var type: PHAssetResourceType { get }
  var assetLocalIdentifier: String { get }
  var uniformTypeIdentifier: String { get }
  var originalFilename: String { get }
  class func assetResources(for asset: PHAsset) -> [PHAssetResource]
  @available(iOS 9.1, *)
  class func assetResources(for livePhoto: PHLivePhoto) -> [PHAssetResource]
  init()
}
