
class PHAssetCollectionChangeRequest : NSObject {
  class func creationRequestForAssetCollectionWithTitle(title: String) -> Self
  var placeholderForCreatedAssetCollection: PHObjectPlaceholder { get }
  class func deleteAssetCollections(assetCollections: NSFastEnumeration)
  convenience init?(forAssetCollection assetCollection: PHAssetCollection)
  convenience init?(forAssetCollection assetCollection: PHAssetCollection, assets: PHFetchResult)
  var title: String
  func addAssets(assets: NSFastEnumeration)
  func insertAssets(assets: NSFastEnumeration, atIndexes indexes: NSIndexSet)
  func removeAssets(assets: NSFastEnumeration)
  func removeAssetsAtIndexes(indexes: NSIndexSet)
  func replaceAssetsAtIndexes(indexes: NSIndexSet, withAssets assets: NSFastEnumeration)
  func moveAssetsAtIndexes(fromIndexes: NSIndexSet, toIndex: Int)
  init()
}
