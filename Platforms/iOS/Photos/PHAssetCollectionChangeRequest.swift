
class PHAssetCollectionChangeRequest : Object {
  class func creationRequestForAssetCollection(withTitle title: String) -> Self
  var placeholderForCreatedAssetCollection: PHObjectPlaceholder { get }
  class func deleteAssetCollections(assetCollections: FastEnumeration)
  convenience init?(forAssetCollection assetCollection: PHAssetCollection)
  convenience init?(forAssetCollection assetCollection: PHAssetCollection, assets: PHFetchResult)
  var title: String
  func addAssets(assets: FastEnumeration)
  func insertAssets(assets: FastEnumeration, at indexes: IndexSet)
  func removeAssets(assets: FastEnumeration)
  func removeAssets(at indexes: IndexSet)
  func replaceAssets(at indexes: IndexSet, withAssets assets: FastEnumeration)
  func moveAssets(at fromIndexes: IndexSet, to toIndex: Int)
  init()
}
