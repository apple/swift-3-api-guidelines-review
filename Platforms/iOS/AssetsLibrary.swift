
@available(iOS, introduced=4.0, deprecated=9.0, message="Use PHAsset class properties from the Photos framework instead")
let ALErrorInvalidProperty: String
@available(iOS, introduced=4.0, deprecated=9.0, message="Use the mediaType property on a PHAsset from the Photos framework instead")
let ALAssetPropertyType: String
@available(iOS, introduced=4.0, deprecated=9.0, message="Use the location property on a PHAsset from the Photos framework instead")
let ALAssetPropertyLocation: String
@available(iOS, introduced=4.0, deprecated=9.0, message="Use the duration property on a PHAsset from the Photos framework instead")
let ALAssetPropertyDuration: String
@available(iOS, introduced=4.0, deprecated=9.0, message="Use the orientation of the UIImage returned for a PHAsset via the PHImageManager from the Photos framework instead")
let ALAssetPropertyOrientation: String
@available(iOS, introduced=4.0, deprecated=9.0, message="Use the creationDate property on a PHAsset from the Photos framework instead")
let ALAssetPropertyDate: String
@available(iOS, introduced=4.0, deprecated=9.0, message="Use PHImageRequestOptions with the PHImageManager from the Photos framework instead")
let ALAssetPropertyRepresentations: String
@available(iOS, introduced=4.0, deprecated=9.0, message="Use PHImageRequestOptions with the PHImageManager from the Photos framework instead")
let ALAssetPropertyURLs: String
@available(iOS, introduced=4.0, deprecated=9.0, message="Use the localIdentifier property on a PHAsset (or to lookup PHAssets by a previously known ALAssetPropertyAssetURL use fetchAssetsWithALAssetURLs:options:) from the Photos framework instead")
let ALAssetPropertyAssetURL: String
@available(iOS, introduced=4.0, deprecated=9.0, message="Use PHAssetMediaTypeImage from the Photos framework instead")
let ALAssetTypePhoto: String
@available(iOS, introduced=4.0, deprecated=9.0, message="Use PHAssetMediaTypeVideo from the Photos framework instead")
let ALAssetTypeVideo: String
@available(iOS, introduced=4.0, deprecated=9.0, message="Use PHAssetMediaTypeAudio for audio or PHAssetMediaTypeUnknown for unknown media types from the Photos framework instead")
let ALAssetTypeUnknown: String
@available(iOS, introduced=4.0, deprecated=9.0, message="Use PHAsset from the Photos framework instead")
class ALAsset : Object {
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use PHAsset class properties from the Photos framework instead")
  func valueForProperty(property: String!) -> AnyObject!
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use PHImageRequestOptions with the PHImageManager from the Photos framework instead")
  func defaultRepresentation() -> ALAssetRepresentation!
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use PHImageRequestOptions with the PHImageManager from the Photos framework instead")
  func representationForUTI(representationUTI: String!) -> ALAssetRepresentation!
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use requestImageForAsset:targetSize:contentMode:options:resultHandler: on PHImageManager to request a thumbnail sized image for a PHAsset from the Photos framework instead")
  func thumbnail() -> Unmanaged<CGImage>!
  @available(iOS, introduced=5.0, deprecated=9.0, message="Use the PHImageContentMode options to request thumbnail aspect ratio in PHImageRequestOptions with the PHImageManager")
  func aspectRatioThumbnail() -> Unmanaged<CGImage>!
  @available(iOS, introduced=5.0, deprecated=9.0, message="Use creationRequestForAssetFromImage: on PHAssetChangeRequest from the Photos framework to create a new asset instead")
  func writeModifiedImageDataToSavedPhotosAlbum(imageData: Data!, metadata: [Object : AnyObject]!, completionBlock: ALAssetsLibraryWriteImageCompletionBlock!)
  @available(iOS, introduced=5.0, deprecated=9.0, message="Use creationRequestForAssetFromVideoAtFileURL: on PHAssetChangeRequest from the Photos framework to create a new asset instead")
  func writeModifiedVideoAtPathToSavedPhotosAlbum(videoPathURL: URL!, completionBlock: ALAssetsLibraryWriteVideoCompletionBlock!)
  @available(iOS, introduced=5.0, deprecated=9.0, message="Use the PHImageRequestOptionsVersionOriginal or PHImageRequestOptionsVersionUnadjusted option in PHImageRequestOptions with the PHImageManager from the Photos framework instead")
  var original: ALAsset! { get }
  @available(iOS, introduced=5.0, deprecated=9.0, message="Use canPerformEditOperation: on a PHAsset from the Photos framework instead")
  var isEditable: Bool { get }
  @available(iOS, introduced=5.0, deprecated=9.0, message="Use contentEditingOutput on a PHAssetChangeRequest from the Photos framework instead")
  func setImageData(imageData: Data!, metadata: [Object : AnyObject]!, completionBlock: ALAssetsLibraryWriteImageCompletionBlock!)
  @available(iOS, introduced=5.0, deprecated=9.0, message="Use contentEditingOutput on a PHAssetChangeRequest from the Photos framework instead")
  func setVideoAtPath(videoPathURL: URL!, completionBlock: ALAssetsLibraryWriteVideoCompletionBlock!)
  init()
}
@available(iOS, introduced=4.0, deprecated=9.0, message="Use PHImageRequestOptions with the PHImageManager from the Photos framework instead")
class ALAssetRepresentation : Object {
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use requestImageDataForAsset:options:resultHandler: on PHImageManager for a PHAsset to request image data from the Photos framework and check the dataUTI passed to your result handler instead")
  func uti() -> String!
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use requestImageForAsset:targetSize:contentMode:options:resultHandler: on PHImageManager to request a targetSize of image for a PHAsset from the Photos framework instead")
  func dimensions() -> CGSize
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use requestImageDataForAsset:options:resultHandler: on PHImageManager to request image data for a PHAsset from the Photos framework instead")
  func size() -> Int64
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use requestImageDataForAsset:options:resultHandler: on PHImageManager to request image data for a PHAsset from the Photos framework instead")
  func getBytes(buffer: UnsafeMutablePointer<UInt8>, fromOffset offset: Int64, length: Int, error: ErrorPointer) -> Int
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use requestImageForAsset:targetSize:contentMode:options:resultHandler: on PHImageManager to request a targetSize PHImageManagerMaximumSize for a PHAsset from the Photos framework instead")
  func fullResolutionImage() -> Unmanaged<CGImage>!
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use requestImageForAsset:targetSize:contentMode:options:resultHandler: on PHImageManager to request a targetSize of image for a PHAsset from the Photos framework instead")
  func cgImage(options options: [Object : AnyObject]! = [:]) -> Unmanaged<CGImage>!
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use requestImageForAsset:targetSize:contentMode:options:resultHandler: on PHImageManager to request a targetSize of image for a PHAsset from the Photos framework instead")
  func fullScreenImage() -> Unmanaged<CGImage>!
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use PHImageRequestOptions with the PHImageManager instead")
  func url() -> URL!
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use CGImageSourceCopyPropertiesAtIndex() to retrieve metadata from an image returned by the PHImageManager from the Photos framework instead")
  func metadata() -> [Object : AnyObject]!
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use the orientation of the UIImage returned for a PHAsset from the PHImageManager from the Photos framework instead")
  func orientation() -> ALAssetOrientation
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use requestImageForAsset:targetSize:contentMode:options:resultHandler: on PHImageManager to request a targetSize of image for a PHAsset from the Photos framework instead")
  func scale() -> Float
  @available(iOS, introduced=5.0, deprecated=9.0, message="Use the Photos framework instead")
  func filename() -> String!
  init()
}
@available(iOS, introduced=4.0, deprecated=9.0, message="Use fetchAssetsInAssetCollection:options: on PHAsset and set a mediaType predicate on the PHFetchOptions from the Photos framework instead")
class ALAssetsFilter : Object {
  class func allPhotos() -> ALAssetsFilter!
  class func allVideos() -> ALAssetsFilter!
  class func allAssets() -> ALAssetsFilter!
  init()
}
@available(iOS, introduced=4.0, deprecated=9.0, message="Use the PHFetchResult returned by fetchAssetsInAssetCollection:options: on PHAsset from the Photos framework to enumerate the assets in an asset collection instead")
typealias ALAssetsGroupEnumerationResultsBlock = (ALAsset!, Int, UnsafeMutablePointer<ObjCBool>) -> Void
@available(iOS, introduced=4.0, deprecated=9.0, message="Use the localizedTitle property on a PHAssetCollection from the Photos framework instead")
let ALAssetsGroupPropertyName: String
@available(iOS, introduced=4.0, deprecated=9.0, message="Use the assetCollectionType and assetCollectionSubtype properties on a PHAssetCollection from the Photos framework instead")
let ALAssetsGroupPropertyType: String
@available(iOS, introduced=4.0, deprecated=9.0, message="Use the localIdentifier property on a PHAssetCollection from the Photos framework instead")
let ALAssetsGroupPropertyPersistentID: String
@available(iOS, introduced=5.0, deprecated=9.0, message="Use the localIdentifier property on a PHAssetCollection from the Photos framework, or to lookup PHAssetCollections by a previously known ALAssetsGroupPropertyURL use fetchAssetCollectionsWithALAssetGroupURLs:options: instead")
let ALAssetsGroupPropertyURL: String
@available(iOS, introduced=4.0, deprecated=9.0, message="Use PHAssetCollection from the Photos framework instead")
class ALAssetsGroup : Object {
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use the class properties on a PHAssetCollection in the Photos framework instead")
  func valueForProperty(property: String!) -> AnyObject!
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use fetchKeyAssetsInAssetCollection:options: on PHAsset, then use the PHImageManager to request image data for key assets in the asset collection from the Photos framework instead")
  func posterImage() -> Unmanaged<CGImage>!
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use fetchAssetsInAssetCollection:options: on PHAsset with a predicate in the PHFetchOptions from the Photos framework to filter the assets in an asset collection instead")
  func setAssetsFilter(filter: ALAssetsFilter!)
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use the estimatedAssetCount on PHAssetCollection for a quick estimate of the total assets in a collection (or fetch the assets to get an exact value) from the Photos framework instead")
  func numberOfAssets() -> Int
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use the PHFetchResult returned by fetchAssetsInAssetCollection:options: on PHAsset to enumerate the assets in an asset collection from the Photos framework instead")
  func enumerateAssetsUsing(enumerationBlock: ALAssetsGroupEnumerationResultsBlock!)
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use the PHFetchResult returned by fetchAssetsInAssetCollection:options: on PHAsset to enumerate the assets in an asset collection from the Photos framework instead")
  func enumerateAssets(options options: EnumerationOptions = [], usingBlock enumerationBlock: ALAssetsGroupEnumerationResultsBlock!)
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use the PHFetchResult returned by fetchAssetsInAssetCollection:options: on PHAsset to enumerate the assets in an asset collection from the Photos framework instead")
  func enumerateAssetsAt(indexSet: IndexSet!, options: EnumerationOptions = [], usingBlock enumerationBlock: ALAssetsGroupEnumerationResultsBlock!)
  @available(iOS, introduced=5.0, deprecated=9.0, message="Use canPerformEditOperation: on a PHAssetCollection from the Photos framework instead")
  var isEditable: Bool { get }
  @available(iOS, introduced=5.0, deprecated=9.0, message="Use addAssets: on a PHAssetCollectionChangeRequest: created from a PHAssetCollection in the Photos framework instead")
  func add(asset: ALAsset!) -> Bool
  init()
}
@available(iOS, introduced=4.0, deprecated=9.0, message="Use UIImageOrientation in the Photos framework instead")
enum ALAssetOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS, introduced=4.0, deprecated=9.0)
  case Up
  @available(iOS, introduced=4.0, deprecated=9.0)
  case Down
  @available(iOS, introduced=4.0, deprecated=9.0)
  case Left
  @available(iOS, introduced=4.0, deprecated=9.0)
  case Right
  @available(iOS, introduced=4.0, deprecated=9.0)
  case UpMirrored
  @available(iOS, introduced=4.0, deprecated=9.0)
  case DownMirrored
  @available(iOS, introduced=4.0, deprecated=9.0)
  case LeftMirrored
  @available(iOS, introduced=4.0, deprecated=9.0)
  case RightMirrored
}
@available(iOS, introduced=4.0, deprecated=9.0)
var ALAssetsGroupLibrary: UInt32 { get }
@available(iOS, introduced=4.0, deprecated=9.0)
var ALAssetsGroupAlbum: UInt32 { get }
@available(iOS, introduced=4.0, deprecated=9.0)
var ALAssetsGroupEvent: UInt32 { get }
@available(iOS, introduced=4.0, deprecated=9.0)
var ALAssetsGroupFaces: UInt32 { get }
@available(iOS, introduced=4.0, deprecated=9.0)
var ALAssetsGroupSavedPhotos: UInt32 { get }
@available(iOS, introduced=5.0, deprecated=9.0)
var ALAssetsGroupPhotoStream: UInt32 { get }
@available(iOS, introduced=4.0, deprecated=9.0)
var ALAssetsGroupAll: UInt32 { get }
@available(iOS, introduced=4.0, deprecated=9.0, message="Use PHAssetCollectionType and PHAssetCollectionSubtype in the Photos framework instead")
typealias ALAssetsGroupType = Int
@available(iOS, introduced=6.0, deprecated=9.0, message="Use PHAuthorizationStatus in the Photos framework instead")
enum ALAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS, introduced=6.0, deprecated=9.0)
  case NotDetermined
  @available(iOS, introduced=6.0, deprecated=9.0)
  case Restricted
  @available(iOS, introduced=6.0, deprecated=9.0)
  case Denied
  @available(iOS, introduced=6.0, deprecated=9.0)
  case Authorized
}
@available(iOS, introduced=4.0, deprecated=9.0, message="Use the PHFetchResult returned by fetchAssetCollectionsInCollectionList:options: on PHAssetCollection from the Photos framework to enumerate the asset collections in a collection list instead")
typealias ALAssetsLibraryGroupsEnumerationResultsBlock = (ALAssetsGroup!, UnsafeMutablePointer<ObjCBool>) -> Void
@available(iOS, introduced=4.0, deprecated=9.0, message="Use fetchAssetsWithLocalIdentifiers:options: on PHAsset to fetch assets by local identifier (or to lookup PHAssets by a previously known ALAssetPropertyAssetURL use fetchAssetsWithALAssetURLs:options:) from the Photos framework instead")
typealias ALAssetsLibraryAssetForURLResultBlock = (ALAsset!) -> Void
@available(iOS, introduced=5.0, deprecated=9.0, message="Use fetchAssetCollectionsWithLocalIdentifiers:options: on PHAssetCollection to fetch the asset collections by local identifier (or to lookup PHAssetCollections by a previously known ALAssetsGroupPropertyURL use fetchAssetCollectionsWithALAssetGroupURLs:options:) from the Photos framework instead")
typealias ALAssetsLibraryGroupResultBlock = (ALAssetsGroup!) -> Void
@available(iOS, introduced=4.0, deprecated=9.0, message="Use the Photos framework instead")
typealias ALAssetsLibraryAccessFailureBlock = (Error!) -> Void
@available(iOS, introduced=4.0, deprecated=9.0, message="Use performChanges:completionHandler: or performChangesAndWait: on the shared PHPhotoLibrary with a PHAssetChangeRequest from the Photos framework instead")
typealias ALAssetsLibraryWriteImageCompletionBlock = (URL!, Error!) -> Void
@available(iOS, introduced=4.0, deprecated=9.0, message="Use performChanges:completionHandler: or performChangesAndWait: on the shared PHPhotoLibrary with a PHAssetChangeRequest from the Photos framework instead")
typealias ALAssetsLibraryWriteVideoCompletionBlock = (URL!, Error!) -> Void
@available(iOS, introduced=4.0, deprecated=9.0, message="Use PHPhotoLibrary from the Photos framework instead")
class ALAssetsLibrary : Object {
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use the PHFetchResult returned by one of the fetch... methods on PHAssetCollection from the Photos framework to enumerate asset collections instead")
  func enumerateGroupsWithTypes(types: ALAssetsGroupType, usingBlock enumerationBlock: ALAssetsLibraryGroupsEnumerationResultsBlock!, failureBlock: ALAssetsLibraryAccessFailureBlock!)
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use fetchAssetsWithLocalIdentifiers:options: on PHAsset to fetch assets by local identifier (or to lookup PHAssets by a previously known ALAssetPropertyAssetURL use fetchAssetsWithALAssetURLs:options:) from the Photos framework instead")
  func assetFor(assetURL: URL!, resultBlock: ALAssetsLibraryAssetForURLResultBlock!, failureBlock: ALAssetsLibraryAccessFailureBlock!)
  @available(iOS, introduced=5.0, deprecated=9.0, message="Use fetchAssetCollectionsWithLocalIdentifiers:options: on PHAssetCollection to fetch the asset collections by local identifier (or to lookup PHAssetCollections by a previously known ALAssetsGroupPropertyURL use fetchAssetCollectionsWithALAssetGroupURLs:options:) from the Photos framework instead")
  func groupFor(groupURL: URL!, resultBlock: ALAssetsLibraryGroupResultBlock!, failureBlock: ALAssetsLibraryAccessFailureBlock!)
  @available(iOS, introduced=5.0, deprecated=9.0, message="Use creationRequestForAssetCollectionWithTitle: on PHAssetCollectionChangeRequest from the Photos framework to create a new asset collection instead")
  func addAssetsGroupAlbumWithName(name: String!, resultBlock: ALAssetsLibraryGroupResultBlock!, failureBlock: ALAssetsLibraryAccessFailureBlock!)
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use creationRequestForAssetFromImage: on PHAssetChangeRequest from the Photos framework to create a new asset instead")
  func writeImageToSavedPhotosAlbum(imageRef: CGImage!, orientation: ALAssetOrientation, completionBlock: ALAssetsLibraryWriteImageCompletionBlock!)
  @available(iOS, introduced=4.1, deprecated=9.0, message="Use creationRequestForAssetFromImage: on PHAssetChangeRequest from the Photos framework to create a new asset instead")
  func writeImageToSavedPhotosAlbum(imageRef: CGImage!, metadata: [Object : AnyObject]!, completionBlock: ALAssetsLibraryWriteImageCompletionBlock!)
  @available(iOS, introduced=4.1, deprecated=9.0, message="Use creationRequestForAssetFromImageData: on PHAssetChangeRequest from the Photos framework to create a new asset instead")
  func writeImageDataToSavedPhotosAlbum(imageData: Data!, metadata: [Object : AnyObject]!, completionBlock: ALAssetsLibraryWriteImageCompletionBlock!)
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use creationRequestForAssetFromVideoAtFilePath: on PHAssetChangeRequest from the Photos framework to create a new asset instead")
  func writeVideoAtPathToSavedPhotosAlbum(videoPathURL: URL!, completionBlock: ALAssetsLibraryWriteVideoCompletionBlock!)
  @available(iOS, introduced=5.0, deprecated=9.0)
  func videoAtPathIsCompatibleWithSavedPhotosAlbum(videoPathURL: URL!) -> Bool
  @available(iOS, introduced=6.0, deprecated=9.0, message="Use authorizationStatus on the shared PHPhotoLibrary from the Photos framework instead")
  class func authorizationStatus() -> ALAuthorizationStatus
  @available(iOS, introduced=6.0, deprecated=9.0, message="Use the Photos framework instead")
  class func disableSharedPhotoStreamsSupport()
  init()
}

extension ALAssetsLibrary {
  @nonobjc func enumerateGroupsWithTypes(types: UInt32, usingBlock enumerationBlock: ALAssetsLibraryGroupsEnumerationResultsBlock!, failureBlock: ALAssetsLibraryAccessFailureBlock!)
}
@available(iOS, introduced=4.0, deprecated=9.0, message="Use photoLibraryDidChange: notification from the Photos framework instead")
let ALAssetsLibraryChangedNotification: String
@available(iOS, introduced=6.0, deprecated=9.0, message="Use changeDetailsForFetchResult: and changeDetailsForObject: to get change details via the PHChange object included on photoLibraryDidChange: from the Photos framework instead")
let ALAssetLibraryUpdatedAssetsKey: String
@available(iOS, introduced=6.0, deprecated=9.0, message="Use changeDetailsForFetchResult: and changeDetailsForObject: to get change details via the PHChange object included on photoLibraryDidChange: from the Photos framework instead")
let ALAssetLibraryInsertedAssetGroupsKey: String
@available(iOS, introduced=6.0, deprecated=9.0, message="Use changeDetailsForFetchResult: and changeDetailsForObject: to get change details via the PHChange object included on photoLibraryDidChange: from the Photos framework instead")
let ALAssetLibraryUpdatedAssetGroupsKey: String
@available(iOS, introduced=6.0, deprecated=9.0, message="Use changeDetailsForFetchResult: and changeDetailsForObject: to get change details via the PHChange object included on photoLibraryDidChange: from the Photos framework instead")
let ALAssetLibraryDeletedAssetGroupsKey: String
@available(iOS, introduced=4.0, deprecated=9.0, message="Use the Photos framework instead")
let ALAssetsLibraryErrorDomain: String
var ALAssetsLibraryUnknownError: Int { get }
var ALAssetsLibraryWriteFailedError: Int { get }
var ALAssetsLibraryWriteBusyError: Int { get }
var ALAssetsLibraryWriteInvalidDataError: Int { get }
var ALAssetsLibraryWriteIncompatibleDataError: Int { get }
var ALAssetsLibraryWriteDataEncodingError: Int { get }
var ALAssetsLibraryWriteDiskSpaceError: Int { get }
var ALAssetsLibraryDataUnavailableError: Int { get }
var ALAssetsLibraryAccessUserDeniedError: Int { get }
var ALAssetsLibraryAccessGloballyDeniedError: Int { get }
