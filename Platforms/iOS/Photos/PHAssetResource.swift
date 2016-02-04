
@available(iOS 9.0, *)
class PHAssetResource : NSObject {
  var type: PHAssetResourceType { get }
  var assetLocalIdentifier: String { get }
  var uniformTypeIdentifier: String { get }
  var originalFilename: String { get }
  class func assetResourcesForAsset(asset: PHAsset) -> [PHAssetResource]
  @available(iOS 9.1, *)
  class func assetResourcesForLivePhoto(livePhoto: PHLivePhoto) -> [PHAssetResource]
  init()
}
