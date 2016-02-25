
@available(iOS 8.0, *)
class PHCollection : PHObject {
  var canContainAssets: Bool { get }
  var canContainCollections: Bool { get }
  var localizedTitle: String? { get }
  func canPerformEditOperation(_ anOperation: PHCollectionEditOperation) -> Bool
  class func fetchCollectionsInCollectionList(_ collectionList: PHCollectionList, options options: PHFetchOptions?) -> PHFetchResult
  class func fetchTopLevelUserCollectionsWithOptions(_ options: PHFetchOptions?) -> PHFetchResult
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
  class func fetchAssetCollectionsWithLocalIdentifiers(_ identifiers: [String], options options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssetCollectionsWithType(_ type: PHAssetCollectionType, subtype subtype: PHAssetCollectionSubtype, options options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssetCollectionsContainingAsset(_ asset: PHAsset, withType type: PHAssetCollectionType, options options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssetCollectionsWithALAssetGroupURLs(_ assetGroupURLs: [NSURL], options options: PHFetchOptions?) -> PHFetchResult
  class func fetchMomentsInMomentList(_ momentList: PHCollectionList, options options: PHFetchOptions?) -> PHFetchResult
  class func fetchMomentsWithOptions(_ options: PHFetchOptions?) -> PHFetchResult
  class func transientAssetCollectionWithAssets(_ assets: [PHAsset], title title: String?) -> PHAssetCollection
  class func transientAssetCollectionWithAssetFetchResult(_ fetchResult: PHFetchResult, title title: String?) -> PHAssetCollection
}
@available(iOS 8.0, *)
class PHCollectionList : PHCollection {
  var collectionListType: PHCollectionListType { get }
  var collectionListSubtype: PHCollectionListSubtype { get }
  var startDate: NSDate? { get }
  var endDate: NSDate? { get }
  var localizedLocationNames: [String] { get }
  class func fetchCollectionListsContainingCollection(_ collection: PHCollection, options options: PHFetchOptions?) -> PHFetchResult
  class func fetchCollectionListsWithLocalIdentifiers(_ identifiers: [String], options options: PHFetchOptions?) -> PHFetchResult
  class func fetchCollectionListsWithType(_ collectionListType: PHCollectionListType, subtype subtype: PHCollectionListSubtype, options options: PHFetchOptions?) -> PHFetchResult
  class func fetchMomentListsWithSubtype(_ momentListSubtype: PHCollectionListSubtype, containingMoment moment: PHAssetCollection, options options: PHFetchOptions?) -> PHFetchResult
  class func fetchMomentListsWithSubtype(_ momentListSubtype: PHCollectionListSubtype, options options: PHFetchOptions?) -> PHFetchResult
  class func transientCollectionListWithCollections(_ collections: [PHCollection], title title: String?) -> PHCollectionList
  class func transientCollectionListWithCollectionsFetchResult(_ fetchResult: PHFetchResult, title title: String?) -> PHCollectionList
}
