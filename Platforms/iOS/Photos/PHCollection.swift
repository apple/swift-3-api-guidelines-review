
@available(iOS 8.0, *)
class PHCollection : PHObject {
  var canContainAssets: Bool { get }
  var canContainCollections: Bool { get }
  var localizedTitle: String? { get }
  func canPerform(anOperation: PHCollectionEditOperation) -> Bool
  class func fetchCollections(in collectionList: PHCollectionList, options: PHFetchOptions?) -> PHFetchResult
  class func fetchTopLevelUserCollections(options: PHFetchOptions?) -> PHFetchResult
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
  class func fetchAssetCollections(localIdentifiers identifiers: [String], options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssetCollections(type: PHAssetCollectionType, subtype: PHAssetCollectionSubtype, options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssetCollectionsContaining(asset: PHAsset, with type: PHAssetCollectionType, options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssetCollections(alAssetGroupURLs assetGroupURLs: [NSURL], options: PHFetchOptions?) -> PHFetchResult
  class func fetchMoments(inMomentList momentList: PHCollectionList, options: PHFetchOptions?) -> PHFetchResult
  class func fetchMoments(options: PHFetchOptions?) -> PHFetchResult
  class func transientAssetCollection(with assets: [PHAsset], title: String?) -> PHAssetCollection
  class func transientAssetCollection(withAssetFetchResult fetchResult: PHFetchResult, title: String?) -> PHAssetCollection
  init()
}
@available(iOS 8.0, *)
class PHCollectionList : PHCollection {
  var collectionListType: PHCollectionListType { get }
  var collectionListSubtype: PHCollectionListSubtype { get }
  var startDate: NSDate? { get }
  var endDate: NSDate? { get }
  var localizedLocationNames: [String] { get }
  class func fetchCollectionListsContaining(collection: PHCollection, options: PHFetchOptions?) -> PHFetchResult
  class func fetchCollectionLists(localIdentifiers identifiers: [String], options: PHFetchOptions?) -> PHFetchResult
  class func fetchCollectionLists(collectionListType: PHCollectionListType, subtype: PHCollectionListSubtype, options: PHFetchOptions?) -> PHFetchResult
  class func fetchMomentLists(momentListSubtype: PHCollectionListSubtype, containingMoment moment: PHAssetCollection, options: PHFetchOptions?) -> PHFetchResult
  class func fetchMomentLists(momentListSubtype: PHCollectionListSubtype, options: PHFetchOptions?) -> PHFetchResult
  class func transientCollectionList(with collections: [PHCollection], title: String?) -> PHCollectionList
  class func transientCollectionList(withCollectionsFetchResult fetchResult: PHFetchResult, title: String?) -> PHCollectionList
  init()
}
