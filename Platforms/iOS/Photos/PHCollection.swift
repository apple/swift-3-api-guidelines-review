
@available(iOS 8.0, *)
class PHCollection : PHObject {
  var canContainAssets: Bool { get }
  var canContainCollections: Bool { get }
  var localizedTitle: String? { get }
  func canPerformEditOperation(anOperation: PHCollectionEditOperation) -> Bool
  class func fetchCollectionsInCollectionList(collectionList: PHCollectionList, options: PHFetchOptions?) -> PHFetchResult
  class func fetchTopLevelUserCollectionsWithOptions(options: PHFetchOptions?) -> PHFetchResult
  init()
}
@available(iOS 8.0, *)
class PHAssetCollection : PHCollection {
  var assetCollectionType: PHAssetCollectionType { get }
  var assetCollectionSubtype: PHAssetCollectionSubtype { get }
  var estimatedAssetCount: Int { get }
  var startDate: NSDate? { get }
  var endDate: NSDate? { get }
  var approximateLocation: CLLocation? { get }
  var localizedLocationNames: [String] { get }
  class func fetchAssetCollectionsWithLocalIdentifiers(identifiers: [String], options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssetCollectionsWithType(type: PHAssetCollectionType, subtype: PHAssetCollectionSubtype, options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssetCollectionsContainingAsset(asset: PHAsset, withType type: PHAssetCollectionType, options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssetCollectionsWithALAssetGroupURLs(assetGroupURLs: [NSURL], options: PHFetchOptions?) -> PHFetchResult
  class func fetchMomentsInMomentList(momentList: PHCollectionList, options: PHFetchOptions?) -> PHFetchResult
  class func fetchMomentsWithOptions(options: PHFetchOptions?) -> PHFetchResult
  class func transientAssetCollectionWithAssets(assets: [PHAsset], title: String?) -> PHAssetCollection
  class func transientAssetCollectionWithAssetFetchResult(fetchResult: PHFetchResult, title: String?) -> PHAssetCollection
  init()
}
@available(iOS 8.0, *)
class PHCollectionList : PHCollection {
  var collectionListType: PHCollectionListType { get }
  var collectionListSubtype: PHCollectionListSubtype { get }
  var startDate: NSDate? { get }
  var endDate: NSDate? { get }
  var localizedLocationNames: [String] { get }
  class func fetchCollectionListsContainingCollection(collection: PHCollection, options: PHFetchOptions?) -> PHFetchResult
  class func fetchCollectionListsWithLocalIdentifiers(identifiers: [String], options: PHFetchOptions?) -> PHFetchResult
  class func fetchCollectionListsWithType(collectionListType: PHCollectionListType, subtype: PHCollectionListSubtype, options: PHFetchOptions?) -> PHFetchResult
  class func fetchMomentListsWithSubtype(momentListSubtype: PHCollectionListSubtype, containingMoment moment: PHAssetCollection, options: PHFetchOptions?) -> PHFetchResult
  class func fetchMomentListsWithSubtype(momentListSubtype: PHCollectionListSubtype, options: PHFetchOptions?) -> PHFetchResult
  class func transientCollectionListWithCollections(collections: [PHCollection], title: String?) -> PHCollectionList
  class func transientCollectionListWithCollectionsFetchResult(fetchResult: PHFetchResult, title: String?) -> PHCollectionList
  init()
}
