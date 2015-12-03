
@available(iOS 8.0, *)
class PHAdjustmentData : NSObject {
  init(formatIdentifier: String, formatVersion: String, data: NSData)
  var formatIdentifier: String { get }
  var formatVersion: String { get }
  var data: NSData { get }
  init()
}
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
@available(iOS 8.0, *)
class PHAssetChangeRequest : NSObject {
  class func creationRequestForAssetFromImage(image: UIImage) -> Self
  class func creationRequestForAssetFromImageAtFileURL(fileURL: NSURL) -> Self?
  class func creationRequestForAssetFromVideoAtFileURL(fileURL: NSURL) -> Self?
  var placeholderForCreatedAsset: PHObjectPlaceholder? { get }
  class func deleteAssets(assets: NSFastEnumeration)
  convenience init(forAsset asset: PHAsset)
  var creationDate: NSDate?
  var location: CLLocation?
  var favorite: Bool
  var hidden: Bool
  var contentEditingOutput: PHContentEditingOutput?
  func revertAssetContentToOriginal()
  init()
}
@available(iOS 8.0, *)
typealias PHContentEditingInputRequestID = Int
@available(iOS 8.0, *)
class PHContentEditingInputRequestOptions : NSObject {
  var canHandleAdjustmentData: (PHAdjustmentData) -> Bool
  var networkAccessAllowed: Bool
  var progressHandler: ((Double, UnsafeMutablePointer<ObjCBool>) -> Void)?
  init()
}
extension PHAsset {
  @available(iOS 8.0, *)
  func requestContentEditingInputWithOptions(options: PHContentEditingInputRequestOptions?, completionHandler: (PHContentEditingInput?, [NSObject : AnyObject]) -> Void) -> PHContentEditingInputRequestID
  @available(iOS 8.0, *)
  func cancelContentEditingInputRequest(requestID: PHContentEditingInputRequestID)
}
@available(iOS 8.0, *)
let PHContentEditingInputResultIsInCloudKey: String
@available(iOS 8.0, *)
let PHContentEditingInputCancelledKey: String
@available(iOS 8.0, *)
let PHContentEditingInputErrorKey: String
extension PHContentEditingOutput {
  init(placeholderForCreatedAsset: PHObjectPlaceholder)
}
class PHAssetCollectionChangeRequest : NSObject {
  class func creationRequestForAssetCollectionWithTitle(title: String) -> Self
  var placeholderForCreatedAssetCollection: PHObjectPlaceholder { get }
  class func deleteAssetCollections(assetCollections: NSFastEnumeration)
  convenience init?(forAssetCollection assetCollection: PHAssetCollection)
  convenience init?(forAssetCollection assetCollection: PHAssetCollection, assets: PHFetchResult)
  var title: String
  func addAssets(assets: NSFastEnumeration)
  func insertAssets(assets: NSFastEnumeration, atIndexes indexes: NSIndexSet)
  func removeAssets(assets: NSFastEnumeration)
  func removeAssetsAtIndexes(indexes: NSIndexSet)
  func replaceAssetsAtIndexes(indexes: NSIndexSet, withAssets assets: NSFastEnumeration)
  func moveAssetsAtIndexes(fromIndexes: NSIndexSet, toIndex: Int)
  init()
}
@available(iOS 9.0, *)
class PHAssetResourceCreationOptions : NSObject, NSCopying {
  var originalFilename: String?
  var uniformTypeIdentifier: String?
  var shouldMoveFile: Bool
  init()
  @available(iOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 9.0, *)
class PHAssetCreationRequest : PHAssetChangeRequest {
  class func creationRequestForAsset() -> Self
  class func supportsAssetResourceTypes(types: [NSNumber]) -> Bool
  func addResourceWithType(type: PHAssetResourceType, fileURL: NSURL, options: PHAssetResourceCreationOptions?)
  func addResourceWithType(type: PHAssetResourceType, data: NSData, options: PHAssetResourceCreationOptions?)
  convenience init(forAsset asset: PHAsset)
  init()
}
@available(iOS 9.0, *)
class PHAssetResource : NSObject {
  var type: PHAssetResourceType { get }
  var assetLocalIdentifier: String { get }
  var uniformTypeIdentifier: String { get }
  var originalFilename: String { get }
  class func assetResourcesForAsset(asset: PHAsset) -> [PHAssetResource]
  @available(iOS 9.1, *)
  class func assetResourcesForLivePhoto(livePhoto: PHLivePhoto) -> [PHAssetResource]
  init()
}
@available(iOS 9.0, *)
typealias PHAssetResourceDataRequestID = Int32
let PHInvalidAssetResourceDataRequestID: PHAssetResourceDataRequestID
@available(iOS 9.0, *)
typealias PHAssetResourceProgressHandler = (Double) -> Void
@available(iOS 9.0, *)
class PHAssetResourceRequestOptions : NSObject, NSCopying {
  var networkAccessAllowed: Bool
  var progressHandler: PHAssetResourceProgressHandler?
  init()
  @available(iOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 9.0, *)
class PHAssetResourceManager : NSObject {
  class func defaultManager() -> PHAssetResourceManager
  func requestDataForAssetResource(resource: PHAssetResource, options: PHAssetResourceRequestOptions?, dataReceivedHandler handler: (NSData) -> Void, completionHandler: (NSError?) -> Void) -> PHAssetResourceDataRequestID
  func writeDataForAssetResource(resource: PHAssetResource, toFile fileURL: NSURL, options: PHAssetResourceRequestOptions?, completionHandler: (NSError?) -> Void)
  func cancelDataRequest(requestID: PHAssetResourceDataRequestID)
  init()
}
@available(iOS 8.0, *)
class PHChange : NSObject {
  func changeDetailsForObject(object: PHObject) -> PHObjectChangeDetails?
  func changeDetailsForFetchResult(object: PHFetchResult) -> PHFetchResultChangeDetails?
  init()
}
@available(iOS 8.0, *)
class PHObjectChangeDetails : NSObject {
  var objectBeforeChanges: PHObject { get }
  var objectAfterChanges: PHObject? { get }
  var assetContentChanged: Bool { get }
  var objectWasDeleted: Bool { get }
  init()
}
@available(iOS 8.0, *)
class PHFetchResultChangeDetails : NSObject {
  var fetchResultBeforeChanges: PHFetchResult { get }
  var fetchResultAfterChanges: PHFetchResult { get }
  var hasIncrementalChanges: Bool { get }
  var removedIndexes: NSIndexSet? { get }
  var removedObjects: [PHObject] { get }
  var insertedIndexes: NSIndexSet? { get }
  var insertedObjects: [PHObject] { get }
  var changedIndexes: NSIndexSet? { get }
  var changedObjects: [PHObject] { get }
  func enumerateMovesWithBlock(handler: (Int, Int) -> Void)
  var hasMoves: Bool { get }
  convenience init(fromFetchResult fromResult: PHFetchResult, toFetchResult toResult: PHFetchResult, changedObjects: [PHObject])
  init()
}
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
@available(iOS 8.0, *)
class PHCollectionListChangeRequest : NSObject {
  class func creationRequestForCollectionListWithTitle(title: String) -> Self
  var placeholderForCreatedCollectionList: PHObjectPlaceholder { get }
  class func deleteCollectionLists(collectionLists: NSFastEnumeration)
  convenience init?(forCollectionList collectionList: PHCollectionList)
  convenience init?(forCollectionList collectionList: PHCollectionList, childCollections: PHFetchResult)
  var title: String
  func addChildCollections(collections: NSFastEnumeration)
  func insertChildCollections(collections: NSFastEnumeration, atIndexes indexes: NSIndexSet)
  func removeChildCollections(collections: NSFastEnumeration)
  func removeChildCollectionsAtIndexes(indexes: NSIndexSet)
  func replaceChildCollectionsAtIndexes(indexes: NSIndexSet, withChildCollections collections: NSFastEnumeration)
  func moveChildCollectionsAtIndexes(indexes: NSIndexSet, toIndex: Int)
  init()
}
@available(iOS 8.0, *)
class PHContentEditingInput : NSObject {
  var mediaType: PHAssetMediaType { get }
  var mediaSubtypes: PHAssetMediaSubtype { get }
  @NSCopying var creationDate: NSDate? { get }
  @NSCopying var location: CLLocation? { get }
  var uniformTypeIdentifier: String? { get }
  var adjustmentData: PHAdjustmentData { get }
  var displaySizeImage: UIImage? { get }
  @NSCopying var fullSizeImageURL: NSURL? { get }
  var fullSizeImageOrientation: Int32 { get }
  @available(iOS, introduced=8.0, deprecated=9.0)
  var avAsset: AVAsset? { get }
  @available(iOS 9.0, *)
  var audiovisualAsset: AVAsset? { get }
  init()
}
@available(iOS 8.0, *)
class PHContentEditingOutput : NSObject {
  init(contentEditingInput: PHContentEditingInput)
  var adjustmentData: PHAdjustmentData?
  @NSCopying var renderedContentURL: NSURL { get }
  init()
}
@available(iOS 8.0, *)
class PHFetchOptions : NSObject, NSCopying {
  var predicate: NSPredicate?
  var sortDescriptors: [NSSortDescriptor]?
  var includeHiddenAssets: Bool
  var includeAllBurstAssets: Bool
  @available(iOS 9.0, *)
  var includeAssetSourceTypes: PHAssetSourceType
  @available(iOS 9.0, *)
  var fetchLimit: Int
  var wantsIncrementalChangeDetails: Bool
  init()
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 8.0, *)
class PHFetchResult : NSObject, NSCopying, NSFastEnumeration {
  var count: Int { get }
  func objectAtIndex(index: Int) -> AnyObject
  subscript (idx: Int) -> AnyObject { get }
  func containsObject(anObject: AnyObject) -> Bool
  func indexOfObject(anObject: AnyObject) -> Int
  func indexOfObject(anObject: AnyObject, inRange range: NSRange) -> Int
  var firstObject: AnyObject? { get }
  var lastObject: AnyObject? { get }
  func objectsAtIndexes(indexes: NSIndexSet) -> [AnyObject]
  func enumerateObjectsUsingBlock(block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjectsWithOptions(opts: NSEnumerationOptions, usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjectsAtIndexes(s: NSIndexSet, options opts: NSEnumerationOptions, usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func countOfAssetsWithMediaType(mediaType: PHAssetMediaType) -> Int
  init()
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 8.0, *)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
@available(iOS 8.0, *)
enum PHImageRequestOptionsVersion : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Current
  case Unadjusted
  case Original
}
@available(iOS 8.0, *)
enum PHImageRequestOptionsDeliveryMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Opportunistic
  case HighQualityFormat
  case FastFormat
}
@available(iOS 8.0, *)
enum PHImageRequestOptionsResizeMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Fast
  case Exact
}
@available(iOS 8.0, *)
typealias PHAssetImageProgressHandler = (Double, NSError?, UnsafeMutablePointer<ObjCBool>, [NSObject : AnyObject]?) -> Void
@available(iOS 8.0, *)
class PHImageRequestOptions : NSObject, NSCopying {
  var version: PHImageRequestOptionsVersion
  var deliveryMode: PHImageRequestOptionsDeliveryMode
  var resizeMode: PHImageRequestOptionsResizeMode
  var normalizedCropRect: CGRect
  var networkAccessAllowed: Bool
  var synchronous: Bool
  var progressHandler: PHAssetImageProgressHandler?
  init()
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 9.1, *)
class PHLivePhotoRequestOptions : NSObject, NSCopying {
  var deliveryMode: PHImageRequestOptionsDeliveryMode
  var networkAccessAllowed: Bool
  var progressHandler: PHAssetImageProgressHandler?
  init()
  @available(iOS 9.1, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 8.0, *)
enum PHVideoRequestOptionsVersion : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Current
  case Original
}
@available(iOS 8.0, *)
enum PHVideoRequestOptionsDeliveryMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case HighQualityFormat
  case MediumQualityFormat
  case FastFormat
}
@available(iOS 8.0, *)
typealias PHAssetVideoProgressHandler = (Double, NSError?, UnsafeMutablePointer<ObjCBool>, [NSObject : AnyObject]?) -> Void
@available(iOS 8.0, *)
class PHVideoRequestOptions : NSObject {
  var networkAccessAllowed: Bool
  var version: PHVideoRequestOptionsVersion
  var deliveryMode: PHVideoRequestOptionsDeliveryMode
  var progressHandler: PHAssetVideoProgressHandler?
  init()
}
@available(iOS 8.0, *)
typealias PHImageRequestID = Int32
let PHInvalidImageRequestID: PHImageRequestID
@available(iOS 8.0, *)
let PHImageManagerMaximumSize: CGSize
@available(iOS 8.0, *)
let PHImageResultIsInCloudKey: String
@available(iOS 8.0, *)
let PHImageResultIsDegradedKey: String
@available(iOS 8.0, *)
let PHImageResultRequestIDKey: String
@available(iOS 8.0, *)
let PHImageCancelledKey: String
@available(iOS 8.0, *)
let PHImageErrorKey: String
@available(iOS 8.0, *)
class PHImageManager : NSObject {
  class func defaultManager() -> PHImageManager
  func requestImageForAsset(asset: PHAsset, targetSize: CGSize, contentMode: PHImageContentMode, options: PHImageRequestOptions?, resultHandler: (UIImage?, [NSObject : AnyObject]?) -> Void) -> PHImageRequestID
  func requestImageDataForAsset(asset: PHAsset, options: PHImageRequestOptions?, resultHandler: (NSData?, String?, UIImageOrientation, [NSObject : AnyObject]?) -> Void) -> PHImageRequestID
  func cancelImageRequest(requestID: PHImageRequestID)

  /// Requests a live photo representation of the asset. With PHImageRequestOptionsDeliveryModeOpportunistic (or if no options are specified), the resultHandler block may be called more than once (the first call may occur before the method returns). The PHImageResultIsDegradedKey key in the result handler's info parameter indicates when a temporary low-quality live photo is provided.
  @available(iOS 9.1, *)
  func requestLivePhotoForAsset(asset: PHAsset, targetSize: CGSize, contentMode: PHImageContentMode, options: PHLivePhotoRequestOptions?, resultHandler: (PHLivePhoto?, [NSObject : AnyObject]?) -> Void) -> PHImageRequestID
  func requestPlayerItemForVideo(asset: PHAsset, options: PHVideoRequestOptions?, resultHandler: (AVPlayerItem?, [NSObject : AnyObject]?) -> Void) -> PHImageRequestID
  func requestExportSessionForVideo(asset: PHAsset, options: PHVideoRequestOptions?, exportPreset: String, resultHandler: (AVAssetExportSession?, [NSObject : AnyObject]?) -> Void) -> PHImageRequestID
  func requestAVAssetForVideo(asset: PHAsset, options: PHVideoRequestOptions?, resultHandler: (AVAsset?, AVAudioMix?, [NSObject : AnyObject]?) -> Void) -> PHImageRequestID
  init()
}
@available(iOS 8.0, *)
class PHCachingImageManager : PHImageManager {
  var allowsCachingHighQualityImages: Bool
  func startCachingImagesForAssets(assets: [PHAsset], targetSize: CGSize, contentMode: PHImageContentMode, options: PHImageRequestOptions?)
  func stopCachingImagesForAssets(assets: [PHAsset], targetSize: CGSize, contentMode: PHImageContentMode, options: PHImageRequestOptions?)
  func stopCachingImagesForAllAssets()
  init()
}
@available(iOS 9.1, *)
typealias PHLivePhotoRequestID = Int32
let PHLivePhotoRequestIDInvalid: PHLivePhotoRequestID

/// These keys may be found in the info dictionary delivered to a live photo request result handler block.
@available(iOS 9.1, *)
let PHLivePhotoInfoErrorKey: String
@available(iOS 9.1, *)
let PHLivePhotoInfoIsDegradedKey: String
@available(iOS 9.1, *)
let PHLivePhotoInfoCancelledKey: String
@available(iOS 9.1, *)
class PHLivePhoto : NSObject, NSCopying, NSSecureCoding {

  /// The dimensions of the live photo measured in pixels.
  var size: CGSize { get }

  /// Requests a Live Photo from the given resource URLs. The result handler will be called multiple times to deliver new PHLivePhoto instances with increasingly more content. If a placeholder image is provided, the result handler will first be invoked synchronously to deliver a live photo containing only the placeholder image. Subsequent invocations of the result handler will occur on the main queue.
  class func requestLivePhotoWithResourceFileURLs(fileURLs: [NSURL], placeholderImage image: UIImage?, targetSize: CGSize, contentMode: PHImageContentMode, resultHandler: (PHLivePhoto?, [NSObject : AnyObject]) -> Void) -> PHLivePhotoRequestID

  /// Cancels the loading of a PHLivePhoto. The request's completion handler will be called.
  class func cancelLivePhotoRequestWithRequestID(requestID: PHLivePhotoRequestID)
  init()
  @available(iOS 9.1, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 9.1, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.1, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
class PHObject : NSObject, NSCopying {
  var localIdentifier: String { get }
  init()
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 8.0, *)
class PHObjectPlaceholder : PHObject {
  init()
}
@available(iOS 8.0, *)
enum PHAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotDetermined
  case Restricted
  case Denied
  case Authorized
}
@available(iOS 8.0, *)
protocol PHPhotoLibraryChangeObserver : NSObjectProtocol {
  func photoLibraryDidChange(changeInstance: PHChange)
}

/*!
 @class        PHPhotoLibrary
 @abstract     A PHPhotoLibrary provides access to the metadata and image data for the photos, videos and related content in the user's photo library, including content from the Camera Roll, iCloud Shared, Photo Stream, imported, and synced from iTunes.
 @discussion   ...
 */
@available(iOS 8.0, *)
class PHPhotoLibrary : NSObject {
  class func sharedPhotoLibrary() -> PHPhotoLibrary
  class func authorizationStatus() -> PHAuthorizationStatus
  class func requestAuthorization(handler: (PHAuthorizationStatus) -> Void)
  func performChanges(changeBlock: dispatch_block_t, completionHandler: ((Bool, NSError?) -> Void)?)
  func performChangesAndWait(changeBlock: dispatch_block_t) throws
  func registerChangeObserver(observer: PHPhotoLibraryChangeObserver)
  func unregisterChangeObserver(observer: PHPhotoLibraryChangeObserver)
  init()
}
@available(iOS 8.0, *)
enum PHImageContentMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AspectFit
  case AspectFill
  static var Default: PHImageContentMode { get }
}
@available(iOS 8.0, *)
enum PHCollectionListType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case MomentList
  case Folder
  case SmartFolder
}
@available(iOS 8.0, *)
enum PHCollectionListSubtype : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case MomentListCluster
  case MomentListYear
  case RegularFolder
  case SmartFolderEvents
  case SmartFolderFaces
  case Any
}
@available(iOS 8.0, *)
enum PHCollectionEditOperation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case DeleteContent
  case RemoveContent
  case AddContent
  case CreateContent
  case RearrangeContent
  case Delete
  case Rename
}
@available(iOS 8.0, *)
enum PHAssetCollectionType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Album
  case SmartAlbum
  case Moment
}
@available(iOS 8.0, *)
enum PHAssetCollectionSubtype : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AlbumRegular
  case AlbumSyncedEvent
  case AlbumSyncedFaces
  case AlbumSyncedAlbum
  case AlbumImported
  case AlbumMyPhotoStream
  case AlbumCloudShared
  case SmartAlbumGeneric
  case SmartAlbumPanoramas
  case SmartAlbumVideos
  case SmartAlbumFavorites
  case SmartAlbumTimelapses
  case SmartAlbumAllHidden
  case SmartAlbumRecentlyAdded
  case SmartAlbumBursts
  case SmartAlbumSlomoVideos
  case SmartAlbumUserLibrary
  @available(iOS 9.0, *)
  case SmartAlbumSelfPortraits
  @available(iOS 9.0, *)
  case SmartAlbumScreenshots
  case Any
}
@available(iOS 8.0, *)
enum PHAssetEditOperation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Delete
  case Content
  case Properties
}
@available(iOS 8.0, *)
enum PHAssetMediaType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Image
  case Video
  case Audio
}
@available(iOS 8.0, *)
struct PHAssetMediaSubtype : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: PHAssetMediaSubtype { get }
  static var PhotoPanorama: PHAssetMediaSubtype { get }
  static var PhotoHDR: PHAssetMediaSubtype { get }
  @available(iOS 9.0, *)
  static var PhotoScreenshot: PHAssetMediaSubtype { get }
  @available(iOS 9.1, *)
  static var PhotoLive: PHAssetMediaSubtype { get }
  static var VideoStreamed: PHAssetMediaSubtype { get }
  static var VideoHighFrameRate: PHAssetMediaSubtype { get }
  static var VideoTimelapse: PHAssetMediaSubtype { get }
}
@available(iOS 8.0, *)
struct PHAssetBurstSelectionType : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: PHAssetBurstSelectionType { get }
  static var AutoPick: PHAssetBurstSelectionType { get }
  static var UserPick: PHAssetBurstSelectionType { get }
}
@available(iOS 9.0, *)
struct PHAssetSourceType : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var TypeNone: PHAssetSourceType { get }
  static var TypeUserLibrary: PHAssetSourceType { get }
  static var TypeCloudShared: PHAssetSourceType { get }
  static var TypeiTunesSynced: PHAssetSourceType { get }
}
@available(iOS 9.0, *)
enum PHAssetResourceType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Photo
  case Video
  case Audio
  case AlternatePhoto
  case FullSizePhoto
  case FullSizeVideo
  case AdjustmentData
  case AdjustmentBasePhoto
  @available(iOS 9.1, *)
  case PairedVideo
}
