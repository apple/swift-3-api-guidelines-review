
@available(iOS 8.0, *)
class PHCollectionListChangeRequest : NSObject {
  class func creationRequestForCollectionListWithTitle(title: String) -> Self
  var placeholderForCreatedCollectionList: PHObjectPlaceholder { get }
  class func deleteCollectionLists(collectionLists: NSFastEnumeration)
  convenience init?(forCollectionList collectionList: PHCollectionList)
  convenience init?(forCollectionList collectionList: PHCollectionList, childCollections: PHFetchResult)
  var title: String
  func addChildCollections(collections: NSFastEnumeration)
  func insertChildCollections(collections: NSFastEnumeration, atIndexes indexes: NSIndexSet)
  func removeChildCollections(collections: NSFastEnumeration)
  func removeChildCollectionsAtIndexes(indexes: NSIndexSet)
  func replaceChildCollectionsAtIndexes(indexes: NSIndexSet, withChildCollections collections: NSFastEnumeration)
  func moveChildCollectionsAtIndexes(indexes: NSIndexSet, toIndex: Int)
  init()
}
