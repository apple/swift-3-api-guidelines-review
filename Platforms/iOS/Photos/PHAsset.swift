
@available(iOS 8.0, *)
class PHAsset : PHObject {
  var mediaType: PHAssetMediaType { get }
  var mediaSubtypes: PHAssetMediaSubtype { get }
  var pixelWidth: Int { get }
  var pixelHeight: Int { get }
  var creationDate: NSDate? { get }
  var modificationDate: NSDate? { get }
  var location: CLLocation? { get }
  var duration: NSTimeInterval { get }
  var hidden: Bool { get }
  var favorite: Bool { get }
  var burstIdentifier: String? { get }
  var burstSelectionTypes: PHAssetBurstSelectionType { get }
  var representsBurst: Bool { get }
  @available(iOS 9.0, *)
  var sourceType: PHAssetSourceType { get }
  func canPerformEditOperation(editOperation: PHAssetEditOperation) -> Bool
  class func fetchAssetsInAssetCollection(assetCollection: PHAssetCollection, options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssetsWithLocalIdentifiers(identifiers: [String], options: PHFetchOptions?) -> PHFetchResult
  class func fetchKeyAssetsInAssetCollection(assetCollection: PHAssetCollection, options: PHFetchOptions?) -> PHFetchResult?
  class func fetchAssetsWithBurstIdentifier(burstIdentifier: String, options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssetsWithOptions(options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssetsWithMediaType(mediaType: PHAssetMediaType, options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssetsWithALAssetURLs(assetURLs: [NSURL], options: PHFetchOptions?) -> PHFetchResult
  init()
}
