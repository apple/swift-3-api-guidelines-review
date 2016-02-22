
@available(iOS 8.0, *)
class PHCollectionListChangeRequest : NSObject {
  class func creationRequestForCollectionList(withTitle title: String) -> Self
  var placeholderForCreatedCollectionList: PHObjectPlaceholder { get }
  class func deleteCollectionLists(collectionLists: NSFastEnumeration)
  convenience init?(for collectionList: PHCollectionList)
  convenience init?(for collectionList: PHCollectionList, childCollections: PHFetchResult)
  var title: String
  func addChildCollections(collections: NSFastEnumeration)
  func insertChildCollections(collections: NSFastEnumeration, at indexes: NSIndexSet)
  func removeChildCollections(collections: NSFastEnumeration)
  func removeChildCollections(at indexes: NSIndexSet)
  func replaceChildCollections(at indexes: NSIndexSet, withChildCollections collections: NSFastEnumeration)
  func moveChildCollections(at indexes: NSIndexSet, to toIndex: Int)
  init()
}
