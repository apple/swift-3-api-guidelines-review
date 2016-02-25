
@available(iOS 8.0, *)
enum PHImageContentMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case AspectFit
  case AspectFill
  static var Default: PHImageContentMode { get }
}
@available(iOS 8.0, *)
enum PHCollectionListType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case MomentList
  case Folder
  case SmartFolder
}
@available(iOS 8.0, *)
enum PHCollectionListSubtype : Int {
  init?(rawValue rawValue: Int)
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
  init?(rawValue rawValue: Int)
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
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Album
  case SmartAlbum
  case Moment
}
@available(iOS 8.0, *)
enum PHAssetCollectionSubtype : Int {
  init?(rawValue rawValue: Int)
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
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Delete
  case Content
  case Properties
}
@available(iOS 8.0, *)
enum PHAssetMediaType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Image
  case Video
  case Audio
}
@available(iOS 8.0, *)
struct PHAssetMediaSubtype : OptionSetType {
  init(rawValue rawValue: UInt)
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
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var None: PHAssetBurstSelectionType { get }
  static var AutoPick: PHAssetBurstSelectionType { get }
  static var UserPick: PHAssetBurstSelectionType { get }
}
@available(iOS 9.0, *)
struct PHAssetSourceType : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var TypeNone: PHAssetSourceType { get }
  static var TypeUserLibrary: PHAssetSourceType { get }
  static var TypeCloudShared: PHAssetSourceType { get }
  static var TypeiTunesSynced: PHAssetSourceType { get }
}
@available(iOS 9.0, *)
enum PHAssetResourceType : Int {
  init?(rawValue rawValue: Int)
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
