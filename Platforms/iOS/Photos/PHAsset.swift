
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
  func canPerformEditOperation(_ editOperation: PHAssetEditOperation) -> Bool
  class func fetchAssetsInAssetCollection(_ assetCollection: PHAssetCollection, options options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssetsWithLocalIdentifiers(_ identifiers: [String], options options: PHFetchOptions?) -> PHFetchResult
  class func fetchKeyAssetsInAssetCollection(_ assetCollection: PHAssetCollection, options options: PHFetchOptions?) -> PHFetchResult?
  class func fetchAssetsWithBurstIdentifier(_ burstIdentifier: String, options options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssetsWithOptions(_ options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssetsWithMediaType(_ mediaType: PHAssetMediaType, options options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssetsWithALAssetURLs(_ assetURLs: [NSURL], options options: PHFetchOptions?) -> PHFetchResult
}
