
class PHAssetCollectionChangeRequest : Object {
  class func creationRequestForAssetCollectionWithTitle(title: String) -> Self
  var placeholderForCreatedAssetCollection: PHObjectPlaceholder { get }
  class func deleteAssetCollections(assetCollections: FastEnumeration)
  convenience init?(forAssetCollection assetCollection: PHAssetCollection)
  convenience init?(forAssetCollection assetCollection: PHAssetCollection, assets: PHFetchResult)
  var title: String
  func addAssets(assets: FastEnumeration)
  func insertAssets(assets: FastEnumeration, at indexes: IndexSet)
  func removeAssets(assets: FastEnumeration)
  func removeAssetsAt(indexes: IndexSet)
  func replaceAssetsAt(indexes: IndexSet, withAssets assets: FastEnumeration)
  func moveAssetsAt(fromIndexes: IndexSet, to toIndex: Int)
  init()
}
