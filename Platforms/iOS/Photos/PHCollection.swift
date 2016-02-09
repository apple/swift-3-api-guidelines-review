
@available(iOS 8.0, *)
class PHCollection : PHObject {
  var canContainAssets: Bool { get }
  var canContainCollections: Bool { get }
  var localizedTitle: String? { get }
  func canPerform(anOperation: PHCollectionEditOperation) -> Bool
  class func fetchCollections(in collectionList: PHCollectionList, options: PHFetchOptions?) -> PHFetchResult
  class func fetchTopLevelUserCollections(withOptions options: PHFetchOptions?) -> PHFetchResult
  init()
}
@available(iOS 8.0, *)
class PHAssetCollection : PHCollection {
  var assetCollectionType: PHAssetCollectionType { get }
  var assetCollectionSubtype: PHAssetCollectionSubtype { get }
  var estimatedAssetCount: Int { get }
  var startDate: Date? { get }
  var endDate: Date? { get }
  var approximateLocation: CLLocation? { get }
  var localizedLocationNames: [String] { get }
  class func fetchAssetCollections(withLocalIdentifiers identifiers: [String], options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssetCollections(withType type: PHAssetCollectionType, subtype: PHAssetCollectionSubtype, options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssetCollectionsContaining(asset: PHAsset, withType type: PHAssetCollectionType, options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssetCollections(withALAssetGroupURLs assetGroupURLs: [URL], options: PHFetchOptions?) -> PHFetchResult
  class func fetchMoments(inMomentList momentList: PHCollectionList, options: PHFetchOptions?) -> PHFetchResult
  class func fetchMoments(withOptions options: PHFetchOptions?) -> PHFetchResult
  class func transientAssetCollection(withAssets assets: [PHAsset], title: String?) -> PHAssetCollection
  class func transientAssetCollectionWithAssetFetchResult(fetchResult: PHFetchResult, title: String?) -> PHAssetCollection
  init()
}
@available(iOS 8.0, *)
class PHCollectionList : PHCollection {
  var collectionListType: PHCollectionListType { get }
  var collectionListSubtype: PHCollectionListSubtype { get }
  var startDate: Date? { get }
  var endDate: Date? { get }
  var localizedLocationNames: [String] { get }
  class func fetchCollectionListsContaining(collection: PHCollection, options: PHFetchOptions?) -> PHFetchResult
  class func fetchCollectionLists(withLocalIdentifiers identifiers: [String], options: PHFetchOptions?) -> PHFetchResult
  class func fetchCollectionLists(withType collectionListType: PHCollectionListType, subtype: PHCollectionListSubtype, options: PHFetchOptions?) -> PHFetchResult
  class func fetchMomentLists(withSubtype momentListSubtype: PHCollectionListSubtype, containingMoment moment: PHAssetCollection, options: PHFetchOptions?) -> PHFetchResult
  class func fetchMomentLists(withSubtype momentListSubtype: PHCollectionListSubtype, options: PHFetchOptions?) -> PHFetchResult
  class func transientCollectionList(withCollections collections: [PHCollection], title: String?) -> PHCollectionList
  class func transientCollectionListWithCollectionsFetchResult(fetchResult: PHFetchResult, title: String?) -> PHCollectionList
  init()
}
