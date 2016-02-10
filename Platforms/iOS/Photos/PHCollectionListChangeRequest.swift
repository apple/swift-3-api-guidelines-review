
@available(iOS 8.0, *)
class PHCollectionListChangeRequest : Object {
  class func creationRequestForCollectionList(withTitle title: String) -> Self
  var placeholderForCreatedCollectionList: PHObjectPlaceholder { get }
  class func deleteCollectionLists(collectionLists: FastEnumeration)
  convenience init?(forCollectionList collectionList: PHCollectionList)
  convenience init?(forCollectionList collectionList: PHCollectionList, childCollections: PHFetchResult)
  var title: String
  func addChildCollections(collections: FastEnumeration)
  func insertChildCollections(collections: FastEnumeration, at indexes: IndexSet)
  func removeChildCollections(collections: FastEnumeration)
  func removeChildCollections(at indexes: IndexSet)
  func replaceChildCollections(at indexes: IndexSet, withChildCollections collections: FastEnumeration)
  func moveChildCollections(at indexes: IndexSet, to toIndex: Int)
  init()
}
