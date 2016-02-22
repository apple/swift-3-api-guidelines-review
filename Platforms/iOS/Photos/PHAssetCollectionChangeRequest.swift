
class PHAssetCollectionChangeRequest : NSObject {
  class func creationRequestForAssetCollection(withTitle title: String) -> Self
  var placeholderForCreatedAssetCollection: PHObjectPlaceholder { get }
  class func deleteAssetCollections(assetCollections: NSFastEnumeration)
  convenience init?(for assetCollection: PHAssetCollection)
  convenience init?(for assetCollection: PHAssetCollection, assets: PHFetchResult)
  var title: String
  func addAssets(assets: NSFastEnumeration)
  func insertAssets(assets: NSFastEnumeration, at indexes: NSIndexSet)
  func removeAssets(assets: NSFastEnumeration)
  func removeAssets(at indexes: NSIndexSet)
  func replaceAssets(at indexes: NSIndexSet, withAssets assets: NSFastEnumeration)
  func moveAssets(at fromIndexes: NSIndexSet, to toIndex: Int)
  init()
}
