
@available(iOS 8.0, *)
class PHAsset : PHObject {
  var mediaType: PHAssetMediaType { get }
  var mediaSubtypes: PHAssetMediaSubtype { get }
  var pixelWidth: Int { get }
  var pixelHeight: Int { get }
  var creationDate: Date? { get }
  var modificationDate: Date? { get }
  var location: CLLocation? { get }
  var duration: TimeInterval { get }
  var isHidden: Bool { get }
  var isFavorite: Bool { get }
  var burstIdentifier: String? { get }
  var burstSelectionTypes: PHAssetBurstSelectionType { get }
  var representsBurst: Bool { get }
  @available(iOS 9.0, *)
  var sourceType: PHAssetSourceType { get }
  func canPerform(editOperation: PHAssetEditOperation) -> Bool
  class func fetchAssets(in assetCollection: PHAssetCollection, options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssets(localIdentifiers identifiers: [String], options: PHFetchOptions?) -> PHFetchResult
  class func fetchKeyAssets(in assetCollection: PHAssetCollection, options: PHFetchOptions?) -> PHFetchResult?
  class func fetchAssets(burstIdentifier burstIdentifier: String, options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssets(options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssets(mediaType: PHAssetMediaType, options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssets(alAssetURLs assetURLs: [URL], options: PHFetchOptions?) -> PHFetchResult
  init()
}
