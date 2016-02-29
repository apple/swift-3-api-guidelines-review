
@available(iOS 8.0, *)
class PHCollection : PHObject {
  var canContainAssets: Bool { get }
  var canContainCollections: Bool { get }
  var localizedTitle: String? { get }
  func canPerform(_ anOperation: PHCollectionEditOperation) -> Bool
  class func fetchCollections(in collectionList: PHCollectionList, options options: PHFetchOptions?) -> PHFetchResult
  class func fetchTopLevelUserCollections(with options: PHFetchOptions?) -> PHFetchResult
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
  class func fetchAssetCollections(withLocalIdentifiers identifiers: [String], options options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssetCollections(with type: PHAssetCollectionType, subtype subtype: PHAssetCollectionSubtype, options options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssetCollectionsContaining(_ asset: PHAsset, with type: PHAssetCollectionType, options options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssetCollections(withALAssetGroupURLs assetGroupURLs: [NSURL], options options: PHFetchOptions?) -> PHFetchResult
  class func fetchMoments(inMomentList momentList: PHCollectionList, options options: PHFetchOptions?) -> PHFetchResult
  class func fetchMoments(with options: PHFetchOptions?) -> PHFetchResult
  class func transientAssetCollection(with assets: [PHAsset], title title: String?) -> PHAssetCollection
  class func transientAssetCollection(withAssetFetchResult fetchResult: PHFetchResult, title title: String?) -> PHAssetCollection
}
@available(iOS 8.0, *)
class PHCollectionList : PHCollection {
  var collectionListType: PHCollectionListType { get }
  var collectionListSubtype: PHCollectionListSubtype { get }
  var startDate: NSDate? { get }
  var endDate: NSDate? { get }
  var localizedLocationNames: [String] { get }
  class func fetchCollectionListsContaining(_ collection: PHCollection, options options: PHFetchOptions?) -> PHFetchResult
  class func fetchCollectionLists(withLocalIdentifiers identifiers: [String], options options: PHFetchOptions?) -> PHFetchResult
  class func fetchCollectionLists(with collectionListType: PHCollectionListType, subtype subtype: PHCollectionListSubtype, options options: PHFetchOptions?) -> PHFetchResult
  class func fetchMomentLists(with momentListSubtype: PHCollectionListSubtype, containingMoment moment: PHAssetCollection, options options: PHFetchOptions?) -> PHFetchResult
  class func fetchMomentLists(with momentListSubtype: PHCollectionListSubtype, options options: PHFetchOptions?) -> PHFetchResult
  class func transientCollectionList(with collections: [PHCollection], title title: String?) -> PHCollectionList
  class func transientCollectionList(withCollectionsFetchResult fetchResult: PHFetchResult, title title: String?) -> PHCollectionList
}
