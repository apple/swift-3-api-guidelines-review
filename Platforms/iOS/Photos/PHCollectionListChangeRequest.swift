
@available(iOS 8.0, *)
class PHCollectionListChangeRequest : NSObject {
  class func creationRequestForCollectionListWithTitle(_ title: String) -> Self
  var placeholderForCreatedCollectionList: PHObjectPlaceholder { get }
  class func deleteCollectionLists(_ collectionLists: NSFastEnumeration)
  convenience init?(forCollectionList collectionList: PHCollectionList)
  convenience init?(forCollectionList collectionList: PHCollectionList, childCollections childCollections: PHFetchResult)
  var title: String
  func addChildCollections(_ collections: NSFastEnumeration)
  func insertChildCollections(_ collections: NSFastEnumeration, atIndexes indexes: NSIndexSet)
  func removeChildCollections(_ collections: NSFastEnumeration)
  func removeChildCollectionsAtIndexes(_ indexes: NSIndexSet)
  func replaceChildCollectionsAtIndexes(_ indexes: NSIndexSet, withChildCollections collections: NSFastEnumeration)
  func moveChildCollectionsAtIndexes(_ indexes: NSIndexSet, toIndex toIndex: Int)
}
