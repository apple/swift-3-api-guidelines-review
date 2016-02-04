
@available(iOS, introduced=4.0, deprecated=9.0, message="Use fetchAssetsInAssetCollection:options: on PHAsset and set a mediaType predicate on the PHFetchOptions from the Photos framework instead")
class ALAssetsFilter : Object {
  class func allPhotos() -> ALAssetsFilter!
  class func allVideos() -> ALAssetsFilter!
  class func allAssets() -> ALAssetsFilter!
  init()
}
