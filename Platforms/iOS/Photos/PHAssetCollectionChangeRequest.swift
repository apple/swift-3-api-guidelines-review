
class PHAssetCollectionChangeRequest : NSObject {
  class func creationRequestForAssetCollectionWithTitle(_ title: String) -> Self
  var placeholderForCreatedAssetCollection: PHObjectPlaceholder { get }
  class func deleteAssetCollections(_ assetCollections: NSFastEnumeration)
  convenience init?(forAssetCollection assetCollection: PHAssetCollection)
  convenience init?(forAssetCollection assetCollection: PHAssetCollection, assets assets: PHFetchResult)
  var title: String
  func addAssets(_ assets: NSFastEnumeration)
  func insertAssets(_ assets: NSFastEnumeration, atIndexes indexes: NSIndexSet)
  func removeAssets(_ assets: NSFastEnumeration)
  func removeAssetsAtIndexes(_ indexes: NSIndexSet)
  func replaceAssetsAtIndexes(_ indexes: NSIndexSet, withAssets assets: NSFastEnumeration)
  func moveAssetsAtIndexes(_ fromIndexes: NSIndexSet, toIndex toIndex: Int)
}
