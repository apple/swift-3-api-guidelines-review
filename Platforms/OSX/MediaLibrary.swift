
class MLMediaGroup : NSObject {
  unowned(unsafe) var mediaLibrary: @sil_unmanaged MLMediaLibrary? { get }
  unowned(unsafe) var parent: @sil_unmanaged MLMediaGroup? { get }
  var mediaSourceIdentifier: String { get }
  var name: String? { get }
  var identifier: String { get }
  var typeIdentifier: String { get }
  var attributes: [String : AnyObject] { get }
  var childGroups: [MLMediaGroup]? { get }
  @NSCopying var url: NSURL? { get }
  @NSCopying var modificationDate: NSDate? { get }
  var mediaObjects: [MLMediaObject]? { get }
  init()
}
class MLMediaLibrary : NSObject {
  init(options: [String : AnyObject] = [:])
  var mediaSources: [String : MLMediaSource]? { get }
  convenience init()
}
let MLMediaSourcePhotosIdentifier: String
let MLMediaSourceiPhotoIdentifier: String
let MLMediaSourceiTunesIdentifier: String
let MLMediaSourceApertureIdentifier: String
let MLMediaSourceiMovieIdentifier: String
let MLMediaSourceFinalCutIdentifier: String
let MLMediaSourceGarageBandIdentifier: String
let MLMediaSourceLogicIdentifier: String
let MLMediaSourcePhotoBoothIdentifier: String
let MLMediaSourceCustomFoldersIdentifier: String
let MLMediaSourceMoviesFolderIdentifier: String
let MLMediaSourceAppDefinedFoldersIdentifier: String
let MLMediaLoadSourceTypesKey: String
let MLMediaLoadIncludeSourcesKey: String
let MLMediaLoadExcludeSourcesKey: String
let MLMediaLoadFoldersKey: String
let MLMediaLoadAppleLoops: String
let MLMediaLoadMoviesFolder: String
let MLMediaLoadAppFoldersKey: String
class MLMediaObject : NSObject {
  unowned(unsafe) var mediaLibrary: @sil_unmanaged MLMediaLibrary? { get }
  var identifier: String { get }
  var mediaSourceIdentifier: String { get }
  var attributes: [String : AnyObject] { get }
  var mediaType: MLMediaType { get }
  var contentType: String? { get }
  var name: String? { get }
  @NSCopying var url: NSURL? { get }
  @NSCopying var originalURL: NSURL? { get }
  var fileSize: Int { get }
  @NSCopying var modificationDate: NSDate? { get }
  @NSCopying var thumbnailURL: NSURL? { get }
  init()
}
class MLMediaSource : NSObject {
  unowned(unsafe) var mediaLibrary: @sil_unmanaged MLMediaLibrary? { get }
  var mediaSourceIdentifier: String { get }
  var attributes: [String : AnyObject] { get }
  var rootMediaGroup: MLMediaGroup? { get }
  func mediaGroupForIdentifier(mediaGroupIdentifier: String) -> MLMediaGroup?
  func mediaGroupsForIdentifiers(mediaGroupIdentifiers: [String]) -> [String : MLMediaGroup]
  func mediaObjectForIdentifier(mediaObjectIdentifier: String) -> MLMediaObject?
  func mediaObjectsForIdentifiers(mediaObjectIdentifiers: [String]) -> [String : MLMediaObject]
  init()
}
struct MLMediaSourceType : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Audio: MLMediaSourceType { get }
  static var Image: MLMediaSourceType { get }
  static var Movie: MLMediaSourceType { get }
}
enum MLMediaType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Audio
  case Image
  case Movie
}

///////////// Media Group Type Identifiers
let MLFolderRootGroupTypeIdentifier: String
let MLFolderGroupTypeIdentifier: String
let MLiTunesRootGroupTypeIdentifier: String
let MLiTunesPlaylistTypeIdentifier: String
let MLiTunesPurchasedPlaylistTypeIdentifier: String
let MLiTunesPodcastPlaylistTypeIdentifier: String
let MLiTunesVideoPlaylistTypeIdentifier: String
let MLiTunesSmartPlaylistTypeIdentifier: String
let MLiTunesFolderPlaylistTypeIdentifier: String
let MLiTunesMoviesPlaylistTypeIdentifier: String
let MLiTunesTVShowsPlaylistTypeIdentifier: String
let MLiTunesAudioBooksPlaylistTypeIdentifier: String
let MLiTunesMusicPlaylistTypeIdentifier: String
let MLiTunesMusicVideosPlaylistTypeIdentifier: String
let MLiTunesGeniusPlaylistTypeIdentifier: String
let MLiTunesSavedGeniusPlaylistTypeIdentifier: String
let MLiTunesiTunesUPlaylistTypeIdentifier: String
let MLPhotosRootGroupTypeIdentifier: String
let MLPhotosSharedGroupTypeIdentifier: String
let MLPhotosAlbumsGroupTypeIdentifier: String
let MLPhotosAlbumTypeIdentifier: String
let MLPhotosFolderTypeIdentifier: String
let MLPhotosSmartAlbumTypeIdentifier: String
let MLPhotosPublishedAlbumTypeIdentifier: String
let MLPhotosAllMomentsGroupTypeIdentifier: String
let MLPhotosMomentGroupTypeIdentifier: String
let MLPhotosAllCollectionsGroupTypeIdentifier: String
let MLPhotosCollectionGroupTypeIdentifier: String
let MLPhotosAllYearsGroupTypeIdentifier: String
let MLPhotosYearGroupTypeIdentifier: String
let MLPhotosLastImportGroupTypeIdentifier: String
let MLPhotosMyPhotoStreamTypeIdentifier: String
let MLPhotosSharedPhotoStreamTypeIdentifier: String
let MLPhotosFavoritesGroupTypeIdentifier: String
let MLPhotosFrontCameraGroupTypeIdentifier: String
let MLPhotosPanoramasGroupTypeIdentifier: String
let MLPhotosVideosGroupTypeIdentifier: String
let MLPhotosSloMoGroupTypeIdentifier: String
let MLPhotosTimelapseGroupTypeIdentifier: String
let MLPhotosBurstGroupTypeIdentifier: String
let MLPhotosScreenshotGroupTypeIdentifier: String
let MLPhotosFacesAlbumTypeIdentifier: String
let MLPhotosAllPhotosAlbumTypeIdentifier: String
let MLiPhotoRootGroupTypeIdentifier: String
let MLiPhotoAlbumTypeIdentifier: String
let MLiPhotoLibraryAlbumTypeIdentifier: String
let MLiPhotoEventsFolderTypeIdentifier: String
let MLiPhotoSmartAlbumTypeIdentifier: String
let MLiPhotoEventAlbumTypeIdentifier: String
let MLiPhotoLastImportAlbumTypeIdentifier: String
let MLiPhotoLastNMonthsAlbumTypeIdentifier: String
let MLiPhotoFlaggedAlbumTypeIdentifier: String
let MLiPhotoFolderAlbumTypeIdentifier: String
let MLiPhotoSubscribedAlbumTypeIdentifier: String
let MLiPhotoFacesAlbumTypeIdentifier: String
let MLiPhotoPlacesAlbumTypeIdentifier: String
let MLiPhotoPlacesCountryAlbumTypeIdentifier: String
let MLiPhotoPlacesProvinceAlbumTypeIdentifier: String
let MLiPhotoPlacesCityAlbumTypeIdentifier: String
let MLiPhotoPlacesPointOfInterestAlbumTypeIdentifier: String
let MLiPhotoFacebookAlbumTypeIdentifier: String
let MLiPhotoFlickrAlbumTypeIdentifier: String
let MLiPhotoFacebookGroupTypeIdentifier: String
let MLiPhotoFlickrGroupTypeIdentifier: String
let MLiPhotoSlideShowAlbumTypeIdentifier: String
let MLiPhotoLastViewedEventAlbumTypeIdentifier: String
let MLiPhotoPhotoStreamAlbumTypeIdentifier: String
let MLApertureRootGroupTypeIdentifier: String
let MLApertureUserAlbumTypeIdentifier: String
let MLApertureUserSmartAlbumTypeIdentifier: String
let MLApertureProjectAlbumTypeIdentifier: String
let MLApertureFolderAlbumTypeIdentifier: String
let MLApertureProjectFolderAlbumTypeIdentifier: String
let MLApertureLightTableTypeIdentifier: String
let MLApertureFlickrGroupTypeIdentifier: String
let MLApertureFlickrAlbumTypeIdentifier: String
let MLApertureFacebookGroupTypeIdentifier: String
let MLApertureFacebookAlbumTypeIdentifier: String
let MLApertureSmugMugGroupTypeIdentifier: String
let MLApertureSmugMugAlbumTypeIdentifier: String
let MLApertureSlideShowTypeIdentifier: String
let MLApertureAllPhotosTypeIdentifier: String
let MLApertureFlaggedTypeIdentifier: String
let MLApertureAllProjectsTypeIdentifier: String
let MLApertureFacesAlbumTypeIdentifier: String
let MLAperturePlacesAlbumTypeIdentifier: String
let MLAperturePlacesCountryAlbumTypeIdentifier: String
let MLAperturePlacesProvinceAlbumTypeIdentifier: String
let MLAperturePlacesCityAlbumTypeIdentifier: String
let MLAperturePlacesPointOfInterestAlbumTypeIdentifier: String
let MLApertureLastImportAlbumTypeIdentifier: String
let MLApertureLastNMonthsAlbumTypeIdentifier: String
let MLApertureLastViewedEventAlbumTypeIdentifier: String
let MLAperturePhotoStreamAlbumTypeIdentifier: String
let MLGarageBandRootGroupTypeIdentifier: String
let MLGarageBandFolderGroupTypeIdentifier: String
let MLLogicRootGroupTypeIdentifier: String
let MLLogicBouncesGroupTypeIdentifier: String
let MLLogicProjectsGroupTypeIdentifier: String
let MLLogicProjectTypeIdentifier: String
let MLiMovieRootGroupTypeIdentifier: String
let MLiMovieEventGroupTypeIdentifier: String
let MLiMovieProjectGroupTypeIdentifier: String
let MLiMovieEventLibraryGroupTypeIdentifier: String
let MLiMovieEventCalendarGroupTypeIdentifier: String
let MLiMovieFolderGroupTypeIdentifier: String
let MLFinalCutRootGroupTypeIdentifier: String
let MLFinalCutEventGroupTypeIdentifier: String
let MLFinalCutProjectGroupTypeIdentifier: String
let MLFinalCutEventLibraryGroupTypeIdentifier: String
let MLFinalCutEventCalendarGroupTypeIdentifier: String
let MLFinalCutFolderGroupTypeIdentifier: String

////////////////////////////////////////////////////////////////
let MLMediaObjectDurationKey: String
let MLMediaObjectArtistKey: String
let MLMediaObjectAlbumKey: String
let MLMediaObjectGenreKey: String
let MLMediaObjectKindKey: String
let MLMediaObjectTrackNumberKey: String
let MLMediaObjectBitRateKey: String
let MLMediaObjectSampleRateKey: String
let MLMediaObjectChannelCountKey: String
let MLMediaObjectResolutionStringKey: String
let MLMediaObjectCommentsKey: String
let MLMediaObjectKeywordsKey: String
let MLMediaObjectProtectedKey: String
