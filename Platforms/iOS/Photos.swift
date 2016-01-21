
@available(iOS 8.0, *)
class PHAdjustmentData : Object {
  init(formatIdentifier: String, formatVersion: String, data: Data)
  var formatIdentifier: String { get }
  var formatVersion: String { get }
  var data: Data { get }
  init()
}
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
  class func fetchAssetsIn(assetCollection: PHAssetCollection, options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssetsWithLocalIdentifiers(identifiers: [String], options: PHFetchOptions?) -> PHFetchResult
  class func fetchKeyAssetsIn(assetCollection: PHAssetCollection, options: PHFetchOptions?) -> PHFetchResult?
  class func fetchAssetsWithBurstIdentifier(burstIdentifier: String, options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssetsWith(options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssetsWith(mediaType: PHAssetMediaType, options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssetsWithALAssetURLs(assetURLs: [URL], options: PHFetchOptions?) -> PHFetchResult
  init()
}
@available(iOS 8.0, *)
class PHAssetChangeRequest : Object {
  class func creationRequestForAssetFrom(image: UIImage) -> Self
  class func creationRequestForAssetFromImageAtFileURL(fileURL: URL) -> Self?
  class func creationRequestForAssetFromVideoAtFileURL(fileURL: URL) -> Self?
  var placeholderForCreatedAsset: PHObjectPlaceholder? { get }
  class func deleteAssets(assets: FastEnumeration)
  convenience init(forAsset asset: PHAsset)
  var creationDate: Date?
  var location: CLLocation?
  var isFavorite: Bool
  var isHidden: Bool
  var contentEditingOutput: PHContentEditingOutput?
  func revertAssetContentToOriginal()
  init()
}
@available(iOS 8.0, *)
typealias PHContentEditingInputRequestID = Int
@available(iOS 8.0, *)
class PHContentEditingInputRequestOptions : Object {
  var canHandleAdjustmentData: (PHAdjustmentData) -> Bool
  var isNetworkAccessAllowed: Bool
  var progressHandler: ((Double, UnsafeMutablePointer<ObjCBool>) -> Void)?
  init()
}
extension PHAsset {
  @available(iOS 8.0, *)
  func requestContentEditingInputWith(options: PHContentEditingInputRequestOptions?, completionHandler: (PHContentEditingInput?, [Object : AnyObject]) -> Void) -> PHContentEditingInputRequestID
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
class PHAssetCollectionChangeRequest : Object {
  class func creationRequestForAssetCollectionWithTitle(title: String) -> Self
  var placeholderForCreatedAssetCollection: PHObjectPlaceholder { get }
  class func deleteAssetCollections(assetCollections: FastEnumeration)
  convenience init?(forAssetCollection assetCollection: PHAssetCollection)
  convenience init?(forAssetCollection assetCollection: PHAssetCollection, assets: PHFetchResult)
  var title: String
  func addAssets(assets: FastEnumeration)
  func insertAssets(assets: FastEnumeration, at indexes: IndexSet)
  func removeAssets(assets: FastEnumeration)
  func removeAssetsAt(indexes: IndexSet)
  func replaceAssetsAt(indexes: IndexSet, withAssets assets: FastEnumeration)
  func moveAssetsAt(fromIndexes: IndexSet, to toIndex: Int)
  init()
}
@available(iOS 9.0, *)
class PHAssetResourceCreationOptions : Object, Copying {
  var originalFilename: String?
  var uniformTypeIdentifier: String?
  var shouldMoveFile: Bool
  init()
  @available(iOS 9.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(iOS 9.0, *)
class PHAssetCreationRequest : PHAssetChangeRequest {
  class func forAsset() -> Self
  class func supportsAssetResourceTypes(types: [Number]) -> Bool
  func addResourceWith(type: PHAssetResourceType, fileURL: URL, options: PHAssetResourceCreationOptions?)
  func addResourceWith(type: PHAssetResourceType, data: Data, options: PHAssetResourceCreationOptions?)
  convenience init(forAsset asset: PHAsset)
  init()
}
@available(iOS 9.0, *)
class PHAssetResource : Object {
  var type: PHAssetResourceType { get }
  var assetLocalIdentifier: String { get }
  var uniformTypeIdentifier: String { get }
  var originalFilename: String { get }
  class func assetResourcesFor(asset: PHAsset) -> [PHAssetResource]
  @available(iOS 9.1, *)
  class func assetResourcesFor(livePhoto: PHLivePhoto) -> [PHAssetResource]
  init()
}
@available(iOS 9.0, *)
typealias PHAssetResourceDataRequestID = Int32
let PHInvalidAssetResourceDataRequestID: PHAssetResourceDataRequestID
@available(iOS 9.0, *)
typealias PHAssetResourceProgressHandler = (Double) -> Void
@available(iOS 9.0, *)
class PHAssetResourceRequestOptions : Object, Copying {
  var isNetworkAccessAllowed: Bool
  var progressHandler: PHAssetResourceProgressHandler?
  init()
  @available(iOS 9.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(iOS 9.0, *)
class PHAssetResourceManager : Object {
  class func defaultManager() -> PHAssetResourceManager
  func requestDataFor(resource: PHAssetResource, options: PHAssetResourceRequestOptions?, dataReceivedHandler handler: (Data) -> Void, completionHandler: (Error?) -> Void) -> PHAssetResourceDataRequestID
  func writeDataFor(resource: PHAssetResource, toFile fileURL: URL, options: PHAssetResourceRequestOptions?, completionHandler: (Error?) -> Void)
  func cancelDataRequest(requestID: PHAssetResourceDataRequestID)
  init()
}
@available(iOS 8.0, *)
class PHChange : Object {
  func changeDetailsFor(object: PHObject) -> PHObjectChangeDetails?
  func changeDetailsFor(object: PHFetchResult) -> PHFetchResultChangeDetails?
  init()
}
@available(iOS 8.0, *)
class PHObjectChangeDetails : Object {
  var objectBeforeChanges: PHObject { get }
  var objectAfterChanges: PHObject? { get }
  var assetContentChanged: Bool { get }
  var objectWasDeleted: Bool { get }
  init()
}
@available(iOS 8.0, *)
class PHFetchResultChangeDetails : Object {
  var fetchResultBeforeChanges: PHFetchResult { get }
  var fetchResultAfterChanges: PHFetchResult { get }
  var hasIncrementalChanges: Bool { get }
  var removedIndexes: IndexSet? { get }
  var removedObjects: [PHObject] { get }
  var insertedIndexes: IndexSet? { get }
  var insertedObjects: [PHObject] { get }
  var changedIndexes: IndexSet? { get }
  var changedObjects: [PHObject] { get }
  func enumerateMovesWith(handler: (Int, Int) -> Void)
  var hasMoves: Bool { get }
  convenience init(from fromResult: PHFetchResult, to toResult: PHFetchResult, changedObjects: [PHObject])
  init()
}
@available(iOS 8.0, *)
class PHCollection : PHObject {
  var canContainAssets: Bool { get }
  var canContainCollections: Bool { get }
  var localizedTitle: String? { get }
  func canPerform(anOperation: PHCollectionEditOperation) -> Bool
  class func fetchCollectionsIn(collectionList: PHCollectionList, options: PHFetchOptions?) -> PHFetchResult
  class func fetchTopLevelUserCollectionsWith(options: PHFetchOptions?) -> PHFetchResult
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
  class func fetchAssetCollectionsWithLocalIdentifiers(identifiers: [String], options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssetCollectionsWith(type: PHAssetCollectionType, subtype: PHAssetCollectionSubtype, options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssetCollectionsContaining(asset: PHAsset, withType type: PHAssetCollectionType, options: PHFetchOptions?) -> PHFetchResult
  class func fetchAssetCollectionsWithALAssetGroupURLs(assetGroupURLs: [URL], options: PHFetchOptions?) -> PHFetchResult
  class func fetchMomentsInMomentList(momentList: PHCollectionList, options: PHFetchOptions?) -> PHFetchResult
  class func fetchMomentsWith(options: PHFetchOptions?) -> PHFetchResult
  class func transientAssetCollectionWith(assets: [PHAsset], title: String?) -> PHAssetCollection
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
  class func fetchCollectionListsWithLocalIdentifiers(identifiers: [String], options: PHFetchOptions?) -> PHFetchResult
  class func fetchCollectionListsWith(collectionListType: PHCollectionListType, subtype: PHCollectionListSubtype, options: PHFetchOptions?) -> PHFetchResult
  class func fetchMomentListsWith(momentListSubtype: PHCollectionListSubtype, containingMoment moment: PHAssetCollection, options: PHFetchOptions?) -> PHFetchResult
  class func fetchMomentListsWith(momentListSubtype: PHCollectionListSubtype, options: PHFetchOptions?) -> PHFetchResult
  class func transientCollectionListWith(collections: [PHCollection], title: String?) -> PHCollectionList
  class func transientCollectionListWithCollectionsFetchResult(fetchResult: PHFetchResult, title: String?) -> PHCollectionList
  init()
}
@available(iOS 8.0, *)
class PHCollectionListChangeRequest : Object {
  class func creationRequestForCollectionListWithTitle(title: String) -> Self
  var placeholderForCreatedCollectionList: PHObjectPlaceholder { get }
  class func deleteCollectionLists(collectionLists: FastEnumeration)
  convenience init?(forCollectionList collectionList: PHCollectionList)
  convenience init?(forCollectionList collectionList: PHCollectionList, childCollections: PHFetchResult)
  var title: String
  func addChildCollections(collections: FastEnumeration)
  func insertChildCollections(collections: FastEnumeration, at indexes: IndexSet)
  func removeChildCollections(collections: FastEnumeration)
  func removeChildCollectionsAt(indexes: IndexSet)
  func replaceChildCollectionsAt(indexes: IndexSet, withChildCollections collections: FastEnumeration)
  func moveChildCollectionsAt(indexes: IndexSet, to toIndex: Int)
  init()
}
@available(iOS 8.0, *)
class PHContentEditingInput : Object {
  var mediaType: PHAssetMediaType { get }
  var mediaSubtypes: PHAssetMediaSubtype { get }
  @NSCopying var creationDate: Date? { get }
  @NSCopying var location: CLLocation? { get }
  var uniformTypeIdentifier: String? { get }
  var adjustmentData: PHAdjustmentData { get }
  var displaySizeImage: UIImage? { get }
  @NSCopying var fullSizeImageURL: URL? { get }
  var fullSizeImageOrientation: Int32 { get }
  @available(iOS, introduced=8.0, deprecated=9.0)
  var avAsset: AVAsset? { get }
  @available(iOS 9.0, *)
  var audiovisualAsset: AVAsset? { get }
  init()
}
@available(iOS 8.0, *)
class PHContentEditingOutput : Object {
  init(contentEditingInput: PHContentEditingInput)
  var adjustmentData: PHAdjustmentData?
  @NSCopying var renderedContentURL: URL { get }
  init()
}
@available(iOS 8.0, *)
class PHFetchOptions : Object, Copying {
  var predicate: Predicate?
  var sortDescriptors: [SortDescriptor]?
  var includeHiddenAssets: Bool
  var includeAllBurstAssets: Bool
  @available(iOS 9.0, *)
  var includeAssetSourceTypes: PHAssetSourceType
  @available(iOS 9.0, *)
  var fetchLimit: Int
  var wantsIncrementalChangeDetails: Bool
  init()
  @available(iOS 8.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(iOS 8.0, *)
class PHFetchResult : Object, Copying, FastEnumeration {
  var count: Int { get }
  func objectAt(index: Int) -> AnyObject
  subscript (idx: Int) -> AnyObject { get }
  func contains(anObject: AnyObject) -> Bool
  func indexOf(anObject: AnyObject) -> Int
  func indexOf(anObject: AnyObject, in range: NSRange) -> Int
  var firstObject: AnyObject? { get }
  var lastObject: AnyObject? { get }
  func objectsAt(indexes: IndexSet) -> [AnyObject]
  func enumerateObjectsUsing(block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjects(options opts: EnumerationOptions = [], usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjectsAt(s: IndexSet, options opts: EnumerationOptions = [], usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func countOfAssetsWith(mediaType: PHAssetMediaType) -> Int
  init()
  @available(iOS 8.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(iOS 8.0, *)
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
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
typealias PHAssetImageProgressHandler = (Double, Error?, UnsafeMutablePointer<ObjCBool>, [Object : AnyObject]?) -> Void
@available(iOS 8.0, *)
class PHImageRequestOptions : Object, Copying {
  var version: PHImageRequestOptionsVersion
  var deliveryMode: PHImageRequestOptionsDeliveryMode
  var resizeMode: PHImageRequestOptionsResizeMode
  var normalizedCropRect: CGRect
  var isNetworkAccessAllowed: Bool
  var isSynchronous: Bool
  var progressHandler: PHAssetImageProgressHandler?
  init()
  @available(iOS 8.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(iOS 9.1, *)
class PHLivePhotoRequestOptions : Object, Copying {
  var deliveryMode: PHImageRequestOptionsDeliveryMode
  var isNetworkAccessAllowed: Bool
  var progressHandler: PHAssetImageProgressHandler?
  init()
  @available(iOS 9.1, *)
  func copy(zone zone: Zone = nil) -> AnyObject
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
typealias PHAssetVideoProgressHandler = (Double, Error?, UnsafeMutablePointer<ObjCBool>, [Object : AnyObject]?) -> Void
@available(iOS 8.0, *)
class PHVideoRequestOptions : Object {
  var isNetworkAccessAllowed: Bool
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
class PHImageManager : Object {
  class func defaultManager() -> PHImageManager
  func requestImageFor(asset: PHAsset, targetSize: CGSize, contentMode: PHImageContentMode, options: PHImageRequestOptions?, resultHandler: (UIImage?, [Object : AnyObject]?) -> Void) -> PHImageRequestID
  func requestImageDataFor(asset: PHAsset, options: PHImageRequestOptions?, resultHandler: (Data?, String?, UIImageOrientation, [Object : AnyObject]?) -> Void) -> PHImageRequestID
  func cancelImageRequest(requestID: PHImageRequestID)

  /// Requests a live photo representation of the asset. With PHImageRequestOptionsDeliveryModeOpportunistic (or if no options are specified), the resultHandler block may be called more than once (the first call may occur before the method returns). The PHImageResultIsDegradedKey key in the result handler's info parameter indicates when a temporary low-quality live photo is provided.
  @available(iOS 9.1, *)
  func requestLivePhotoFor(asset: PHAsset, targetSize: CGSize, contentMode: PHImageContentMode, options: PHLivePhotoRequestOptions?, resultHandler: (PHLivePhoto?, [Object : AnyObject]?) -> Void) -> PHImageRequestID
  func requestPlayerItemForVideo(asset: PHAsset, options: PHVideoRequestOptions?, resultHandler: (AVPlayerItem?, [Object : AnyObject]?) -> Void) -> PHImageRequestID
  func requestExportSessionForVideo(asset: PHAsset, options: PHVideoRequestOptions?, exportPreset: String, resultHandler: (AVAssetExportSession?, [Object : AnyObject]?) -> Void) -> PHImageRequestID
  func requestAVAssetForVideo(asset: PHAsset, options: PHVideoRequestOptions?, resultHandler: (AVAsset?, AVAudioMix?, [Object : AnyObject]?) -> Void) -> PHImageRequestID
  init()
}
@available(iOS 8.0, *)
class PHCachingImageManager : PHImageManager {
  var allowsCachingHighQualityImages: Bool
  func startCachingImagesFor(assets: [PHAsset], targetSize: CGSize, contentMode: PHImageContentMode, options: PHImageRequestOptions?)
  func stopCachingImagesFor(assets: [PHAsset], targetSize: CGSize, contentMode: PHImageContentMode, options: PHImageRequestOptions?)
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
class PHLivePhoto : Object, Copying, SecureCoding {

  /// The dimensions of the live photo measured in pixels.
  var size: CGSize { get }

  /// Requests a Live Photo from the given resource URLs. The result handler will be called multiple times to deliver new PHLivePhoto instances with increasingly more content. If a placeholder image is provided, the result handler will first be invoked synchronously to deliver a live photo containing only the placeholder image. Subsequent invocations of the result handler will occur on the main queue.
  class func requestWithResourceFileURLs(fileURLs: [URL], placeholderImage image: UIImage?, targetSize: CGSize, contentMode: PHImageContentMode, resultHandler: (PHLivePhoto?, [Object : AnyObject]) -> Void) -> PHLivePhotoRequestID

  /// Cancels the loading of a PHLivePhoto. The request's completion handler will be called.
  class func cancelRequestWithRequestID(requestID: PHLivePhotoRequestID)
  init()
  @available(iOS 9.1, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(iOS 9.1, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.1, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(iOS 8.0, *)
class PHObject : Object, Copying {
  var localIdentifier: String { get }
  init()
  @available(iOS 8.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
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
protocol PHPhotoLibraryChangeObserver : ObjectProtocol {
  func photoLibraryDidChange(changeInstance: PHChange)
}

/*!
 @class        PHPhotoLibrary
 @abstract     A PHPhotoLibrary provides access to the metadata and image data for the photos, videos and related content in the user's photo library, including content from the Camera Roll, iCloud Shared, Photo Stream, imported, and synced from iTunes.
 @discussion   ...
 */
@available(iOS 8.0, *)
class PHPhotoLibrary : Object {
  class func shared() -> PHPhotoLibrary
  class func authorizationStatus() -> PHAuthorizationStatus
  class func requestAuthorization(handler: (PHAuthorizationStatus) -> Void)
  func performChanges(changeBlock: dispatch_block_t, completionHandler: ((Bool, Error?) -> Void)? = nil)
  func performChangesAndWait(changeBlock: dispatch_block_t) throws
  func register(observer: PHPhotoLibraryChangeObserver)
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
