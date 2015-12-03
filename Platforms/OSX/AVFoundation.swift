

/*!
 @constant					AVCoreAnimationBeginTimeAtZero
 @discussion				Use this constant to set the CoreAnimation's animation beginTime property to be time 0.
							The constant is a small, non-zero, positive value which avoids CoreAnimation
							from replacing 0.0 with CACurrentMediaTime().
*/
@available(OSX 10.7, *)
let AVCoreAnimationBeginTimeAtZero: CFTimeInterval

/*!
	@constant		AVLayerVideoGravityResizeAspect
	@abstract		Preserve aspect ratio; fit within layer bounds.
	@discussion		AVLayerVideoGravityResizeAspect may be used when setting the videoGravity
                    property of an AVPlayerLayer or AVCaptureVideoPreviewLayer instance.
 */
@available(OSX 10.7, *)
let AVLayerVideoGravityResizeAspect: String

/*!
	@constant		AVLayerVideoGravityResizeAspectFill
	@abstract		Preserve aspect ratio; fill layer bounds.
    @discussion     AVLayerVideoGravityResizeAspectFill may be used when setting the videoGravity
                    property of an AVPlayerLayer or AVCaptureVideoPreviewLayer instance.
 */
@available(OSX 10.7, *)
let AVLayerVideoGravityResizeAspectFill: String

/*!
	@constant		AVLayerVideoGravityResize
	@abstract		Stretch to fill layer bounds.
    @discussion     AVLayerVideoGravityResize may be used when setting the videoGravity
                    property of an AVPlayerLayer or AVCaptureVideoPreviewLayer instance.
 */
@available(OSX 10.7, *)
let AVLayerVideoGravityResize: String
@available(OSX 10.7, *)
class AVAsset : NSObject, NSCopying, AVAsynchronousKeyValueLoading {

  /*!
    @method		assetWithURL:
    @abstract		Returns an instance of AVAsset for inspection of a media resource.
    @param		URL
  				An instance of NSURL that references a media resource.
    @result		An instance of AVAsset.
    @discussion	Returns a newly allocated instance of a subclass of AVAsset initialized with the specified URL.
  */
  convenience init(url URL: NSURL)
  var duration: CMTime { get }
  var preferredRate: Float { get }
  var preferredVolume: Float { get }
  var preferredTransform: CGAffineTransform { get }
  init()
  @available(OSX 10.7, *)
  func copy(zone zone: NSZone = nil) -> AnyObject

  /*!
    @method		statusOfValueForKey:
    @abstract		Reports whether the value for a key is immediately available without blocking.
    @param		key
      An instance of NSString containing the specified key.
    @param		outError
      If the status of the value for the key is AVKeyValueStatusFailed, *outError is set to a non-nil NSError that describes the failure that occurred.
    @result		The value's current loading status.
    @discussion
      Clients can use -statusOfValueForKey: to determine the availability of the value of any key of interest. However, this method alone does not prompt the receiver to load the value of a key that's not yet available. To request values for keys that may not already be loaded, without blocking, use -loadValuesAsynchronouslyForKeys:completionHandler:, await invocation of the completion handler, and test the availability of each key via -statusOfValueForKey: before invoking its getter.
   
      Even if access to values of some keys may be readily available, as can occur with receivers initialized with URLs for resources on local volumes, extensive I/O or parsing may be needed for these same receivers to provide values for other keys. A duration for a local MP3 file, for example, may be expensive to obtain, even if the values for other AVAsset properties may be trivial to obtain.
  
      Blocking that may occur when calling the getter for any key should therefore be avoided in the general case by loading values for all keys of interest via -loadValuesAsynchronouslyForKeys:completionHandler: and testing the availability of the requested values before fetching them by calling getters.
        
      The sole exception to this general rule is in usage on Mac OS X on the desktop, where it may be acceptable to block in cases in which the client is preparing objects for use on background threads or in operation queues. On iOS, values should always be loaded asynchronously prior to calling getters for the values, in any usage scenario.
  */
  @available(OSX 10.7, *)
  func statusOfValueForKey(key: String, error outError: NSErrorPointer) -> AVKeyValueStatus

  /*!
    @method		loadValuesAsynchronouslyForKeys:completionHandler:
    @abstract		Directs the target to load the values of any of the specified keys that are not already loaded.
    @param		keys
      An instance of NSArray, containing NSStrings for the specified keys.
    @param		completionHandler
      The block to be invoked when loading succeeds, fails, or is cancelled.
  */
  @available(OSX 10.7, *)
  func loadValuesAsynchronouslyForKeys(keys: [String], completionHandler handler: (() -> Void)? = nil)
}
extension AVAsset {
  var providesPreciseDurationAndTiming: Bool { get }

  /*!
    @method		cancelLoading
    @abstract		Cancels the loading of all values for all observers.
    @discussion	Deallocation or finalization of an instance of AVAsset will implicitly cancel loading if any loading requests are still outstanding.
  */
  func cancelLoading()
}
extension AVAsset {

  /*!
    @property		referenceRestrictions
    @abstract		Indicates the reference restrictions being used by the receiver.
    @discussion
  	For AVURLAsset, this property reflects the value passed in for AVURLAssetReferenceRestrictionsKey, if any. See AVURLAssetReferenceRestrictionsKey below for a full discussion of reference restrictions. The default value for this property is AVAssetReferenceRestrictionForbidNone.
  */
  @available(OSX 10.7, *)
  var referenceRestrictions: AVAssetReferenceRestrictions { get }
}

/*!
  @enum			AVAssetReferenceRestrictions
  @abstract		These constants can be passed in to AVURLAssetReferenceRestrictionsKey to control the resolution of references to external media data.
 
  @constant		AVAssetReferenceRestrictionForbidNone
	Indicates that all types of references should be followed.
  @constant		AVAssetReferenceRestrictionForbidRemoteReferenceToLocal
	Indicates that references from a remote asset (e.g. referenced via http URL) to local media data (e.g. stored in a local file) should not be followed.
  @constant		AVAssetReferenceRestrictionForbidLocalReferenceToRemote
	Indicates that references from a local asset to remote media data should not be followed.
  @constant		AVAssetReferenceRestrictionForbidCrossSiteReference
	Indicates that references from a remote asset to remote media data stored at a different site should not be followed.
  @constant		AVAssetReferenceRestrictionForbidLocalReferenceToLocal
	Indicates that references from a local asset to local media data stored outside the asset's container file should not be followed.
  @constant		AVAssetReferenceRestrictionForbidAll
	Indicates that only references to media data stored within the asset's container file should be allowed.
*/
struct AVAssetReferenceRestrictions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ForbidNone: AVAssetReferenceRestrictions { get }
  static var ForbidRemoteReferenceToLocal: AVAssetReferenceRestrictions { get }
  static var ForbidLocalReferenceToRemote: AVAssetReferenceRestrictions { get }
  static var ForbidCrossSiteReference: AVAssetReferenceRestrictions { get }
  static var ForbidLocalReferenceToLocal: AVAssetReferenceRestrictions { get }
  static var ForbidAll: AVAssetReferenceRestrictions { get }
}
extension AVAsset {

  /*!
    @property		tracks
    @abstract		Provides the array of AVAssetTracks contained by the asset
  */
  var tracks: [AVAssetTrack] { get }

  /*!
    @method		trackWithTrackID:
    @abstract		Provides an instance of AVAssetTrack that represents the track of the specified trackID.
    @param		trackID
  				The trackID of the requested AVAssetTrack.
    @result		An instance of AVAssetTrack; may be nil if no track of the specified trackID is available.
    @discussion	Becomes callable without blocking when the key @"tracks" has been loaded
  */
  func trackWithTrackID(trackID: CMPersistentTrackID) -> AVAssetTrack?

  /*!
    @method		tracksWithMediaType:
    @abstract		Provides an array of AVAssetTracks of the asset that present media of the specified media type.
    @param		mediaType
  				The media type according to which AVAsset filters its AVAssetTracks. (Media types are defined in AVMediaFormat.h.)
    @result		An NSArray of AVAssetTracks; may be empty if no tracks of the specified media type are available.
    @discussion	Becomes callable without blocking when the key @"tracks" has been loaded
  */
  func tracksWithMediaType(mediaType: String) -> [AVAssetTrack]

  /*!
    @method		tracksWithMediaCharacteristic:
    @abstract		Provides an array of AVAssetTracks of the asset that present media with the specified characteristic.
    @param		mediaCharacteristic
  				The media characteristic according to which AVAsset filters its AVAssetTracks. (Media characteristics are defined in AVMediaFormat.h.)
    @result		An NSArray of AVAssetTracks; may be empty if no tracks with the specified characteristic are available.
    @discussion	Becomes callable without blocking when the key @"tracks" has been loaded
  */
  func tracksWithMediaCharacteristic(mediaCharacteristic: String) -> [AVAssetTrack]

  /*!
   @property trackGroups
   @abstract
  	All track groups in the receiver.
   
   @discussion
  	The value of this property is an NSArray of AVAssetTrackGroups, each representing a different grouping of tracks in the receiver.
   */
  @available(OSX 10.9, *)
  var trackGroups: [AVAssetTrackGroup] { get }
}
extension AVAsset {
  @available(OSX 10.8, *)
  var creationDate: AVMetadataItem? { get }
  var lyrics: String? { get }
  var commonMetadata: [AVMetadataItem] { get }
  @available(OSX 10.10, *)
  var metadata: [AVMetadataItem] { get }
  var availableMetadataFormats: [String] { get }

  /*!
    @method		metadataForFormat:
    @abstract		Provides an NSArray of AVMetadataItems, one for each metadata item in the container of the specified format; can subsequently be filtered according to language via +[AVMetadataItem metadataItemsFromArray:filteredAndSortedAccordingToPreferredLanguages:], according to locale via +[AVMetadataItem metadataItemsFromArray:withLocale:], or according to key via +[AVMetadataItem metadataItemsFromArray:withKey:keySpace:].
    @param		format
  				The metadata format for which items are requested.
    @result		An NSArray containing AVMetadataItems; may be empty if there is no metadata of the specified format.
    @discussion	Becomes callable without blocking when the key @"availableMetadataFormats" has been loaded
  */
  func metadataForFormat(format: String) -> [AVMetadataItem]
}
extension AVAsset {
  @available(OSX 10.7, *)
  var availableChapterLocales: [NSLocale] { get }

  /*!
    @method		chapterMetadataGroupsWithTitleLocale:containingMetadataItemsWithCommonKeys:
    @abstract		Provides an array of chapters.
    @param		locale
  				Locale of the metadata items carrying chapter titles to be returned (supports the IETF BCP 47 specification).
    @param		commonKeys
  				Array of common keys of AVMetadataItem to be included; can be nil. 
  				AVMetadataCommonKeyArtwork is the only supported key for now.
    @result		An NSArray of AVTimedMetadataGroup.
    @discussion	
  	This method returns an array of AVTimedMetadataGroup objects. Each object in the array always contains an AVMetadataItem representing the chapter title; the timeRange property of the AVTimedMetadataGroup object is equal to the time range of the chapter title item.
  
  	An AVMetadataItem with the specified common key will be added to an existing AVTimedMetadataGroup object if the time range (timestamp and duration) of the metadata item and the metadata group overlaps. The locale of items not carrying chapter titles need not match the specified locale parameter.
   
  	Further filtering of the metadata items in AVTimedMetadataGroups according to language can be accomplished using +[AVMetadataItem metadataItemsFromArray:filteredAndSortedAccordingToPreferredLanguages:]; filtering of the metadata items according to locale can be accomplished using +[AVMetadataItem metadataItemsFromArray:withLocale:].
  */
  @available(OSX 10.7, *)
  func chapterMetadataGroupsWithTitleLocale(locale: NSLocale, containingItemsWithCommonKeys commonKeys: [String]?) -> [AVTimedMetadataGroup]

  /*!
   @method		chapterMetadataGroupsBestMatchingPreferredLanguages:
   @abstract		Tests, in order of preference, for a match between language identifiers in the specified array of preferred languages and the available chapter locales, and returns the array of chapters corresponding to the first match that's found.
   @param			preferredLanguages
   An array of language identifiers in order of preference, each of which is an IETF BCP 47 (RFC 4646) language identifier. Use +[NSLocale preferredLanguages] to obtain the user's list of preferred languages.
   @result		An NSArray of AVTimedMetadataGroup.
   @discussion	
   Safe to call without blocking when the AVAsset key availableChapterLocales has status AVKeyValueStatusLoaded.
   
   Returns an array of AVTimedMetadataGroup objects. Each object in the array always contains an AVMetadataItem representing the chapter title; the timeRange property of the AVTimedMetadataGroup object is equal to the time range of the chapter title item.
   
   All of the available chapter metadata is included in the metadata groups, including items with the common key AVMetadataCommonKeyArtwork, if such items are present. Items not carrying chapter titles will be added to an existing AVTimedMetadataGroup object if the time range (timestamp and duration) of the metadata item and that of the metadata group overlaps. The locale of such items need not match the locale of the chapter titles.
   
   Further filtering of the metadata items in AVTimedMetadataGroups according to language can be accomplished using +[AVMetadataItem metadataItemsFromArray:filteredAndSortedAccordingToPreferredLanguages:]; filtering of the metadata items according to locale can be accomplished using +[AVMetadataItem metadataItemsFromArray:withLocale:].
  .
  */
  @available(OSX 10.8, *)
  func chapterMetadataGroupsBestMatchingPreferredLanguages(preferredLanguages: [String]) -> [AVTimedMetadataGroup]
}
extension AVAsset {
  @available(OSX 10.8, *)
  var availableMediaCharacteristicsWithMediaSelectionOptions: [String] { get }

  /*!
    @method		mediaSelectionGroupForMediaCharacteristic:
    @abstract		Provides an instance of AVMediaSelectionGroup that contains one or more options with the specified media characteristic.
    @param		mediaCharacteristic
  	A media characteristic for which you wish to obtain the available media selection options. AVMediaCharacteristicAudible, AVMediaCharacteristicLegible, and AVMediaCharacteristicVisual are currently supported.
  
  	Pass AVMediaCharacteristicAudible to obtain the group of available options for audio media in various languages and for various purposes, such as descriptive audio.
  	Pass AVMediaCharacteristicLegible to obtain the group of available options for subtitles in various languages and for various purposes.
  	Pass AVMediaCharacteristicVisual to obtain the group of available options for video media.
    @result		An instance of AVMediaSelectionGroup. May be nil.
    @discussion
  	Becomes callable without blocking when the key @"availableMediaCharacteristicsWithMediaSelectionOptions" has been loaded.
  
  	If the asset has no AVMediaSelectionGroup containing options with the specified media characteristic, the return value will be nil.
  	
  	Filtering of the options in the returned AVMediaSelectionGroup according to playability, locale, and additional media characteristics can be accomplished using the category AVMediaSelectionOptionFiltering defined on AVMediaSelectionGroup.
  */
  @available(OSX 10.8, *)
  func mediaSelectionGroupForMediaCharacteristic(mediaCharacteristic: String) -> AVMediaSelectionGroup?

  /*!
    @property		preferredMediaSelection
    @abstract		Provides an instance of AVMediaSelection with default selections for each of the receiver's media selection groups.
  */
  @available(OSX 10.11, *)
  var preferredMediaSelection: AVMediaSelection { get }
}
extension AVAsset {
  @available(OSX 10.7, *)
  var hasProtectedContent: Bool { get }
}
extension AVAsset {

  /*!
    @property		canContainFragments
    @abstract		Indicates whether the asset is capable of being extended by fragments.
    @discussion	For QuickTime movie files and MPEG-4 files, the value of canContainFragments is YES if an 'mvex' box is present in the 'moov' box. For those types, the 'mvex' box signals the possible presence of later 'moof' boxes.
  */
  @available(OSX 10.11, *)
  var canContainFragments: Bool { get }

  /*!
    @property		containsFragments
    @abstract		Indicates whether the asset is extended by at least one movie fragment.
    @discussion	For QuickTime movie files and MPEG-4 files, the value of this property is YES if canContainFragments is YES and at least one 'moof' box is present after the 'moov' box.
  */
  @available(OSX 10.11, *)
  var containsFragments: Bool { get }
}
extension AVAsset {
  @available(OSX 10.7, *)
  var isPlayable: Bool { get }
  @available(OSX 10.7, *)
  var isExportable: Bool { get }
  @available(OSX 10.7, *)
  var isReadable: Bool { get }
  @available(OSX 10.7, *)
  var isComposable: Bool { get }

  /*!
    @property		compatibleWithAirPlayVideo
    @abstract		Indicates whether the asset is compatible with AirPlay Video.
    @discussion	YES if an AVPlayerItem initialized with the receiver can be played by an external device via AirPlay Video.
   */
  @available(OSX 10.11, *)
  var isCompatibleWithAirPlayVideo: Bool { get }
}

/*!
  @constant		AVURLAssetPreferPreciseDurationAndTimingKey
  @abstract
	Indicates whether the asset should be prepared to indicate a precise duration and provide precise random access by time.
	The value for this key is a boolean NSNumber.
  @discussion
	If nil is passed as the value of the options parameter to -[AVURLAsset initWithURL:options:], or if a dictionary that lacks a value for the key AVURLAssetPreferPreciseDurationAndTimingKey is passed instead, a default value of NO is assumed. If the asset is intended to be played only, because AVPlayer will support approximate random access by time when full precision isn't available, the default value of NO will suffice.
	Pass YES if longer loading times are acceptable in cases in which precise timing is required. If the asset is intended to be inserted into an AVMutableComposition, precise random access is typically desirable and the value of YES is recommended.
	Note that such precision may require additional parsing of the resource in advance of operations that make use of any portion of it, depending on the specifics of its container format. Many container formats provide sufficient summary information for precise timing and do not require additional parsing to prepare for it; QuickTime movie files and MPEG-4 files are examples of such formats. Other formats do not provide sufficient summary information, and precise random access for them is possible only after a preliminary examination of a file's contents.
	If you pass YES for an asset that you intend to play via an instance of AVPlayerItem and you are prepared for playback to commence before the value of -[AVPlayerItem duration] becomes available, you can omit the key @"duration" from the array of AVAsset keys you pass to -[AVPlayerItem initWithAsset:automaticallyLoadedAssetKeys:] in order to prevent AVPlayerItem from automatically loading the value of duration while the item becomes ready to play.
	If precise duration and timing is not possible for the timed media resource referenced by the asset's URL, AVAsset.providesPreciseDurationAndTiming will be NO even if precise timing is requested via the use of this key.
					
*/
@available(OSX 10.7, *)
let AVURLAssetPreferPreciseDurationAndTimingKey: String

/*!
  @constant		AVURLAssetReferenceRestrictionsKey
  @abstract
	Indicates the restrictions used by the asset when resolving references to external media data. The value of this key is an NSNumber wrapping an AVAssetReferenceRestrictions enum value or the logical combination of multiple such values.
  @discussion
	Some assets can contain references to media data stored outside the asset's container file, for example in another file. This key can be used to specify a policy to use when these references are encountered. If an asset contains one or more references of a type that is forbidden by the reference restrictions, loading of asset properties will fail. In addition, such an asset cannot be used with other AVFoundation modules, such as AVPlayerItem or AVAssetExportSession.
*/
@available(OSX 10.7, *)
let AVURLAssetReferenceRestrictionsKey: String
@available(OSX 10.7, *)
class AVURLAsset : AVAsset {

  /*!
    @method		audiovisualTypes
    @abstract		Provides the file types the AVURLAsset class understands.
    @result		An NSArray of UTIs identifying the file types the AVURLAsset class understands.
  */
  @available(OSX 10.7, *)
  class func audiovisualTypes() -> [String]

  /*!
    @method		audiovisualMIMETypes
    @abstract		Provides the MIME types the AVURLAsset class understands.
    @result		An NSArray of NSStrings containing MIME types the AVURLAsset class understands.
  */
  @available(OSX 10.7, *)
  class func audiovisualMIMETypes() -> [String]

  /*!
    @method		isPlayableExtendedMIMEType:
    @abstract		Returns YES if asset is playable with the codec(s) and container type specified in extendedMIMEType. Returns NO otherwise.
    @param		extendedMIMEType
    @result		YES or NO.
  */
  @available(OSX 10.7, *)
  class func isPlayableExtendedMIMEType(extendedMIMEType: String) -> Bool

  /*!
    @method		initWithURL:options:
    @abstract		Initializes an instance of AVURLAsset for inspection of a media resource.
    @param		URL
  				An instance of NSURL that references a media resource.
    @param		options
  				An instance of NSDictionary that contains keys for specifying options for the initialization of the AVURLAsset. See AVURLAssetPreferPreciseDurationAndTimingKey and AVURLAssetReferenceRestrictionsKey above.
    @result		An instance of AVURLAsset.
  */
  init(url URL: NSURL, options: [String : AnyObject]?)
  @NSCopying var url: NSURL { get }

  /*!
    @method		assetWithURL:
    @abstract		Returns an instance of AVAsset for inspection of a media resource.
    @param		URL
  				An instance of NSURL that references a media resource.
    @result		An instance of AVAsset.
    @discussion	Returns a newly allocated instance of a subclass of AVAsset initialized with the specified URL.
  */
  convenience init(url URL: NSURL)
}
extension AVURLAsset {

  /*!
   @property resourceLoader
   @abstract
      Provides access to an instance of AVAssetResourceLoader, which offers limited control over the handling of URLs that may be loaded in the course of performing operations on the asset, such as playback.
      The loading of file URLs cannot be mediated via use of AVAssetResourceLoader.
      Note that copies of an AVAsset will vend the same instance of AVAssetResourceLoader.
  */
  @available(OSX 10.9, *)
  var resourceLoader: AVAssetResourceLoader { get }
}
extension AVURLAsset {

  /*!
    @method		compatibleTrackForCompositionTrack:
    @abstract		Provides a reference to an AVAssetTrack of the target from which any timeRange
  				can be inserted into a mutable composition track (via -[AVMutableCompositionTrack insertTimeRange:ofTrack:atTime:error:]).
    @param		compositionTrack
  				The composition track for which a compatible AVAssetTrack is requested.
    @result		an instance of AVAssetTrack
    @discussion
  	Finds a track of the target with content that can be accommodated by the specified composition track.
  	The logical complement of -[AVMutableComposition mutableTrackCompatibleWithTrack:].
  */
  func compatibleTrackFor(compositionTrack: AVCompositionTrack) -> AVAssetTrack?
}

/*!
 @constant       AVAssetDurationDidChangeNotification
 @abstract       Posted when the duration of an AVFragmentedAsset changes while it's being minded by an AVFragmentedAssetMinder, but only for changes that occur after the status of the value of @"duration" has reached AVKeyValueStatusLoaded.
*/
@available(OSX 10.11, *)
let AVAssetDurationDidChangeNotification: String

/*!
 @constant       AVAssetContainsFragmentsDidChangeNotification
 @abstract       Posted after the value of @"containsFragments" has already been loaded and the AVFragmentedAsset is added to an AVFragmentedAssetMinder, either when 1) fragments are detected in the asset on disk after it had previously contained none or when 2) no fragments are detected in the asset on disk after it had previously contained one or more.
*/
@available(OSX 10.11, *)
let AVAssetContainsFragmentsDidChangeNotification: String

/*!
 @constant       AVAssetWasDefragmentedNotification
 @abstract       Posted when the asset on disk is defragmented while an AVFragmentedAsset is being minded by an AVFragmentedAssetMinder, but only if the defragmentation occurs after the status of the value of @"canContainFragments" has reached AVKeyValueStatusLoaded.
 @discussion     After this notification is posted, the value of the asset properties canContainFragments and containsFragments will both be NO.
*/
@available(OSX 10.11, *)
let AVAssetWasDefragmentedNotification: String

/*!
 @constant       AVAssetChapterMetadataGroupsDidChangeNotification
 @abstract       Posted when the collection of arrays of timed metadata groups representing chapters of an AVAsset change and when any of the contents of the timed metadata groups change, but only for changes that occur after the status of the value of @"availableChapterLocales" has reached AVKeyValueStatusLoaded.
*/
@available(OSX 10.11, *)
let AVAssetChapterMetadataGroupsDidChangeNotification: String

/*!

 @constant       AVAssetMediaSelectionGroupsDidChangeNotification
 @abstract       Posted when the collection of media selection groups provided by an AVAsset changes and when any of the contents of its media selection groups change, but only for changes that occur after the status of the value of @"availableMediaCharacteristicsWithMediaSelectionOptions" has reached AVKeyValueStatusLoaded.
*/
@available(OSX 10.11, *)
let AVAssetMediaSelectionGroupsDidChangeNotification: String

/*!
	@class			AVFragmentedAsset
 
	@abstract		A subclass of AVURLAsset that represents media resources that can be extended in total duration without modifying previously existing data structures.
	Such media resources include QuickTime movie files and MPEG-4 files that indicate, via an 'mvex' box in their 'moov' box, that they accommodate additional fragments. Media resources of other types may also be supported. To check whether a given instance of AVFragmentedAsset can be used to monitor the addition of fragments, check the value of the AVURLAsset property canContainFragments.
	An AVFragmentedAsset is capable of changing the values of certain of its properties and those of its tracks, while an operation that appends fragments to the underlying media resource in in progress, if the AVFragmentedAsset is associated with an instance of AVFragmentedAssetMinder.
	@discussion		While associated with an AVFragmentedAssetMinder, AVFragmentedAssetTrack posts AVAssetDurationDidChangeNotification and whenever new fragments are detected, as appropriate. It may also post AVAssetContainsFragmentsDidChangeNotification and AVAssetWasDefragmentedNotification, as discussed in documentation of those notifications.
*/
protocol AVFragmentMinding {

  /*!
    @property		associatedWithFragmentMinder
    @abstract		Indicates whether an AVAsset that supports fragment minding is currently associated with an AVAssetFragmentMinder.
    @discussion	AVAssets that support fragment minding post change notifications only while associated with an AVAssetFragmentMinder.
  */
  @available(OSX 10.11, *)
  var associatedWithFragmentMinder: Bool { get }
}
@available(OSX 10.11, *)
class AVFragmentedAsset : AVURLAsset, AVFragmentMinding {

  /*!
  	@property       tracks
  	@abstract       The tracks in an asset.
  	@discussion     The value of this property is an array of tracks the asset contains; the tracks are of type AVFragmentedAssetTrack.
  */
  var tracks: [AVFragmentedAssetTrack] { get }

  /*!
    @method		initWithURL:options:
    @abstract		Initializes an instance of AVURLAsset for inspection of a media resource.
    @param		URL
  				An instance of NSURL that references a media resource.
    @param		options
  				An instance of NSDictionary that contains keys for specifying options for the initialization of the AVURLAsset. See AVURLAssetPreferPreciseDurationAndTimingKey and AVURLAssetReferenceRestrictionsKey above.
    @result		An instance of AVURLAsset.
  */
  init(url URL: NSURL, options: [String : AnyObject]?)

  /*!
    @method		assetWithURL:
    @abstract		Returns an instance of AVAsset for inspection of a media resource.
    @param		URL
  				An instance of NSURL that references a media resource.
    @result		An instance of AVAsset.
    @discussion	Returns a newly allocated instance of a subclass of AVAsset initialized with the specified URL.
  */
  convenience init(url URL: NSURL)

  /*!
    @property		associatedWithFragmentMinder
    @abstract		Indicates whether an AVAsset that supports fragment minding is currently associated with an AVAssetFragmentMinder.
    @discussion	AVAssets that support fragment minding post change notifications only while associated with an AVAssetFragmentMinder.
  */
  @available(OSX 10.11, *)
  var associatedWithFragmentMinder: Bool { get }
}
extension AVFragmentedAsset {

  /*!
    @method		trackWithTrackID:
    @abstract		Provides an instance of AVFragmentedAssetTrack that represents the track of the specified trackID.
    @param		trackID
  				The trackID of the requested AVFragmentedAssetTrack.
    @result		An instance of AVFragmentedAssetTrack; may be nil if no track of the specified trackID is available.
    @discussion	Becomes callable without blocking when the key @"tracks" has been loaded
  */
  func trackWithTrackID(trackID: CMPersistentTrackID) -> AVFragmentedAssetTrack?

  /*!
    @method		tracksWithMediaType:
    @abstract		Provides an array of AVFragmentedAssetTracks of the asset that present media of the specified media type.
    @param		mediaType
  				The media type according to which the receiver filters its AVFragmentedAssetTracks. (Media types are defined in AVMediaFormat.h)
    @result		An NSArray of AVFragmentedAssetTracks; may be empty if no tracks of the specified media type are available.
    @discussion	Becomes callable without blocking when the key @"tracks" has been loaded
  */
  func tracksWithMediaType(mediaType: String) -> [AVFragmentedAssetTrack]

  /*!
    @method		tracksWithMediaCharacteristic:
    @abstract		Provides an array of AVFragmentedAssetTracks of the asset that present media with the specified characteristic.
    @param		mediaCharacteristic
  				The media characteristic according to which the receiver filters its AVFragmentedAssetTracks. (Media characteristics are defined in AVMediaFormat.h)
    @result		An NSArray of AVFragmentedAssetTracks; may be empty if no tracks with the specified characteristic are available.
    @discussion	Becomes callable without blocking when the key @"tracks" has been loaded
  */
  func tracksWithMediaCharacteristic(mediaCharacteristic: String) -> [AVFragmentedAssetTrack]
}
@available(OSX 10.11, *)
class AVFragmentedAssetMinder : NSObject {

  /*!
  	@method			fragmentedAssetMinderWithAsset:mindingInterval:
  	@abstract       Creates an AVFragmentedAssetMinder, adds the specified asset to it, and sets the mindingInterval to the specified value.
  	@param			asset
  					An instance of AVFragmentedAsset to add to the AVFragmentedAssetMinder
  	@param			mindingInterval
  					The initial minding interval of the AVFragmentedAssetMinder.
  	@result			A new instance of AVFragmentedAssetMinder.
  */
  convenience init(asset: AVAsset, mindingInterval: NSTimeInterval)

  /*!
  	@property       mindingInterval
  	@abstract       An NSTimeInterval indicating how often a check for additional fragments should be performed. The default interval is 10.0.
  */
  var mindingInterval: NSTimeInterval

  /*!
  	@property       assets
  	@abstract       An NSArray of the AVFragmentedAsset objects being minded.
  */
  var assets: [AVAsset] { get }

  /*!
  	@method			addFragmentedAsset:
  	@abstract		Adds a fragmented asset to the array of assets being minded.
  	@param			asset
  					The fragmented asset to add to the minder.
  */
  func addFragmentedAsset(asset: AVAsset)

  /*!
  	@method			removeFragmentedAsset:
  	@abstract		Removes a fragmented asset from the array of assets being minded.
  	@param			asset
  					The fragmented asset to remove from the minder.
  */
  func removeFragmentedAsset(asset: AVAsset)
  init()
}

/*!
	@class		AVAssetExportSession

	@abstract	An AVAssetExportSession creates a new timed media resource from the contents of an 
				existing AVAsset in the form described by a specified export preset.

	@discussion
				Prior to initializing an instance of AVAssetExportSession, you can invoke
				+allExportPresets to obtain the complete list of presets available. Use
				+exportPresetsCompatibleWithAsset: to obtain a list of presets that are compatible
				with a specific AVAsset.

				To configure an export, initialize an AVAssetExportSession with an AVAsset that contains
				the source media, an AVAssetExportPreset, the output file type, (a UTI string from 
				those defined in AVMediaFormat.h) and the output URL.

				After configuration is complete, invoke exportAsynchronouslyWithCompletionHandler: 
				to start the export process. This method returns immediately; the export is performed 
				asynchronously. Invoke the -progress method to check on the progress. Note that in 
				some cases, depending on the capabilities of the device, when multiple exports are 
				attempted at the same time some may be queued until others have been completed. When 
				this happens, the status of a queued export will indicate that it's "waiting".

				Whether the export fails, completes, or is cancelled, the completion handler you
				supply to -exportAsynchronouslyWithCompletionHandler: will be called. Upon
				completion, the status property indicates whether the export has completed
				successfully. If it has failed, the value of the error property supplies additional
				information about the reason for the failure.

*/
@available(OSX 10.11, *)
let AVAssetExportPresetLowQuality: String
@available(OSX 10.11, *)
let AVAssetExportPresetMediumQuality: String
@available(OSX 10.11, *)
let AVAssetExportPresetHighestQuality: String
@available(OSX 10.7, *)
let AVAssetExportPreset640x480: String
@available(OSX 10.7, *)
let AVAssetExportPreset960x540: String
@available(OSX 10.7, *)
let AVAssetExportPreset1280x720: String
@available(OSX 10.7, *)
let AVAssetExportPreset1920x1080: String
@available(OSX 10.10, *)
let AVAssetExportPreset3840x2160: String
@available(OSX 10.7, *)
let AVAssetExportPresetAppleM4A: String
@available(OSX 10.7, *)
let AVAssetExportPresetPassthrough: String
@available(OSX 10.7, *)
let AVAssetExportPresetAppleM4VCellular: String
@available(OSX 10.7, *)
let AVAssetExportPresetAppleM4ViPod: String
@available(OSX 10.7, *)
let AVAssetExportPresetAppleM4V480pSD: String
@available(OSX 10.7, *)
let AVAssetExportPresetAppleM4VAppleTV: String
@available(OSX 10.7, *)
let AVAssetExportPresetAppleM4VWiFi: String
@available(OSX 10.7, *)
let AVAssetExportPresetAppleM4V720pHD: String
@available(OSX 10.8, *)
let AVAssetExportPresetAppleM4V1080pHD: String
@available(OSX 10.7, *)
let AVAssetExportPresetAppleProRes422LPCM: String
enum AVAssetExportSessionStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Waiting
  case Exporting
  case Completed
  case Failed
  case Cancelled
}
@available(OSX 10.7, *)
class AVAssetExportSession : NSObject {

  /*!
  	@method						initWithAsset:presetName:
  	@abstract					Initialize an AVAssetExportSession with the specified preset and set the source to the contents of the asset.
  	@param		asset			An AVAsset object that is intended to be exported.
  	@param		presetName		An NSString specifying the name of the preset template for the export.
  	@result						Returns the initialized AVAssetExportSession.
  	@discussion					If the specified asset belongs to a mutable subclass of AVAsset, AVMutableComposition or AVMutableMovie, the results of any export-related operation are undefined if you mutate the asset after the operation commences. These operations include but are not limited to: 1) testing the compatibility of export presets with the asset, 2) calculating the maximum duration or estimated length of the output file, and 3) the export operation itself.
  */
  init?(asset: AVAsset, presetName: String)
  var presetName: String { get }
  @available(OSX 10.8, *)
  var asset: AVAsset { get }
  var outputFileType: String?
  @NSCopying var outputURL: NSURL?
  var shouldOptimizeForNetworkUse: Bool
  var status: AVAssetExportSessionStatus { get }
  var error: NSError? { get }

  /*!
  	@method						exportAsynchronouslyWithCompletionHandler:
  	@abstract					Starts the asynchronous execution of an export session.
  	@param						handler
  								If internal preparation for export fails, the handler will be invoked synchronously.
  								The handler may also be called asynchronously after -exportAsynchronouslyWithCompletionHandler: returns,
  								in the following cases: 
  								1) if a failure occurs during the export, including failures of loading, re-encoding, or writing media data to the output,
  								2) if -cancelExport is invoked, 
  								3) if export session succeeds, having completely written its output to the outputURL. 
  								In each case, AVAssetExportSession.status will signal the terminal state of the asset reader, and if a failure occurs, the NSError 
  								that describes the failure can be obtained from the error property.
  	@discussion					Initiates an asynchronous export operation and returns immediately.
  */
  func exportAsynchronouslyWithCompletionHandler(handler: () -> Void)
  var progress: Float { get }

  /*!
  	@method						cancelExport
  	@abstract					Cancels the execution of an export session.
  	@discussion					Cancel can be invoked when the export is running.
  */
  func cancelExport()
}
extension AVAssetExportSession {

  /*!
  	@method						allExportPresets
  	@abstract					Returns all available export preset names.
  	@discussion					Returns an array of NSStrings with the names of all available presets. Note that not all presets are 
  								compatible with all AVAssets.
  	@result						An NSArray containing an NSString for each of the available preset names.
  */
  class func allExportPresets() -> [String]

  /*!
  	@method						exportPresetsCompatibleWithAsset:
  	@abstract					Returns only the identifiers compatible with the given AVAsset object.
  	@discussion					Not all export presets are compatible with all AVAssets. For example an video only asset is not compatible with an audio only preset.
  								This method returns only the identifiers for presets that will be compatible with the given asset. 
  								A client should pass in an AVAsset that is ready to be exported.
  								In order to ensure that the setup and running of an export operation will succeed using a given preset no significant changes 
  								(such as adding or deleting tracks) should be made to the asset between retrieving compatible identifiers and performing the export operation.
  								This method will access the tracks property of the AVAsset to build the returned NSArray.  To avoid blocking the calling thread, 
  								the tracks property should be loaded using the AVAsynchronousKeyValueLoading protocol before calling this method.
  	@param asset				An AVAsset object that is intended to be exported.
  	@result						An NSArray containing NSString values for the identifiers of compatible export types.  
  								The array is a complete list of the valid identifiers that can be used as arguments to 
  								initWithAsset:presetName: with the specified asset.
  */
  class func exportPresetsCompatibleWith(asset: AVAsset) -> [String]

  /*!
  	@method						determineCompatibilityOfExportPreset:withAsset:outputFileType:completionHandler:
  	@abstract					Performs an inspection on the compatibility of an export preset, AVAsset and output file type.  Calls the completion handler with YES if
  								the arguments are compatible; NO otherwise.
  	@discussion					Not all export presets are compatible with all AVAssets and file types.  This method can be used to query compatibility.
  								In order to ensure that the setup and running of an export operation will succeed using a given preset no significant changes 
  								(such as adding or deleting tracks) should be made to the asset between retrieving compatible identifiers and performing the export operation.
  	@param presetName			An NSString specifying the name of the preset template for the export.
  	@param asset				An AVAsset object that is intended to be exported.
  	@param outputFileType		An NSString indicating a file type to check; or nil, to query whether there are any compatible types.
  	@param completionHandler	A block called with the compatibility result.
   */
  @available(OSX 10.9, *)
  class func determineCompatibilityOfExportPreset(presetName: String, withAsset asset: AVAsset, outputFileType: String?, completionHandler handler: (Bool) -> Void)
}
extension AVAssetExportSession {
  var supportedFileTypes: [String] { get }

  /*!
  	@method						determineCompatibleFileTypesWithCompletionHandler:
  	@abstract					Performs an inspection on the AVAsset and Preset the object was initialized with to determine a list of file types the ExportSession can write.
  	@param						handler
  								Called when the inspection completes with an array of file types the ExportSession can write.  Note that this may have a count of zero.
  	@discussion					This method is different than the supportedFileTypes property in that it performs an inspection of the AVAsset in order to determine its compatibility with each of the session's supported file types.
  */
  @available(OSX 10.9, *)
  func determineCompatibleFileTypesWithCompletionHandler(handler: ([String]) -> Void)
}
extension AVAssetExportSession {
  var timeRange: CMTimeRange
  @available(OSX 10.9, *)
  var estimatedOutputFileLength: Int64 { get }
}
extension AVAssetExportSession {
  var metadata: [AVMetadataItem]?
  @available(OSX 10.9, *)
  var metadataItemFilter: AVMetadataItemFilter?
}
extension AVAssetExportSession {
  @available(OSX 10.9, *)
  var audioTimePitchAlgorithm: String
  @NSCopying var audioMix: AVAudioMix?
  @NSCopying var videoComposition: AVVideoComposition?
  @available(OSX 10.9, *)
  var customVideoCompositor: AVVideoCompositing? { get }
}
extension AVAssetExportSession {

  /*!
  	@property	canPerformMultiplePassesOverSourceMediaData
  	@abstract
  		Determines whether the export session can perform multiple passes over the source media to achieve better results.
   
  	@discussion
  		When the value for this property is YES, the export session can produce higher quality results at the expense of longer export times.  Setting this property to YES may also require the export session to write temporary data to disk during the export.  To control the location of temporary data, use the property directoryForTemporaryFiles.
   
  		The default value is NO.  Not all export session configurations can benefit from performing multiple passes over the source media.  In these cases, setting this property to YES has no effect.
  
  		This property cannot be set after the export has started.
  */
  @available(OSX 10.10, *)
  var canPerformMultiplePassesOverSourceMediaData: Bool

  /*!
  	@property directoryForTemporaryFiles
  	@abstract 
  		Specifies a directory that is suitable for containing temporary files generated during the export process
   
  	@discussion
  		AVAssetExportSession may need to write temporary files when configured in certain ways, such as when canPerformMultiplePassesOverSourceMediaData is set to YES.  This property can be used to control where in the filesystem those temporary files are created.  All temporary files will be deleted when the export is completed, is canceled, or fails.
   
  		When the value of this property is nil, the export session will choose a suitable location when writing temporary files.  The default value is nil.
  	
  		This property cannot be set after the export has started.  The export will fail if the URL points to a location that is not a directory, does not exist, is not on the local file system, or if a file cannot be created in this directory (for example, due to insufficient permissions or sandboxing restrictions).
  */
  @available(OSX 10.10, *)
  @NSCopying var directoryForTemporaryFiles: NSURL?
}

/*!
	@constant		AVAssetImageGeneratorApertureModeCleanAperture
	@abstract		Both pixel aspect ratio and clean aperture will be applied.
*/
@available(OSX 10.7, *)
let AVAssetImageGeneratorApertureModeCleanAperture: String

/*!
	@constant		AVAssetImageGeneratorApertureModeProductionAperture
	@abstract		Only pixel aspect ratio will be applied.
*/
@available(OSX 10.7, *)
let AVAssetImageGeneratorApertureModeProductionAperture: String

/*!
	@constant		AVAssetImageGeneratorApertureModeEncodedPixels
	@abstract		Neither pixel aspect ratio nor clean aperture will be applied.
*/
@available(OSX 10.7, *)
let AVAssetImageGeneratorApertureModeEncodedPixels: String
enum AVAssetImageGeneratorResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Succeeded
  case Failed
  case Cancelled
}
@available(OSX 10.7, *)
class AVAssetImageGenerator : NSObject {
  @available(OSX 10.9, *)
  var asset: AVAsset { get }
  var appliesPreferredTrackTransform: Bool
  var maximumSize: CGSize
  var apertureMode: String?
  @NSCopying var videoComposition: AVVideoComposition?
  @available(OSX 10.9, *)
  var customVideoCompositor: AVVideoCompositing? { get }
  @available(OSX 10.7, *)
  var requestedTimeToleranceBefore: CMTime
  @available(OSX 10.7, *)
  var requestedTimeToleranceAfter: CMTime

  /*!
  	@method			initWithAsset:
  	@abstract		Initializes an instance of AVAssetImageGenerator for use with the specified asset.
  	@param			asset
  					The asset from which images will be extracted.
  	@result			An instance of AVAssetImageGenerator
  	@discussion		This method may succeed even if the asset possesses no visual tracks at the time of initialization.
  					Clients may wish to test whether an asset has any tracks with the visual characteristic via
  					-[AVAsset tracksWithMediaCharacteristic:].
  					
  					Note also that assets that belong to a mutable subclass of AVAsset, AVMutableComposition or AVMutableMovie,
  					may gain visual tracks after initialization of an associated AVAssetImageGenerator.
  					
  					However, the results of image generation are undefined if mutations of the asset occur while images
  					are being generated. 
  
  					AVAssetImageGenerator will use the default enabled video track(s) to generate images.
  */
  init(asset: AVAsset)

  /*!
  	@method			copyCGImageAtTime:actualTime:error:
  	@abstract		Returns a CFRetained CGImageRef for an asset at or near the specified time.
  	@param			requestedTime
  					The time at which the image of the asset is to be created.
  	@param			actualTime
  					A pointer to a CMTime to receive the time at which the image was actually generated. If you are not interested
  					in this information, pass NULL.
  	@param			outError
  					An error object describing the reason for failure, in the event that this method returns NULL.
  	@result			A CGImageRef.
  	@discussion		Returns the CGImage synchronously. Ownership follows the Create Rule.
  */
  func copyCGImageAt(requestedTime: CMTime, actualTime: UnsafeMutablePointer<CMTime>) throws -> CGImage

  /*!
  	@method			generateCGImagesAsynchronouslyForTimes:completionHandler:
  	@abstract		Returns a series of CGImageRefs for an asset at or near the specified times.
  	@param			requestedTimes
  					An NSArray of NSValues, each containing a CMTime, specifying the asset times at which an image is requested.
  	@param			handler
  					A block that will be called when an image request is complete.
  	@discussion		Employs an efficient "batch mode" for getting images in time order.
  					The client will receive exactly one handler callback for each requested time in requestedTimes.
  					Changes to generator properties (snap behavior, maximum size, etc...) will not affect outstanding asynchronous image generation requests.
  					The generated image is not retained.  Clients should retain the image if they wish it to persist after the completion handler returns.
  */
  func generateCGImagesAsynchronouslyForTimes(requestedTimes: [NSValue], completionHandler handler: AVAssetImageGeneratorCompletionHandler)

  /*!
  	@method			cancelAllCGImageGeneration
  	@abstract		Cancels all outstanding image generation requests.
  	@discussion		Calls the handler block with AVAssetImageGeneratorCancelled for each image time in every previous invocation of -generateCGImagesAsynchronouslyForTimes:completionHandler:
  					for which images have not yet been supplied.
  */
  func cancelAllCGImageGeneration()
}
typealias AVAssetImageGeneratorCompletionHandler = (CMTime, CGImage?, CMTime, AVAssetImageGeneratorResult, NSError?) -> Void

/*!
 @enum AVAssetReaderStatus
 @abstract
	These constants are returned by the AVAssetReader status property to indicate whether it can successfully read samples from its asset.

 @constant	 AVAssetReaderStatusUnknown
	Indicates that the status of the asset reader is not currently known.
 @constant	 AVAssetReaderStatusReading
	Indicates that the asset reader is successfully reading samples from its asset.
 @constant	 AVAssetReaderStatusCompleted
	Indicates that the asset reader has successfully read all of the samples in its time range.
 @constant	 AVAssetReaderStatusFailed
	Indicates that the asset reader can no longer read samples from its asset because of an error. The error is described by the value of the asset reader's error property.
 @constant	 AVAssetReaderStatusCancelled
	Indicates that the asset reader can no longer read samples because reading was canceled with the cancelReading method.
 */
enum AVAssetReaderStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Reading
  case Completed
  case Failed
  case Cancelled
}

/*!
 @class AVAssetReader
 @abstract
	AVAssetReader provides services for obtaining media data from an asset.
 
 @discussion
	Instances of AVAssetReader read media data from an instance of AVAsset, whether the asset is file-based or represents an assembly of media data from multiple sources, as is the case with AVComposition.
	
	Clients of AVAssetReader can read data from specific tracks of an asset and in specific formats by adding concrete instances of AVAssetReaderOutput to an AVAssetReader instance.
	
	AVAssetReaderTrackOutput, a concrete subclass of AVAssetReaderOutput, can either read the track's media samples in the format in which they are stored by the asset or convert the media samples to a different format.
	
	AVAssetReaderAudioMixOutput mixes multiple audio tracks of the asset after reading them, while AVAssetReaderVideoCompositionOutput composites multiple video tracks after reading them.
 */
@available(OSX 10.7, *)
class AVAssetReader : NSObject {

  /*!
   @method initWithAsset:error:
   @abstract
  	Creates an instance of AVAssetReader for reading media data from the specified asset.
  
   @param asset
  	The asset from which media data is to be read.
   @param outError
  	On return, if initialization of the AVAssetReader fails, points to an NSError describing the nature of the failure.
   @result
  	An instance of AVAssetReader.
   @discussion
  	If the specified asset belongs to a mutable subclass of AVAsset, AVMutableComposition or AVMutableMovie, the results of any asset reading operation are undefined if you mutate the asset after invoking -startReading.
   */
  init(asset: AVAsset) throws

  /*!
   @property asset
   @abstract
  	The asset from which the receiver's outputs read sample buffers.
  
   @discussion
  	The value of this property is an AVAsset. Concrete instances of AVAssetReader that are created with specific AVAssetTrack instances must obtain those tracks from the asset returned by this property.
   */
  var asset: AVAsset { get }

  /*!
   @property status
   @abstract
  	The status of reading sample buffers from the receiver's asset.
  
   @discussion
  	The value of this property is an AVAssetReaderStatus that indicates whether reading is in progress, has completed successfully, has been canceled, or has failed. Clients of AVAssetReaderOutput objects should check the value of this property after -[AVAssetReaderOutput copyNextSampleBuffer] returns NULL to determine why no more samples could be read. This property is thread safe.
   */
  var status: AVAssetReaderStatus { get }

  /*!
   @property error
   @abstract
  	If the receiver's status is AVAssetReaderStatusFailed, this describes the error that caused the failure.
  
   @discussion
  	The value of this property is an NSError that describes what caused the receiver to no longer be able to read its asset. If the receiver's status is not AVAssetReaderStatusFailed, the value of this property is nil. This property is thread safe.
   */
  var error: NSError? { get }

  /*!
   @property timeRange
   @abstract
  	Specifies a range of time that may limit the temporal portion of the receiver's asset from which media data will be read.
  
   @discussion
  	The intersection of the value of timeRange and CMTimeRangeMake(kCMTimeZero, asset.duration) will determine the time range of the asset from which media data will be read. The default value of timeRange is CMTimeRangeMake(kCMTimeZero, kCMTimePositiveInfinity).
  	
  	This property cannot be set after reading has started.
   */
  var timeRange: CMTimeRange

  /*!
   @property outputs
   @abstract
  	The outputs from which clients of receiver can read media data.
  
   @discussion
  	The value of this property is an NSArray containing concrete instances of AVAssetReaderOutput. Outputs can be added to the receiver using the addOutput: method.
   */
  var outputs: [AVAssetReaderOutput] { get }

  /*!
   @method canAddOutput:
   @abstract
  	Tests whether an output can be added to the receiver.
  
   @param output
  	The AVAssetReaderOutput object to be tested.
   @result
  	A BOOL indicating whether the output can be added to the receiver.
  
   @discussion
  	An output that reads from a track of an asset other than the asset used to initialize the receiver cannot be added.
   */
  func canAddOutput(output: AVAssetReaderOutput) -> Bool

  /*!
   @method addOutput:
   @abstract
  	Adds an output to the receiver.
  
   @param output
  	The AVAssetReaderOutput object to be added.
  
   @discussion
  	Outputs are created with a reference to one or more AVAssetTrack objects. These tracks must be owned by the asset returned by the receiver's asset property.
  	
  	Outputs cannot be added after reading has started.
   */
  func addOutput(output: AVAssetReaderOutput)

  /*!
   @method startReading
   @abstract
  	Prepares the receiver for reading sample buffers from the asset.
  
   @result
  	A BOOL indicating whether reading could be started.
   
   @discussion
  	This method validates the entire collection of settings for outputs for tracks, for audio mixing, and for video composition and initiates reading from the receiver's asset.
  	
  	If this method returns NO, clients can determine the nature of the failure by checking the value of the status and error properties.
   */
  func startReading() -> Bool

  /*!
   @method cancelReading
   @abstract
  	Cancels any background work and prevents the receiver's outputs from reading more samples.
  
   @discussion
  	Clients that want to stop reading samples from the receiver before reaching the end of its time range should call this method to stop any background read ahead operations that the may have been in progress.
   
  	This method should not be called concurrently with any calls to -[AVAssetReaderOutput copyNextSampleBuffer].
   */
  func cancelReading()
}

/*!
 @class AVAssetReaderOutput
 @abstract
	AVAssetReaderOutput is an abstract class that defines an interface for reading a single collection of samples of a common media type from an AVAssetReader.
 
 @discussion
	Clients can read the media data of an asset by adding one or more concrete instances of AVAssetReaderOutput to an AVAssetReader using the -[AVAssetReader addOutput:] method.
 */
@available(OSX 10.7, *)
class AVAssetReaderOutput : NSObject {

  /*!
   @property mediaType
   @abstract
  	The media type of the samples that can be read from the receiver.
  
   @discussion
  	The value of this property is one of the media type strings defined in AVMediaFormat.h.
   */
  var mediaType: String { get }

  /*!
   @property alwaysCopiesSampleData
   @abstract
  	Indicates whether or not the data in buffers gets copied before being vended to the client.
   
   @discussion
  	When the value of this property is YES, the AVAssetReaderOutput will always vend a buffer with copied data to the client.  Data in such buffers can be freely modified by the client. When the value of this property is NO, the buffers vended to the client may not be copied.  Such buffers may still be referenced by other entities. The result of modifying a buffer whose data hasn't been copied is undefined.  Requesting buffers whose data hasn't been copied when possible can lead to performance improvements.
   
  	The default value is YES.
   */
  @available(OSX 10.8, *)
  var alwaysCopiesSampleData: Bool

  /*!
   @method copyNextSampleBuffer
   @abstract
  	Copies the next sample buffer for the output synchronously.
  
   @result
  	A CMSampleBuffer object referencing the output sample buffer.
  
   @discussion
  	The client is responsible for calling CFRelease on the returned CMSampleBuffer object when finished with it. This method will return NULL if there are no more sample buffers available for the receiver within the time range specified by its AVAssetReader's timeRange property, or if there is an error that prevents the AVAssetReader from reading more media data. When this method returns NULL, clients should check the value of the associated AVAssetReader's status property to determine why no more samples could be read.
   */
  func copyNextSampleBuffer() -> CMSampleBuffer?
  init()
}
extension AVAssetReaderOutput {

  /*!
   @property supportsRandomAccess
   @abstract
  	Indicates whether the asset reader output supports reconfiguration of the time ranges to read.
   
   @discussion
  	When the value of this property is YES, the time ranges read by the asset reader output can be reconfigured during reading using the -resetForReadingTimeRanges: method.  This also prevents the attached AVAssetReader from progressing to AVAssetReaderStatusCompleted until -markConfigurationAsFinal has been invoked.
   
  	The default value is NO, which means that the asset reader output may not be reconfigured once reading has begin.  When the value of this property is NO, AVAssetReader may be able to read media data more efficiently, particularly when multiple asset reader outputs are attached.
   
  	This property may not be set after -startReading has been called on the attached asset reader.
   */
  @available(OSX 10.10, *)
  var supportsRandomAccess: Bool

  /*!
   @method resetForReadingTimeRanges:
   @abstract
  	Starts reading over with a new set of time ranges.
   
   @param timeRanges
  	An NSArray of NSValue objects, each representing a single CMTimeRange structure
   
   @discussion
  	This method may only be used if supportsRandomAccess has been set to YES and may not be called after -markConfigurationAsFinal has been invoked.
   
  	This method is often used in conjunction with AVAssetWriter multi-pass (see AVAssetWriterInput category AVAssetWriterInputMultiPass).  In this usage, the caller will invoke -copyNextSampleBuffer until that method returns NULL and then ask the AVAssetWriterInput for a set of time ranges from which it thinks media data should be re-encoded.  These time ranges are then given to this method to set up the asset reader output for the next pass.
   
  	The time ranges set here override the time range set on AVAssetReader.timeRange.  Just as with that property, for each time range in the array the intersection of that time range and CMTimeRangeMake(kCMTimeZero, asset.duration) will take effect.  If the start times of each time range in the array are not strictly increasing or if two or more time ranges in the array overlap, an NSInvalidArgumentException will be raised.  It is an error to include a time range with a non-numeric start time or duration (see CMTIME_IS_NUMERIC), unless the duration is kCMTimePositiveInfinity.
   
  	If this method is invoked after the status of the attached AVAssetReader has become AVAssetReaderStatusFailed or AVAssetReaderStatusCancelled, no change in status will occur and the result of the next call to -copyNextSampleBuffer will be NULL.
   
  	If this method is invoked before all media data has been read (i.e. -copyNextSampleBuffer has not yet returned NULL), an exception will be thrown.  This method may not be called before -startReading has been invoked on the attached asset reader.
   */
  @available(OSX 10.10, *)
  func resetForReadingTimeRanges(timeRanges: [NSValue])

  /*!
   @method markConfigurationAsFinal
   @abstract
  	Informs the receiver that no more reconfiguration of time ranges is necessary and allows the attached AVAssetReader to advance to AVAssetReaderStatusCompleted.
   
   @discussion
  	When the value of supportsRandomAccess is YES, the attached asset reader will not advance to AVAssetReaderStatusCompleted until this method is called.
   
  	When the destination of media data vended by the receiver is an AVAssetWriterInput configured for multi-pass encoding, a convenient time to invoke this method is after the asset writer input indicates that no more passes will be performed.
   
  	Once this method has been called, further invocations of -resetForReadingTimeRanges: are disallowed.
   */
  @available(OSX 10.10, *)
  func markConfigurationAsFinal()
}

/*!
 @class AVAssetReaderTrackOutput
 @abstract
	AVAssetReaderTrackOutput is a concrete subclass of AVAssetReaderOutput that defines an interface for reading media data from a single AVAssetTrack of an AVAssetReader's AVAsset.
 
 @discussion
	Clients can read the media data of an asset track by adding an instance of AVAssetReaderTrackOutput to an AVAssetReader using the -[AVAssetReader addOutput:] method. The track's media samples can either be read in the format in which they are stored in the asset, or they can be converted to a different format.
 */
@available(OSX 10.7, *)
class AVAssetReaderTrackOutput : AVAssetReaderOutput {

  /*!
   @method initWithTrack:outputSettings:
   @abstract
  	Returns an instance of AVAssetReaderTrackOutput for reading from the specified track and supplying media data according to the specified output settings.
  
   @param track
  	The AVAssetTrack from which the resulting AVAssetReaderTrackOutput should read sample buffers.
   @param outputSettings
  	An NSDictionary of output settings to be used for sample output.  See AVAudioSettings.h for available output settings for audio tracks or AVVideoSettings.h for available output settings for video tracks and also for more information about how to construct an output settings dictionary.
   @result
  	An instance of AVAssetReaderTrackOutput.
  
   @discussion
  	The track must be one of the tracks contained by the target AVAssetReader's asset.
  	
  	A value of nil for outputSettings configures the output to vend samples in their original format as stored by the specified track.  Initialization will fail if the output settings cannot be used with the specified track.
  	
  	AVAssetReaderTrackOutput can only produce uncompressed output.  For audio output settings, this means that AVFormatIDKey must be kAudioFormatLinearPCM.  For video output settings, this means that the dictionary must follow the rules for uncompressed video output, as laid out in AVVideoSettings.h.  AVAssetReaderTrackOutput does not support the AVAudioSettings.h key AVSampleRateConverterAudioQualityKey or the following AVVideoSettings.h keys:
   
  		AVVideoCleanApertureKey
  		AVVideoPixelAspectRatioKey
  		AVVideoScalingModeKey
  
  	When constructing video output settings the choice of pixel format will affect the performance and quality of the decompression. For optimal performance when decompressing video the requested pixel format should be one that the decoder supports natively to avoid unnecessary conversions. Below are some recommendations:
  
  	For H.264 use kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange, or kCVPixelFormatType_420YpCbCr8BiPlanarFullRange if the video is known to be full range.  For JPEG on iOS, use kCVPixelFormatType_420YpCbCr8BiPlanarFullRange.
  
  	For other codecs on OSX, kCVPixelFormatType_422YpCbCr8 is the preferred pixel format for video and is generally the most performant when decoding. If you need to work in the RGB domain then kCVPixelFormatType_32BGRA is recommended on iOS and kCVPixelFormatType_32ARGB is recommended on OSX.
   
  	ProRes encoded media can contain up to 12bits/ch. If your source is ProRes encoded and you wish to preserve more than 8bits/ch during decompression then use one of the following pixel formats: kCVPixelFormatType_4444AYpCbCr16, kCVPixelFormatType_422YpCbCr16, kCVPixelFormatType_422YpCbCr10, or kCVPixelFormatType_64ARGB.  AVAssetReader does not support scaling with any of these high bit depth pixel formats. If you use them then do not specify kCVPixelBufferWidthKey or kCVPixelBufferHeightKey in your outputSettings dictionary. If you plan to append these sample buffers to an AVAssetWriterInput then note that only the ProRes encoders support these pixel formats.
  
  	ProRes 4444 encoded media can contain a mathematically lossless alpha channel. To preserve the alpha channel during decompression use a pixel format with an alpha component such as kCVPixelFormatType_4444AYpCbCr16 or kCVPixelFormatType_64ARGB.  To test whether your source contains an alpha channel check that the track's format description has kCMFormatDescriptionExtension_Depth and that its value is 32.
   */
  init(track: AVAssetTrack, outputSettings: [String : AnyObject]?)

  /*!
   @property track
   @abstract
  	The track from which the receiver reads sample buffers.
  
   @discussion
  	The value of this property is an AVAssetTrack owned by the target AVAssetReader's asset.
   */
  var track: AVAssetTrack { get }

  /*!
   @property outputSettings
   @abstract
  	The output settings used by the receiver.
  
   @discussion
  	The value of this property is an NSDictionary that contains values for keys as specified by either AVAudioSettings.h for audio tracks or AVVideoSettings.h for video tracks.  A value of nil indicates that the receiver will vend samples in their original format as stored in the target track.
   */
  var outputSettings: [String : AnyObject]? { get }

  /*!
   @property audioTimePitchAlgorithm
   @abstract
  	Indicates the processing algorithm used to manage audio pitch for scaled audio edits.
   
   @discussion
  	Constants for various time pitch algorithms, e.g. AVAudioTimePitchAlgorithmSpectral, are defined in AVAudioProcessingSettings.h.  An NSInvalidArgumentException will be raised if this property is set to a value other than the constants defined in that file.
   
  	The default value is AVAudioTimePitchAlgorithmSpectral.
   */
  @available(OSX 10.9, *)
  var audioTimePitchAlgorithm: String
}

/*!
 @class AVAssetReaderAudioMixOutput
 @abstract
	AVAssetReaderAudioMixOutput is a concrete subclass of AVAssetReaderOutput that defines an interface for reading audio samples that result from mixing the audio from one or more AVAssetTracks of an AVAssetReader's AVAsset.
 
 @discussion
	Clients can read the audio data mixed from one or more asset tracks by adding an instance of AVAssetReaderAudioMixOutput to an AVAssetReader using the -[AVAssetReader addOutput:] method.
 */
@available(OSX 10.7, *)
class AVAssetReaderAudioMixOutput : AVAssetReaderOutput {

  /*!
   @method initWithAudioTracks:audioSettings:
   @abstract
  	Creates an instance of AVAssetReaderAudioMixOutput for reading mixed audio from the specified audio tracks, with optional audio settings.
  
   @param tracks
  	An NSArray of AVAssetTrack objects from which the created object should read sample buffers to be mixed.
   @param audioSettings
  	An NSDictionary of audio settings to be used for audio output.
   @result
  	An instance of AVAssetReaderAudioMixOutput.
  
   @discussion
  	Each track must be one of the tracks owned by the target AVAssetReader's asset and must be of media type AVMediaTypeAudio.
  	
  	The audio settings dictionary must contain values for keys in AVAudioSettings.h (linear PCM only). A value of nil configures the output to return samples in a convenient uncompressed format, with sample rate and other properties determined according to the properties of the specified audio tracks. Initialization will fail if the audio settings cannot be used with the specified tracks.  AVSampleRateConverterAudioQualityKey is not supported.
   */
  init(audioTracks: [AVAssetTrack], audioSettings: [String : AnyObject]?)

  /*!
   @property audioTracks
   @abstract
  	The tracks from which the receiver reads mixed audio.
  
   @discussion
  	The value of this property is an NSArray of AVAssetTracks owned by the target AVAssetReader's asset.
   */
  var audioTracks: [AVAssetTrack] { get }

  /*!
   @property audioSettings
   @abstract
  	The audio settings used by the receiver.
  
   @discussion
  	The value of this property is an NSDictionary that contains values for keys from AVAudioSettings.h (linear PCM only).  A value of nil indicates that the receiver will return audio samples in a convenient uncompressed format, with sample rate and other properties determined according to the properties of the receiver's audio tracks.
   */
  var audioSettings: [String : AnyObject]? { get }

  /*!
   @property audioMix
   @abstract
  	The audio mix used by the receiver.
  
   @discussion
  	The value of this property is an AVAudioMix that can be used to specify how the volume of audio samples read from each source track will change over the timeline of the source asset.
   
  	This property cannot be set after reading has started.
   */
  @NSCopying var audioMix: AVAudioMix?

  /*!
   @property audioTimePitchAlgorithm
   @abstract
  	Indicates the processing algorithm used to manage audio pitch for scaled audio edits.
   
   @discussion
  	Constants for various time pitch algorithms, e.g. AVAudioTimePitchAlgorithmSpectral, are defined in AVAudioProcessingSettings.h.  An NSInvalidArgumentException will be raised if this property is set to a value other than the constants defined in that file.
   
  	The default value is AVAudioTimePitchAlgorithmSpectral.
   */
  @available(OSX 10.9, *)
  var audioTimePitchAlgorithm: String
}

/*!
 @class AVAssetReaderVideoCompositionOutput
 @abstract
	AVAssetReaderVideoCompositionOutput is a concrete subclass of AVAssetReaderOutput that defines an interface for reading video frames that have been composited together from the frames in one or more AVAssetTracks of an AVAssetReader's AVAsset.
 
 @discussion
	Clients can read the video frames composited from one or more asset tracks by adding an instance of AVAssetReaderVideoCompositionOutput to an AVAssetReader using the -[AVAssetReader addOutput:] method.
 */
@available(OSX 10.7, *)
class AVAssetReaderVideoCompositionOutput : AVAssetReaderOutput {

  /*!
   @method initWithVideoTracks:videoSettings:
   @abstract
  	Creates an instance of AVAssetReaderVideoCompositionOutput for reading composited video from the specified video tracks and supplying media data according to the specified video settings.
  
   @param tracks
  	An NSArray of AVAssetTrack objects from which the resulting AVAssetReaderVideoCompositionOutput should read video frames for compositing.
   @param videoSettings
  	An NSDictionary of video settings to be used for video output.  See AVVideoSettings.h for more information about how to construct a video settings dictionary.
   @result An instance of AVAssetReaderVideoCompositionOutput.
  
   @discussion
  	Each track must be one of the tracks owned by the target AVAssetReader's asset and must be of media type AVMediaTypeVideo.
   	
  	A value of nil for videoSettings configures the output to return samples in a convenient uncompressed format, with properties determined according to the properties of the specified video tracks.  Initialization will fail if the video settings cannot be used with the specified tracks.
  	
  	AVAssetReaderVideoCompositionOutput can only produce uncompressed output.  This means that the video settings dictionary must follow the rules for uncompressed video output, as laid out in AVVideoSettings.h.  In addition, the following keys are not supported:
   
  		AVVideoCleanApertureKey
  		AVVideoPixelAspectRatioKey
  		AVVideoScalingModeKey
   */
  init(videoTracks: [AVAssetTrack], videoSettings: [String : AnyObject]?)

  /*!
   @property videoTracks
   @abstract
  	The tracks from which the receiver reads composited video.
  
   @discussion
  	The value of this property is an NSArray of AVAssetTracks owned by the target AVAssetReader's asset.
   */
  var videoTracks: [AVAssetTrack] { get }

  /*!
   @property videoSettings
   @abstract
  	The video settings used by the receiver.
  
   @discussion
  	The value of this property is an NSDictionary that contains values for keys as specified by AVVideoSettings.h.  A value of nil indicates that the receiver will return video frames in a convenient uncompressed format, with properties determined according to the properties of the receiver's video tracks.
   */
  var videoSettings: [String : AnyObject]? { get }

  /*!
   @property videoComposition
   @abstract
  	The composition of video used by the receiver.
  
   @discussion
  	The value of this property is an AVVideoComposition that can be used to specify the visual arrangement of video frames read from each source track over the timeline of the source asset.
   
  	This property cannot be set after reading has started.
   */
  @NSCopying var videoComposition: AVVideoComposition?

  /*!
   @property customVideoCompositor
   @abstract
   	Indicates the custom video compositor instance used by the receiver.
  
   @discussion
   	This property is nil if there is no video compositor, or if the internal video compositor is in use.
   */
  @available(OSX 10.9, *)
  var customVideoCompositor: AVVideoCompositing? { get }
}

/*!
 @class AVAssetReaderOutputMetadataAdaptor
 @abstract
	Defines an interface for reading metadata, packaged as instances of AVTimedMetadataGroup, from a single AVAssetReaderTrackOutput object.
 */
@available(OSX 10.10, *)
class AVAssetReaderOutputMetadataAdaptor : NSObject {

  /*!
   @method initWithAssetReaderTrackOutput:
   @abstract
  	Creates a new timed metadata group adaptor for retrieving timed metadata group objects from an asset reader output.
  
   @param	assetReaderOutput
  	An instance of AVAssetReaderTrackOutput that vends sample buffers containing metadata, e.g. an AVAssetReaderTrackOutput object initialized with a track of media type AVMediaTypeMetadata and nil outputSettings.
   @result
  	An instance of AVAssetReaderOutputMetadataAdaptor
  
   @discussion
  	It is an error to create a timed metadata group adaptor with an asset reader output that does not vend metadata.  It is also an error to create a timed metadata group adaptor with an asset reader output whose asset reader has already started reading, or an asset reader output that already has been used to initialize another timed metadata group adaptor.
  	
  	Clients should not mix calls to -[AVAssetReaderTrackOutput copyNextSampleBuffer] and -[AVAssetReaderOutputMetadataAdaptor nextTimedMetadataGroup].  Once an AVAssetReaderTrackOutput instance has been used to initialize an AVAssetReaderOutputMetadataAdaptor, calling -copyNextSampleBuffer on that instance will result in an exception being thrown.
   */
  init(assetReaderTrackOutput trackOutput: AVAssetReaderTrackOutput)

  /*!
   @property assetReaderTrackOutput
   @abstract
  	The asset reader track output from which the receiver pulls timed metadata groups.
   */
  var assetReaderTrackOutput: AVAssetReaderTrackOutput { get }

  /*!
   @method nextTimedMetadataGroup
   @abstract
  	Returns the next timed metadata group for the asset reader output, synchronously.
  	
   @result
  	An instance of AVTimedMetadataGroup, representing the next logical segment of metadata coming from the source asset reader output.
  	
   @discussion
  	This method will return nil when all timed metadata groups have been read from the asset reader output, or if there is an error that prevents the timed metadata group adaptor from reading more timed metadata groups.  When this method returns nil, clients should check the value of the associated AVAssetReader's status property to determine why no more samples could be read.
  	
  	Unlike -[AVAssetReaderTrackOutput copyNextSampleBuffer], this method returns an autoreleased object.
   
  	Before calling this method, you must ensure that the output which underlies the receiver is attached to an AVAssetReader via a prior call to -addOutput: and that -startReading has been called on the asset reader.
   */
  func nextTimedMetadataGroup() -> AVTimedMetadataGroup?
}

/*!
 @class AVAssetReaderSampleReferenceOutput
 @abstract
	AVAssetReaderSampleReferenceOutput is a concrete subclass of AVAssetReaderOutput that defines an interface for reading sample references from a single AVAssetTrack of an AVAssetReader's AVAsset.
 @discussion
	Clients can extract information about the location (file URL and offset) of samples in a track by adding an instance of AVAssetReaderSampleReferenceOutput to an AVAssetReader using the -[AVAssetReader addOutput:] method. No actual sample data can be extracted using this class. The location of the sample data is described by the kCMSampleBufferAttachmentKey_SampleReferenceURL and kCMSampleBufferAttachmentKey_SampleReferenceByteOffset attachments on the extracted sample buffers. More information about sample buffers describing sample references can be found in the CMSampleBuffer documentation.
 
	Sample buffers extracted using this class can also be appended to an AVAssetWriterInput to create movie tracks that are not self-contained and reference data in the original file instead.  Currently, only instances of AVAssetWriter configured to write files of type AVFileTypeQuickTimeMovie can be used to write tracks that are not self-contained.
 
	Since no sample data is ever returned by instances of AVAssetReaderSampleReferenceOutput, the value of the alwaysCopiesSampleData property is ignored.
 */
@available(OSX 10.10, *)
class AVAssetReaderSampleReferenceOutput : AVAssetReaderOutput {

  /*!
   @method initWithTrack:
   @abstract
  	Returns an instance of AVAssetReaderSampleReferenceOutput for supplying sample references.
   
   @param track
  	The AVAssetTrack for which the resulting AVAssetReaderSampleReferenceOutput should provide sample references.
   @result
  	An instance of AVAssetReaderTrackOutput.
   
   @discussion
  	The track must be one of the tracks contained by the target AVAssetReader's asset.
    */
  init(track: AVAssetTrack)

  /*!
   @property track
   @abstract
  	The track from which the receiver extracts sample references.
   
   @discussion
  	The value of this property is an AVAssetTrack owned by the target AVAssetReader's asset.
   */
  var track: AVAssetTrack { get }
}
@available(OSX 10.9, *)
class AVAssetResourceLoader : NSObject {

  /*!
   @method 		setDelegate:queue:
   @abstract		Sets the receiver's delegate that will mediate resource loading and the dispatch queue on which delegate methods will be invoked.
   @param			delegate
  				An object conforming to the AVAssetResourceLoaderDelegate protocol.
   @param			delegateQueue
  				A dispatch queue on which all delegate methods will be invoked.
  */
  func setDelegate(delegate: AVAssetResourceLoaderDelegate?, queue delegateQueue: dispatch_queue_t?)

  /*!
   @property 		delegate
   @abstract		The receiver's delegate.
   @discussion
    The value of this property is an object conforming to the AVAssetResourceLoaderDelegate protocol. The delegate is set using the setDelegate:queue: method. The delegate is held using a zeroing-weak reference, so this property will have a value of nil after a delegate that was previously set has been deallocated.
  */
  weak var delegate: @sil_weak AVAssetResourceLoaderDelegate? { get }

  /*!
   @property 		delegateQueue
   @abstract		The dispatch queue on which all delegate methods will be invoked.
   @discussion
    The value of this property is a dispatch_queue_t. The queue is set using the setDelegate:queue: method.
  */
  var delegateQueue: dispatch_queue_t? { get }
}
protocol AVAssetResourceLoaderDelegate : NSObjectProtocol {

  /*!
   @method 		resourceLoader:shouldWaitForLoadingOfRequestedResource:
   @abstract		Invoked when assistance is required of the application to load a resource.
   @param 		resourceLoader
  				The instance of AVAssetResourceLoader for which the loading request is being made.
   @param 		loadingRequest
  				An instance of AVAssetResourceLoadingRequest that provides information about the requested resource. 
   @result 		YES if the delegate can load the resource indicated by the AVAssetResourceLoadingRequest; otherwise NO.
   @discussion
    Delegates receive this message when assistance is required of the application to load a resource. For example, this method is invoked to load decryption keys that have been specified using custom URL schemes.
    If the result is YES, the resource loader expects invocation, either subsequently or immediately, of either -[AVAssetResourceLoadingRequest finishLoading] or -[AVAssetResourceLoadingRequest finishLoadingWithError:]. If you intend to finish loading the resource after your handling of this message returns, you must retain the instance of AVAssetResourceLoadingRequest until after loading is finished.
    If the result is NO, the resource loader treats the loading of the resource as having failed.
    Note that if the delegate's implementation of -resourceLoader:shouldWaitForLoadingOfRequestedResource: returns YES without finishing the loading request immediately, it may be invoked again with another loading request before the prior request is finished; therefore in such cases the delegate should be prepared to manage multiple loading requests.
  
  */
  @available(OSX 10.9, *)
  optional func resourceLoader(resourceLoader: AVAssetResourceLoader, shouldWaitForLoadingOfRequestedResource loadingRequest: AVAssetResourceLoadingRequest) -> Bool

  /*!
   @method 		resourceLoader:shouldWaitForRenewalOfRequestedResource:
   @abstract		Invoked when assistance is required of the application to renew a resource.
   @param 		resourceLoader
   The instance of AVAssetResourceLoader for which the loading request is being made.
   @param 		renewalRequest
   An instance of AVAssetResourceRenewalRequest that provides information about the requested resource.
   @result 		YES if the delegate can renew the resource indicated by the AVAssetResourceLoadingRequest; otherwise NO.
   @discussion
   Delegates receive this message when assistance is required of the application to renew a resource previously loaded by resourceLoader:shouldWaitForLoadingOfRequestedResource:. For example, this method is invoked to renew decryption keys that require renewal, as indicated in a response to a prior invocation of resourceLoader:shouldWaitForLoadingOfRequestedResource:.
   If the result is YES, the resource loader expects invocation, either subsequently or immediately, of either -[AVAssetResourceRenewalRequest finishLoading] or -[AVAssetResourceRenewalRequest finishLoadingWithError:]. If you intend to finish loading the resource after your handling of this message returns, you must retain the instance of AVAssetResourceRenewalRequest until after loading is finished.
   If the result is NO, the resource loader treats the loading of the resource as having failed.
   Note that if the delegate's implementation of -resourceLoader:shouldWaitForRenewalOfRequestedResource: returns YES without finishing the loading request immediately, it may be invoked again with another loading request before the prior request is finished; therefore in such cases the delegate should be prepared to manage multiple loading requests.
  */
  @available(OSX 10.10, *)
  optional func resourceLoader(resourceLoader: AVAssetResourceLoader, shouldWaitForRenewalOfRequestedResource renewalRequest: AVAssetResourceRenewalRequest) -> Bool

  /*!
   @method 		resourceLoader:didCancelLoadingRequest:
   @abstract		Informs the delegate that a prior loading request has been cancelled.
   @param 		loadingRequest
  				The loading request that has been cancelled. 
   @discussion	Previously issued loading requests can be cancelled when data from the resource is no longer required or when a loading request is superseded by new requests for data from the same resource. For example, if to complete a seek operation it becomes necessary to load a range of bytes that's different from a range previously requested, the prior request may be cancelled while the delegate is still handling it.
  */
  @available(OSX 10.9, *)
  optional func resourceLoader(resourceLoader: AVAssetResourceLoader, didCancel loadingRequest: AVAssetResourceLoadingRequest)

  /*!
   @method 		resourceLoader:shouldWaitForResponseToAuthenticationChallenge:
   @abstract		Invoked when assistance is required of the application to respond to an authentication challenge.
   @param 		resourceLoader
  				The instance of AVAssetResourceLoader asking for help with an authentication challenge.
   @param 		authenticationChallenge
  				An instance of NSURLAuthenticationChallenge. 
   @discussion
    Delegates receive this message when assistance is required of the application to respond to an authentication challenge.
    If the result is YES, the resource loader expects you to send an appropriate response, either subsequently or immediately, to the NSURLAuthenticationChallenge's sender, i.e. [authenticationChallenge sender], via use of one of the messages defined in the NSURLAuthenticationChallengeSender protocol (see NSAuthenticationChallenge.h). If you intend to respond to the authentication challenge after your handling of -resourceLoader:shouldWaitForResponseToAuthenticationChallenge: returns, you must retain the instance of NSURLAuthenticationChallenge until after your response has been made.
  */
  @available(OSX 10.10, *)
  optional func resourceLoader(resourceLoader: AVAssetResourceLoader, shouldWaitForResponseTo authenticationChallenge: NSURLAuthenticationChallenge) -> Bool

  /*!
   @method 		resourceLoader:didCancelAuthenticationChallenge:
   @abstract		Informs the delegate that a prior authentication challenge has been cancelled.
   @param 		authenticationChallenge
  				The authentication challenge that has been cancelled. 
  */
  @available(OSX 10.10, *)
  optional func resourceLoader(resourceLoader: AVAssetResourceLoader, didCancel authenticationChallenge: NSURLAuthenticationChallenge)
}
@available(OSX 10.9, *)
class AVAssetResourceLoadingRequest : NSObject {

  /*! 
   @property 		request
   @abstract		An NSURLRequest for the requested resource.
  */
  var request: NSURLRequest { get }

  /*! 
   @property 		finished
   @abstract		Indicates whether loading of the resource has been finished.
   @discussion	The value of this property becomes YES only in response to an invocation of either -finishLoading or -finishLoadingWithError:.
  */
  var isFinished: Bool { get }

  /*! 
   @property 		cancelled
   @abstract		Indicates whether the request has been cancelled.
   @discussion	The value of this property becomes YES when the resource loader cancels the loading of a request, just prior to sending the message -resourceLoader:didCancelLoadingRequest: to its delegate.
  */
  @available(OSX 10.9, *)
  var isCancelled: Bool { get }

  /*! 
   @property 		contentInformationRequest
   @abstract		An instance of AVAssetResourceLoadingContentInformationRequest that you should populate with information about the resource. The value of this property will be nil if no such information is being requested.
  */
  @available(OSX 10.9, *)
  var contentInformationRequest: AVAssetResourceLoadingContentInformationRequest? { get }

  /*! 
   @property 		dataRequest
   @abstract		An instance of AVAssetResourceLoadingDataRequest that indicates the range of resource data that's being requested. The value of this property will be nil if no data is being requested.
  */
  @available(OSX 10.9, *)
  var dataRequest: AVAssetResourceLoadingDataRequest? { get }

  /*! 
   @property 		response
   @abstract		Set the value of this property to an instance of NSURLResponse indicating a response to the loading request. If no response is needed, leave the value of this property set to nil.
  */
  @available(OSX 10.9, *)
  @NSCopying var response: NSURLResponse?

  /*! 
   @property 		redirect
   @abstract		Set the value of this property to an instance of NSURLRequest indicating a redirection of the loading request to another URL. If no redirection is needed, leave the value of this property set to nil.
   @discussion	AVAssetResourceLoader supports redirects to HTTP URLs only. Redirects to other URLs will result in a loading failure.
  */
  @available(OSX 10.9, *)
  @NSCopying var redirect: NSURLRequest?

  /*! 
   @method 		finishLoading   
   @abstract		Causes the receiver to treat the processing of the request as complete.
   @discussion	If a dataRequest is present and the resource does not contain the full extent of the data that has been requested according to the values of the requestedOffset and requestedLength properties of the dataRequest, or if requestsAllDataToEndOfResource has a value of YES, you may invoke -finishLoading after you have provided as much of the requested data as the resource contains.
  */
  @available(OSX 10.9, *)
  func finishLoading()

  /*! 
   @method 		finishLoadingWithError:   
   @abstract		Causes the receiver to treat the request as having failed.
   @param			error
   				An instance of NSError indicating the reason for failure.
  */
  func finishLoadingWith(error: NSError?)
}

/*!
 @class		AVAssetResourceRenewalRequest

 @abstract	AVAssetResourceRenewalRequest encapsulates information about a resource request issued by a resource loader for the purpose of renewing a request previously issued.

 @discussion
 When an AVURLAsset needs to renew a resource (because contentInformationRequest.renewalDate has been set on a previous loading request), it asks its AVAssetResourceLoader object to assist. The resource loader encapsulates the request information by creating an instance of this object, which it then hands to its delegate for processing. The delegate uses the information in this object to perform the request and report on the success or failure of the operation.

 */
@available(OSX 10.10, *)
class AVAssetResourceRenewalRequest : AVAssetResourceLoadingRequest {
}
@available(OSX 10.9, *)
class AVAssetResourceLoadingContentInformationRequest : NSObject {

  /*! 
   @property 		contentType
   @abstract		A UTI that indicates the type of data contained by the requested resource.
   @discussion	Before you finish loading an AVAssetResourceLoadingRequest, if its contentInformationRequest is not nil, you should set the value of this property to a UTI indicating the type of data contained by the requested resource.
  */
  var contentType: String?

  /*! 
   @property 		contentLength
   @abstract		Indicates the length of the requested resource, in bytes.
   @discussion	Before you finish loading an AVAssetResourceLoadingRequest, if its contentInformationRequest is not nil, you should set the value of this property to the number of bytes contained by the requested resource.
  */
  var contentLength: Int64

  /*! 
   @property 		byteRangeAccessSupported
   @abstract		Indicates whether random access to arbitrary ranges of bytes of the resource is supported. Such support also allows portions of the resource to be requested more than once.
   @discussion	Before you finish loading an AVAssetResourceLoadingRequest, if its contentInformationRequest is not nil, you should set the value of this property to YES if you support random access to arbitrary ranges of bytes of the resource. If you do not set this property to YES for resources that must be loaded incrementally, loading of the resource may fail. Such resources include anything that contains media data.
  */
  var byteRangeAccessSupported: Bool

  /*!
   @property		renewalDate
   @abstract		For resources that expire, the date at which a new AVAssetResourceLoadingRequest will be issued for a renewal of this resource, if the media system still requires it.
   @discussion	Before you finish loading an AVAssetResourceLoadingRequest, if the resource is prone to expiry you should set the value of this property to the date at which a renewal should be triggered. This value should be set sufficiently early enough to allow an AVAssetResourceRenewalRequest, delivered to your delegate via -resourceLoader:shouldWaitForRenewalOfRequestedResource:, to finish before the actual expiry time. Otherwise media playback may fail.
   */
  @available(OSX 10.10, *)
  @NSCopying var renewalDate: NSDate?
}
@available(OSX 10.9, *)
class AVAssetResourceLoadingDataRequest : NSObject {

  /*! 
   @property 		requestedOffset
   @abstract		The position within the resource of the first byte requested.
  */
  var requestedOffset: Int64 { get }

  /*! 
   @property 		requestedLength
   @abstract		The length of the data requested.
   @discussion	Note that requestsAllDataToEndOfResource will be set to YES when the entire remaining length of the resource is being requested from requestedOffset to the end of the resource. This can occur even when the content length has not yet been reported by you via a prior finished loading request.
   				When requestsAllDataToEndOfResource has a value of YES, you should disregard the value of requestedLength and incrementally provide as much data starting from the requestedOffset as the resource contains, until you have provided all of the available data successfully and invoked -finishLoading, until you have encountered a failure and invoked -finishLoadingWithError:, or until you have received -resourceLoader:didCancelLoadingRequest: for the AVAssetResourceLoadingRequest from which the AVAssetResourceLoadingDataRequest was obtained.
   				When requestsAllDataToEndOfResource is YES and the content length has not yet been provided by you via a prior finished loading request, the value of requestedLength is set to NSIntegerMax. Starting in OS X 10.11 and iOS 9.0, in 32-bit applications requestedLength is also set to NSIntegerMax when all of the remaining resource data is being requested and the known length of the remaining data exceeds NSIntegerMax.
  */
  var requestedLength: Int { get }

  /*! 
   @property 		requestsAllDataToEndOfResource
   @abstract		Specifies that the entire remaining length of the resource from requestedOffset to the end of the resource is being requested.
   @discussion	When requestsAllDataToEndOfResource has a value of YES, you should disregard the value of requestedLength and incrementally provide as much data starting from the requestedOffset as the resource contains, until you have provided all of the available data successfully and invoked -finishLoading, until you have encountered a failure and invoked -finishLoadingWithError:, or until you have received -resourceLoader:didCancelLoadingRequest: for the AVAssetResourceLoadingRequest from which the AVAssetResourceLoadingDataRequest was obtained.
  */
  @available(OSX 10.11, *)
  var requestsAllDataToEndOfResource: Bool { get }

  /*! 
   @property 		currentOffset
   @abstract		The position within the resource of the next byte within the resource following the bytes that have already been provided via prior invocations of -respondWithData.
  */
  var currentOffset: Int64 { get }

  /*! 
   @method 		respondWithData:   
   @abstract		Provides data to the receiver.
   @param			data
   				An instance of NSData containing some or all of the requested bytes.
   @discussion	May be invoked multiple times on the same instance of AVAssetResourceLoadingDataRequest to provide the full range of requested data incrementally. Upon each invocation, the value of currentOffset will be updated to accord with the amount of data provided.
  */
  func respondWith(data: NSData)
}
extension AVAssetResourceLoader {

  /*!
   @property 		preloadsEligibleContentKeys
   @abstract		When YES, eligible content keys will be loaded as eagerly as possible, potentially handled by the delegate. Setting to YES may result in network activity.
   @discussion	Any work done as a result of setting this property will be performed asynchronously.
  */
  @available(OSX 10.11, *)
  var preloadsEligibleContentKeys: Bool
}
extension AVAssetResourceLoadingRequest {

  /*! 
   @method 		streamingContentKeyRequestDataForApp:contentIdentifier:options:error:   
   @abstract		Obtains a streaming content key request for a specific combination of application and content.
   @param			appIdentifier
   				An opaque identifier for the application. The value of this identifier depends on the particular system used to provide the decryption key.
   @param			contentIdentifier
   				An opaque identifier for the content. The value of this identifier depends on the particular system used to provide the decryption key.
   @param			options
   				Additional information necessary to obtain the key, or nil if none.
   @param			error
   				If obtaining the streaming content key request fails, will be set to an instance of NSError describing the failure.
   @result		The key request data that must be transmitted to the key vendor to obtain the content key.
  */
  func streamingContentKeyRequestDataForApp(appIdentifier: NSData, contentIdentifier: NSData, options: [String : AnyObject]?) throws -> NSData
}
extension AVAssetResourceLoadingRequest {
}

/*!
  @class		AVAsset

  @abstract
	An AVAsset is an abstract class that defines AVFoundation's model for timed audiovisual media.

	Each asset contains a collection of tracks that are intended to be presented or processed together, each of a uniform media type, including but not limited to audio, video, text, closed captions, and subtitles.

  @discussion
	AVAssets are often instantiated via its concrete subclass AVURLAsset with NSURLs that refer to audiovisual media resources, such as streams (including HTTP live streams), QuickTime movie files, MP3 files, and files of other types.

	They can also be instantiated using other concrete subclasses that extend the basic model for audiovisual media in useful ways, as AVComposition does for temporal editing.

	Properties of assets as a whole are defined by AVAsset. Additionally, references to instances of AVAssetTracks representing tracks of the collection can be obtained, so that each of these can be examined independently.
					
	Because of the nature of timed audiovisual media, upon successful initialization of an AVAsset some or all of the values for its keys may not be immediately available. The value of any key can be requested at any time, and AVAsset will always return its value synchronously, although it may have to block the calling thread in order to do so.

	In order to avoid blocking, clients can register their interest in particular keys and to become notified when their values become available. For further details, see AVAsynchronousKeyValueLoading.h.

	On iOS, it is particularly important to avoid blocking.  To preserve responsiveness, a synchronous request that blocks for too long (eg, a property request on an asset on a slow HTTP server) may lead to media services being reset.

	To play an instance of AVAsset, initialize an instance of AVPlayerItem with it, use the AVPlayerItem to set up its presentation state (such as whether only a limited timeRange of the asset should be played, etc.), and provide the AVPlayerItem to an AVPlayer according to whether the items is to be played by itself or together with a collection of other items. Full details available in AVPlayerItem.h and AVPlayer.h.
					
	AVAssets can also be inserted into AVMutableCompositions in order to assemble audiovisual constructs from one or more source assets.

*/
@available(OSX 10.7, *)
class AVAssetTrack : NSObject, NSCopying, AVAsynchronousKeyValueLoading {
  weak var asset: @sil_weak AVAsset? { get }
  var trackID: CMPersistentTrackID { get }
  @available(OSX 10.7, *)
  func copy(zone zone: NSZone = nil) -> AnyObject

  /*!
    @method		statusOfValueForKey:
    @abstract		Reports whether the value for a key is immediately available without blocking.
    @param		key
      An instance of NSString containing the specified key.
    @param		outError
      If the status of the value for the key is AVKeyValueStatusFailed, *outError is set to a non-nil NSError that describes the failure that occurred.
    @result		The value's current loading status.
    @discussion
      Clients can use -statusOfValueForKey: to determine the availability of the value of any key of interest. However, this method alone does not prompt the receiver to load the value of a key that's not yet available. To request values for keys that may not already be loaded, without blocking, use -loadValuesAsynchronouslyForKeys:completionHandler:, await invocation of the completion handler, and test the availability of each key via -statusOfValueForKey: before invoking its getter.
   
      Even if access to values of some keys may be readily available, as can occur with receivers initialized with URLs for resources on local volumes, extensive I/O or parsing may be needed for these same receivers to provide values for other keys. A duration for a local MP3 file, for example, may be expensive to obtain, even if the values for other AVAsset properties may be trivial to obtain.
  
      Blocking that may occur when calling the getter for any key should therefore be avoided in the general case by loading values for all keys of interest via -loadValuesAsynchronouslyForKeys:completionHandler: and testing the availability of the requested values before fetching them by calling getters.
        
      The sole exception to this general rule is in usage on Mac OS X on the desktop, where it may be acceptable to block in cases in which the client is preparing objects for use on background threads or in operation queues. On iOS, values should always be loaded asynchronously prior to calling getters for the values, in any usage scenario.
  */
  @available(OSX 10.7, *)
  func statusOfValueForKey(key: String, error outError: NSErrorPointer) -> AVKeyValueStatus

  /*!
    @method		loadValuesAsynchronouslyForKeys:completionHandler:
    @abstract		Directs the target to load the values of any of the specified keys that are not already loaded.
    @param		keys
      An instance of NSArray, containing NSStrings for the specified keys.
    @param		completionHandler
      The block to be invoked when loading succeeds, fails, or is cancelled.
  */
  @available(OSX 10.7, *)
  func loadValuesAsynchronouslyForKeys(keys: [String], completionHandler handler: (() -> Void)? = nil)
}
extension AVAssetTrack {
  var mediaType: String { get }
  var formatDescriptions: [AnyObject] { get }
  @available(OSX 10.8, *)
  var isPlayable: Bool { get }
  var isEnabled: Bool { get }
  var isSelfContained: Bool { get }
  var totalSampleDataLength: Int64 { get }

  /*!
  	@method			hasMediaCharacteristic:
  	@abstract		Reports whether the track references media with the specified media characteristic.
  	@param			mediaCharacteristic
  					The media characteristic of interest, e.g. AVMediaCharacteristicVisual, AVMediaCharacteristicAudible, AVMediaCharacteristicLegible, etc.,
  					as defined above.
  	@result			YES if the track references media with the specified characteristic, otherwise NO.
  */
  func hasMediaCharacteristic(mediaCharacteristic: String) -> Bool
}
extension AVAssetTrack {
  var timeRange: CMTimeRange { get }
  var naturalTimeScale: CMTimeScale { get }
  var estimatedDataRate: Float { get }
}
extension AVAssetTrack {
  var languageCode: String { get }
  var extendedLanguageTag: String { get }
}
extension AVAssetTrack {
  var naturalSize: CGSize { get }
  var preferredTransform: CGAffineTransform { get }
}
extension AVAssetTrack {
  var preferredVolume: Float { get }
}
extension AVAssetTrack {

  /*!
  	@property		nominalFrameRate
  	@abstract		For tracks that carry a full frame per media sample, indicates the frame rate of the track in units of frames per second.
  	@discussion		For field-based video tracks that carry one field per media sample, the value of this property is the field rate, not the frame rate.
  */
  var nominalFrameRate: Float { get }
  @available(OSX 10.10, *)
  var minFrameDuration: CMTime { get }

  /*!
  	@property       requiresFrameReordering
  	@abstract       Indicates whether samples in the track may have different values for their presentation and decode timestamps.
  */
  @available(OSX 10.10, *)
  var requiresFrameReordering: Bool { get }
}
extension AVAssetTrack {
  var segments: [AVAssetTrackSegment] { get }

  /*!
  	@method			segmentForTrackTime:
  	@abstract		Supplies the AVAssetTrackSegment from the segments array with a target timeRange that either contains the specified track time or is the closest to it among the target timeRanges of the track's segments.
  	@param			trackTime
  					The trackTime for which an AVAssetTrackSegment is requested.
  	@result			An AVAssetTrackSegment.
  	@discussion		If the trackTime does not map to a sample presentation time (e.g. it's outside the track's timeRange), the segment closest in time to the specified trackTime is returned. 
  */
  func segmentForTrack(trackTime: CMTime) -> AVAssetTrackSegment?

  /*!
  	@method			samplePresentationTimeForTrackTime:
  	@abstract		Maps the specified trackTime through the appropriate time mapping and returns the resulting sample presentation time.
  	@param			trackTime
  					The trackTime for which a sample presentation time is requested.
  	@result			A CMTime; will be invalid if the trackTime is out of range
  */
  func samplePresentationTimeForTrack(trackTime: CMTime) -> CMTime
}
extension AVAssetTrack {
  var commonMetadata: [AVMetadataItem] { get }
  @available(OSX 10.10, *)
  var metadata: [AVMetadataItem] { get }
  var availableMetadataFormats: [String] { get }

  /*!
  	@method			metadataForFormat:
  	@abstract		Provides an NSArray of AVMetadataItems, one for each metadata item in the container of the specified format.
  	@param			format
  					The metadata format for which items are requested.
  	@result			An NSArray containing AVMetadataItems.
  	@discussion		Becomes callable without blocking when the key @"availableMetadataFormats" has been loaded
  */
  func metadataForFormat(format: String) -> [AVMetadataItem]
}
extension AVAssetTrack {
  @available(OSX 10.9, *)
  var availableTrackAssociationTypes: [String] { get }

  /*!
  	@method			associatedTracksOfType:
  	@abstract		Provides an NSArray of AVAssetTracks, one for each track associated with the receiver with the specified type of track association.
  	@param			trackAssociationType
  					The type of track association for which associated tracks are requested.
  	@result			An NSArray containing AVAssetTracks; may be empty if there is no associated tracks of the specified type.
  	@discussion		Becomes callable without blocking when the key @"availableTrackAssociationTypes" has been loaded.
  */
  @available(OSX 10.9, *)
  func associatedTracksOfType(trackAssociationType: String) -> [AVAssetTrack]
}
@available(OSX 10.9, *)
let AVTrackAssociationTypeAudioFallback: String
@available(OSX 10.9, *)
let AVTrackAssociationTypeChapterList: String
@available(OSX 10.9, *)
let AVTrackAssociationTypeForcedSubtitlesOnly: String
@available(OSX 10.9, *)
let AVTrackAssociationTypeSelectionFollower: String
@available(OSX 10.9, *)
let AVTrackAssociationTypeTimecode: String
@available(OSX 10.10, *)
let AVTrackAssociationTypeMetadataReferent: String
extension AVAssetTrack {
  @available(OSX 10.10, *)
  var canProvideSampleCursors: Bool { get }

  /*!
  	@method			makeSampleCursorWithPresentationTimeStamp:
  	@abstract		Creates an instance of AVSampleCursor and positions it at or near the specified presentation timestamp.
  	@param			presentationTimeStamp
  					The desired initial presentation timestamp of the returned AVSampleCursor.
  	@result			An instance of AVSampleCursor.
  	@discussion		If the receiver's asset has a value of YES for providesPreciseDurationAndTiming, the sample cursor will be accurately positioned at the receiver's last media sample with presentation timestamp less than or equal to the desired timestamp, or, if there are no such samples, the first sample in presentation order.
  					If the receiver's asset has a value of NO for providesPreciseDurationAndTiming, and it is prohibitively expensive to locate the precise sample at the desired timestamp, the sample cursor may be approximately positioned.
  */
  @available(OSX 10.10, *)
  func makeSampleCursorWithPresentationTimeStamp(presentationTimeStamp: CMTime) -> AVSampleCursor?

  /*!
  	@method			makeSampleCursorAtFirstSampleInDecodeOrder:
  	@abstract		Creates an instance of AVSampleCursor and positions it at the receiver's first media sample in decode order.
  	@result			An instance of AVSampleCursor.
  */
  @available(OSX 10.10, *)
  func makeSampleCursorAtFirstSampleInDecodeOrder() -> AVSampleCursor?

  /*!
  	@method			makeSampleCursorAtLastSampleInDecodeOrder:
  	@abstract		Creates an instance of AVSampleCursor and positions it at the receiver's last media sample in decode order.
  	@result			An instance of AVSampleCursor.
  */
  @available(OSX 10.10, *)
  func makeSampleCursorAtLastSampleInDecodeOrder() -> AVSampleCursor?
}

/*!
 @constant       AVAssetTrackTimeRangeDidChangeNotification
 @abstract       Posted when the timeRange of an AVFragmentedAssetTrack changes while the associated instance of AVFragmentedAsset is being minded by an AVFragmentedAssetMinder, but only for changes that occur after the status of the value of @"timeRange" has reached AVKeyValueStatusLoaded.
*/
@available(OSX 10.11, *)
let AVAssetTrackTimeRangeDidChangeNotification: String

/*!
 @constant       AVAssetTrackSegmentsDidChangeNotification
 @abstract       Posted when the array of segments of an AVFragmentedAssetTrack changes while the associated instance of AVFragmentedAsset is being minded by an AVFragmentedAssetMinder, but only for changes that occur after the status of the value of @"segments" has reached AVKeyValueStatusLoaded.
*/
@available(OSX 10.11, *)
let AVAssetTrackSegmentsDidChangeNotification: String

/*!
 @constant       AVAssetTrackTrackAssociationsDidChangeNotification
 @abstract       Posted when the collection of track associations of an AVAssetTrack changes, but only for changes that occur after the status of the value of @"availableTrackAssociationTypes" has reached AVKeyValueStatusLoaded.
*/
@available(OSX 10.11, *)
let AVAssetTrackTrackAssociationsDidChangeNotification: String
@available(OSX 10.11, *)
class AVFragmentedAssetTrack : AVAssetTrack {
}

/*!
 @class AVAssetTrackGroup
 @abstract
	A class whose instances describe a group of tracks in an asset.
 
 @discussion
	Instances of AVAssetTrackGroup describe a single group of related tracks in an asset. For example, a track group can
	describe a set of alternate tracks, which are tracks containing variations of the same content, such as content
	translated into different languages, out of which only one track should be played at a time.
 
	Clients can inspect the track groups contained in an AVAsset by loading and obtaining the value of its trackGroups property.
 */
@available(OSX 10.9, *)
class AVAssetTrackGroup : NSObject, NSCopying {

  /*!
   @property trackIDs
   @abstract
  	The IDs of all of the tracks in the group.
   
   @discussion
  	The value of this property is an NSArray of NSNumbers interpreted as CMPersistentTrackIDs, one for each track in the
  	group.
   */
  var trackIDs: [NSNumber] { get }
  init()
  @available(OSX 10.9, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.7, *)
class AVAssetTrackSegment : NSObject {
  var timeMapping: CMTimeMapping { get }
  var isEmpty: Bool { get }
}

/*!
 @enum AVAssetWriterStatus
 @abstract
	These constants are returned by the AVAssetWriter status property to indicate whether it can successfully write samples to its output file.

 @constant	 AVAssetWriterStatusUnknown
	Indicates that the status of the asset writer is not currently known.
 @constant	 AVAssetWriterStatusWriting
	Indicates that the asset writer is successfully writing samples to its output file.
 @constant	 AVAssetWriterStatusCompleted
	Indicates that the asset writer has successfully written all samples following a call to finishWriting.
 @constant	 AVAssetWriterStatusFailed
	Indicates that the asset writer can no longer write samples to its output file because of an error. The error is described by the value of the asset writer's error property.
 @constant	 AVAssetWriterStatusCancelled
	Indicates that the asset writer can no longer write samples because writing was canceled with the cancelWriting method.
 */
enum AVAssetWriterStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Writing
  case Completed
  case Failed
  case Cancelled
}

/*!
 @class AVAssetWriter
 @abstract
	 AVAssetWriter provides services for writing media data to a new file,
 
 @discussion
	Instances of AVAssetWriter can write media to new files in formats such as the QuickTime movie file format or the MPEG-4 file format. AVAssetWriter has support for automatic interleaving of media data for multiple concurrent tracks. Source media data can be obtained from instances of AVAssetReader for one or more assets or from other sources outside of AVFoundation.

	Instances of AVAssetWriter can re-encode media samples as they are written. Instances of AVAssetWriter can also optionally write metadata collections to the output file.
 
	A single instance of AVAssetWriter can be used once to write to a single file. Clients that wish to write to files multiple times must use a new instance of AVAssetWriter each time.
 */
@available(OSX 10.7, *)
class AVAssetWriter : NSObject {

  /*!
   @method initWithURL:fileType:error:
   @abstract
  	Creates an instance of AVAssetWriter configured to write to a file in a specified container format.
   
   @param URL
  	The location of the file to be written. The URL must be a file URL.
   @param fileType
  	A UTI indicating the format of the file to be written.
   @param outError
  	On return, if initialization of the AVAssetWriter fails, points to an NSError describing the nature of the failure.
   @result
  	An instance of AVAssetWriter.
   
   @discussion
  	Writing will fail if a file already exists at the specified URL.
  	
  	UTIs for container formats that can be written are declared in AVMediaFormat.h.
   */
  init(url outputURL: NSURL, fileType outputFileType: String) throws

  /*!
   @property outputURL
   @abstract
  	The location of the file for which the instance of AVAssetWriter was initialized for writing.
   @discussion
  	You may use UTTypeCopyPreferredTagWithClass(outputFileType, kUTTagClassFilenameExtension) to obtain an appropriate path extension for the outputFileType you have specified. For more information about UTTypeCopyPreferredTagWithClass and kUTTagClassFilenameExtension, on iOS see <MobileCoreServices/UTType.h> and on Mac OS X see <LaunchServices/UTType.h>.
   */
  @NSCopying var outputURL: NSURL { get }

  /*!
   @property outputFileType
   @abstract
  	The UTI of the file format of the file for which the instance of AVAssetWriter was initialized for writing.
   */
  var outputFileType: String { get }

  /*!
   @property availableMediaTypes
   @abstract
  	The media types for which inputs can be added to the receiver.
  
   @discussion
  	Some media types may not be accepted within the file format with which an AVAssetWriter was initialized.
   */
  var availableMediaTypes: [String] { get }

  /*!
   @property status
   @abstract
  	The status of writing samples to the receiver's output file.
  
   @discussion
  	The value of this property is an AVAssetWriterStatus that indicates whether writing is in progress, has completed successfully, has been canceled, or has failed. Clients of AVAssetWriterInput objects should check the value of this property after appending samples fails to determine why no more samples could be written. This property is thread safe.
   */
  var status: AVAssetWriterStatus { get }

  /*!
   @property error
   @abstract
  	If the receiver's status is AVAssetWriterStatusFailed, this describes the error that caused the failure.
  
   @discussion
  	The value of this property is an NSError that describes what caused the receiver to no longer be able to write to its output file. If the receiver's status is not AVAssetWriterStatusFailed, the value of this property is nil. This property is thread safe.
   */
  var error: NSError? { get }

  /*!
   @property metadata
   @abstract
  	A collection of metadata to be written to the receiver's output file.
  
   @discussion
  	The value of this property is an array of AVMetadataItem objects representing the collection of top-level metadata to be written in the output file.
  	
  	This property cannot be set after writing has started.
   */
  var metadata: [AVMetadataItem]

  /*!
   @property shouldOptimizeForNetworkUse
   @abstract
  	Specifies whether the output file should be written in way that makes it more suitable for playback over a network
   
   @discussion
  	When the value of this property is YES, the output file will be written in such a way that playback can start after only a small amount of the file is downloaded.
  	
  	This property cannot be set after writing has started.
   */
  var shouldOptimizeForNetworkUse: Bool

  /*!
   @property directoryForTemporaryFiles
   @abstract 
  	Specifies a directory that is suitable for containing temporary files generated during the process of writing an asset.
   
   @discussion
  	AVAssetWriter may need to write temporary files when configured in certain ways, such as when performsMultiPassEncodingIfSupported is set to YES on one or more of its inputs.  This property can be used to control where in the filesystem those temporary files are created.  All temporary files will be deleted when asset writing is completed, is canceled, or fails.
   
  	When the value of this property is nil, the asset writer will choose a suitable location when writing temporary files.  The default value is nil.
  	
  	This property cannot be set after writing has started.  The asset writer will fail if a file cannot be created in this directory (for example, due to insufficient permissions).
   */
  @available(OSX 10.10, *)
  @NSCopying var directoryForTemporaryFiles: NSURL?

  /*!
   @property inputs
   @abstract
  	The inputs from which the asset writer receives media data.
   @discussion
  	The value of this property is an NSArray containing concrete instances of AVAssetWriterInput. Inputs can be added to the receiver using the addInput: method.
   */
  var inputs: [AVAssetWriterInput] { get }

  /*!
   @method canApplyOutputSettings:forMediaType:
   @abstract
  	Tests whether output settings for a specific media type are supported by the receiver's file format.
  
   @param outputSettings
  	The output settings that are to be tested.
   @param mediaType
  	The media type for which the output settings are to be tested. Media types are defined in AVMediaFormat.h.
   @result
  	A BOOL indicating whether the given output settings can be used for the given media type.
   
   @discussion
  	This method determines whether the output settings for the specified media type can be used with the receiver's file format. For example, video compression settings that specify H.264 compression are not compatible with file formats that cannot contain H.264-compressed video.
   
  	Attempting to add an input with output settings and a media type for which this method returns NO will cause an exception to be thrown.
  */
  func canApplyOutputSettings(outputSettings: [String : AnyObject]?, forMediaType mediaType: String) -> Bool

  /*!
   @method canAddInput:
   @abstract
  	Tests whether an input can be added to the receiver.
  
   @param input
  	The AVAssetWriterInput object to be tested.
   @result
  	A BOOL indicating whether the input can be added to the receiver.
  
   @discussion
  	An input that accepts media data of a type that is not compatible with the receiver, or with output settings that are not compatible with the receiver, cannot be added.
   */
  func canAddInput(input: AVAssetWriterInput) -> Bool

  /*!
   @method addInput:
   @abstract
  	Adds an input to the receiver.
  
   @param input
  	The AVAssetWriterInput object to be added.
  
   @discussion
  	Inputs are created with a media type and output settings. These both must be compatible with the receiver.
  	
  	Inputs cannot be added after writing has started.
   */
  func addInput(input: AVAssetWriterInput)

  /*!
   @method startWriting
   @abstract
  	Prepares the receiver for accepting input and for writing its output to its output file.
  
   @result
  	A BOOL indicating whether writing successfully started.
   
   @discussion
  	This method must be called after all inputs have been added and other configuration properties have been set in order to tell the receiver to prepare for writing. After this method is called, clients can start writing sessions using startSessionAtSourceTime: and can write media samples using the methods provided by each of the receiver's inputs.
   
  	If writing cannot be started, this method returns NO. Clients can check the values of the status and error properties for more information on why writing could not be started.
   
  	On iOS, if the status of an AVAssetWriter is AVAssetWriterStatusWriting when the client app goes into the background, its status will change to AVAssetWriterStatusFailed and appending to any of its inputs will fail.  You may want to use -[UIApplication beginBackgroundTaskWithExpirationHandler:] to avoid being interrupted in the middle of a writing session and to finish writing the data that has already been appended.  For more information about executing code in the background, see the iOS Application Programming Guide.
   */
  func startWriting() -> Bool

  /*!
   @method startSessionAtSourceTime:
   @abstract
  	Initiates a sample-writing session for the receiver.
   
   @param startTime
  	The starting asset time for the sample-writing session, in the timeline of the source samples.
  
   @discussion
  	Sequences of sample data appended to the asset writer inputs are considered to fall within "sample-writing sessions", initiated with this method. Accordingly, this method must be called after writing has started (using -startWriting) but before any sample data is appended to the receiver's inputs.
  	
  	Each writing session has a start time which, where allowed by the file format being written, defines the mapping from the timeline of source samples to the timeline of the written file. In the case of the QuickTime movie file format, the first session begins at movie time 0, so a sample appended with timestamp T will be played at movie time (T-startTime).  Samples with timestamps earlier than startTime will still be added to the output file but will be edited out (i.e. not presented during playback). If the earliest appended sample for an input has a timestamp later than than startTime, an empty edit will be inserted to preserve synchronization between tracks of the output asset.
  	
  	To end the session started by use of this method, use -endSessionAtSourceTime: or -finishWritingWithCompletionHandler:.  It is an error to invoke -startSessionAtSourceTime: twice in a row without invoking -endSessionAtSourceTime: in between.
   
  	NOTE: Multiple sample-writing sessions are currently not supported. It is an error to call -startSessionAtSourceTime: a second time after calling -endSessionAtSourceTime:.
   */
  func startSessionAtSourceTime(startTime: CMTime)

  /*!
   @method endSessionAtSourceTime:
   @abstract
  	Concludes a sample-writing session.
  
   @param endTime
  	The ending asset time for the sample-writing session, in the timeline of the source samples.
  
   @discussion
  	Call this method to complete a session started with -startSessionAtSourceTime:.
   
  	The endTime defines the moment on the timeline of source samples at which the session ends. In the case of the QuickTime movie file format, each sample-writing session's startTime...endTime pair corresponds to a period of movie time into which the session's samples are inserted. Samples with timestamps that are later than the session end time will still be added to the written file but will be edited out (i.e. not presented during playback). So if the first session has duration D1 = endTime - startTime, it will be inserted into the written file at time 0 through D1; the second session would be inserted into the written file at time D1 through D1+D2, etc. It is legal to have a session with no samples; this will cause creation of an empty edit of the prescribed duration.
  	
  	It is not mandatory to call -endSessionAtSourceTime:; if -finishWritingWithCompletionHandler: is called without first invoking -endSessionAtSourceTime:, the session's effective end time will be the latest end timestamp of the session's appended samples (i.e. no samples will be edited out at the end).
   
  	It is an error to append samples outside of a sample-writing session.  To append more samples after invoking -endSessionAtSourceTime:, you must first start a new session using -startSessionAtSourceTime:.
  	
  	NOTE: Multiple sample-writing sessions are currently not supported. It is an error to call -startSessionAtSourceTime: a second time after calling -endSessionAtSourceTime:.
   */
  func endSessionAtSourceTime(endTime: CMTime)

  /*!
   @method cancelWriting
   @abstract
  	Cancels the creation of the output file.
   
   @discussion
  	If the status of the receiver is "failed" or "completed," -cancelWriting is a no-op.  Otherwise, this method will block until writing is canceled.
   
  	If an output file was created by the receiver during the writing process, -cancelWriting will delete the file.
  	
  	This method should not be called concurrently with -[AVAssetWriterInput appendSampleBuffer:] or -[AVAssetWriterInputPixelBufferAdaptor appendPixelBuffer:withPresentationTime:].
  */
  func cancelWriting()

  /*!
   @method finishWritingWithCompletionHandler:
   @abstract
  	Marks all unfinished inputs as finished and completes the writing of the output file.
  
   @discussion
  	This method returns immediately and causes its work to be performed asynchronously.
  	
  	When the writing of the output file is finished, or if a failure or a cancellation occurs in the meantime, the specified handler will be invoked to indicate completion of the operation. To determine whether the operation succeeded, your handler can check the value of AVAssetWriter.status. If the status is AVAssetWriterStatusFailed, AVAsset.error will contain an instance of NSError that describes the failure.
  	
  	To guarantee that all sample buffers are successfully written, ensure all calls to -[AVAssetWriterInput appendSampleBuffer:] or -[AVAssetWriterInputPixelBufferAdaptor appendPixelBuffer:withPresentationTime:] have returned before invoking this method.
  */
  @available(OSX 10.9, *)
  func finishWritingWithCompletionHandler(handler: () -> Void)
}
extension AVAssetWriter {

  /*!
   @property movieFragmentInterval
   @abstract
  	For file types that support movie fragments, specifies the frequency at which movie fragments should be written.
   
   @discussion
  	When movie fragments are used, a partially written asset whose writing is unexpectedly interrupted can be successfully opened and played up to multiples of the specified time interval. The default value of this property is kCMTimeInvalid, which indicates that movie fragments should not be used.
  
  	This property cannot be set after writing has started.
   */
  var movieFragmentInterval: CMTime

  /*!
   @property overallDurationHint
   @abstract
  	For file types that support movie fragments, provides a hint of the final duration of the file to be written
   
   @discussion
  	The value of this property must be a nonnegative, numeric CMTime.  Alternatively, if the value of this property is an invalid CMTime (e.g. kCMTimeInvalid), no overall duration hint will be written to the file.  The default value is kCMTimeInvalid.
   
  	This property is currently ignored if movie fragments are not being written.  Use the movieFragmentInterval property to enable movie fragments.
   
  	This property cannot be set after writing has started.
   */
  var overallDurationHint: CMTime

  /*!
   @property movieTimeScale
   @abstract
  	For file types that contain a 'moov' atom, such as QuickTime Movie files, specifies the asset-level time scale to be used. 
  
   @discussion
  	The default value is 0, which indicates that the receiver should choose a convenient value, if applicable.
   
  	This property cannot be set after writing has started.
   */
  @available(OSX 10.7, *)
  var movieTimeScale: CMTimeScale
}
extension AVAssetWriter {

  /*!
   @method canAddInputGroup:
   @abstract
  	Tests whether an input group can be added to the receiver.
  
   @param inputGroup
  	The AVAssetWriterInputGroup object to be tested.
   @result
  	A BOOL indicating whether the input group can be added to the receiver.
  
   @discussion
  	If outputFileType specifies a container format that does not support mutually exclusive relationships among tracks, or if the specified instance of AVAssetWriterInputGroup contains inputs with media types that cannot be related, the group cannot be added to the AVAssetWriter.
   */
  @available(OSX 10.9, *)
  func canAddInputGroup(inputGroup: AVAssetWriterInputGroup) -> Bool
  @available(OSX 10.9, *)
  func addInputGroup(inputGroup: AVAssetWriterInputGroup)

  /*!
   @property inputGroups
   @abstract
  	The instances of AVAssetWriterInputGroup that have been added to the AVAssetWriter.
   
   @discussion
  	The value of this property is an NSArray containing concrete instances of AVAssetWriterInputGroup.  Input groups can be added to the receiver using the addInputGroup: method.
   */
  @available(OSX 10.9, *)
  var inputGroups: [AVAssetWriterInputGroup] { get }
}
@available(OSX 10.9, *)
class AVAssetWriterInputGroup : AVMediaSelectionGroup {
  init(inputs: [AVAssetWriterInput], defaultInput: AVAssetWriterInput?)

  /*!
   @property inputs
   @abstract
  	The inputs grouped together by the receiver.
   
   @discussion
  	The value of this property is an NSArray containing concrete instances of AVAssetWriterInput.
   */
  var inputs: [AVAssetWriterInput] { get }

  /*!
   @property defaultInput
   @abstract
  	The input designated at the defaultInput of the receiver.
   
   @discussion
  	The value of this property is a concrete instance of AVAssetWriterInput.
   */
  var defaultInput: AVAssetWriterInput? { get }
}

/*!
 @class AVAssetWriterInput
 @abstract
	AVAssetWriterInput defines an interface for appending either new media samples or references to existing media samples packaged as CMSampleBuffer objects to a single track of the output file of an AVAssetWriter.
 
 @discussion
	Clients that need to write multiple concurrent tracks of media data should use one AVAssetWriterInput instance per track. In order to write multiple concurrent tracks with ideal interleaving of media data, clients should observe the value returned by the readyForMoreMediaData property of each AVAssetWriterInput instance.
	
	AVAssetWriterInput also supports writing per-track metadata collections to the output file.

	As of OS X 10.10 and iOS 8.0 AVAssetWriterInput can also be used to create tracks that are not self-contained.  Such tracks reference sample data that is located in another file. This is currently supported only for instances of AVAssetWriterInput attached to an instance of AVAssetWriter that writes files of type AVFileTypeQuickTimeMovie.
 */
@available(OSX 10.7, *)
class AVAssetWriterInput : NSObject {

  /*!
   @method initWithMediaType:outputSettings:
   @abstract
  	Creates a new input of the specified media type to receive sample buffers for writing to the output file.
  
   @param mediaType
  	The media type of samples that will be accepted by the input. Media types are defined in AVMediaFormat.h.
   @param outputSettings
  	The settings used for encoding the media appended to the output.  See AVAudioSettings.h for AVMediaTypeAudio or AVVideoSettings.h for AVMediaTypeVideo and for more information on how to construct an output settings dictionary.  If you only require simple preset-based output settings, see AVOutputSettingsAssistant.
   @result
  	An instance of AVAssetWriterInput.
  
   @discussion
  	Each new input accepts data for a new track of the AVAssetWriter's output file.  Inputs are added to an asset writer using -[AVAssetWriter addInput:].
  	
  	Passing nil for output settings instructs the input to pass through appended samples, doing no processing before they are written to the output file.  This is useful if, for example, you are appending buffers that are already in a desirable compressed format.  However, if not writing to a QuickTime Movie file (i.e. the AVAssetWriter was initialized with a file type other than AVFileTypeQuickTimeMovie), AVAssetWriter only supports passing through a restricted set of media types and subtypes.  In order to pass through media data to files other than AVFileTypeQuickTimeMovie, a non-NULL format hint must be provided using -initWithMediaType:outputSettings:sourceFormatHint: instead of this method.
   
  	For AVMediaTypeAudio the following keys are not currently supported in the outputSettings dictionary: AVEncoderAudioQualityKey and AVSampleRateConverterAudioQualityKey.  When using this initializer, an audio settings dictionary must be fully specified, meaning that it must contain AVFormatIDKey, AVSampleRateKey, and AVNumberOfChannelsKey.  If no other channel layout information is available, a value of 1 for AVNumberOfChannelsKey will result in mono output and a value of 2 will result in stereo output.  If AVNumberOfChannelsKey specifies a channel count greater than 2, the dictionary must also specify a value for AVChannelLayoutKey.  For kAudioFormatLinearPCM, all relevant AVLinearPCM*Key keys must be included, and for kAudioFormatAppleLossless, AVEncoderBitDepthHintKey keys must be included.  See -initWithMediaType:outputSettings:sourceFormatHint: for a way to avoid having to specify a value for each of those keys.
   
  	For AVMediaTypeVideo, any output settings dictionary must request a compressed video format.  This means that the value passed in for outputSettings must follow the rules for compressed video output, as laid out in AVVideoSettings.h.  When using this initializer, a video settings dictionary must be fully specified, meaning that it must contain AVVideoCodecKey, AVVideoWidthKey, and AVVideoHeightKey.  See -initWithMediaType:outputSettings:sourceFormatHint: for a way to avoid having to specify a value for each of those keys.  On iOS, the only values currently supported for AVVideoCodecKey are AVVideoCodecH264 and AVVideoCodecJPEG.  AVVideoCodecH264 is not supported on iPhone 3G.  For AVVideoScalingModeKey, the value AVVideoScalingModeFit is not supported.
   */
  convenience init(mediaType: String, outputSettings: [String : AnyObject]?)

  /*!
   @method initWithMediaType:outputSettings:sourceFormatHint:
   @abstract
  	Creates a new input of the specified media type to receive sample buffers for writing to the output file.  This is the designated initializer of AVAssetWriterInput.
   
   @param mediaType
  	The media type of samples that will be accepted by the input. Media types are defined in AVMediaFormat.h.
   @param outputSettings
  	The settings used for encoding the media appended to the output.  See AVAudioSettings.h for AVMediaTypeAudio or AVVideoSettings.h for AVMediaTypeVideo and for more information on how to construct an output settings dictionary.  If you only require simple preset-based output settings, see AVOutputSettingsAssistant.
   @param sourceFormatHint
  	A hint about the format of media data that will be appended to the new input.
   @result
  	An instance of AVAssetWriterInput.
   
   @discussion
  	A version of -initWithMediaType:outputSettings: that includes the ability to hint at the format of media data that will be appended to the new instance of AVAssetWriterInput.  When a source format hint is provided, the outputSettings dictionary is not required to be fully specified.  For AVMediaTypeAudio, this means that AVFormatIDKey is the only required key.  For AVMediaTypeVideo, this means that AVVideoCodecKey is the only required key.  Values for the remaining keys will be chosen by the asset writer input, with consideration given to the attributes of the source format.  To guarantee successful file writing, clients who specify a format hint should ensure that subsequently-appended buffers are of the specified format.
   
  	An NSInvalidArgumentException will be thrown if the media type of the format description does not match the media type string passed into this method.
   */
  @available(OSX 10.8, *)
  init(mediaType: String, outputSettings: [String : AnyObject]?, sourceFormatHint: CMFormatDescription?)

  /*!
   @property mediaType
   @abstract
  	The media type of the samples that can be appended to the receiver.
   
   @discussion
  	The value of this property is one of the media type strings defined in AVMediaFormat.h.
   */
  var mediaType: String { get }

  /*!
   @property outputSettings
   @abstract
  	The settings used for encoding the media appended to the output.
   
   @discussion
  	The value of this property is an NSDictionary that contains values for keys as specified by either AVAudioSettings.h for AVMediaTypeAudio or AVVideoSettings.h for AVMediaTypeVideo.  A value of nil indicates that the receiver will pass through appended samples, doing no processing before they are written to the output file.
  */
  var outputSettings: [String : AnyObject]? { get }

  /*!
   @property sourceFormatHint
   @abstract
  	 The hint given at initialization time about the format of incoming media data.
   
   @discussion
  	AVAssetWriterInput may be able to use this hint to fill in missing output settings or perform more upfront validation.  To guarantee successful file writing, clients who specify a format hint should ensure that subsequently-appended media data are of the specified format.
   */
  @available(OSX 10.8, *)
  var sourceFormatHint: CMFormatDescription? { get }

  /*!
   @property metadata
   @abstract
  	A collection of metadata to be written to the track corresponding to the receiver. 
  
   @discussion
  	The value of this property is an array of AVMetadataItem objects representing the collection of track-level metadata to be written in the output file.
  
  	This property cannot be set after writing on the receiver's AVAssetWriter has started.
   */
  var metadata: [AVMetadataItem]

  /*!
   @property readyForMoreMediaData
   @abstract
  	Indicates the readiness of the input to accept more media data.
   
   @discussion
      When there are multiple inputs, AVAssetWriter tries to write media data in an ideal interleaving pattern for efficiency in storage and playback. Each of its inputs signals its readiness to receive media data for writing according to that pattern via the value of readyForMoreMediaData. You can append media data to an input only while its readyForMoreMediaData property is YES.
   
      Clients writing media data from a non-real-time source, such as an instance of AVAssetReader, should hold off on generating or obtaining more media data to append to an input when the value of readyForMoreMediaData is NO. To help with control of the supply of non-real-time media data, such clients can use -requestMediaDataWhenReadyOnQueue:usingBlock in order to specify a block that the input should invoke whenever it's ready for input to be appended.
  
      Clients writing media data from a real-time source, such as an instance of AVCaptureOutput, should set the input's expectsMediaDataInRealTime property to YES to ensure that the value of readyForMoreMediaData is calculated appropriately. When expectsMediaDataInRealTime is YES, readyForMoreMediaData will become NO only when the input cannot process media samples as quickly as they are being provided by the client. If readyForMoreMediaData becomes NO for a real-time source, the client may need to drop samples or consider reducing the data rate of appended samples.
   
  	When the value of canPerformMultiplePasses is YES for any input attached to this input's asset writer, the value for this property may start as NO and/or be NO for long periods of time.
   
      The value of readyForMoreMediaData will often change from NO to YES asynchronously, as previously supplied media data is processed and written to the output.  It is possible for all of an AVAssetWriter's AVAssetWriterInputs temporarily to return NO for readyForMoreMediaData.
  	
      This property is key value observable. Observers should not assume that they will be notified of changes on a specific thread.
   */
  var isReadyForMoreMediaData: Bool { get }

  /*!
   @property expectsMediaDataInRealTime
   @abstract
  	Indicates whether the input should tailor its processing of media data for real-time sources.
  
   @discussion
      Clients appending media data to an input from a real-time source, such as an AVCaptureOutput, should set expectsMediaDataInRealTime to YES. This will ensure that readyForMoreMediaData is calculated appropriately for real-time usage.
   
  	For best results, do not set both this property and performsMultiPassEncodingIfSupported to YES.
   
  	This property cannot be set after writing on the receiver's AVAssetWriter has started.
   */
  var expectsMediaDataInRealTime: Bool

  /*!
   @method requestMediaDataWhenReadyOnQueue:usingBlock:
   @abstract
  	Instructs the receiver to invoke a client-supplied block repeatedly, at its convenience, in order to gather media data for writing to the output file.
  
   @param queue
  	The queue on which the block should be invoked.
   @param block
  	The block the input should invoke to obtain media data.
  
   @discussion
  	The block should append media data to the input either until the input's readyForMoreMediaData property becomes NO or until there is no more media data to supply (at which point it may choose to mark the input as finished via -markAsFinished). The block should then exit. After the block exits, if the input has not been marked as finished, once the input has processed the media data it has received and becomes ready for more media data again, it will invoke the block again in order to obtain more.
   
      A typical use of this method, with a block that supplies media data to an input while respecting the input's readyForMoreMediaData property, might look like this:
  
      [myAVAssetWriterInput requestMediaDataWhenReadyOnQueue:myInputSerialQueue usingBlock:^{
          while ([myAVAssetWriterInput isReadyForMoreMediaData])
          {
              CMSampleBufferRef nextSampleBuffer = [self copyNextSampleBufferToWrite];
              if (nextSampleBuffer)
              {
                  [myAVAssetWriterInput appendSampleBuffer:nextSampleBuffer];
                  CFRelease(nextSampleBuffer);
              }
              else
              {
                  [myAVAssetWriterInput markAsFinished];
                  break;
              }
          }
      }];
   
  	This method is not recommended for use with a push-style buffer source, such as AVCaptureAudioDataOutput or AVCaptureVideoDataOutput, because such a combination will likely require intermediate queueing of buffers.  Instead, this method is better suited to a pull-style buffer source such as AVAssetReaderOutput, as illustrated in the above example.
   
  	When using a push-style buffer source, it is generally better to immediately append each buffer to the AVAssetWriterInput, directly via -[AVAssetWriter appendSampleBuffer:], as it is received.  Using this strategy, it is often possible to avoid  having to queue up buffers in between the buffer source and the AVAssetWriterInput.  Note that many of these push-style buffer sources also produce buffers in real-time, in which case the client should set expectsMediaDataInRealTime to YES.
   
  	Before calling this method, you must ensure that the receiver is attached to an AVAssetWriter via a prior call to -addInput: and that -startWriting has been called on the asset writer.
   */
  func requestMediaDataWhenReadyOn(queue: dispatch_queue_t, usingBlock block: () -> Void)

  /*!
   @method appendSampleBuffer:
   @abstract
  	Appends samples to the receiver.
  
   @param sampleBuffer
  	The CMSampleBuffer to be appended.
   @result
  	A BOOL value indicating success of appending the sample buffer. If a result of NO is returned, clients can check the value of AVAssetWriter.status to determine whether the writing operation completed, failed, or was cancelled.  If the status is AVAssetWriterStatusFailed, AVAsset.error will contain an instance of NSError that describes the failure.
   
   @discussion
  	The timing information in the sample buffer, considered relative to the time passed to -[AVAssetWriter startSessionAtSourceTime:], will be used to determine the timing of those samples in the output file.
   
  	The receiver will retain the CMSampleBuffer until it is done with it, and then release it.  Do not modify a CMSampleBuffer or its contents after you have passed it to this method.
   
  	If the sample buffer contains audio data and the AVAssetWriterInput was intialized with an outputSettings dictionary then the format must be linear PCM. If the outputSettings dictionary was nil then audio data can be provided in a compressed format, and it will be passed through to the output without any re-compression. Note that advanced formats like AAC will have encoder delay present in their bitstreams. This data is inserted by the encoder and is necessary for proper decoding, but it is not meant to be played back. Clients who provide compressed audio bitstreams must use kCMSampleBufferAttachmentKey_TrimDurationAtStart to mark the encoder delay (generally restricted to the first sample buffer). Packetization can cause there to be extra audio frames in the last packet which are not meant to be played back. These remainder frames should be marked with kCMSampleBufferAttachmentKey_TrimDurationAtEnd. CMSampleBuffers obtained from AVAssetReader will already have the necessary trim attachments. Please see http://developer.apple.com/mac/library/technotes/tn2009/tn2258.html for more information about encoder delay. When attaching trims make sure that the output PTS of the sample buffer is what you expect. For example if you called -[AVAssetWriter startSessionAtSourceTime:kCMTimeZero] and you want your audio to start at time zero in the output file then make sure that the output PTS of the first non-fully trimmed audio sample buffer is kCMTimeZero.
  	
  	If the sample buffer contains a CVPixelBuffer then the choice of pixel format will affect the performance and quality of the encode. For optimal performance the format of the pixel buffer should match one of the native formats supported by the selected video encoder. Below are some recommendations:
   
  	The H.264 encoder natively supports kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange and kCVPixelFormatType_420YpCbCr8BiPlanarFullRange, which should be used with video and full range input respectively. The JPEG encoder on iOS natively supports kCVPixelFormatType_422YpCbCr8FullRange. For other video codecs on OSX, kCVPixelFormatType_422YpCbCr8 is the preferred pixel format for video and is generally the most performant when encoding. If you need to work in the RGB domain then kCVPixelFormatType_32BGRA is recommended on iOS and kCVPixelFormatType_32ARGB is recommended on OSX.
  
  	Pixel buffers not in a natively supported format will be converted internally prior to encoding when possible. Pixel format conversions within the same range (video or full) are generally faster than conversions between different ranges.
   
  	The ProRes encoders can preserve high bit depth sources, supporting up to 12bits/ch. ProRes 4444 can contain a mathematically lossless alpha channel and it doesn't do any chroma subsampling. This makes ProRes 4444 ideal for quality critical applications. If you are working with 8bit sources ProRes is also a good format to use due to its high image quality. Use either of the recommended pixel formats above. Note that RGB pixel formats by definition have 4:4:4 chroma sampling.
   
   	If you are working with high bit depth sources the following yuv pixel formats are recommended when encoding to ProRes: kCVPixelFormatType_4444AYpCbCr16, kCVPixelFormatType_422YpCbCr16, and kCVPixelFormatType_422YpCbCr10. When working in the RGB domain kCVPixelFormatType_64ARGB is recommended. Scaling and color matching are not currently supported when using AVAssetWriter with any of these high bit depth pixel formats. Please make sure that your track's output settings dictionary specifies the same width and height as the buffers you will be appending. Do not include AVVideoScalingModeKey or AVVideoColorPropertiesKey.
  
  	As of OS X 10.10 and iOS 8.0, this method can be used to add sample buffers that reference existing data in a file instead of containing media data to be appended to the file. This can be used to generate tracks that are not self-contained. In order to append such a sample reference to the track create a CMSampleBufferRef with a NULL dataBuffer and dataReady set to true and set the kCMSampleBufferAttachmentKey_SampleReferenceURL and kCMSampleBufferAttachmentKey_SampleReferenceByteOffset attachments on the sample buffer. Further documentation on how to create such a "sample reference" sample buffer can be found in the description of the kCMSampleBufferAttachmentKey_SampleReferenceURL and kCMSampleBufferAttachmentKey_SampleReferenceByteOffset attachment keys in the CMSampleBuffer documentation.
  
  	Before calling this method, you must ensure that the receiver is attached to an AVAssetWriter via a prior call to -addInput: and that -startWriting has been called on the asset writer.  It is an error to invoke this method before starting a session (via -[AVAssetWriter startSessionAtSourceTime:]) or after ending a session (via -[AVAssetWriter endSessionAtSourceTime:]).
   */
  func append(sampleBuffer: CMSampleBuffer) -> Bool

  /*!
   @method markAsFinished
   @abstract
  	Indicates to the AVAssetWriter that no more buffers will be appended to this input.
  
   @discussion
  	Clients that are monitoring each input's readyForMoreMediaData value must call markAsFinished on an input when they are done appending buffers to it.  This is necessary to prevent other inputs from stalling, as they may otherwise wait forever for that input's media data, attempting to complete the ideal interleaving pattern.
   
  	After invoking this method from the serial queue passed to -requestMediaDataWhenReadyOnQueue:usingBlock:, the receiver is guaranteed to issue no more invocations of the block passed to that method.  The same is true of -respondToEachPassDescriptionOnQueue:usingBlock:.
   
  	Before calling this method, you must ensure that the receiver is attached to an AVAssetWriter via a prior call to -addInput: and that -startWriting has been called on the asset writer.
   */
  func markAsFinished()
}
extension AVAssetWriterInput {

  /*!
   @property languageCode
   @abstract
  	Indicates the language to associate with the track corresponding to the receiver, as an ISO 639-2/T language code; can be nil.
   
   @discussion
  	Also see extendedLanguageTag below.
  
  	This property cannot be set after writing on the receiver's AVAssetWriter has started.
   */
  @available(OSX 10.9, *)
  var languageCode: String?

  /*!
   @property extendedLanguageTag
   @abstract
  	Indicates the language tag to associate with the track corresponding to the receiver, as an IETF BCP 47 (RFC 4646) language identifier; can be nil.
   
   @discussion
  	Extended language tags are normally set only when an ISO 639-2/T language code by itself is ambiguous, as in cases in which media data should be distinguished not only by language but also by the regional dialect in use or the writing system employed.
  
  	This property cannot be set after writing on the receiver's AVAssetWriter has started.	
   */
  @available(OSX 10.9, *)
  var extendedLanguageTag: String?
}
extension AVAssetWriterInput {

  /*!
   @property naturalSize
   @abstract
  	The size specified in the output file as the natural dimensions of the visual media data for display purposes.
   
   @discussion
  	If the default value, CGSizeZero, is specified, the naturalSize of the track corresponding to the receiver is set according to dimensions indicated by the format descriptions that are ultimately written to the output track.
  
  	This property cannot be set after writing on the receiver's AVAssetWriter has started.
  */
  @available(OSX 10.9, *)
  var naturalSize: CGSize

  /*!
   @property transform
   @abstract
  	The transform specified in the output file as the preferred transformation of the visual media data for display purposes.
   
   @discussion
  	If no value is specified, the identity transform is used.
  
  	This property cannot be set after writing on the receiver's AVAssetWriter has started.
  */
  var transform: CGAffineTransform
}
extension AVAssetWriterInput {

  /*!
   @property preferredVolume
   @abstract
  	The preferred volume level to be stored in the output file.
   
   @discussion
  	The value for this property should typically be in the range of 0.0 to 1.0.  The default value is 1.0, which is equivalent to a "normal" volume level for audio media type. For all other media types the default value is 0.0.
   
  	This property cannot be set after writing on the receiver's AVAssetWriter has started.
   */
  @available(OSX 10.9, *)
  var preferredVolume: Float
}
extension AVAssetWriterInput {

  /*!
   @property marksOutputTrackAsEnabled
   @abstract
  	For file types that support enabled and disabled tracks, such as QuickTime Movie files, specifies whether the track corresponding to the receiver should be enabled by default for playback and processing. The default value is YES.
   
   @discussion
  	When an input group is added to an AVAssetWriter (see -[AVAssetWriter addInputGroup:]), the value of marksOutputTrackAsEnabled will automatically be set to YES for the default input and set to NO for all of the other inputs in the group.  In this case, if a new value is set on this property then an exception will be raised.
  
  	This property cannot be set after writing on the receiver's AVAssetWriter has started.
   */
  @available(OSX 10.9, *)
  var marksOutputTrackAsEnabled: Bool

  /*!
   @property mediaTimeScale
   @abstract
  	For file types that support media time scales, such as QuickTime Movie files, specifies the media time scale to be used.
  
   @discussion
  	The default value is 0, which indicates that the receiver should choose a convenient value, if applicable.  It is an error to set a value other than 0 if the receiver has media type AVMediaTypeAudio.
  
  	This property cannot be set after writing has started.
   */
  @available(OSX 10.7, *)
  var mediaTimeScale: CMTimeScale

  /*!
   @property preferredMediaChunkDuration
   @abstract
  	For file types that support media chunk duration, such as QuickTime Movie files, specifies the duration to be used for each chunk of sample data in the output file.
   
   @discussion
  	Chunk duration can influence the granularity of the I/O performed when reading a media file, e.g. during playback.  A larger chunk duration can result in fewer reads from disk, at the potential expense of a higher memory footprint.
   
  	A "chunk" contains one or more samples.  The total duration of the samples in a chunk is no greater than this preferred chunk duration, or the duration of a single sample if the sample's duration is greater than this preferred chunk duration.
   
  	The default value is kCMTimeInvalid, which means that the receiver will choose an appropriate default value.  It is an error to set a chunk duration that is negative or non-numeric.
  
  	This property cannot be set after -startWriting has been called on the receiver.
   */
  @available(OSX 10.10, *)
  var preferredMediaChunkDuration: CMTime

  /*!
   @property preferredMediaChunkAlignment
   @abstract
  	For file types that support media chunk alignment, such as QuickTime Movie files, specifies the boundary for media chunk alignment in bytes (e.g. 512).
   
   @discussion
  	The default value is 0, which means that the receiver will choose an appropriate default value.  A value of 1 implies that no padding should be used to achieve a particular chunk alignment.  It is an error to set a negative value for chunk alignment.
   
  	This property cannot be set after -startWriting has been called on the receiver.
   */
  @available(OSX 10.10, *)
  var preferredMediaChunkAlignment: Int

  /*!
   @property sampleReferenceBaseURL
   @abstract
  	For file types that support writing sample references, such as QuickTime Movie files, specifies the base URL sample references are relative to.
  
   @discussion
  	If the value of this property can be resolved as an absolute URL, the sample locations written to the file when appending sample references will be relative to this URL. The URL must point to a location that is in a directory that is a parent of the sample reference location. 
  
  	Usage example:
  
  	Setting the sampleReferenceBaseURL property to "file:///User/johnappleseed/Movies/" and appending sample buffers with the kCMSampleBufferAttachmentKey_SampleReferenceURL attachment set to "file:///User/johnappleseed/Movies/data/movie1.mov" will cause the sample reference "data/movie1.mov" to be written to the movie.
  
  	If the value of the property cannot be resolved as an absolute URL or if it points to a location that is not in a parent directory of the sample reference location, the location referenced in the sample buffer will be written unmodified.
  
   	The default value is nil, which means that the location referenced in the sample buffer will be written unmodified.
   
  	This property cannot be set after -startWriting has been called on the receiver.
   */
  @available(OSX 10.10, *)
  @NSCopying var sampleReferenceBaseURL: NSURL?
}
extension AVAssetWriterInput {

  /*!
   @method canAddTrackAssociationWithTrackOfInput:type:
   @abstract
  	Tests whether an association between the tracks corresponding to a pair of inputs is valid.
  
   @param input
  	The instance of AVAssetWriterInput with a corresponding track to associate with track corresponding with the receiver.
   @param trackAssociationType
  	The type of track association to test. Common track association types, such as AVTrackAssociationTypeTimecode, are defined in AVAssetTrack.h.
  
   @discussion
  	If the type of association requires tracks of specific media types that don't match the media types of the inputs, or if the output file type does not support track associations, -canAddTrackAssociationWithTrackOfInput:type: will return NO.
   */
  @available(OSX 10.9, *)
  func canAddTrackAssociationWithTrackOf(input: AVAssetWriterInput, type trackAssociationType: String) -> Bool

  /*!
   @method addTrackAssociationWithTrackOfInput:type:
   @abstract
  	Associates the track corresponding to the specified input with the track corresponding with the receiver.
  
   @param input
  	The instance of AVAssetWriterInput with a corresponding track to associate with track corresponding to the receiver.
   @param trackAssociationType
  	The type of track association to add. Common track association types, such as AVTrackAssociationTypeTimecode, are defined in AVAssetTrack.h.
  
   @discussion
  	If the type of association requires tracks of specific media types that don't match the media types of the inputs, or if the output file type does not support track associations, an NSInvalidArgumentException is raised.
  
  	Track associations cannot be added after writing on the receiver's AVAssetWriter has started.
   */
  @available(OSX 10.9, *)
  func addTrackAssociationWithTrackOf(input: AVAssetWriterInput, type trackAssociationType: String)
}
extension AVAssetWriterInput {

  /*!
   @property performsMultiPassEncodingIfSupported
   @abstract
  	Indicates whether the input should attempt to encode the source media data using multiple passes.
   
   @discussion
  	The input may be able to achieve higher quality and/or lower data rate by performing multiple passes over the source media.  It does this by analyzing the media data that has been appended and re-encoding certain segments with different parameters.  In order to do this re-encoding, the media data for these segments must be appended again.  See -markCurrentPassAsFinished and the property currentPassDescription for the mechanism by which the input nominates segments for re-appending.
   
  	When the value of this property is YES, the value of readyForMoreMediaData for other inputs attached to the same AVAssetWriter may be NO more often and/or for longer periods of time.  In particular, the value of readyForMoreMediaData for inputs that do not (or cannot) perform multiple passes may start out as NO after -[AVAssetWriter startWriting] has been called and may not change to YES until after all multi-pass inputs have completed their final pass.
   
  	When the value of this property is YES, the input may store data in one or more temporary files before writing compressed samples to the output file.  Use the AVAssetWriter property directoryForTemporaryFiles if you need to control the location of temporary file writing.
   
  	The default value is NO, meaning that no additional analysis will occur and no segments will be re-encoded.  Not all asset writer input configurations (for example, inputs configured with certain media types or to use certain encoders) can benefit from performing multiple passes over the source media.  To determine whether the selected encoder can perform multiple passes, query the value of canPerformMultiplePasses after calling -startWriting.
   
  	For best results, do not set both this property and expectsMediaDataInRealTime to YES.
  
  	This property cannot be set after writing on the receiver's AVAssetWriter has started.
   */
  @available(OSX 10.10, *)
  var performsMultiPassEncodingIfSupported: Bool

  /*!
   @property canPerformMultiplePasses
   @abstract
  	Indicates whether the input might perform multiple passes over appended media data.
  
   @discussion
  	When the value for this property is YES, your source for media data should be configured for random access.  After appending all of the media data for the current pass (as specified by the currentPassDescription property), call -markCurrentPassAsFinished to start the process of determining whether additional passes are needed.  Note that it is still possible in this case for the input to perform only the initial pass, if it determines that there will be no benefit to performing multiple passes.
   
  	When the value for this property is NO, your source for media data only needs to support sequential access.  In this case, append all of the source media once and call -markAsFinished.
   
  	In the default configuration of AVAssetWriterInput, the value for this property will be NO.  Currently the only way for this property to become YES is when performsMultiPassEncodingIfSupported has been set to YES.  The final value will be available after -startWriting is called, when a specific encoder has been choosen.
   
  	This property is key-value observable.
   */
  @available(OSX 10.10, *)
  var canPerformMultiplePasses: Bool { get }

  /*!
   @property currentPassDescription
   @abstract
  	Provides an object that describes the requirements, such as source time ranges to append or re-append, for the current pass.
   
   @discussion
  	If the value of this property is nil, it means there is no request to be fulfilled and -markAsFinished should be called on the asset writer input.
   
  	During the first pass, the request will contain a single time range from zero to positive infinity, indicating that all media from the source should be appended.  This will also be true when canPerformMultiplePasses is NO, in which case only one pass will be performed.
   
  	The value of this property will be nil before -startWriting is called on the attached asset writer.  It will transition to an initial non-nil value during the call to -startWriting.  After that, the value of this property will change only after a call to -markCurrentPassAsFinished.  For an easy way to be notified at the beginning of each pass, see -respondToEachPassDescriptionOnQueue:usingBlock:.
   
  	This property is key-value observable.  Observers should not assume that they will be notified of changes on a specific thread.
   */
  @available(OSX 10.10, *)
  var currentPassDescription: AVAssetWriterInputPassDescription? { get }

  /*!
   @method respondToEachPassDescriptionOnQueue:usingBlock:
   @abstract
  	Instructs the receiver to invoke a client-supplied block whenever a new pass has begun.
   
   @param queue
  	The queue on which the block should be invoked.
   @param block
  	A block the receiver should invoke whenever a new pass has begun.
  
   @discussion
  	A typical block passed to this method will perform the following steps:
  
  		1. Query the value of the receiver's currentPassDescription property and reconfigure the source of media data (e.g. AVAssetReader) accordingly
  		2. Call -requestMediaDataWhenReadyOnQueue:usingBlock: to begin appending data for the current pass
  		3. Exit
  
  	When all media data has been appended for the current request, call -markCurrentPassAsFinished to begin the process of determining whether an additional pass is warranted.  If an additional pass is warranted, the block passed to this method will be invoked to begin the next pass.  If no additional passes are needed, the block passed to this method will be invoked one final time so the client can invoke -markAsFinished in response to the value of currentPassDescription becoming nil.
   
  	Before calling this method, you must ensure that the receiver is attached to an AVAssetWriter via a prior call to -addInput: and that -startWriting has been called on the asset writer.
   */
  @available(OSX 10.10, *)
  func respondToEachPassDescriptionOn(queue: dispatch_queue_t, usingBlock block: dispatch_block_t)

  /*!
   @method markCurrentPassAsFinished
   @abstract
  	Instructs the receiver to analyze the media data that has been appended and determine whether the results could be improved by re-encoding certain segments.
   
   @discussion
  	When the value of canPerformMultiplePasses is YES, call this method after you have appended all of your media data.  After the receiver analyzes whether an additional pass is warranted, the value of currentPassDescription will change (usually asynchronously) to describe how to set up for the next pass.  Although it is possible to use key-value observing to determine when the value of currentPassDescription has changed, it is typically more convenient to invoke -respondToEachPassDescriptionOnQueue:usingBlock: in order to start the work for each pass.
   
  	After re-appending the media data for all of the time ranges of the new pass, call this method again to determine whether additional segments should be re-appended in another pass.
   
  	Calling this method effectively cancels any previous invocation of -requestMediaDataWhenReadyOnQueue:usingBlock:, meaning that -requestMediaDataWhenReadyOnQueue:usingBlock: can be invoked again for each new pass.  -respondToEachPassDescriptionOnQueue:usingBlock: provides a convenient way to consolidate these invocations in your code.
   
  	After each pass, you have the option of keeping the most recent results by calling -markAsFinished instead of this method.  If the value of currentPassDescription is nil at the beginning of a pass, call -markAsFinished to tell the receiver to not expect any further media data.
   
  	If the value of canPerformMultiplePasses is NO, the value of currentPassDescription will immediately become nil after calling this method.
  
  	Before calling this method, you must ensure that the receiver is attached to an AVAssetWriter via a prior call to -addInput: and that -startWriting has been called on the asset writer.
   */
  @available(OSX 10.10, *)
  func markCurrentPassAsFinished()
}

/*!
 @class AVAssetWriterInputPassDescription
 @abstract
	Defines an interface for querying information about the requirements of the current pass, such as the time ranges of media data to append.
 */
@available(OSX 10.10, *)
class AVAssetWriterInputPassDescription : NSObject {

  /*!
   @property sourceTimeRanges
   @abstract
  	An NSArray of NSValue objects wrapping CMTimeRange structures, each representing one source time range.
   
   @discussion
  	The value of this property is suitable for using as a parameter for -[AVAssetReaderOutput resetForReadingTimeRanges:].
   */
  var sourceTimeRanges: [NSValue] { get }
}

/*!
 @class AVAssetWriterInputPixelBufferAdaptor
 @abstract
	Defines an interface for appending video samples packaged as CVPixelBuffer objects to a single AVAssetWriterInput object.
 
 @discussion
	Instances of AVAssetWriterInputPixelBufferAdaptor provide a CVPixelBufferPool that can be used to allocate pixel buffers for writing to the output file.  Using the provided pixel buffer pool for buffer allocation is typically more efficient than appending pixel buffers allocated using a separate pool.
 */
@available(OSX 10.7, *)
class AVAssetWriterInputPixelBufferAdaptor : NSObject {

  /*!
   @method initWithAssetWriterInput:sourcePixelBufferAttributes:
   @abstract
  	Creates a new pixel buffer adaptor to receive pixel buffers for writing to the output file.
  
   @param input
  	An instance of AVAssetWriterInput to which the receiver should append pixel buffers.  Currently, only asset writer inputs that accept media data of type AVMediaTypeVideo can be used to initialize a pixel buffer adaptor.
   @param sourcePixelBufferAttributes
  	Specifies the attributes of pixel buffers that will be vended by the input's CVPixelBufferPool.
   @result
  	An instance of AVAssetWriterInputPixelBufferAdaptor.
  
   @discussion
  	In order to take advantage of the improved efficiency of appending buffers created from the adaptor's pixel buffer pool, clients should specify pixel buffer attributes that most closely accommodate the source format of the video frames being appended.
  
  	Pixel buffer attributes keys for the pixel buffer pool are defined in <CoreVideo/CVPixelBuffer.h>. To specify the pixel format type, the pixelBufferAttributes dictionary should contain a value for kCVPixelBufferPixelFormatTypeKey.  For example, use [NSNumber numberWithInt:kCVPixelFormatType_32BGRA] for 8-bit-per-channel BGRA. See the discussion under appendPixelBuffer:withPresentationTime: for advice on choosing a pixel format.
  
  	Clients that do not need a pixel buffer pool for allocating buffers should set sourcePixelBufferAttributes to nil.
  	
  	It is an error to initialize an instance of AVAssetWriterInputPixelBufferAdaptor with an asset writer input that is already attached to another instance of AVAssetWriterInputPixelBufferAdaptor.  It is also an error to initialize an instance of AVAssetWriterInputPixelBufferAdaptor with an asset writer input whose asset writer has progressed beyond AVAssetWriterStatusUnknown.
   */
  init(assetWriterInput input: AVAssetWriterInput, sourcePixelBufferAttributes: [String : AnyObject]?)

  /*!
   @property assetWriterInput
   @abstract
  	The asset writer input to which the receiver should append pixel buffers.
   */
  var assetWriterInput: AVAssetWriterInput { get }

  /*!
   @property sourcePixelBufferAttributes
   @abstract
  	The pixel buffer attributes of pixel buffers that will be vended by the receiver's CVPixelBufferPool.
  
   @discussion
  	The value of this property is a dictionary containing pixel buffer attributes keys defined in <CoreVideo/CVPixelBuffer.h>.
   */
  var sourcePixelBufferAttributes: [String : AnyObject]? { get }

  /*!
   @property pixelBufferPool
   @abstract
  	A pixel buffer pool that will vend and efficiently recycle CVPixelBuffer objects that can be appended to the receiver.
  
   @discussion
  	For maximum efficiency, clients should create CVPixelBuffer objects for appendPixelBuffer:withPresentationTime: by using this pool with the CVPixelBufferPoolCreatePixelBuffer() function.
  	
  	The value of this property will be NULL before -[AVAssetWriter startWriting] is called on the associated AVAssetWriter object.
  	
  	This property is key value observable.
   */
  var pixelBufferPool: CVPixelBufferPool? { get }

  /*!
   @method appendPixelBuffer:withPresentationTime:
   @abstract
  	Appends a pixel buffer to the receiver.
  
   @param pixelBuffer
  	The CVPixelBuffer to be appended.
   @param presentationTime
  	The presentation time for the pixel buffer to be appended.  This time will be considered relative to the time passed to -[AVAssetWriter startSessionAtSourceTime:] to determine the timing of the frame in the output file.
   @result
  	A BOOL value indicating success of appending the pixel buffer. If a result of NO is returned, clients can check the value of AVAssetWriter.status to determine whether the writing operation completed, failed, or was cancelled.  If the status is AVAssetWriterStatusFailed, AVAsset.error will contain an instance of NSError that describes the failure.
  
   @discussion
  	The receiver will retain the CVPixelBuffer until it is done with it, and then release it.  Do not modify a CVPixelBuffer or its contents after you have passed it to this method.
  	
  	For optimal performance the format of the pixel buffer should match one of the native formats supported by the selected video encoder. Below are some recommendations:
   
  	The H.264 encoder natively supports kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange and kCVPixelFormatType_420YpCbCr8BiPlanarFullRange, which should be used with video and full range input respectively. The JPEG encoder on iOS natively supports kCVPixelFormatType_422YpCbCr8FullRange. For other video codecs on OSX, kCVPixelFormatType_422YpCbCr8 is the preferred pixel format for video and is generally the most performant when encoding. If you need to work in the RGB domain then kCVPixelFormatType_32BGRA is recommended on iOS and kCVPixelFormatType_32ARGB is recommended on OSX.
  
  	Pixel buffers not in a natively supported format will be converted internally prior to encoding when possible. Pixel format conversions within the same range (video or full) are generally faster than conversions between different ranges.
  
  	The ProRes encoders can preserve high bit depth sources, supporting up to 12bits/ch. ProRes 4444 can contain a mathematically lossless alpha channel and it doesn't do any chroma subsampling. This makes ProRes 4444 ideal for quality critical applications. If you are working with 8bit sources ProRes is also a good format to use due to its high image quality. Use either of the recommended pixel formats above. Note that RGB pixel formats by definition have 4:4:4 chroma sampling.
   
   	If you are working with high bit depth sources the following yuv pixel formats are recommended when encoding to ProRes: kCVPixelFormatType_4444AYpCbCr16, kCVPixelFormatType_422YpCbCr16, and kCVPixelFormatType_422YpCbCr10. When working in the RGB domain kCVPixelFormatType_64ARGB is recommended. Scaling and color matching are not currently supported when using AVAssetWriter with any of these high bit depth pixel formats. Please make sure that your track's output settings dictionary specifies the same width and height as the buffers you will be appending. Do not include AVVideoScalingModeKey or AVVideoColorPropertiesKey.
   
  	Before calling this method, you must ensure that the input that underlies the receiver is attached to an AVAssetWriter via a prior call to -addInput: and that -startWriting has been called on the asset writer.  It is an error to invoke this method before starting a session (via -[AVAssetWriter startSessionAtSourceTime:]) or after ending a session (via -[AVAssetWriter endSessionAtSourceTime:]).
   */
  func append(pixelBuffer: CVPixelBuffer, withPresentationTime presentationTime: CMTime) -> Bool
}

/*!
 @class AVAssetWriterInputMetadataAdaptor
 @abstract
	Defines an interface for writing metadata, packaged as instances of AVTimedMetadataGroup, to a single AVAssetWriterInput object.
 */
@available(OSX 10.10, *)
class AVAssetWriterInputMetadataAdaptor : NSObject {

  /*!
   @method initWithAssetWriterInput:
   @abstract
  	Creates a new timed metadator group adaptor to receive instances of AVTimedMetadataGroup for writing to the output file.
   
   @param input
  	An instance of AVAssetWriterInput to which the receiver should append groups of timed metadata. Only asset writer inputs that accept media data of type AVMediaTypeMetadata can be used to initialize a timed metadata group adaptor.
   @result
  	An instance of AVAssetWriterInputMetadataAdaptor.
   
   @discussion
  	The instance of AVAssetWriterInput passed in to this method must have been created with a format hint indicating all possible combinations of identifier (or, alternatively, key and keySpace), dataType, and extendedLanguageTag that will be appended to the metadata adaptor.  It is an error to append metadata items not represented in the input's format hint.  For help creating a suitable format hint, see -[AVTimedMetadataGroup copyFormatDescription].
  
  	It is an error to initialize an instance of AVAssetWriterInputMetadataAdaptor with an asset writer input that is already attached to another instance of AVAssetWriterInputMetadataAdaptor.  It is also an error to initialize an instance of AVAssetWriterInputMetadataAdaptor with an asset writer input whose asset writer has progressed beyond AVAssetWriterStatusUnknown.
   */
  init(assetWriterInput input: AVAssetWriterInput)

  /*!
   @property assetWriterInput
   @abstract
  	The asset writer input to which the receiver should append timed metadata groups.
   */
  var assetWriterInput: AVAssetWriterInput { get }

  /*!
   @method appendTimedMetadataGroup:
   @abstract
  	Appends a timed metadata group to the receiver.
   
   @param timedMetadataGroup
  	The AVTimedMetadataGroup to be appended.
   @result
  	A BOOL value indicating success of appending the timed metadata group.  If a result of NO is returned, AVAssetWriter.error will contain more information about why apending the timed metadata group failed.
   
   @discussion
  	The receiver will retain the AVTimedMetadataGroup until it is done with it, and then release it.
   
  	The timing of the metadata items in the output asset will correspond to the timeRange of the AVTimedMetadataGroup, regardless of the values of the time and duration properties of the individual items.
   
  	Before calling this method, you must ensure that the input that underlies the receiver is attached to an AVAssetWriter via a prior call to -addInput: and that -startWriting has been called on the asset writer.  It is an error to invoke this method before starting a session (via -[AVAssetWriter startSessionAtSourceTime:]) or after ending a session (via -[AVAssetWriter endSessionAtSourceTime:]).
   */
  func append(timedMetadataGroup: AVTimedMetadataGroup) -> Bool
}
enum AVKeyValueStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Loading
  case Loaded
  case Failed
  case Cancelled
}

/*!
	@protocol	AVAsynchronousKeyValueLoading
 
	@abstract	The AVAsynchronousKeyValueLoading protocol defines methods that let clients use an AVAsset or AVAssetTrack object without blocking a thread. Using methods in the protocol, one can find out the current status of a key (for example, whether the corresponding value has been loaded); and ask the object to load values asynchronously, informing the client when the operation has completed.
 
	@discussion
		Because of the nature of timed audiovisual media, successful initialization of an asset does not necessarily mean that all its data is immediately available. Instead, an asset will wait to load data until an operation is performed on it (for example, directly invoking any relevant AVAsset methods, playback via an AVPlayerItem object, export using AVAssetExportSession, reading using an instance of AVAssetReader, and so on). This means that although you can request the value of any key at any time, and its value will be returned synchronously, the calling thread may be blocked until the request can be satisfied. To avoid blocking, you can:

			1. First, determine whether the value for a given key is available using statusOfValueForKey:error:.
			2. If a value has not been loaded yet, you can ask for to load one or more values and be notified when they become available using loadValuesAsynchronouslyForKeys:completionHandler:.
		
		Even for use cases that may typically support ready access to some keys (such as for assets initialized with URLs for files in the local filesystem), slow I/O may require AVAsset to block before returning their values. Although blocking may be acceptable for OS X API clients in cases where assets are being prepared on background threads or in operation queues, in all cases in which blocking should be avoided you should use loadValuesAsynchronouslyForKeys:completionHandler:. For iOS clients, blocking to obtain the value of a key synchronously is never recommended under any circumstances.
*/
protocol AVAsynchronousKeyValueLoading {

  /*!
    @method		statusOfValueForKey:
    @abstract		Reports whether the value for a key is immediately available without blocking.
    @param		key
      An instance of NSString containing the specified key.
    @param		outError
      If the status of the value for the key is AVKeyValueStatusFailed, *outError is set to a non-nil NSError that describes the failure that occurred.
    @result		The value's current loading status.
    @discussion
      Clients can use -statusOfValueForKey: to determine the availability of the value of any key of interest. However, this method alone does not prompt the receiver to load the value of a key that's not yet available. To request values for keys that may not already be loaded, without blocking, use -loadValuesAsynchronouslyForKeys:completionHandler:, await invocation of the completion handler, and test the availability of each key via -statusOfValueForKey: before invoking its getter.
   
      Even if access to values of some keys may be readily available, as can occur with receivers initialized with URLs for resources on local volumes, extensive I/O or parsing may be needed for these same receivers to provide values for other keys. A duration for a local MP3 file, for example, may be expensive to obtain, even if the values for other AVAsset properties may be trivial to obtain.
  
      Blocking that may occur when calling the getter for any key should therefore be avoided in the general case by loading values for all keys of interest via -loadValuesAsynchronouslyForKeys:completionHandler: and testing the availability of the requested values before fetching them by calling getters.
        
      The sole exception to this general rule is in usage on Mac OS X on the desktop, where it may be acceptable to block in cases in which the client is preparing objects for use on background threads or in operation queues. On iOS, values should always be loaded asynchronously prior to calling getters for the values, in any usage scenario.
  */
  func statusOfValueForKey(key: String, error outError: NSErrorPointer) -> AVKeyValueStatus

  /*!
    @method		loadValuesAsynchronouslyForKeys:completionHandler:
    @abstract		Directs the target to load the values of any of the specified keys that are not already loaded.
    @param		keys
      An instance of NSArray, containing NSStrings for the specified keys.
    @param		completionHandler
      The block to be invoked when loading succeeds, fails, or is cancelled.
  */
  func loadValuesAsynchronouslyForKeys(keys: [String], completionHandler handler: (() -> Void)? = nil)
}

/*!
	@class AVAudioBuffer
	@abstract A buffer of audio data, with a format.
	@discussion
		AVAudioBuffer represents a buffer of audio data and its format.
*/
@available(OSX 10.10, *)
class AVAudioBuffer : NSObject, NSCopying, NSMutableCopying {

  /*!
  	@property format
  	@abstract The format of the audio in the buffer.
  */
  var format: AVAudioFormat { get }

  /*!	@property audioBufferList
  	@abstract The buffer's underlying AudioBufferList.
  	@discussion
  		For compatibility with lower-level CoreAudio and AudioToolbox API's, this method accesses
  		the buffer implementation's internal AudioBufferList. The buffer list structure must
  		not be modified, though you may modify buffer contents.
  		
  		The mDataByteSize fields of this AudioBufferList express the buffer's current frameLength.
  */
  var audioBufferList: UnsafePointer<AudioBufferList> { get }

  /*!	@property mutableAudioBufferList
  	@abstract A mutable version of the buffer's underlying AudioBufferList.
  	@discussion
  		Some lower-level CoreAudio and AudioToolbox API's require a mutable AudioBufferList,
  		for example, AudioConverterConvertComplexBuffer.
  		
  		The mDataByteSize fields of this AudioBufferList express the buffer's current frameCapacity.
  		If they are altered, you should modify the buffer's frameLength to match.
  */
  var mutableAudioBufferList: UnsafeMutablePointer<AudioBufferList> { get }
  init()
  @available(OSX 10.10, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.10, *)
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
}

/*!
	@class AVAudioPCMBuffer
	@abstract A subclass of AVAudioBuffer for use with PCM audio formats.
	@discussion
		AVAudioPCMBuffer provides a number of methods useful for manipulating buffers of
		audio in PCM format.
*/
@available(OSX 10.10, *)
class AVAudioPCMBuffer : AVAudioBuffer {

  /*!	@method initWithPCMFormat:frameCapacity:
  	@abstract Initialize a buffer that is to contain PCM audio samples.
  	@param format
  		The format of the PCM audio to be contained in the buffer.
  	@param frameCapacity
  		The capacity of the buffer in PCM sample frames.
  	@discussion
  		An exception is raised if the format is not PCM.
  */
  init(pcmFormat format: AVAudioFormat, frameCapacity: AVAudioFrameCount)

  /*! @property frameCapacity
  	@abstract
  		The buffer's capacity, in audio sample frames.
  */
  var frameCapacity: AVAudioFrameCount { get }

  /*!	@property frameLength
  	@abstract The current number of valid sample frames in the buffer.
  	@discussion
  		You may modify the length of the buffer as part of an operation that modifies its contents.
  		The length must be less than or equal to the frameCapacity. Modifying frameLength will update
  		the mDataByteSize in each of the underlying AudioBufferList's AudioBuffer's correspondingly,
  		and vice versa. Note that in the case of deinterleaved formats, mDataByteSize will refers
  		the size of one channel's worth of audio samples.
  */
  var frameLength: AVAudioFrameCount

  /*!	@property stride
  	@abstract The buffer's number of interleaved channels.
  	@discussion
  		Useful in conjunction with floatChannelData etc.
  */
  var stride: Int { get }

  /*! @property floatChannelData
  	@abstract Access the buffer's float audio samples.
  	@discussion
  		floatChannelData returns pointers to the buffer's audio samples if the buffer's format is
  		32-bit float, or nil if it is another format.
  	
  		The returned pointer is to format.channelCount pointers to float. Each of these pointers
  		is to "frameLength" valid samples, which are spaced by "stride" samples.
  		
  		If format.interleaved is false (as with the standard deinterleaved float format), then 
  		the pointers will be to separate chunks of memory. "stride" is 1.
  		
  		If format.interleaved is true, then the pointers will refer into the same chunk of interleaved
  		samples, each offset by 1 frame. "stride" is the number of interleaved channels.
  */
  var floatChannelData: UnsafePointer<UnsafeMutablePointer<Float>> { get }

  /*!	@property int16ChannelData
  	@abstract Access the buffer's int16_t audio samples.
  	@discussion
  		int16ChannelData returns the buffer's audio samples if the buffer's format has 2-byte
  		integer samples, or nil if it is another format.
  		
  		See the discussion of floatChannelData.
  */
  var int16ChannelData: UnsafePointer<UnsafeMutablePointer<Int16>> { get }

  /*!	@property int32ChannelData
  	@abstract Access the buffer's int32_t audio samples.
  	@discussion
  		int32ChannelData returns the buffer's audio samples if the buffer's format has 4-byte
  		integer samples, or nil if it is another format.
  		
  		See the discussion of floatChannelData.
  */
  var int32ChannelData: UnsafePointer<UnsafeMutablePointer<Int32>> { get }
  convenience init()
}

/*!
	@class AVAudioCompressedBuffer
	@abstract A subclass of AVAudioBuffer for use with compressed audio formats.
*/
@available(OSX 10.11, *)
class AVAudioCompressedBuffer : AVAudioBuffer {

  /*!	@method initWithFormat:packetCapacity:maximumPacketSize:
  	@abstract Initialize a buffer that is to contain compressed audio data. 
  	@param format
  		The format of the audio to be contained in the buffer.
  	@param packetCapacity
  		The capacity of the buffer in packets.
  	@param maximumPacketSize
  		The maximum size in bytes of a compressed packet. 
  		The maximum packet size can be obtained from the maximumOutputPacketSize property of an AVAudioConverter configured for encoding this format.
  	@discussion
  		An exception is raised if the format is PCM.
  */
  init(format: AVAudioFormat, packetCapacity: AVAudioPacketCount, maximumPacketSize: Int)

  /*!	@method initWithFormat:packetCapacity:
  	@abstract Initialize a buffer that is to contain constant bytes per packet compressed audio data.
  	@param format
  		The format of the audio to be contained in the buffer.
  	@param packetCapacity
  		The capacity of the buffer in packets.
  	@discussion
  		This fails if the format is PCM or if the format has variable bytes per packet (format.streamDescription->mBytesPerPacket == 0).
  */
  init(format: AVAudioFormat, packetCapacity: AVAudioPacketCount)

  /*! @property packetCapacity
  	@abstract
  		The number of compressed packets the buffer can contain.
  */
  var packetCapacity: AVAudioPacketCount { get }

  /*!	@property packetCount
  	@abstract The current number of compressed packets in the buffer.
  	@discussion
  		You may modify the packet length as part of an operation that modifies its contents.
  		The packet length must be less than or equal to the packetCapacity.
  */
  var packetCount: AVAudioPacketCount

  /*!	@property maximumPacketSize
  	@abstract The maximum size of a compressed packet in bytes.
  */
  var maximumPacketSize: Int { get }

  /*! @property data
  	@abstract Access the buffer's data bytes.
  */
  var data: UnsafeMutablePointer<Void> { get }

  /*! @property packetDescriptions
  	@abstract Access the buffer's array of packet descriptions, if any.
  	@discussion
  		If the format has constant bytes per packet (format.streamDescription->mBytesPerPacket != 0), then this will return nil.
  */
  var packetDescriptions: UnsafeMutablePointer<AudioStreamPacketDescription> { get }
  init()
}

/*!
	@class AVAudioChannelLayout
	@abstract A description of the roles of a set of audio channels.
	@discussion
		This object is a thin wrapper for the AudioChannelLayout structure, described
		in <CoreAudio/CoreAudioTypes.h>.
*/
@available(OSX 10.10, *)
class AVAudioChannelLayout : NSObject, NSSecureCoding {

  /*!	@method initWithLayoutTag:
  	@abstract Initialize from a layout tag.
  	@param layoutTag
  		The tag.
  */
  convenience init(layoutTag: AudioChannelLayoutTag)

  /*!	@method initWithLayout:
  	@abstract Initialize from an AudioChannelLayout.
  	@param layout
  		The AudioChannelLayout.
  	@discussion
  		If the provided layout's tag is kAudioChannelLayoutTag_UseChannelDescriptions, this
  		initializer attempts to convert it to a more specific tag.
  */
  init(layout: UnsafePointer<AudioChannelLayout>)

  /*!	@method isEqual:
  	@abstract Determine whether another AVAudioChannelLayout is exactly equal to this layout.
  	@param object
  		The AVAudioChannelLayout to compare against.
  	@discussion
  		The underlying AudioChannelLayoutTag and AudioChannelLayout are compared for equality.
  */
  func isEqual(object: AnyObject) -> Bool

  /*!	@property layoutTag
  	@abstract The layout's tag. */
  var layoutTag: AudioChannelLayoutTag { get }

  /*!	@property layout
  	@abstract The underlying AudioChannelLayout. */
  var layout: UnsafePointer<AudioChannelLayout> { get }

  /*! @property channelCount
  	@abstract The number of channels of audio data.
  */
  var channelCount: AVAudioChannelCount { get }
  convenience init()
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*! @class AVAudioConnectionPoint
	@abstract A representation of either a source or destination connection point in AVAudioEngine.
	@discussion
		AVAudioConnectionPoint describes either a source or destination connection point (node, bus)
		in AVAudioEngine's graph.
	
		Instances of this class are immutable.
*/
@available(OSX 10.11, *)
class AVAudioConnectionPoint : NSObject {

  /*! @method initWithNode:bus:
  	@abstract Create a connection point object.
  	@param node the source or destination node
  	@param bus the output or input bus on the node
  	@discussion
  		If the node is nil, this method fails (returns nil).
  */
  init(node: AVAudioNode, bus: AVAudioNodeBus)

  /*!	@property node
  	@abstract Returns the node in the connection point.
  */
  weak var node: @sil_weak AVAudioNode? { get }

  /*!	@property bus
  	@abstract Returns the bus on the node in the connection point.
  */
  var bus: AVAudioNodeBus { get }
  convenience init()
}

/*! @enum AVAudioConverterPrimeMethod
    @abstract values for the primeMethod property. See further discussion under AVAudioConverterPrimeInfo.
     
        AVAudioConverterPrimeMethod_Pre
            Primes with leading + trailing input frames.
     
        AVAudioConverterPrimeMethod_Normal
			Only primes with trailing (zero latency). Leading frames are assumed to be silence.
     
        AVAudioConverterPrimeMethod_None
			Acts in "latency" mode. Both leading and trailing frames assumed to be silence.
*/
enum AVAudioConverterPrimeMethod : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Pre
  case Normal
  case None
}

/*!
    @struct     AVAudioConverterPrimeInfo
    @abstract   This struct is the value of the primeInfo property and specifies priming information.
    
    @field      leadingFrames
        Specifies the number of leading (previous) input frames, relative to the normal/desired
        start input frame, required by the converter to perform a high quality conversion. If
        using AVAudioConverterPrimeMethod_Pre, the client should "pre-seek" the input stream provided
        through the input proc by leadingFrames. If no frames are available previous to the
        desired input start frame (because, for example, the desired start frame is at the very
        beginning of available audio), then provide "leadingFrames" worth of initial zero frames
        in the input proc.  Do not "pre-seek" in the default case of
        AVAudioConverterPrimeMethod_Normal or when using AVAudioConverterPrimeMethod_None.

    @field      trailingFrames
        Specifies the number of trailing input frames (past the normal/expected end input frame)
        required by the converter to perform a high quality conversion.  The client should be
        prepared to provide this number of additional input frames except when using
        AVAudioConverterPrimeMethod_None. If no more frames of input are available in the input stream
        (because, for example, the desired end frame is at the end of an audio file), then zero
        (silent) trailing frames will be synthesized for the client.
            
    @discussion
        When using convertToBuffer:error:withInputFromBlock: (either a single call or a series of calls), some
        conversions, particularly involving sample-rate conversion, ideally require a certain
        number of input frames previous to the normal start input frame and beyond the end of
        the last expected input frame in order to yield high-quality results.
        
        These are expressed in the leadingFrames and trailingFrames members of the structure.
        
        The very first call to convertToBuffer:error:withInputFromBlock:, or first call after
        reset, will request additional input frames beyond those normally
        expected in the input proc callback to fulfill this first AudioConverterFillComplexBuffer()
        request. The number of additional frames requested, depending on the prime method, will
        be approximately:

        <pre>
            AVAudioConverterPrimeMethod_Pre       leadingFrames + trailingFrames
            AVAudioConverterPrimeMethod_Normal    trailingFrames
            AVAudioConverterPrimeMethod_None      0
        </pre>

        Thus, in effect, the first input proc callback(s) may provide not only the leading
        frames, but also may "read ahead" by an additional number of trailing frames depending
        on the prime method.

        AVAudioConverterPrimeMethod_None is useful in a real-time application processing live input,
        in which case trailingFrames (relative to input sample rate) of through latency will be
        seen at the beginning of the output of the AudioConverter.  In other real-time
        applications such as DAW systems, it may be possible to provide these initial extra
        audio frames since they are stored on disk or in memory somewhere and
        AVAudioConverterPrimeMethod_Pre may be preferable.  The default method is
        AVAudioConverterPrimeMethod_Normal, which requires no pre-seeking of the input stream and
        generates no latency at the output.
*/
struct AVAudioConverterPrimeInfo {
  var leadingFrames: AVAudioFrameCount
  var trailingFrames: AVAudioFrameCount
  init()
  init(leadingFrames: AVAudioFrameCount, trailingFrames: AVAudioFrameCount)
}

/*! @enum AVAudioConverterInputStatus
    @abstract You must return one of these codes from your AVAudioConverterInputBlock.
     
        AVAudioConverterInputStatus_HaveData
            This is the normal case where you supply data to the converter.
     
        AVAudioConverterInputStatus_NoDataNow
			If you are out of data for now, set *ioNumberOfPackets = 0 and return AVAudioConverterInputStatus_NoDataNow and the 
			conversion routine will return as much output as could be converted with the input already supplied.
     
        AVAudioConverterInputStatus_EndOfStream
			If you are at the end of stream, set *ioNumberOfPackets = 0 and return AVAudioConverterInputStatus_EndOfStream.
*/
@available(OSX 10.11, *)
enum AVAudioConverterInputStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case HaveData
  case NoDataNow
  case EndOfStream
}

/*! @enum AVAudioConverterOutputStatus
    @abstract These values are returned from convertToBuffer:error:withInputFromBlock:

		AVAudioConverterOutputStatus_HaveData
			All of the requested data was returned.

		AVAudioConverterOutputStatus_InputRanDry
			Not enough input was available to satisfy the request at the current time. The output buffer contains as much as could be converted.
			
		AVAudioConverterOutputStatus_EndOfStream
			The end of stream has been reached. No data was returned.
		
		AVAudioConverterOutputStatus_Error
			An error occurred.
*/
@available(OSX 10.11, *)
enum AVAudioConverterOutputStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case HaveData
  case InputRanDry
  case EndOfStream
  case Error
}

/*! @typedef AVAudioConverterInputBlock
    @abstract A block which will be called by convertToBuffer:error:withInputFromBlock: to get input data as needed. 
	@param  inNumberOfPackets
		This will be the number of packets required to complete the request.
		You may supply more or less that this amount. If less, then the input block will get called again.
	@param outStatus
		The block must set the appropriate AVAudioConverterInputStatus enum value.
		If you have supplied data, set outStatus to AVAudioConverterInputStatus_HaveData and return an AVAudioBuffer.
		If you are out of data for now, set outStatus to AVAudioConverterInputStatus_NoDataNow and return nil, and the
		conversion routine will return as much output as could be converted with the input already supplied.
		If you are at the end of stream, set outStatus to AVAudioConverterInputStatus_EndOfStream, and return nil.
	@return
		An AVAudioBuffer containing data to be converted, or nil if at end of stream or no data is available.
		The data in the returned buffer must not be cleared or re-filled until the input block is called again or the conversion has finished.
	@discussion
		convertToBuffer:error:withInputFromBlock: will return as much output as could be converted with the input already supplied.
*/
typealias AVAudioConverterInputBlock = (AVAudioPacketCount, UnsafeMutablePointer<AVAudioConverterInputStatus>) -> AVAudioBuffer?

/*!
	@class AVAudioConverter
	@abstract
		AVAudioConverter converts streams of audio between various formats.
	@discussion
*/
@available(OSX 10.11, *)
class AVAudioConverter : NSObject {

  /*!	@method initFromFormat:toFormat:
  	@abstract Initialize from input and output formats.
  	@param fromFormat 
  		The input format.
  	@param toFormat 
  		The output format.
  */
  init(from fromFormat: AVAudioFormat, to toFormat: AVAudioFormat)

  /*! @method reset
      @abstract Resets the converter so that a new stream may be converted.
  */
  func reset()

  /*! @property inputFormat
      @abstract The format of the input audio stream. (NB. AVAudioFormat includes the channel layout)
  */
  var inputFormat: AVAudioFormat { get }

  /*! @property outputFormat
      @abstract The format of the output audio stream. (NB. AVAudioFormat includes the channel layout)
  */
  var outputFormat: AVAudioFormat { get }

  /*! @property channelMap
      @abstract An array of integers indicating from which input to derive each output.
  	@discussion 
  		The array has size equal to the number of output channels. Each element's value is
  		the input channel number, starting with zero, that is to be copied to that output. A negative value means 
  		that the output channel will have no source and will be silent.
  		Setting a channel map overrides channel mapping due to any channel layouts in the input and output formats that may have been supplied.
  */
  var channelMap: [NSNumber]

  /*! @property magicCookie
      @abstract Decoders require some data in the form of a magicCookie in order to decode properly. Encoders will produce a magicCookie.
  */
  var magicCookie: NSData?

  /*! @property downmix
      @abstract If YES and channel remapping is necessary, then channels will be mixed as appropriate instead of remapped. Default value is NO.
  */
  var isDownmix: Bool

  /*! @property dither
      @abstract Setting YES will turn on dither, if dither makes sense in given the current formats and settings. Default value is NO.
  */
  var isDither: Bool

  /*! @property sampleRateConverterQuality
      @abstract An AVAudioQuality value as defined in AVAudioSettings.h.
  */
  var sampleRateConverterQuality: Int

  /*! @property sampleRateConverterAlgorithm
      @abstract An AVSampleRateConverterAlgorithmKey value as defined in AVAudioSettings.h.
  */
  var sampleRateConverterAlgorithm: String

  /*! @property primeMethod
      @abstract Indicates the priming method to be used by the sample rate converter or decoder.
  */
  var primeMethod: AVAudioConverterPrimeMethod

  /*! @property primeInfo
      @abstract Indicates the the number of priming frames .
  */
  var primeInfo: AVAudioConverterPrimeInfo

  /*! @method convertToBuffer:fromBuffer:error:
      @abstract Perform a simple conversion. That is, a conversion which does not involve codecs or sample rate conversion.
  	@param inputBuffer 
  		The input buffer.
  	@param outputBuffer 
  		The output buffer.
  	@param outError 
  		An error if the conversion fails.
  	@return 
  		YES is returned on success, NO when an error has occurred.
  	@discussion 
  		The output buffer's frameCapacity should be at least at large as the inputBuffer's frameLength.
  		If the conversion involves a codec or sample rate conversion, you instead must use
  		convertToBuffer:error:withInputFromBlock:.
  */
  func convertTo(outputBuffer: AVAudioPCMBuffer, from inputBuffer: AVAudioPCMBuffer) throws

  /*! @method convertToBuffer:error:withInputFromBlock:
      @abstract Perform any supported conversion. 
  	@param inputBlock
  		A block which will be called to get input data as needed. See description for AVAudioConverterInputBlock.
  	@param outputBuffer 
  		The output buffer.
  	@param outError 
  		An error if the conversion fails.
  	@return 
  		An AVAudioConverterOutputStatus is returned.
  	@discussion 
  		It attempts to fill the buffer to its capacity. On return, the buffer's length indicates the number of 
  		sample frames successfully converted.
  */
  func convertTo(outputBuffer: AVAudioBuffer, error outError: NSErrorPointer, withInputFrom inputBlock: AVAudioConverterInputBlock) -> AVAudioConverterOutputStatus
  init()
}
extension AVAudioConverter {

  /*! @property bitRate
      @abstract bitRate in bits per second. Only applies when encoding.
  */
  var bitRate: Int

  /*! @property bitRateStrategy
      @abstract When encoding, an AVEncoderBitRateStrategyKey value constant as defined in AVAudioSettings.h. Returns nil if not encoding.
  */
  var bitRateStrategy: String?

  /*! @property maximumOutputPacketSize
      @abstract When encoding it is useful to know how large a packet can be in order to allocate a buffer to receive the output.
  */
  var maximumOutputPacketSize: Int { get }

  /*! @property availableEncodeBitRates
      @abstract When encoding, an NSArray of NSNumber of all bit rates provided by the codec. Returns nil if not encoding.
  */
  var availableEncodeBitRates: [NSNumber]? { get }

  /*! @property applicableEncodeBitRates
      @abstract When encoding, an NSArray of NSNumber of bit rates that can be applied based on the current formats and settings. Returns nil if not encoding.
  */
  var applicableEncodeBitRates: [NSNumber]? { get }

  /*! @property availableEncodeSampleRates
      @abstract When encoding, an NSArray of NSNumber of all output sample rates provided by the codec. Returns nil if not encoding.
  */
  var availableEncodeSampleRates: [NSNumber]? { get }

  /*! @property applicableEncodeSampleRates
      @abstract When encoding, an NSArray of NSNumber of output sample rates that can be applied based on the current formats and settings. Returns nil if not encoding.
  */
  var applicableEncodeSampleRates: [NSNumber]? { get }

  /*! @property availableEncodeChannelLayoutTags
      @abstract When encoding, an NSArray of NSNumber of all output channel layout tags provided by the codec. Returns nil if not encoding.
  */
  var availableEncodeChannelLayoutTags: [NSNumber]? { get }
}

/*!
	@class AVAudioEngine
	@discussion
		An AVAudioEngine contains a group of connected AVAudioNodes ("nodes"), each of which performs
		an audio signal generation, processing, or input/output task.
		
		Nodes are created separately and attached to the engine.

		The engine supports dynamic connection, disconnection and removal of nodes while running,
		with only minor limitations:
		- all dynamic reconnections must occur upstream of a mixer
		- while removals of effects will normally result in the automatic connection of the adjacent
			nodes, removal of a node which has differing input vs. output channel counts, or which
			is a mixer, is likely to result in a broken graph.
*/
@available(OSX 10.10, *)
class AVAudioEngine : NSObject {

  /*! @method init
  	@abstract
  		Initialize a new engine.
  */
  init()

  /*!	@method attachNode:
  	@abstract
  		Take ownership of a new node.
  	@param node
  		The node to be attached to the engine.
  	@discussion
  		To support the instantiation of arbitrary AVAudioNode subclasses, instances are created
  		externally to the engine, but are not usable until they are attached to the engine via
  		this method. Thus the idiom, without ARC, is:
  
  <pre>
  // when building engine:
  AVAudioNode *_player;	// member of controller class (for example)
  ...
  _player = [[AVAudioPlayerNode alloc] init];
  [engine attachNode: _player];
  ...
  // when destroying engine (without ARC)
  [_player release];
  </pre>
  */
  func attach(node: AVAudioNode)

  /*!	@method detachNode:
  	@abstract
  		Detach a node previously attached to the engine.
  	@discussion
  		If necessary, the engine will safely disconnect the node before detaching it.
  */
  func detach(node: AVAudioNode)

  /*! @method connect:to:fromBus:toBus:format:
  	@abstract
  		Establish a connection between two nodes.
  	@param node1 the source node
  	@param node2 the destination node
  	@param bus1 the output bus on the source node
  	@param bus2 the input bus on the destination node
  	@param format if non-nil, the format of the source node's output bus is set to this
  		format. In all cases, the format of the destination node's input bus is set to
  		match that of the source node's output bus.
  	@discussion
  		Nodes have input and output buses (AVAudioNodeBus). Use this method to establish
  		one-to-one connections betweeen nodes. Connections made using this method are always
  		one-to-one, never one-to-many or many-to-one.
  	
  		Note that any pre-existing connection(s) involving the source's output bus or the
  		destination's input bus will be broken.
  */
  func connect(node1: AVAudioNode, to node2: AVAudioNode, fromBus bus1: AVAudioNodeBus, toBus bus2: AVAudioNodeBus, format: AVAudioFormat?)

  /*!	@method connect:to:format:
  	@abstract
  		Establish a connection between two nodes
  	@discussion
  		This calls connect:to:fromBus:toBus:format: using bus 0 on the source node,
  		and bus 0 on the destination node, except in the case of a destination which is a mixer,
  		in which case the destination is the mixer's nextAvailableInputBus.
  */
  func connect(node1: AVAudioNode, to node2: AVAudioNode, format: AVAudioFormat?)

  /*! @method connect:toConnectionPoints:fromBus:format:
  	@abstract
  		Establish connections between a source node and multiple destination nodes.
  	@param sourceNode the source node
  	@param destNodes an array of AVAudioConnectionPoint objects specifying destination 
  		nodes and busses
  	@param sourceBus the output bus on source node
  	@param format if non-nil, the format of the source node's output bus is set to this
  		format. In all cases, the format of the destination nodes' input bus is set to
  		match that of the source node's output bus
  	@discussion
  		Use this method to establish connections from a source node to multiple destination nodes.
  		Connections made using this method are either one-to-one (when a single destination
  		connection is specified) or one-to-many (when multiple connections are specified), but 
  		never many-to-one.
  
  		To incrementally add a new connection to a source node, use this method with an array
  		of AVAudioConnectionPoint objects comprising of pre-existing connections (obtained from
  		`outputConnectionPointsForNode:outputBus:`) and the new connection.
   
  		Note that any pre-existing connection involving the destination's input bus will be 
  		broken. And, any pre-existing connection on source node which is not a part of the
  		specified destination connection array will also be broken.
  
  		Also note that when the output of a node is split into multiple paths, all the paths
  		must render at the same rate until they reach a common mixer.
  		In other words, starting from the split node until the common mixer node where all split 
  		paths terminate, you cannot have:
  			- any AVAudioUnitTimeEffect
  			- any sample rate conversion
  */
  @available(OSX 10.11, *)
  func connect(sourceNode: AVAudioNode, to destNodes: [AVAudioConnectionPoint], fromBus sourceBus: AVAudioNodeBus, format: AVAudioFormat?)

  /*! @method disconnectNodeInput:bus:
  	@abstract
  		Remove a connection between two nodes.
  	@param node the node whose input is to be disconnected
  	@param bus the destination's input bus to disconnect
  */
  func disconnectNodeInput(node: AVAudioNode, bus: AVAudioNodeBus)

  /*!	@method disconnectNodeInput:
  	@abstract
  		Remove a connection between two nodes.
  	@param node the node whose inputs are to be disconnected
  	@discussion
  		Connections are broken on each of the node's input busses.
  */
  func disconnectNodeInput(node: AVAudioNode)

  /*! @method disconnectNodeOutput:bus:
  	@abstract
  		Remove a connection between two nodes.
  	@param node the node whose output is to be disconnected
  	@param bus the source's output bus to disconnect
  */
  func disconnectNodeOutput(node: AVAudioNode, bus: AVAudioNodeBus)

  /*!	@method disconnectNodeOutput:
  	@abstract
  		Remove a connection between two nodes.
  	@param node the node whose outputs are to be disconnected
  	@discussion
  		Connections are broken on each of the node's output busses.
  */
  func disconnectNodeOutput(node: AVAudioNode)

  /*!	@method prepare
  	@abstract
  		Prepare the engine for starting.
  	@discussion
  		This method preallocates many of the resources the engine requires in order to start.
  		It can be used to be able to start more responsively.
  */
  func prepare()

  /*! @method startAndReturnError:
  	@abstract
  		Start the engine.
  	@return
  		YES for success
  	@discussion
  		Calls prepare if it has not already been called since stop.
  	
  		Starts the audio hardware via the AVAudioInputNode and/or AVAudioOutputNode instances in
  		the engine. Audio begins flowing through the engine.
  	
  		Reasons for potential failure include:
  		
  		1. There is problem in the structure of the graph. Input can't be routed to output or to a
  			recording tap through converter type nodes.
  		2. An AVAudioSession error.
  		3. The driver failed to start the hardware.
  */
  func start() throws

  /*!	@method pause
  	@abstract
  		Pause the engine.
  	@discussion
  		Stops the flow of audio through the engine, but does not deallocate the resources allocated
  		by prepare. Resume the engine by invoking start again.
  */
  func pause()

  /*!	@method reset
  	@abstract reset
  		Reset all of the nodes in the engine.
  	@discussion
  		This will reset all of the nodes in the engine. This is useful, for example, for silencing
  		reverb and delay tails.
  */
  func reset()

  /*! @method stop
  	@abstract
  		Stop the engine. Releases the resources allocated by prepare.
  */
  func stop()

  /*! @method inputConnectionPointForNode:inputBus:
  	@abstract 
  		Get connection information on a node's input bus.
  	@param node the node whose input connection is being queried.
  	@param bus the node's input bus on which the connection is being queried.
  	@return	
  		An AVAudioConnectionPoint object with connection information on the node's
  		specified input bus.
  	@discussion
  		Connections are always one-to-one or one-to-many, never many-to-one.
   
  		Returns nil if there is no connection on the node's specified input bus.
  */
  @available(OSX 10.11, *)
  func inputConnectionPointFor(node: AVAudioNode, inputBus bus: AVAudioNodeBus) -> AVAudioConnectionPoint?

  /*! @method outputConnectionPointsForNode:outputBus:
  	@abstract
  		Get connection information on a node's output bus.
  	@param node the node whose output connections are being queried.
  	@param bus the node's output bus on which connections are being queried.
  	@return
  		An array of AVAudioConnectionPoint objects with connection information on the node's
  		specified output bus.
  	@discussion
  		Connections are always one-to-one or one-to-many, never many-to-one.
   
  		Returns an empty array if there are no connections on the node's specified output bus.
  */
  @available(OSX 10.11, *)
  func outputConnectionPointsFor(node: AVAudioNode, outputBus bus: AVAudioNodeBus) -> [AVAudioConnectionPoint]

  /*! @property musicSequence
  	@abstract
  		The MusicSequence previously attached to the engine (if any).
   */
  var musicSequence: MusicSequence

  /*! @property outputNode
  	@abstract
  		The engine's singleton output node.
  	@discussion
  		Audio output is performed via an output node. The engine creates a singleton on demand when
  		this property is first accessed. Connect another node to the input of the output node, or obtain
  		a mixer that is connected there by default, using the "mainMixerNode" property.
   
  		The AVAudioSesssion category and/or availability of hardware determine whether an app can
  		perform output. Check the output format of output node (i.e. hardware format) for non-zero
  		sample rate and channel count to see if output is enabled.
  */
  var outputNode: AVAudioOutputNode { get }

  /*! @property inputNode
  	@abstract
  		The engine's singleton input node.
  	@discussion
  		Audio input is performed via an input node. The engine creates a singleton on demand when
  		this property is first accessed. To receive input, connect another node from the output of 
  		the input node, or create a recording tap on it.
   
  		The AVAudioSesssion category and/or availability of hardware determine whether an app can
  		perform input. Check for non-nil input node and its input format (i.e. hardware format) for non-zero
  		sample rate and channel count to see if input is enabled.
  */
  var inputNode: AVAudioInputNode? { get }

  /*! @property mainMixerNode
  	@abstract
  		The engine's optional singleton main mixer node.
  	@discussion
  		The engine will construct a singleton main mixer and connect it to the outputNode on demand,
  		when this property is first accessed. You can then connect additional nodes to the mixer.
  		
  		By default, the mixer's output format (sample rate and channel count) will track the format 
  		of the output node. You may however make the connection explicitly with a different format.
  */
  var mainMixerNode: AVAudioMixerNode { get }

  /*! @property running
  	@abstract
  		The engine's running state.
  */
  var isRunning: Bool { get }
}

/*!	@constant AVAudioEngineConfigurationChangeNotification
	@abstract
		A notification generated on engine configuration changes.
	@discussion
		Register for this notification on your engine instances, as follows:
		
		[[NSNotificationCenter defaultCenter] addObserver: myObject 
			 selector:    @selector(handleInterruption:)
			 name:        AVAudioEngineConfigurationChangeNotification
			 object:      engine];

		When the engine's I/O unit observes a change to the audio input or output hardware's
		channel count or sample rate, the engine stops, uninitializes itself, and issues this 
		notification.	
*/
@available(OSX 10.10, *)
let AVAudioEngineConfigurationChangeNotification: String

/*! @enum AVAudioEnvironmentDistanceAttenuationModel
    @abstract Types of distance attenuation models
    @discussion
        Distance attenuation is the natural attenuation of sound when traveling from the source to 
        the listener. The different attenuation models listed below describe the drop-off in gain as 
        the source moves away from the listener.
     
        AVAudioEnvironmentDistanceAttenuationModelExponential
            distanceGain = (distance / referenceDistance) ^ (-rolloffFactor)
     
        AVAudioEnvironmentDistanceAttenuationModelInverse
            distanceGain = referenceDistance /  (referenceDistance + rolloffFactor *
                                                (distance – referenceDistance))
     
        AVAudioEnvironmentDistanceAttenuationModelLinear
            distanceGain = (1 – rolloffFactor * (distance – referenceDistance) /
                                                (maximumDistance – referenceDistance))
     
        With all the distance models, if the formula can not be evaluated then the source will not 
        be attenuated. For example, if a linear model is being used with referenceDistance equal 
        to maximumDistance, then the gain equation will have a divide-by-zero error in it. In this case,
        there is no attenuation for that source.
     
        All the values for distance are specified in meters.
*/
@available(OSX 10.10, *)
enum AVAudioEnvironmentDistanceAttenuationModel : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Exponential
  case Inverse
  case Linear
}

/*! @class AVAudioEnvironmentDistanceAttenuationParameters
    @abstract Parameters specifying the amount of distance attenuation
    @discussion
        A standalone instance of AVAudioEnvironmentDistanceAttenuationParameters cannot be created. 
        Only an instance vended out by a source object (e.g. AVAudioEnvironmentNode) can be used.
*/
@available(OSX 10.10, *)
class AVAudioEnvironmentDistanceAttenuationParameters : NSObject {

  /*! @property distanceAttenuationModel
      @abstract Type of distance attenuation model
      @discussion
          Default:    AVAudioEnvironmentDistanceAttenuationModelInverse
  */
  var distanceAttenuationModel: AVAudioEnvironmentDistanceAttenuationModel

  /*! @property referenceDistance
      @abstract The minimum distance at which attenuation is applied
      @discussion
          Default:    1.0 meter
          Models:     AVAudioEnvironmentDistanceAttenuationModelInverse,
                      AVAudioEnvironmentDistanceAttenuationModelLinear
  */
  var referenceDistance: Float

  /*! @property maximumDistance
      @abstract The distance beyond which no further attenuation is applied
      @discussion
          Default:    100000.0 meters
          Models:     AVAudioEnvironmentDistanceAttenuationModelLinear
  */
  var maximumDistance: Float

  /*! @property rolloffFactor
      @abstract Determines the attenuation curve
      @discussion
          A higher value results in a steeper attenuation curve.
          The rolloff factor should be a value greater than 0.
          Default:    1.0
          Models:     AVAudioEnvironmentDistanceAttenuationModelExponential
                      AVAudioEnvironmentDistanceAttenuationModelInverse
                      AVAudioEnvironmentDistanceAttenuationModelLinear
  */
  var rolloffFactor: Float
  init()
}

/*! @class AVAudioEnvironmentReverbParameters
    @abstract Parameters used to control the reverb in AVAudioEnvironmentNode
    @discussion
        Reverberation can be used to simulate the acoustic characteristics of an environment.
        AVAudioEnvironmentNode has a built in reverb that describes the space that the listener 
        is in.
 
        The reverb also has a single filter that sits at the end of the chain. This filter is useful 
        to shape the overall sound of the reverb. For instance, one of the reverb presets can be 
        selected to simulate the general space and then the filter can be used to brighten or darken 
        the overall sound.
 
        A standalone instance of AVAudioEnvironmentReverbParameters cannot be created.
        Only an instance vended out by a source object (e.g. AVAudioEnvironmentNode) can be used.
*/
@available(OSX 10.10, *)
class AVAudioEnvironmentReverbParameters : NSObject {

  /*! @property enable
      @abstract Turns on/off the reverb
      @discussion
          Default:    NO
  */
  var isEnable: Bool

  /*! @property level
      @abstract Controls the master level of the reverb
      @discussion
          Range:      -40 to 40 dB
          Default:    0.0
  */
  var level: Float

  /*! @property filterParameters
      @abstract filter that applies to the output of the reverb
  */
  var filterParameters: AVAudioUnitEQFilterParameters { get }

  /*! @method loadFactoryReverbPreset:
      @abstract Load one of the reverb's factory presets
      @param preset
          Reverb preset to be set.
      @discussion
          Loading a factory reverb preset changes the sound of the reverb. This works independently
          of the filter which follows the reverb in the signal chain.
  */
  func loadFactoryReverbPreset(preset: AVAudioUnitReverbPreset)
  init()
}

/*!
    @class AVAudioEnvironmentNode
    @abstract Mixer node that simulates a 3D environment
    @discussion
        AVAudioEnvironmentNode is a mixer node that simulates a 3D audio environment. Any node that 
        conforms to the AVAudioMixing protocol (e.g. AVAudioPlayerNode) can act as a source in this
        environment.
 
        The environment has an implicit "listener". By controlling the listener's position and
        orientation, the application controls the way the user experiences the virtual world. 
        In addition, this node also defines properties for distance attenuation and reverberation 
        that help characterize the environment.
 
        It is important to note that only inputs with a mono channel connection format to the 
        environment node are spatialized. If the input is stereo, the audio is passed through 
        without being spatialized. Currently inputs with connection formats of more than 2 channels 
        are not supported.
 
        In order to set the environment node’s output to a multichannel format, use an AVAudioFormat 
        having one of the following AudioChannelLayoutTags.
 
        kAudioChannelLayoutTag_AudioUnit_4
        kAudioChannelLayoutTag_AudioUnit_5_0;
        kAudioChannelLayoutTag_AudioUnit_6_0;
        kAudioChannelLayoutTag_AudioUnit_7_0;
        kAudioChannelLayoutTag_AudioUnit_7_0_Front;
        kAudioChannelLayoutTag_AudioUnit_8;
*/
@available(OSX 10.10, *)
class AVAudioEnvironmentNode : AVAudioNode, AVAudioMixing {

  /*! @property outputVolume
  	@abstract The mixer's output volume.
  	@discussion
          This accesses the mixer's output volume (0.0-1.0, inclusive).
  */
  var outputVolume: Float

  /*! @property nextAvailableInputBus
      @abstract Find an unused input bus
      @discussion
          This will find and return the first input bus to which no other node is connected.
  */
  var nextAvailableInputBus: AVAudioNodeBus { get }

  /*! @property listenerPosition
      @abstract Sets the listener's position in the 3D environment
      @discussion
          The coordinates are specified in meters.
          Default:
              The default poistion of the listener is at the origin.
              x: 0.0
              y: 0.0
              z: 0.0
  */
  var listenerPosition: AVAudio3DPoint

  /*! @property listenerVectorOrientation
      @abstract The listener's orientation in the environment
      @discussion
      Changing listenerVectorOrientation will result in a corresponding change in listenerAngularOrientation.
          Default:
              The default orientation is with the listener looking directly along the negative Z axis.
              forward: (0, 0, -1)
              up:      (0, 1, 0)
  */
  var listenerVectorOrientation: AVAudio3DVectorOrientation

  /*! @property listenerAngularOrientation
      @abstract The listener's orientation in the environment
      @discussion
      Changing listenerAngularOrientation will result in a corresponding change in listenerVectorOrientation.
          All angles are specified in degrees.
          Default:
              The default orientation is with the listener looking directly along the negative Z axis.
              yaw: 0.0
              pitch: 0.0
              roll: 0.0
  */
  var listenerAngularOrientation: AVAudio3DAngularOrientation

  /*! @property distanceAttenuationParameters
      @abstract The distance attenuation parameters for the environment
  */
  var distanceAttenuationParameters: AVAudioEnvironmentDistanceAttenuationParameters { get }

  /*! @property reverbParameters
      @abstract The reverb parameters for the environment
  */
  var reverbParameters: AVAudioEnvironmentReverbParameters { get }

  /*! @property applicableRenderingAlgorithms
      @abstract Returns an array of AVAudio3DMixingRenderingAlgorithm values based on the current output format
      @discussion
          AVAudioEnvironmentNode supports several rendering algorithms per input bus which are defined 
          in <AVFoundation/AVAudioMixing.h>.
   
          Depending on the current output format of the environment node, this method returns 
          an immutable array of the applicable rendering algorithms. This is important when the
          environment node has been configured to a multichannel output format because only a subset
          of the available rendering algorithms are designed to render to all of the channels.
          
          This information should be retrieved after a successful connection to the destination node 
          via the engine's connect method.
  */
  var applicableRenderingAlgorithms: [NSNumber] { get }
  init()

  /*! @method destinationForMixer:bus:
  	@abstract Returns the AVAudioMixingDestination object corresponding to specified mixer node and
  		its input bus
  	@discussion
  		When a source node is connected to multiple mixers downstream, setting AVAudioMixing 
  		properties directly on the source node will apply the change to all the mixers downstream. 
  		If you want to set/get properties on a specific mixer, use this method to get the 
  		corresponding AVAudioMixingDestination and set/get properties on it. 
   
  		Note:
  		- Properties set on individual AVAudioMixingDestination instances will not reflect at the
  			source node level.
  
  		- AVAudioMixingDestination reference returned by this method could become invalid when
  			there is any disconnection between the source and the mixer node. Hence this reference
  			should not be retained and should be fetched every time you want to set/get properties 
  			on a specific mixer.
   
  		If the source node is not connected to the specified mixer/input bus, this method
  		returns nil.
  		Calling this on an AVAudioMixingDestination instance returns self if the specified
  		mixer/input bus match its connection point, otherwise returns nil.
  */
  @available(OSX 10.11, *)
  func destinationForMixer(mixer: AVAudioNode, bus: AVAudioNodeBus) -> AVAudioMixingDestination?

  /*! @property volume
      @abstract Set a bus's input volume
      @discussion
          Range:      0.0 -> 1.0
          Default:    1.0
          Mixers:     AVAudioMixerNode, AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var volume: Float

  /*! @property pan
      @abstract Set a bus's stereo pan
      @discussion
          Range:      -1.0 -> 1.0
          Default:    0.0
          Mixer:      AVAudioMixerNode
  */
  @available(OSX 10.10, *)
  var pan: Float

  /*! @property renderingAlgorithm
      @abstract Type of rendering algorithm used
      @discussion
          Depending on the current output format of the AVAudioEnvironmentNode, only a subset of the 
          rendering algorithms may be supported. An array of valid rendering algorithms can be 
          retrieved by calling applicableRenderingAlgorithms on AVAudioEnvironmentNode.
   
          Default:    AVAudio3DMixingRenderingAlgorithmEqualPowerPanning
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var renderingAlgorithm: AVAudio3DMixingRenderingAlgorithm

  /*! @property rate
      @abstract Changes the playback rate of the input signal
      @discussion
          A value of 2.0 results in the output audio playing one octave higher.
          A value of 0.5, results in the output audio playing one octave lower.
       
          Range:      0.5 -> 2.0
          Default:    1.0
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var rate: Float

  /*! @property reverbBlend
      @abstract Controls the blend of dry and reverb processed audio
      @discussion
          This property controls the amount of the source's audio that will be processed by the reverb 
          in AVAudioEnvironmentNode. A value of 0.5 will result in an equal blend of dry and processed 
          (wet) audio.
   
          Range:      0.0 (completely dry) -> 1.0 (completely wet)
          Default:    0.0
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var reverbBlend: Float

  /*! @property obstruction
      @abstract Simulates filtering of the direct path of sound due to an obstacle
      @discussion
          Only the direct path of sound between the source and listener is blocked.
   
          Range:      -100.0 -> 0.0 dB
          Default:    0.0
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var obstruction: Float

  /*! @property occlusion
      @abstract Simulates filtering of the direct and reverb paths of sound due to an obstacle
      @discussion
          Both the direct and reverb paths of sound between the source and listener are blocked.
   
          Range:      -100.0 -> 0.0 dB
          Default:    0.0
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var occlusion: Float

  /*! @property position
      @abstract The location of the source in the 3D environment
      @discussion
          The coordinates are specified in meters.
   
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var position: AVAudio3DPoint
}

/*!
	@class AVAudioFile
	@abstract
		AVAudioFile represents an audio file opened for reading or writing.
	@discussion
		Regardless of the file's actual format, reading and writing the file is done via 
		`AVAudioPCMBuffer` objects, containing samples in an `AVAudioCommonFormat`,
		referred to as the file's "processing format." Conversions are performed to and from
		the file's actual format.
		
		Reads and writes are always sequential, but random access is possible by setting the
		framePosition property.
*/
@available(OSX 10.10, *)
class AVAudioFile : NSObject {

  /*! @method initForReading:error:
  	@abstract Open a file for reading.
  	@param fileURL
  		the file to open
  	@param outError
  		on exit, if an error occurs, a description of the error
  	@discussion
  		This opens the file for reading using the standard format (deinterleaved floating point).
  */
  init(forReading fileURL: NSURL) throws

  /*!	@method initForReading:commonFormat:interleaved:error:
  	@abstract Open a file for reading, using a specified processing format.
  	@param fileURL
  		the file to open
  	@param format
  		the processing format to use when reading from the file
  	@param interleaved
  		whether to use an interleaved processing format
  	@param outError
  		on exit, if an error occurs, a description of the error
  */
  init(forReading fileURL: NSURL, commonFormat format: AVAudioCommonFormat, interleaved: Bool) throws

  /*! @method initForWriting:settings:error:
  	@abstract Open a file for writing.
  	@param fileURL
  		the path at which to create the file
  	@param settings
  		the format of the file to create (See `AVAudioRecorder`.)
  	@param outError
  		on exit, if an error occurs, a description of the error
  	@discussion
  		The file type to create is inferred from the file extension. Will overwrite a file at the
  		specified URL if a file exists.
  
  		This opens the file for writing using the standard format (deinterleaved floating point).
  */
  init(forWriting fileURL: NSURL, settings: [String : AnyObject]) throws

  /*! @method initForWriting:settings:commonFormat:interleaved:error:
  	@abstract Open a file for writing.
  	@param fileURL
  		the path at which to create the file
  	@param settings
  		the format of the file to create (See `AVAudioRecorder`.)
  	@param format
  		the processing format to use when writing to the file
  	@param interleaved
  		whether to use an interleaved processing format
  	@param outError
  		on exit, if an error occurs, a description of the error
  	@discussion
  		The file type to create is inferred from the file extension. Will overwrite a file at the
  		specified URL if a file exists.
  */
  init(forWriting fileURL: NSURL, settings: [String : AnyObject], commonFormat format: AVAudioCommonFormat, interleaved: Bool) throws

  /*! @method readIntoBuffer:error:
  	@abstract Read an entire buffer.
  	@param buffer
  		The buffer into which to read from the file. Its format must match the file's
  		processing format.
  	@param outError
  		on exit, if an error occurs, a description of the error
  	@return
  		YES for success.
  	@discussion
  		Reading sequentially from framePosition, attempts to fill the buffer to its capacity. On
  		return, the buffer's length indicates the number of sample frames successfully read.
  */
  func readInto(buffer: AVAudioPCMBuffer) throws

  /*! @method readIntoBuffer:frameCount:error:
  	@abstract Read a portion of a buffer.
  	@param frames
  		The number of frames to read.
  	@param buffer
  		The buffer into which to read from the file. Its format must match the file's
  		processing format.
  	@param outError
  		on exit, if an error occurs, a description of the error
  	@return
  		YES for success.
  	@discussion
  		Like `readIntoBuffer:error:`, but can be used to read fewer frames than buffer.frameCapacity.
  */
  func readInto(buffer: AVAudioPCMBuffer, frameCount frames: AVAudioFrameCount) throws

  /*! @method writeFromBuffer:error:
  	@abstract Write a buffer.
  	@param buffer
  		The buffer from which to write to the file. Its format must match the file's
  		processing format.
  	@param outError
  		on exit, if an error occurs, a description of the error
  	@return
  		YES for success.
  	@discussion
  		Writes sequentially. The buffer's frameLength signifies how much of the buffer is to be written.
  */
  func writeFrom(buffer: AVAudioPCMBuffer) throws

  /*!	@property url
  	@abstract The URL the file is reading or writing.
  */
  var url: NSURL { get }

  /*! @property fileFormat
  	@abstract The on-disk format of the file.
  */
  var fileFormat: AVAudioFormat { get }

  /*! @property processingFormat
  	@abstract The processing format of the file.
  */
  var processingFormat: AVAudioFormat { get }

  /*! @property length
  	@abstract The number of sample frames in the file.
  	@discussion
  		 Note: this can be expensive to compute for the first time.
  */
  var length: AVAudioFramePosition { get }

  /*! @property framePosition
  	@abstract The position in the file at which the next read or write will occur.
  	@discussion
  		Set framePosition to perform a seek before a read or write. A read or write operation advances the frame position by the number of frames read or written.
  */
  var framePosition: AVAudioFramePosition
  init()
}

/*!	
	@enum		AVAudioCommonFormat
	@constant	AVAudioOtherFormat
					A format other than one of the common ones below.
	@constant	AVAudioPCMFormatFloat32
					Native-endian floats (this is the standard format).
	@constant	AVAudioPCMFormatFloat64
					Native-endian doubles.
	@constant	AVAudioPCMFormatInt16
					Signed 16-bit native-endian integers.
	@constant	AVAudioPCMFormatInt32
					Signed 32-bit native-endian integers.
*/
@available(OSX 10.10, *)
enum AVAudioCommonFormat : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case OtherFormat
  case PCMFormatFloat32
  case PCMFormatFloat64
  case PCMFormatInt16
  case PCMFormatInt32
}

/*! @class AVAudioFormat
	@abstract A representation of an audio format.
	@discussion
		AVAudioFormat wraps a Core Audio AudioStreamBasicDescription struct, with convenience
		initializers and accessors for common formats, including Core Audio's standard deinterleaved
		32-bit floating point.
	
		Instances of this class are immutable.
*/
@available(OSX 10.10, *)
class AVAudioFormat : NSObject, NSSecureCoding {

  /*! @method initWithStreamDescription:
  	@abstract Initialize from an AudioStreamBasicDescription.
  	@param asbd
  		the AudioStreamBasicDescription
  	@discussion
  		If the format specifies more than 2 channels, this method fails (returns nil).
  */
  init(streamDescription asbd: UnsafePointer<AudioStreamBasicDescription>)

  /*! @method initWithStreamDescription:channelLayout:
  	@abstract Initialize from an AudioStreamBasicDescription and optional channel layout.
  	@param asbd
  		the AudioStreamBasicDescription
  	@param layout
  		the channel layout. Can be nil only if asbd specifies 1 or 2 channels.
  	@discussion
  		If the format specifies more than 2 channels, this method fails (returns nil) unless layout
  		is non-nil.
  */
  init(streamDescription asbd: UnsafePointer<AudioStreamBasicDescription>, channelLayout layout: AVAudioChannelLayout?)

  /*! @method initStandardFormatWithSampleRate:channels:
  	@abstract Initialize to deinterleaved float with the specified sample rate and channel count.
  	@param sampleRate
  		the sample rate
  	@param channels
  		the channel count
  	@discussion
  		If the format specifies more than 2 channels, this method fails (returns nil).
  */
  init(standardFormatWithSampleRate sampleRate: Double, channels: AVAudioChannelCount)

  /*! @method initStandardFormatWithSampleRate:channelLayout:
  	@abstract Initialize to deinterleaved float with the specified sample rate and channel layout.
  	@param sampleRate
  		the sample rate
  	@param layout
  		the channel layout. must not be nil.
  */
  init(standardFormatWithSampleRate sampleRate: Double, channelLayout layout: AVAudioChannelLayout)

  /*! @method initWithCommonFormat:sampleRate:channels:interleaved:
  	@abstract Initialize to float with the specified sample rate, channel count and interleavedness.
  	@param format
  		the common format type
  	@param sampleRate
  		the sample rate
  	@param channels
  		the channel count
  	@param interleaved
  		true if interleaved
  	@discussion
  		If the format specifies more than 2 channels, this method fails (returns nil).
  */
  init(commonFormat format: AVAudioCommonFormat, sampleRate: Double, channels: AVAudioChannelCount, interleaved: Bool)

  /*! @method initWithCommonFormat:sampleRate:interleaved:channelLayout:
  	@abstract Initialize to float with the specified sample rate, channel layout and interleavedness.
  	@param format
  		the common format type
  	@param sampleRate
  		the sample rate
  	@param interleaved
  		true if interleaved
  	@param layout
  		the channel layout. must not be nil.
  */
  init(commonFormat format: AVAudioCommonFormat, sampleRate: Double, interleaved: Bool, channelLayout layout: AVAudioChannelLayout)

  /*! @method initWithSettings:
  	@abstract Initialize using a settings dictionary.
  	@discussion
  		See AVAudioSettings.h. Note that many settings dictionary elements pertain to encoder
  		settings, not the basic format, and will be ignored.
  */
  init(settings: [String : AnyObject])

  /*!
   	@method initWithCMAudioFormatDescription:
   	@abstract initialize from a CMAudioFormatDescriptionRef.
   	@param formatDescription
   		the CMAudioFormatDescriptionRef.
   	@discussion
   		If formatDescription is invalid, this method fails (returns nil).
   */
  @available(OSX 10.11, *)
  init(cmAudioFormatDescription formatDescription: CMAudioFormatDescription)

  /*!	@method isEqual:
  	@abstract Determine whether another format is functionally equivalent.
  	@param object
  		the format to compare against
  	@discussion
  		For PCM, interleavedness is ignored for mono. Differences in the AudioStreamBasicDescription
  		alignment and packedness are ignored when they are not significant (e.g. with 1 channel, 2
  		bytes per frame and 16 bits per channel, neither alignment, the format is implicitly packed
  		and can be interpreted as either high- or low-aligned.)
  		For AVAudioChannelLayout, a layout with standard mono/stereo tag is considered to be 
  		equivalent to a nil layout. Otherwise, the layouts are compared for equality.
  */
  func isEqual(object: AnyObject) -> Bool

  /*!	@property standard
  	@abstract Describes whether the format is deinterleaved native-endian float.
  */
  var isStandard: Bool { get }

  /*!	@property commonFormat
  	@abstract An `AVAudioCommonFormat` identifying the format
  */
  var commonFormat: AVAudioCommonFormat { get }

  /*! @property channelCount
  	@abstract The number of channels of audio data.
  */
  var channelCount: AVAudioChannelCount { get }

  /*! @property sampleRate
  	@abstract A sampling rate in Hertz.
  */
  var sampleRate: Double { get }

  /*!	@property interleaved
  	@abstract Describes whether the samples are interleaved.
  	@discussion
  		For non-PCM formats, the value is undefined.
  */
  var isInterleaved: Bool { get }

  /*!	@property streamDescription
  	@abstract Returns the AudioStreamBasicDescription, for use with lower-level audio API's.
  */
  var streamDescription: UnsafePointer<AudioStreamBasicDescription> { get }

  /*!	@property channelLayout
  	@abstract The underlying AVAudioChannelLayout, if any.
  	@discussion
  		Only formats with more than 2 channels are required to have channel layouts.
  */
  var channelLayout: AVAudioChannelLayout? { get }

  /*!	@property settings
  	@abstract Returns the format represented as a dictionary with keys from AVAudioSettings.h.
  */
  var settings: [String : AnyObject] { get }

  /*!
  	 @property formatDescription
  	 @abstract Converts to a CMAudioFormatDescriptionRef, for use with Core Media API's.
   */
  @available(OSX 10.11, *)
  var formatDescription: CMAudioFormatDescription { get }
  init()
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*!	@class AVAudioIONode
	@abstract Base class for a node that connects to the system's audio input or output.
	@discussion
		On OS X, AVAudioInputNode and AVAudioOutputNode communicate with the system's default
		input and output devices. On iOS, they communicate with the devices appropriate to
		the app's AVAudioSession category and other configuration, also considering the user's
		actions such as connecting/disconnecting external devices.
*/
@available(OSX 10.10, *)
class AVAudioIONode : AVAudioNode {

  /*!	@property presentationLatency
  	@abstract The presentation, or hardware, latency.
  	@discussion
  		This corresponds to kAudioDevicePropertyLatency and kAudioStreamPropertyLatency.
  		See <CoreAudio/AudioHardwareBase.h>.
  */
  var presentationLatency: NSTimeInterval { get }

  /*!	@property audioUnit
  	@abstract The node's underlying AudioUnit, if any.
  	@discussion
  		This is only necessary for certain advanced usages.
  */
  var audioUnit: AudioUnit { get }
  init()
}

/*! @class AVAudioInputNode
	@abstract A node that connects to the system's audio input.
	@discussion
		This node has one element. The format of the input scope reflects the audio hardware sample
		rate and channel count. The format of the output scope is initially the same as that of the
		input, but you may set it to a different format, in which case the node will convert.
*/
@available(OSX 10.10, *)
class AVAudioInputNode : AVAudioIONode, AVAudioMixing {
  init()

  /*! @method destinationForMixer:bus:
  	@abstract Returns the AVAudioMixingDestination object corresponding to specified mixer node and
  		its input bus
  	@discussion
  		When a source node is connected to multiple mixers downstream, setting AVAudioMixing 
  		properties directly on the source node will apply the change to all the mixers downstream. 
  		If you want to set/get properties on a specific mixer, use this method to get the 
  		corresponding AVAudioMixingDestination and set/get properties on it. 
   
  		Note:
  		- Properties set on individual AVAudioMixingDestination instances will not reflect at the
  			source node level.
  
  		- AVAudioMixingDestination reference returned by this method could become invalid when
  			there is any disconnection between the source and the mixer node. Hence this reference
  			should not be retained and should be fetched every time you want to set/get properties 
  			on a specific mixer.
   
  		If the source node is not connected to the specified mixer/input bus, this method
  		returns nil.
  		Calling this on an AVAudioMixingDestination instance returns self if the specified
  		mixer/input bus match its connection point, otherwise returns nil.
  */
  @available(OSX 10.11, *)
  func destinationForMixer(mixer: AVAudioNode, bus: AVAudioNodeBus) -> AVAudioMixingDestination?

  /*! @property volume
      @abstract Set a bus's input volume
      @discussion
          Range:      0.0 -> 1.0
          Default:    1.0
          Mixers:     AVAudioMixerNode, AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var volume: Float

  /*! @property pan
      @abstract Set a bus's stereo pan
      @discussion
          Range:      -1.0 -> 1.0
          Default:    0.0
          Mixer:      AVAudioMixerNode
  */
  @available(OSX 10.10, *)
  var pan: Float

  /*! @property renderingAlgorithm
      @abstract Type of rendering algorithm used
      @discussion
          Depending on the current output format of the AVAudioEnvironmentNode, only a subset of the 
          rendering algorithms may be supported. An array of valid rendering algorithms can be 
          retrieved by calling applicableRenderingAlgorithms on AVAudioEnvironmentNode.
   
          Default:    AVAudio3DMixingRenderingAlgorithmEqualPowerPanning
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var renderingAlgorithm: AVAudio3DMixingRenderingAlgorithm

  /*! @property rate
      @abstract Changes the playback rate of the input signal
      @discussion
          A value of 2.0 results in the output audio playing one octave higher.
          A value of 0.5, results in the output audio playing one octave lower.
       
          Range:      0.5 -> 2.0
          Default:    1.0
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var rate: Float

  /*! @property reverbBlend
      @abstract Controls the blend of dry and reverb processed audio
      @discussion
          This property controls the amount of the source's audio that will be processed by the reverb 
          in AVAudioEnvironmentNode. A value of 0.5 will result in an equal blend of dry and processed 
          (wet) audio.
   
          Range:      0.0 (completely dry) -> 1.0 (completely wet)
          Default:    0.0
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var reverbBlend: Float

  /*! @property obstruction
      @abstract Simulates filtering of the direct path of sound due to an obstacle
      @discussion
          Only the direct path of sound between the source and listener is blocked.
   
          Range:      -100.0 -> 0.0 dB
          Default:    0.0
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var obstruction: Float

  /*! @property occlusion
      @abstract Simulates filtering of the direct and reverb paths of sound due to an obstacle
      @discussion
          Both the direct and reverb paths of sound between the source and listener are blocked.
   
          Range:      -100.0 -> 0.0 dB
          Default:    0.0
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var occlusion: Float

  /*! @property position
      @abstract The location of the source in the 3D environment
      @discussion
          The coordinates are specified in meters.
   
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var position: AVAudio3DPoint
}

/*! @class AVAudioOutputNode
	@abstract A node that connects to the system's audio input.
	@discussion
		This node has one element. The format of the output scope reflects the audio hardware sample
		rate and channel count. The format of the input scope is initially the same as that of the
		output, but you may set it to a different format, in which case the node will convert.
*/
@available(OSX 10.10, *)
class AVAudioOutputNode : AVAudioIONode {
  init()
}
@available(OSX 10.7, *)
class AVAudioMix : NSObject, NSCopying, NSMutableCopying {
  var inputParameters: [AVAudioMixInputParameters] { get }
  init()
  @available(OSX 10.7, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.7, *)
class AVMutableAudioMix : AVAudioMix {

  /*!
   @property		inputParameters
   @abstract		Indicates parameters for inputs to the mix; an NSArray of instances of AVAudioMixInputParameters.
   @discussion	Note that an instance of AVAudioMixInputParameters is not required for each audio track that contributes to the mix; audio for those without associated AVAudioMixInputParameters will be included in the mix, processed according to default behavior.
  */
  var inputParameters: [AVAudioMixInputParameters]
  init()
}
@available(OSX 10.7, *)
class AVAudioMixInputParameters : NSObject, NSCopying, NSMutableCopying {

  /*!
   @property		trackID
   @abstract		Indicates the trackID of the audio track to which the parameters should be applied.
  */
  var trackID: CMPersistentTrackID { get }

  /*!
   @property		audioTimePitchAlgorithm
   @abstract		Indicates the processing algorithm used to manage audio pitch at varying rates and for scaled audio edits.
   @discussion
     Constants for various time pitch algorithms, e.g. AVAudioTimePitchSpectral, are defined in AVAudioProcessingSettings.h.
     Can be nil, in which case the audioTimePitchAlgorithm set on the AVPlayerItem, AVAssetExportSession, or AVAssetReaderAudioMixOutput on which the AVAudioMix is set will be used for the associated track.
  */
  @available(OSX 10.10, *)
  var audioTimePitchAlgorithm: String? { get }

  /*!
   @property		audioTapProcessor
   @abstract		Indicates the audio processing tap that will be used for the audio track.
  */
  @available(OSX 10.9, *)
  var audioTapProcessor: MTAudioProcessingTap? { get }
  func getVolumeRampFor(time: CMTime, startVolume: UnsafeMutablePointer<Float>, endVolume: UnsafeMutablePointer<Float>, timeRange: UnsafeMutablePointer<CMTimeRange>) -> Bool
  init()
  @available(OSX 10.7, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.7, *)
class AVMutableAudioMixInputParameters : AVAudioMixInputParameters {
  convenience init(track: AVAssetTrack?)

  /*!
   @property		trackID
   @abstract		Indicates the trackID of the audio track to which the parameters should be applied.
  */
  var trackID: CMPersistentTrackID

  /*!
   @property		audioTimePitchAlgorithm
   @abstract		Indicates the processing algorithm used to manage audio pitch at varying rates and for scaled audio edits.
   @discussion
     Constants for various time pitch algorithms, e.g. AVAudioTimePitchSpectral, are defined in AVAudioProcessingSettings.h.
     Can be nil, in which case the audioTimePitchAlgorithm set on the AVPlayerItem, AVAssetExportSession, or AVAssetReaderAudioMixOutput on which the AVAudioMix is set will be used for the associated track.
  */
  @available(OSX 10.10, *)
  var audioTimePitchAlgorithm: String?

  /*!
   @property		audioTapProcessor
   @abstract		Indicates the audio processing tap that will be used for the audio track.
  */
  @available(OSX 10.9, *)
  var audioTapProcessor: MTAudioProcessingTap?
  func setVolumeRampFromStartVolume(startVolume: Float, toEndVolume endVolume: Float, timeRange: CMTimeRange)
  func setVolume(volume: Float, at time: CMTime)
  init()
}

/*! @class AVAudioMixerNode
	@abstract A node that mixes its inputs to a single output.
	@discussion
		Mixers may have any number of inputs.
	
		The mixer accepts input at any sample rate and efficiently combines sample rate
		conversions. It also accepts any channel count and will correctly upmix or downmix
		to the output channel count.
*/
@available(OSX 10.10, *)
class AVAudioMixerNode : AVAudioNode, AVAudioMixing {

  /*! @property outputVolume
  	@abstract The mixer's output volume.
  	@discussion
  		This accesses the mixer's output volume (0.0-1.0, inclusive).
  */
  var outputVolume: Float

  /*! @property nextAvailableInputBus
  	@abstract Find an unused input bus.
  	@discussion
  		This will find and return the first input bus to which no other node is connected.
  */
  var nextAvailableInputBus: AVAudioNodeBus { get }
  init()

  /*! @method destinationForMixer:bus:
  	@abstract Returns the AVAudioMixingDestination object corresponding to specified mixer node and
  		its input bus
  	@discussion
  		When a source node is connected to multiple mixers downstream, setting AVAudioMixing 
  		properties directly on the source node will apply the change to all the mixers downstream. 
  		If you want to set/get properties on a specific mixer, use this method to get the 
  		corresponding AVAudioMixingDestination and set/get properties on it. 
   
  		Note:
  		- Properties set on individual AVAudioMixingDestination instances will not reflect at the
  			source node level.
  
  		- AVAudioMixingDestination reference returned by this method could become invalid when
  			there is any disconnection between the source and the mixer node. Hence this reference
  			should not be retained and should be fetched every time you want to set/get properties 
  			on a specific mixer.
   
  		If the source node is not connected to the specified mixer/input bus, this method
  		returns nil.
  		Calling this on an AVAudioMixingDestination instance returns self if the specified
  		mixer/input bus match its connection point, otherwise returns nil.
  */
  @available(OSX 10.11, *)
  func destinationForMixer(mixer: AVAudioNode, bus: AVAudioNodeBus) -> AVAudioMixingDestination?

  /*! @property volume
      @abstract Set a bus's input volume
      @discussion
          Range:      0.0 -> 1.0
          Default:    1.0
          Mixers:     AVAudioMixerNode, AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var volume: Float

  /*! @property pan
      @abstract Set a bus's stereo pan
      @discussion
          Range:      -1.0 -> 1.0
          Default:    0.0
          Mixer:      AVAudioMixerNode
  */
  @available(OSX 10.10, *)
  var pan: Float

  /*! @property renderingAlgorithm
      @abstract Type of rendering algorithm used
      @discussion
          Depending on the current output format of the AVAudioEnvironmentNode, only a subset of the 
          rendering algorithms may be supported. An array of valid rendering algorithms can be 
          retrieved by calling applicableRenderingAlgorithms on AVAudioEnvironmentNode.
   
          Default:    AVAudio3DMixingRenderingAlgorithmEqualPowerPanning
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var renderingAlgorithm: AVAudio3DMixingRenderingAlgorithm

  /*! @property rate
      @abstract Changes the playback rate of the input signal
      @discussion
          A value of 2.0 results in the output audio playing one octave higher.
          A value of 0.5, results in the output audio playing one octave lower.
       
          Range:      0.5 -> 2.0
          Default:    1.0
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var rate: Float

  /*! @property reverbBlend
      @abstract Controls the blend of dry and reverb processed audio
      @discussion
          This property controls the amount of the source's audio that will be processed by the reverb 
          in AVAudioEnvironmentNode. A value of 0.5 will result in an equal blend of dry and processed 
          (wet) audio.
   
          Range:      0.0 (completely dry) -> 1.0 (completely wet)
          Default:    0.0
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var reverbBlend: Float

  /*! @property obstruction
      @abstract Simulates filtering of the direct path of sound due to an obstacle
      @discussion
          Only the direct path of sound between the source and listener is blocked.
   
          Range:      -100.0 -> 0.0 dB
          Default:    0.0
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var obstruction: Float

  /*! @property occlusion
      @abstract Simulates filtering of the direct and reverb paths of sound due to an obstacle
      @discussion
          Both the direct and reverb paths of sound between the source and listener are blocked.
   
          Range:      -100.0 -> 0.0 dB
          Default:    0.0
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var occlusion: Float

  /*! @property position
      @abstract The location of the source in the 3D environment
      @discussion
          The coordinates are specified in meters.
   
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var position: AVAudio3DPoint
}

/*! @protocol   AVAudioMixing
    @abstract   Protocol that defines properties applicable to the input bus of a mixer
                node
    @discussion
        Nodes that conforms to the AVAudioMixing protocol can talk to a mixer node downstream,
        specifically of type AVAudioMixerNode or AVAudioEnvironmentNode. The properties defined 
        by this protocol apply to the respective input bus of the mixer node that the source node is 
        connected to. Note that effect nodes cannot talk to their downstream mixer.

		Properties can be set either on the source node, or directly on individual mixer connections.
		Source node properties are:
		- applied to all existing mixer connections when set
		- applied to new mixer connections
		- preserved upon disconnection from mixers
		- not affected by connections/disconnections to/from mixers
		- not affected by any direct changes to properties on individual mixer connections

		Individual mixer connection properties, when set, will override any values previously derived 
		from the corresponding source node properties. However, if a source node property is 
		subsequently set, it will override the corresponding property value of all individual mixer 
		connections.
		Unlike source node properties, individual mixer connection properties are not preserved upon
		disconnection (see `AVAudioMixing(destinationForMixer:bus:)` and `AVAudioMixingDestination`).

		Source nodes that are connected to a mixer downstream can be disconnected from
		one mixer and connected to another mixer with source node's mixing settings intact.
		For example, an AVAudioPlayerNode that is being used in a gaming scenario can set up its 
		3D mixing settings and then move from one environment to another.
*/
@available(OSX 10.10, *)
protocol AVAudioMixing : AVAudioStereoMixing, AVAudio3DMixing {

  /*! @method destinationForMixer:bus:
  	@abstract Returns the AVAudioMixingDestination object corresponding to specified mixer node and
  		its input bus
  	@discussion
  		When a source node is connected to multiple mixers downstream, setting AVAudioMixing 
  		properties directly on the source node will apply the change to all the mixers downstream. 
  		If you want to set/get properties on a specific mixer, use this method to get the 
  		corresponding AVAudioMixingDestination and set/get properties on it. 
   
  		Note:
  		- Properties set on individual AVAudioMixingDestination instances will not reflect at the
  			source node level.
  
  		- AVAudioMixingDestination reference returned by this method could become invalid when
  			there is any disconnection between the source and the mixer node. Hence this reference
  			should not be retained and should be fetched every time you want to set/get properties 
  			on a specific mixer.
   
  		If the source node is not connected to the specified mixer/input bus, this method
  		returns nil.
  		Calling this on an AVAudioMixingDestination instance returns self if the specified
  		mixer/input bus match its connection point, otherwise returns nil.
  */
  @available(OSX 10.11, *)
  func destinationForMixer(mixer: AVAudioNode, bus: AVAudioNodeBus) -> AVAudioMixingDestination?

  /*! @property volume
      @abstract Set a bus's input volume
      @discussion
          Range:      0.0 -> 1.0
          Default:    1.0
          Mixers:     AVAudioMixerNode, AVAudioEnvironmentNode
  */
  var volume: Float { get set }
}

/*! @protocol   AVAudioStereoMixing
    @abstract   Protocol that defines stereo mixing properties
*/
@available(OSX 10.10, *)
protocol AVAudioStereoMixing : NSObjectProtocol {

  /*! @property pan
      @abstract Set a bus's stereo pan
      @discussion
          Range:      -1.0 -> 1.0
          Default:    0.0
          Mixer:      AVAudioMixerNode
  */
  var pan: Float { get set }
}

/*! @enum AVAudio3DMixingRenderingAlgorithm
    @abstract   Types of rendering algorithms available per input bus of the environment node
    @discussion
        The rendering algorithms differ in terms of quality and cpu cost. 
        AVAudio3DMixingRenderingAlgorithmEqualPowerPanning is the simplest panning algorithm and also 
        the least expensive computationally.
 
        With the exception of AVAudio3DMixingRenderingAlgorithmSoundField, while the mixer is
        rendering to multi channel hardware, audio data will only be rendered to channels 1 & 2.
 
        AVAudio3DMixingRenderingAlgorithmEqualPowerPanning
            EqualPowerPanning merely pans the data of the mixer bus into a stereo field. This 
            algorithm is analogous to the pan knob found on a mixing board channel strip. 
 
        AVAudio3DMixingRenderingAlgorithmSphericalHead
            SphericalHead is designed to emulate 3 dimensional space in headphones by simulating 
            inter-aural time delays and other spatial cues. SphericalHead is slightly less CPU 
            intensive than the HRTF algorithm.
 
        AVAudio3DMixingRenderingAlgorithmHRTF
            HRTF (Head Related Transfer Function) is a high quality algorithm using filtering to 
            emulate 3 dimensional space in headphones. HRTF is a cpu intensive algorithm.
 
        AVAudio3DMixingRenderingAlgorithmSoundField
            SoundField is designed for rendering to multi channel hardware. The mixer takes data 
            being rendered with SoundField and distributes it amongst all the output channels with 
            a weighting toward the location in which the sound derives. It is very effective for 
            ambient sounds, which may derive from a specific location in space, yet should be heard 
            through the listener's entire space.
 
        AVAudio3DMixingRenderingAlgorithmStereoPassThrough
            StereoPassThrough should be used when no localization is desired for the source data. 
            Setting this algorithm tells the mixer to take mono/stereo input and pass it directly to 
            channels 1 & 2 without localization.
 
*/
@available(OSX 10.10, *)
enum AVAudio3DMixingRenderingAlgorithm : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case EqualPowerPanning
  case SphericalHead
  case HRTF
  case SoundField
  case StereoPassThrough
}

/*! @protocol   AVAudio3DMixing
    @abstract   Protocol that defines 3D mixing properties
*/
protocol AVAudio3DMixing : NSObjectProtocol {

  /*! @property renderingAlgorithm
      @abstract Type of rendering algorithm used
      @discussion
          Depending on the current output format of the AVAudioEnvironmentNode, only a subset of the 
          rendering algorithms may be supported. An array of valid rendering algorithms can be 
          retrieved by calling applicableRenderingAlgorithms on AVAudioEnvironmentNode.
   
          Default:    AVAudio3DMixingRenderingAlgorithmEqualPowerPanning
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var renderingAlgorithm: AVAudio3DMixingRenderingAlgorithm { get set }

  /*! @property rate
      @abstract Changes the playback rate of the input signal
      @discussion
          A value of 2.0 results in the output audio playing one octave higher.
          A value of 0.5, results in the output audio playing one octave lower.
       
          Range:      0.5 -> 2.0
          Default:    1.0
          Mixer:      AVAudioEnvironmentNode
  */
  var rate: Float { get set }

  /*! @property reverbBlend
      @abstract Controls the blend of dry and reverb processed audio
      @discussion
          This property controls the amount of the source's audio that will be processed by the reverb 
          in AVAudioEnvironmentNode. A value of 0.5 will result in an equal blend of dry and processed 
          (wet) audio.
   
          Range:      0.0 (completely dry) -> 1.0 (completely wet)
          Default:    0.0
          Mixer:      AVAudioEnvironmentNode
  */
  var reverbBlend: Float { get set }

  /*! @property obstruction
      @abstract Simulates filtering of the direct path of sound due to an obstacle
      @discussion
          Only the direct path of sound between the source and listener is blocked.
   
          Range:      -100.0 -> 0.0 dB
          Default:    0.0
          Mixer:      AVAudioEnvironmentNode
  */
  var obstruction: Float { get set }

  /*! @property occlusion
      @abstract Simulates filtering of the direct and reverb paths of sound due to an obstacle
      @discussion
          Both the direct and reverb paths of sound between the source and listener are blocked.
   
          Range:      -100.0 -> 0.0 dB
          Default:    0.0
          Mixer:      AVAudioEnvironmentNode
  */
  var occlusion: Float { get set }

  /*! @property position
      @abstract The location of the source in the 3D environment
      @discussion
          The coordinates are specified in meters.
   
          Mixer:      AVAudioEnvironmentNode
  */
  var position: AVAudio3DPoint { get set }
}

/*! @class AVAudioMixingDestination
	@abstract An object representing a connection to a mixer node from a node that
		conforms to AVAudioMixing protocol
	@discussion
		A standalone instance of AVAudioMixingDestination cannot be created.
		Only an instance vended by a source node (e.g. AVAudioPlayerNode) can be used
		(see `AVAudioMixing`).
*/
@available(OSX 10.11, *)
class AVAudioMixingDestination : NSObject, AVAudioMixing {

  /*! @property connectionPoint
  	@abstract Returns the underlying mixer connection point
  */
  var connectionPoint: AVAudioConnectionPoint { get }
  init()

  /*! @method destinationForMixer:bus:
  	@abstract Returns the AVAudioMixingDestination object corresponding to specified mixer node and
  		its input bus
  	@discussion
  		When a source node is connected to multiple mixers downstream, setting AVAudioMixing 
  		properties directly on the source node will apply the change to all the mixers downstream. 
  		If you want to set/get properties on a specific mixer, use this method to get the 
  		corresponding AVAudioMixingDestination and set/get properties on it. 
   
  		Note:
  		- Properties set on individual AVAudioMixingDestination instances will not reflect at the
  			source node level.
  
  		- AVAudioMixingDestination reference returned by this method could become invalid when
  			there is any disconnection between the source and the mixer node. Hence this reference
  			should not be retained and should be fetched every time you want to set/get properties 
  			on a specific mixer.
   
  		If the source node is not connected to the specified mixer/input bus, this method
  		returns nil.
  		Calling this on an AVAudioMixingDestination instance returns self if the specified
  		mixer/input bus match its connection point, otherwise returns nil.
  */
  @available(OSX 10.11, *)
  func destinationForMixer(mixer: AVAudioNode, bus: AVAudioNodeBus) -> AVAudioMixingDestination?

  /*! @property volume
      @abstract Set a bus's input volume
      @discussion
          Range:      0.0 -> 1.0
          Default:    1.0
          Mixers:     AVAudioMixerNode, AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var volume: Float

  /*! @property pan
      @abstract Set a bus's stereo pan
      @discussion
          Range:      -1.0 -> 1.0
          Default:    0.0
          Mixer:      AVAudioMixerNode
  */
  @available(OSX 10.10, *)
  var pan: Float

  /*! @property renderingAlgorithm
      @abstract Type of rendering algorithm used
      @discussion
          Depending on the current output format of the AVAudioEnvironmentNode, only a subset of the 
          rendering algorithms may be supported. An array of valid rendering algorithms can be 
          retrieved by calling applicableRenderingAlgorithms on AVAudioEnvironmentNode.
   
          Default:    AVAudio3DMixingRenderingAlgorithmEqualPowerPanning
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.11, *)
  var renderingAlgorithm: AVAudio3DMixingRenderingAlgorithm

  /*! @property rate
      @abstract Changes the playback rate of the input signal
      @discussion
          A value of 2.0 results in the output audio playing one octave higher.
          A value of 0.5, results in the output audio playing one octave lower.
       
          Range:      0.5 -> 2.0
          Default:    1.0
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.11, *)
  var rate: Float

  /*! @property reverbBlend
      @abstract Controls the blend of dry and reverb processed audio
      @discussion
          This property controls the amount of the source's audio that will be processed by the reverb 
          in AVAudioEnvironmentNode. A value of 0.5 will result in an equal blend of dry and processed 
          (wet) audio.
   
          Range:      0.0 (completely dry) -> 1.0 (completely wet)
          Default:    0.0
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.11, *)
  var reverbBlend: Float

  /*! @property obstruction
      @abstract Simulates filtering of the direct path of sound due to an obstacle
      @discussion
          Only the direct path of sound between the source and listener is blocked.
   
          Range:      -100.0 -> 0.0 dB
          Default:    0.0
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.11, *)
  var obstruction: Float

  /*! @property occlusion
      @abstract Simulates filtering of the direct and reverb paths of sound due to an obstacle
      @discussion
          Both the direct and reverb paths of sound between the source and listener are blocked.
   
          Range:      -100.0 -> 0.0 dB
          Default:    0.0
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.11, *)
  var occlusion: Float

  /*! @property position
      @abstract The location of the source in the 3D environment
      @discussion
          The coordinates are specified in meters.
   
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.11, *)
  var position: AVAudio3DPoint
}

/*!	@typedef AVAudioNodeTapBlock
	@abstract A block that receives copies of the output of an AVAudioNode.
	@param buffer
		a buffer of audio captured from the output of an AVAudioNode
	@param when
		the time at which the buffer was captured
	@discussion
		CAUTION: This callback may be invoked on a thread other than the main thread.
*/
typealias AVAudioNodeTapBlock = (AVAudioPCMBuffer, AVAudioTime) -> Void

/*!
	@class AVAudioNode
	@abstract Base class for an audio generation, processing, or I/O block.
	@discussion
		`AVAudioEngine` objects contain instances of various AVAudioNode subclasses. This
		base class provides certain common functionality.
		
		Nodes have input and output busses, which can be thought of as connection points.
		For example, an effect typically has one input bus and one output bus. A mixer
		typically has multiple input busses and one output bus.
		
		Busses have formats, expressed in terms of sample rate and channel count. When making
		connections between nodes, often the format must match exactly. There are exceptions
		(e.g. `AVAudioMixerNode` and `AVAudioOutputNode`).

		Nodes do not currently provide useful functionality until attached to an engine.
*/
@available(OSX 10.10, *)
class AVAudioNode : NSObject {

  /*! @method reset
  	@abstract Clear a unit's previous processing state.
  */
  func reset()

  /*! @method inputFormatForBus:
  	@abstract Obtain an input bus's format.
  */
  func inputFormatForBus(bus: AVAudioNodeBus) -> AVAudioFormat

  /*! @method outputFormatForBus:
  	@abstract Obtain an output bus's format.
  */
  func outputFormatForBus(bus: AVAudioNodeBus) -> AVAudioFormat

  /*!	@method nameForInputBus:
  	@abstract Return the name of an input bus.
  */
  func nameForInputBus(bus: AVAudioNodeBus) -> String

  /*!	@method nameForOutputBus:
  	@abstract Return the name of an output bus.
  */
  func nameForOutputBus(bus: AVAudioNodeBus) -> String

  /*! @method installTapOnBus:bufferSize:format:block:
  	@abstract Create a "tap" to record/monitor/observe the output of the node.
  	@param bus
  		the node output bus to which to attach the tap
  	@param bufferSize
  		the requested size of the incoming buffers. The implementation may choose another size.
  	@param format
  		If non-nil, attempts to apply this as the format of the specified output bus. This should
  		only be done when attaching to an output bus which is not connected to another node; an
  		error will result otherwise.
  		The tap and connection formats (if non-nil) on the specified bus should be identical. 
  		Otherwise, the latter operation will override any previously set format.
  		Note that for AVAudioOutputNode, tap format must be specified as nil.
  	@param tapBlock
  		a block to be called with audio buffers
  	
  	@discussion
  		Only one tap may be installed on any bus. Taps may be safely installed and removed while
  		the engine is running.
  		
  		E.g. to capture audio from input node:
  <pre>
  AVAudioEngine *engine = [[AVAudioEngine alloc] init];
  AVAudioInputNode *input = [engine inputNode];
  AVAudioFormat *format = [input outputFormatForBus: 0];
  [input installTapOnBus: 0 bufferSize: 8192 format: format block: ^(AVAudioPCMBuffer *buf, AVAudioTime *when) {
  // ‘buf' contains audio captured from input node at time 'when'
  }];
  ....
  // start engine
  </pre>
  */
  func installTapOnBus(bus: AVAudioNodeBus, bufferSize: AVAudioFrameCount, format: AVAudioFormat?, block tapBlock: AVAudioNodeTapBlock)

  /*!	@method removeTapOnBus:
  	@abstract Destroy a tap.
  	@param bus
  		the node output bus whose tap is to be destroyed
  	@return
  		YES for success.
  */
  func removeTapOnBus(bus: AVAudioNodeBus)

  /*!	@property engine
  	@abstract The engine to which the node is attached (or nil).
  */
  var engine: AVAudioEngine? { get }

  /*! @property numberOfInputs
  	@abstract The node's number of input busses.
  */
  var numberOfInputs: Int { get }

  /*! @property numberOfOutputs
  	@abstract The node's number of output busses.
  */
  var numberOfOutputs: Int { get }

  /*! @property lastRenderTime
  	@abstract Obtain the time for which the node most recently rendered.
  	@discussion
  		Will return nil if the engine is not running or if the node is not connected to an input or
  		output node.
  */
  var lastRenderTime: AVAudioTime? { get }
  init()
}
@available(OSX 10.7, *)
class AVAudioPlayer : NSObject {
  init(contentsOf url: NSURL) throws
  init(data: NSData) throws
  @available(OSX 10.9, *)
  init(contentsOf url: NSURL, fileTypeHint utiString: String?) throws
  @available(OSX 10.9, *)
  init(data: NSData, fileTypeHint utiString: String?) throws
  func prepareToPlay() -> Bool
  func play() -> Bool
  @available(OSX 10.7, *)
  func playAtTime(time: NSTimeInterval) -> Bool
  func pause()
  func stop()
  var isPlaying: Bool { get }
  var numberOfChannels: Int { get }
  var duration: NSTimeInterval { get }
  unowned(unsafe) var delegate: @sil_unmanaged AVAudioPlayerDelegate?
  var url: NSURL? { get }
  var data: NSData? { get }
  @available(OSX 10.7, *)
  var pan: Float
  var volume: Float
  @available(OSX 10.8, *)
  var isEnableRate: Bool
  @available(OSX 10.8, *)
  var rate: Float
  var currentTime: NSTimeInterval
  @available(OSX 10.7, *)
  var deviceCurrentTime: NSTimeInterval { get }
  var numberOfLoops: Int
  @available(OSX 10.7, *)
  var settings: [String : AnyObject] { get }
  var isMeteringEnabled: Bool
  func updateMeters()
  func peakPowerForChannel(channelNumber: Int) -> Float
  func averagePowerForChannel(channelNumber: Int) -> Float
  init()
}
protocol AVAudioPlayerDelegate : NSObjectProtocol {
  @available(OSX 10.7, *)
  optional func audioPlayerDidFinishPlaying(player: AVAudioPlayer, successfully flag: Bool)
  @available(OSX 10.7, *)
  optional func audioPlayerDecodeErrorDidOccur(player: AVAudioPlayer, error: NSError?)
}

/*!
	@enum AVAudioPlayerNodeBufferOptions
	@abstract	Options controlling buffer scheduling.
	
	@constant	AVAudioPlayerNodeBufferLoops
					The buffer loops indefinitely.
	@constant	AVAudioPlayerNodeBufferInterrupts
					The buffer interrupts any buffer already playing.
	@constant	AVAudioPlayerNodeBufferInterruptsAtLoop
					The buffer interrupts any buffer already playing, at its loop point.
*/
@available(OSX 10.10, *)
struct AVAudioPlayerNodeBufferOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Loops: AVAudioPlayerNodeBufferOptions { get }
  static var Interrupts: AVAudioPlayerNodeBufferOptions { get }
  static var InterruptsAtLoop: AVAudioPlayerNodeBufferOptions { get }
}

/*!
	@class AVAudioPlayerNode
	@abstract Play buffers or segments of audio files.
	@discussion
		AVAudioPlayerNode supports scheduling the playback of `AVAudioBuffer` instances,
		or segments of audio files opened via `AVAudioFile`. Buffers and segments may be
		scheduled at specific points in time, or to play immediately following preceding segments.
	
		FORMATS
		
		Normally, you will want to configure the node's output format with the same number of
		channels as are in the files and buffers to be played. Otherwise, channels will be dropped
		or added as required. It is usually better to use an `AVAudioMixerNode` to
		do this.
	
		Similarly, when playing file segments, the node will sample rate convert if necessary, but
		it is often preferable to configure the node's output sample rate to match that of the file(s)
		and use a mixer to perform the rate conversion.
		
		When playing buffers, there is an implicit assumption that the buffers are at the same
		sample rate as the node's output format.
		
		TIMELINES
	
		The usual `AVAudioNode` sample times (as observed by `lastRenderTime`)
		have an arbitrary zero point. AVAudioPlayerNode superimposes a second "player timeline" on
		top of this, to reflect when the player was started, and intervals during which it was
		paused. The methods `nodeTimeForPlayerTime:` and `playerTimeForNodeTime:`
		convert between the two.

		This class' `stop` method unschedules all previously scheduled buffers and
		file segments, and returns the player timeline to sample time 0.

		TIMESTAMPS
		
		The "schedule" methods all take an `AVAudioTime` "when" parameter. This is
		interpreted as follows:
		
		1. nil:
			- if there have been previous commands, the new one is played immediately following the
				last one.
			- otherwise, if the node is playing, the event is played in the very near future.
			- otherwise, the command is played at sample time 0.
		2. sample time:
			- relative to the node's start time (which begins at 0 when the node is started).
		3. host time:
			- ignored unless sample time not valid.
		
		ERRORS
		
		The "schedule" methods can fail if:
		
		1. a buffer's channel count does not match that of the node's output format.
		2. a file can't be accessed.
		3. an AVAudioTime specifies neither a valid sample time or host time.
		4. a segment's start frame or frame count is negative.
*/
@available(OSX 10.10, *)
class AVAudioPlayerNode : AVAudioNode, AVAudioMixing {

  /*! @method scheduleBuffer:completionHandler:
  	@abstract Schedule playing samples from an AVAudioBuffer.
  	@param buffer
  		the buffer to play
  	@param completionHandler
  		called after the buffer has completely played or the player is stopped. may be nil.
  	@discussion
  		Schedules the buffer to be played following any previously scheduled commands.
  */
  func scheduleBuffer(buffer: AVAudioPCMBuffer, completionHandler: AVAudioNodeCompletionHandler? = nil)

  /*! @method scheduleBuffer:atTime:options:completionHandler:
  	@abstract Schedule playing samples from an AVAudioBuffer.
  	@param buffer
  		the buffer to play
  	@param when 
  		the time at which to play the buffer. see the discussion of timestamps, above.
  	@param options
  		options for looping, interrupting other buffers, etc.
  	@param completionHandler
  		called after the buffer has completely played or the player is stopped. may be nil.
  	@discussion
  */
  func scheduleBuffer(buffer: AVAudioPCMBuffer, at when: AVAudioTime?, options: AVAudioPlayerNodeBufferOptions = [], completionHandler: AVAudioNodeCompletionHandler? = nil)

  /*! @method scheduleFile:atTime:completionHandler:
  	@abstract Schedule playing of an entire audio file.
  	@param file
  		the file to play
  	@param when 
  		the time at which to play the file. see the discussion of timestamps, above.
  	@param completionHandler
  		called after the file has completely played or the player is stopped. may be nil.
  */
  func scheduleFile(file: AVAudioFile, at when: AVAudioTime?, completionHandler: AVAudioNodeCompletionHandler? = nil)

  /*! @method scheduleSegment:startingFrame:frameCount:atTime:completionHandler:
  	@abstract Schedule playing a segment of an audio file.
  	@param file
  		the file to play
  	@param startFrame
  		the starting frame position in the stream
  	@param numberFrames
  		the number of frames to play
  	@param when
  		the time at which to play the region. see the discussion of timestamps, above.
  	@param completionHandler
  		called after the segment has completely played or the player is stopped. may be nil.
  */
  func scheduleSegment(file: AVAudioFile, startingFrame startFrame: AVAudioFramePosition, frameCount numberFrames: AVAudioFrameCount, at when: AVAudioTime?, completionHandler: AVAudioNodeCompletionHandler? = nil)

  /*!	@method stop
  	@abstract Clear all of the node's previously scheduled events and stop playback.
  	@discussion
  		All of the node's previously scheduled events are cleared, including any that are in the
  		middle of playing. The node's sample time (and therefore the times to which new events are 
  		to be scheduled) is reset to 0, and will not proceed until the node is started again (via
  		play or playAtTime).
  */
  func stop()

  /*! @method prepareWithFrameCount:
  	@abstract Prepares previously scheduled file regions or buffers for playback.
  	@param frameCount
  		The number of sample frames of data to be prepared before returning.
  	@discussion
  */
  func prepareWithFrameCount(frameCount: AVAudioFrameCount)

  /*!	@method play
  	@abstract Start or resume playback immediately.
  	@discussion
  		equivalent to playAtTime:nil
  */
  func play()

  /*!	@method playAtTime:
  	@abstract Start or resume playback at a specific time.
  	@param when
  		the node time at which to start or resume playback. nil signifies "now".
  	@discussion
  		This node is initially paused. Requests to play buffers or file segments are enqueued, and
  		any necessary decoding begins immediately. Playback does not begin, however, until the player
  		has started playing, via this method.
   
  		E.g. To start a player X seconds in future:
  <pre>
  // start engine and player
  NSError *nsErr = nil;
  [_engine startAndReturnError:&nsErr];
  if (!nsErr) {
  	const float kStartDelayTime = 0.5; // sec
  	AVAudioFormat *outputFormat = [_player outputFormatForBus:0];
  	AVAudioFramePosition startSampleTime = _player.lastRenderTime.sampleTime + kStartDelayTime * outputFormat.sampleRate;
  	AVAudioTime *startTime = [AVAudioTime timeWithSampleTime:startSampleTime atRate:outputFormat.sampleRate];
  	[_player playAtTime:startTime];
  }
  </pre>
  */
  func playAt(when: AVAudioTime?)

  /*! @method pause
  	@abstract Pause playback.
  	@discussion
  		The player's sample time does not advance while the node is paused.
  */
  func pause()

  /*!	@method nodeTimeForPlayerTime:
  	@abstract
  		Convert from player time to node time.
  	@param playerTime
  		a time relative to the player's start time
  	@return
  		a node time
  	@discussion
  		This method and its inverse `playerTimeForNodeTime:` are discussed in the
  		introduction to this class.
  	
  		If the player is not playing when this method is called, nil is returned.
  */
  func nodeTimeForPlayerTime(playerTime: AVAudioTime) -> AVAudioTime?

  /*!	@method playerTimeForNodeTime:
  	@abstract
  		Convert from node time to player time.
  	@param nodeTime
  		a node time
  	@return
  		a time relative to the player's start time
  	@discussion
  		This method and its inverse `nodeTimeForPlayerTime:` are discussed in the
  		introduction to this class.
  	
  		If the player is not playing when this method is called, nil is returned.
  */
  func playerTimeForNodeTime(nodeTime: AVAudioTime) -> AVAudioTime?

  /*!	@property playing
  	@abstract Indicates whether or not the player is playing.
  */
  var isPlaying: Bool { get }
  init()

  /*! @method destinationForMixer:bus:
  	@abstract Returns the AVAudioMixingDestination object corresponding to specified mixer node and
  		its input bus
  	@discussion
  		When a source node is connected to multiple mixers downstream, setting AVAudioMixing 
  		properties directly on the source node will apply the change to all the mixers downstream. 
  		If you want to set/get properties on a specific mixer, use this method to get the 
  		corresponding AVAudioMixingDestination and set/get properties on it. 
   
  		Note:
  		- Properties set on individual AVAudioMixingDestination instances will not reflect at the
  			source node level.
  
  		- AVAudioMixingDestination reference returned by this method could become invalid when
  			there is any disconnection between the source and the mixer node. Hence this reference
  			should not be retained and should be fetched every time you want to set/get properties 
  			on a specific mixer.
   
  		If the source node is not connected to the specified mixer/input bus, this method
  		returns nil.
  		Calling this on an AVAudioMixingDestination instance returns self if the specified
  		mixer/input bus match its connection point, otherwise returns nil.
  */
  @available(OSX 10.11, *)
  func destinationForMixer(mixer: AVAudioNode, bus: AVAudioNodeBus) -> AVAudioMixingDestination?

  /*! @property volume
      @abstract Set a bus's input volume
      @discussion
          Range:      0.0 -> 1.0
          Default:    1.0
          Mixers:     AVAudioMixerNode, AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var volume: Float

  /*! @property pan
      @abstract Set a bus's stereo pan
      @discussion
          Range:      -1.0 -> 1.0
          Default:    0.0
          Mixer:      AVAudioMixerNode
  */
  @available(OSX 10.10, *)
  var pan: Float

  /*! @property renderingAlgorithm
      @abstract Type of rendering algorithm used
      @discussion
          Depending on the current output format of the AVAudioEnvironmentNode, only a subset of the 
          rendering algorithms may be supported. An array of valid rendering algorithms can be 
          retrieved by calling applicableRenderingAlgorithms on AVAudioEnvironmentNode.
   
          Default:    AVAudio3DMixingRenderingAlgorithmEqualPowerPanning
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var renderingAlgorithm: AVAudio3DMixingRenderingAlgorithm

  /*! @property rate
      @abstract Changes the playback rate of the input signal
      @discussion
          A value of 2.0 results in the output audio playing one octave higher.
          A value of 0.5, results in the output audio playing one octave lower.
       
          Range:      0.5 -> 2.0
          Default:    1.0
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var rate: Float

  /*! @property reverbBlend
      @abstract Controls the blend of dry and reverb processed audio
      @discussion
          This property controls the amount of the source's audio that will be processed by the reverb 
          in AVAudioEnvironmentNode. A value of 0.5 will result in an equal blend of dry and processed 
          (wet) audio.
   
          Range:      0.0 (completely dry) -> 1.0 (completely wet)
          Default:    0.0
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var reverbBlend: Float

  /*! @property obstruction
      @abstract Simulates filtering of the direct path of sound due to an obstacle
      @discussion
          Only the direct path of sound between the source and listener is blocked.
   
          Range:      -100.0 -> 0.0 dB
          Default:    0.0
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var obstruction: Float

  /*! @property occlusion
      @abstract Simulates filtering of the direct and reverb paths of sound due to an obstacle
      @discussion
          Both the direct and reverb paths of sound between the source and listener are blocked.
   
          Range:      -100.0 -> 0.0 dB
          Default:    0.0
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var occlusion: Float

  /*! @property position
      @abstract The location of the source in the 3D environment
      @discussion
          The coordinates are specified in meters.
   
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var position: AVAudio3DPoint
}
@available(OSX 10.9, *)
let AVAudioTimePitchAlgorithmTimeDomain: String
@available(OSX 10.9, *)
let AVAudioTimePitchAlgorithmSpectral: String
@available(OSX 10.9, *)
let AVAudioTimePitchAlgorithmVarispeed: String
@available(OSX 10.7, *)
class AVAudioRecorder : NSObject {
  init(url: NSURL, settings: [String : AnyObject]) throws
  func prepareToRecord() -> Bool
  func record() -> Bool
  func recordForDuration(duration: NSTimeInterval) -> Bool
  func pause()
  func stop()
  func deleteRecording() -> Bool
  var isRecording: Bool { get }
  var url: NSURL { get }
  var settings: [String : AnyObject] { get }
  unowned(unsafe) var delegate: @sil_unmanaged AVAudioRecorderDelegate?
  var currentTime: NSTimeInterval { get }
  var isMeteringEnabled: Bool
  func updateMeters()
  func peakPowerForChannel(channelNumber: Int) -> Float
  func averagePowerForChannel(channelNumber: Int) -> Float
  init()
}
protocol AVAudioRecorderDelegate : NSObjectProtocol {
  @available(OSX 10.7, *)
  optional func audioRecorderDidFinishRecording(recorder: AVAudioRecorder, successfully flag: Bool)
  @available(OSX 10.7, *)
  optional func audioRecorderEncodeErrorDidOccur(recorder: AVAudioRecorder, error: NSError?)
}

/*!	@typedef AVMusicTimeStamp
	@abstract A fractional number of beats
	
	@discussion
 		This is used for all sequencer timeline-related methods.  The relationship between this
 		value and time in seconds is determined by the sequence's tempo.
 */
typealias AVMusicTimeStamp = Float64

/*! @typedef AVMusicSequenceLoadOptions
 	@abstract Determines whether data on different MIDI channels is mapped to multiple tracks, or if the tracks are preserved as-is.
 	@discussion
		If AVMusicSequenceLoadSMF_ChannelsToTracks is set, the loaded MIDI Sequence will contain a tempo track,
		one track for each MIDI channel that is found in the SMF, and one track for SysEx and/or MetaEvents (this will
 		be the last track in the sequence).
 		If AVMusicSequenceLoadSMF_PreserveTracks is set, the loadad MIDI Sequence will contain one track for each track
 		that is found in the SMF, plus a tempo track (if not found in the SMF).
*/
@available(OSX 10.11, *)
struct AVMusicSequenceLoadOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var SMF_PreserveTracks: AVMusicSequenceLoadOptions { get }
  static var SMF_ChannelsToTracks: AVMusicSequenceLoadOptions { get }
}

/*! @typedef AVBeatRange
 	@abstract Used to describe a specific time range within an AVMusicTrack.
*/
struct _AVBeatRange {
  var start: AVMusicTimeStamp
  var length: AVMusicTimeStamp
  init()
  init(start: AVMusicTimeStamp, length: AVMusicTimeStamp)
}
typealias AVBeatRange = _AVBeatRange
func AVMakeBeatRange(startBeat: AVMusicTimeStamp, _ lengthInBeats: AVMusicTimeStamp) -> AVBeatRange

/*! @class AVAudioSequencer
    @abstract A collection of MIDI events organized into AVMusicTracks, plus a player to play back the events.
 */
@available(OSX 10.11, *)
class AVAudioSequencer : NSObject {

  /*! @method init
  	@abstract
  		Initialize a new sequencer, which will not be connected to an audio engine.
   	@discussion
   		This is used to create a sequencer whose tracks will only send events to external MIDI endpoints.
   */
  init()

  /*! @method initWithAudioEngine:
  	@abstract
  		Initialize a new sequencer, handing it the audio engine.
  */
  init(audioEngine engine: AVAudioEngine)

  /*! @method loadFromURL:options:error:
  	@abstract Load the file referenced by the URL and add the events to the sequence
   	@param fileURL
   	@param options
   		determines how the file's contents are mapped to tracks inside the sequence
  	@param outError
  */
  func loadFrom(fileURL: NSURL, options: AVMusicSequenceLoadOptions = []) throws

  /*! @method loadFromData:options:error:
  	@abstract Parse the data and add the its events to the sequence
  	@param data
  	@param options
   		determines how the contents are mapped to tracks inside the sequence
  	@param outError
  */
  func loadFrom(data: NSData, options: AVMusicSequenceLoadOptions = []) throws

  /*! @method writeToURL:SMPTEResolution:replaceExisting:error:
  	@abstract Create and write a MIDI file from the events in the sequence
   	@param fileURL
   		the path for the file to be created
  	@param resolution
  		the relationship between "tick" and quarter note for saving to a Standard MIDI File - pass in
  		zero to use default - this will be the value that is currently set on the tempo track
  	@param replace
  		if the file already exists, YES will cause it to be overwritten with the new data.
  		Otherwise the call will fail with a permission error.
  	@param outError
  	@discussion
  		Only MIDI events are written when writing to the MIDI file. MIDI files are normally beat
   		based, but can also have a SMPTE (or real-time rather than beat time) representation.
   		The relationship between "tick" and quarter note for saving to Standard MIDI File
  		- pass in zero to use default - this will be the value that is currently set on the tempo track
   */
  func writeTo(fileURL: NSURL, smpteResolution resolution: Int, replaceExisting replace: Bool) throws

  /*!	@method dataWithSMPTEResolution:error:
   	@abstract Return a data object containing the events from the sequence
   	@discussion
   		All details regarding the SMPTE resolution apply here as well.
   		The returned NSData lifetime is controlled by the client.
  */
  func dataWithSMPTEResolution(SMPTEResolution: Int, error outError: NSErrorPointer) -> NSData

  /*!	@method secondsForBeats:
  	@abstract Get the time in seconds for the given beat position (timestamp) in the track
  */
  func secondsForBeats(beats: AVMusicTimeStamp) -> NSTimeInterval

  /*!	@method beatsForSeconds:
  	@abstract Get the beat position (timestamp) for the given time in the track
  */
  func beatsForSeconds(seconds: NSTimeInterval) -> AVMusicTimeStamp

  /*!	@property tracks
  	@abstract An NSArray containing all the tracks in the sequence
  	@discussion
  		Track indices count from 0, and do not include the tempo track.
   */
  var tracks: [AVMusicTrack] { get }

  /*!	@property tempoTrack
  	@abstract The tempo track
  	 @discussion
  		 Each sequence has a single tempo track. All tempo events are placed into this track (as well
  		 as other appropriate events (for instance, the time signature from a MIDI file). The tempo
  		 track can be edited and iterated upon as any other track. Non-tempo events in a tempo track
  		 are ignored.
  */
  var tempoTrack: AVMusicTrack { get }

  /*!	@property userInfo
   	@abstract A dictionary containing meta-data derived from a sequence
   	@discussion
   		The dictionary can contain one or more of the kAFInfoDictionary_* keys
  		specified in <AudioToolbox/AudioFile.h>
  */
  var userInfo: [String : AnyObject] { get }
}
extension AVAudioSequencer {

  /*! @property currentPositionInSeconds
  	@abstract The current playback position in seconds
  	@discussion
  		Setting this positions the sequencer's player to the specified time.  This can be set while
  		the player is playing, in which case playback will resume at the new position.
   */
  var currentPositionInSeconds: NSTimeInterval

  /*! @property currentPositionInBeats
  	@abstract The current playback position in beats
  	@discussion
  		Setting this positions the sequencer's player to the specified beat.  This can be set while
  		the player is playing, in which case playback will resume at the new position.
   */
  var currentPositionInBeats: NSTimeInterval

  /*! @property playing
  	@abstract Indicates whether or not the sequencer's player is playing
  	@discussion
  		Returns TRUE if the sequencer's player has been started and not stopped. It may have
  		"played" past the end of the events in the sequence, but it is still considered to be
  		playing (and its time value increasing) until it is explicitly stopped.
   */
  var isPlaying: Bool { get }

  /*! @property rate
  	@abstract The playback rate of the sequencer's player
  	@discussion
  		1.0 is normal playback rate.  Rate must be > 0.0.
   */
  var rate: Float

  /*!	@method hostTimeForBeats:error:
  	@abstract Returns the host time that will be (or was) played at the specified beat.
      @discussion
  		This call is only valid if the player is playing and will return 0 with an error if the
  		player is not playing or if the starting position of the player (its "starting beat") was 
  		after the specified beat.  The method uses the sequence's tempo map to translate a beat
  		time from the starting time and beat of the player.
  */
  func hostTimeForBeats(inBeats: AVMusicTimeStamp, error outError: NSErrorPointer) -> UInt64

  /*!	@method beatsForHostTime:error:
  	@abstract Returns the beat that will be (or was) played at the specified host time.
      @discussion
  		This call is only valid if the player is playing and will return 0 with an error if the
  		player is not playing or if the starting time of the player was after the specified host
  		time.  The method uses the sequence's tempo map to retrieve a beat time from the starting
  		and specified host time.
  */
  func beatsForHostTime(inHostTime: UInt64, error outError: NSErrorPointer) -> AVMusicTimeStamp

  /*! @method prepareToPlay
  	@abstract Get ready to play the sequence by prerolling all events
  	@discussion
  		Happens automatically on play if it has not already been called, but may produce a delay in startup.
   */
  func prepareToPlay()

  /*!	@method	startAndReturnError:
  	@abstract	Start the sequencer's player
  	@discussion
  		If the AVAudioSequencer has not been prerolled, it will pre-roll itself and then start.
  */
  func start() throws

  /*!	@method	stop
  	@abstract	Stop the sequencer's player
  	@discussion
   		Stopping the player leaves it in an un-prerolled state, but stores the playback position so that
   		a subsequent call to startAndReturnError will resume where it left off.
   		This action will not stop an associated audio engine.
  */
  func stop()
}

/*! @class AVMusicTrack
    @abstract A collection of music events which will be sent to a given destination, and which can be 
 				offset, muted, etc. independently of events in other tracks.
 */
@available(OSX 10.11, *)
class AVMusicTrack : NSObject {

  /*!	@property destinationAudioUnit
  	@abstract The AVAudioUnit which will receive the track's events
  	@discussion
  		This is mutually exclusive with setting a destination MIDIEndpoint.  The AU must already
  		be attached to an audio engine, and the track must be part of the AVAudioSequencer
  		associated with that engine. When playing, the track will send its events to that AVAudioUnit.
  		The destination AU cannot be changed while the track's sequence is playing.
   */
  var destinationAudioUnit: AVAudioUnit?
  var destinationMIDIEndpoint: MIDIEndpointRef

  /*!	@property loopRange
   	@abstract The timestamp range in beats for the loop
   	@discussion
  		The loop is set by specifying its beat range.
  */
  var loopRange: AVBeatRange

  /*!	@property loopingEnabled
  	@abstract Determines whether or not the track is looped.
  	@discussion
  		If loopRange has not been set, the full track will be looped.
  */
  var isLoopingEnabled: Bool

  /*!	@property numberOfLoops
   	@abstract The number of times that the track's loop will repeat
   	@discussion
   		If set to AVMusicTrackLoopCountForever, the track will loop forever.
   		Otherwise, legal values start with 1.
  */
  var numberOfLoops: Int

  /*! @property offsetTime
      @abstract Offset the track's start time to the specified time in beats
   	@discussion
          By default this value is zero.
  */
  var offsetTime: AVMusicTimeStamp

  /*! @property muted
      @abstract Whether the track is muted
  */
  var isMuted: Bool

  /*! @property soloed
      @abstract Whether the track is soloed
  */
  var isSoloed: Bool

  /*! @property lengthInBeats
      @abstract The total duration of the track in beats
      @discussion
  		This will return the beat of the last event in the track plus any additional time that may be
  		needed for fading out of ending notes or round a loop point to musical bar, etc.  If this
  		has not been set by the user, the track length will always be adjusted to the end of the
  		last active event in a track and is adjusted dynamically as events are added or removed.
  
  		The property will return the maximum of the user-set track length, or the calculated length.
  */
  var lengthInBeats: AVMusicTimeStamp

  /*! @property lengthInSeconds
      @abstract The total duration of the track in seconds
      @discussion
  		This will return time of the last event in the track plus any additional time that may be
  		needed for fading out of ending notes or round a loop point to musical bar, etc.  If this
  		has not been set by the user, the track length will always be adjusted to the end of the
  		last active event in a track and is adjusted dynamically as events are added or removed.
   
   The property will return the maximum of the user-set track length, or the calculated length.
   */
  var lengthInSeconds: NSTimeInterval

  /*! @property timeResolution
      @abstract The time resolution value for the sequence, in ticks (pulses) per quarter note (PPQN)
      @discussion
  		If a MIDI file was used to construct the containing sequence, the resolution will be what
  		was in the file. If you want to keep a time resolution when writing a new file, you can
  		retrieve this value and then specify it when calling -[AVAudioSequencer
  		writeToFile:flags:withResolution]. It has no direct bearing on the rendering or notion of
  		time of the sequence itself, just its representation in MIDI files. By default this is set
  		to either 480 if the sequence was created manually, or a value based on what was in a MIDI
  		file if the sequence was created from a MIDI file.
  		This can only be retrieved from the tempo track.
  */
  var timeResolution: Int { get }
  init()
}
@available(OSX 10.10, *)
enum AVMusicTrackLoopCount : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Forever
}
let AVFormatIDKey: String
let AVSampleRateKey: String
let AVNumberOfChannelsKey: String
let AVLinearPCMBitDepthKey: String
let AVLinearPCMIsBigEndianKey: String
let AVLinearPCMIsFloatKey: String
@available(OSX 10.7, *)
let AVLinearPCMIsNonInterleaved: String
let AVEncoderAudioQualityKey: String
@available(OSX 10.9, *)
let AVEncoderAudioQualityForVBRKey: String
let AVEncoderBitRateKey: String
@available(OSX 10.7, *)
let AVEncoderBitRatePerChannelKey: String
@available(OSX 10.9, *)
let AVEncoderBitRateStrategyKey: String
let AVEncoderBitDepthHintKey: String
@available(OSX 10.9, *)
let AVSampleRateConverterAlgorithmKey: String
let AVSampleRateConverterAudioQualityKey: String
@available(OSX 10.7, *)
let AVChannelLayoutKey: String
@available(OSX 10.9, *)
let AVAudioBitRateStrategy_Constant: String
@available(OSX 10.9, *)
let AVAudioBitRateStrategy_LongTermAverage: String
@available(OSX 10.9, *)
let AVAudioBitRateStrategy_VariableConstrained: String
@available(OSX 10.9, *)
let AVAudioBitRateStrategy_Variable: String
@available(OSX 10.9, *)
let AVSampleRateConverterAlgorithm_Normal: String
@available(OSX 10.9, *)
let AVSampleRateConverterAlgorithm_Mastering: String
enum AVAudioQuality : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Min
  case Low
  case Medium
  case High
  case Max
}

/*!
	@class AVAudioTime
	@abstract Represent a moment in time.
	@discussion
		AVAudioTime is used in AVAudioEngine to represent time. Instances are immutable.
		
		A single moment in time may be represented in two different ways:
		1. mach_absolute_time(), the system's basic clock. Commonly referred to as "host time."
		2. audio samples at a particular sample rate
		
		A single AVAudioTime instance may contain either or both representations; it might
		represent only a sample time, only a host time, or both.
		
Rationale for using host time:
[a] internally we are using AudioTimeStamp, which uses host time, and it seems silly to divide
[b] it is consistent with a standard system timing service
[c] we do provide conveniences to convert between host ticks and seconds (host time divided by
	frequency) so client code wanting to do what should be straightforward time computations can at 
	least not be cluttered by ugly multiplications and divisions by the host clock frequency.
*/
@available(OSX 10.10, *)
class AVAudioTime : NSObject {

  /*!	@method initWithAudioTimeStamp:sampleRate:
  */
  init(audioTimeStamp ts: UnsafePointer<AudioTimeStamp>, sampleRate: Double)

  /*! @method initWithHostTime:
  */
  init(hostTime: UInt64)

  /*! @method initWithSampleTime:atRate:
  */
  init(sampleTime: AVAudioFramePosition, atRate sampleRate: Double)

  /*! @method initWithHostTime:sampleTime:atRate:
  */
  init(hostTime: UInt64, sampleTime: AVAudioFramePosition, atRate sampleRate: Double)

  /*!	@method hostTimeForSeconds:
  	@abstract Convert seconds to host time.
  */
  class func hostTimeForSeconds(seconds: NSTimeInterval) -> UInt64

  /*!	@method secondsForHostTime:
  	@abstract Convert host time to seconds.
  */
  class func secondsForHostTime(hostTime: UInt64) -> NSTimeInterval

  /*!	@method extrapolateTimeFromAnchor:
  	@abstract Converts between host and sample time.
  	@param anchorTime
  		An AVAudioTime with a more complete AudioTimeStamp than that of the receiver (self).
  	@return
  		the extrapolated time
  	@discussion
  		If anchorTime is an AVAudioTime where both host time and sample time are valid,
  		and self is another timestamp where only one of the two is valid, this method
  		returns a new AVAudioTime copied from self and where any additional valid fields provided by
  		the anchor are also valid.
  
  <pre>
  // time0 has a valid audio sample representation, but no host time representation.
  AVAudioTime *time0 = [AVAudioTime timeWithSampleTime: 0.0 atRate: 44100.0];
  // anchor has a valid host time representation and sample time representation.
  AVAudioTime *anchor = [player playerTimeForNodeTime: player.lastRenderTime];
  // fill in valid host time representation
  AVAudioTime *fullTime0 = [time0 extrapolateTimeFromAnchor: anchor];
  </pre>
  */
  func extrapolateTimeFromAnchor(anchorTime: AVAudioTime) -> AVAudioTime

  /*! @property hostTimeValid
  	@abstract Whether the hostTime property is valid.
  */
  var isHostTimeValid: Bool { get }

  /*! @property hostTime
  	@abstract The host time.
  */
  var hostTime: UInt64 { get }

  /*! @property sampleTimeValid
  	@abstract Whether the sampleTime and sampleRate properties are valid.
  */
  var isSampleTimeValid: Bool { get }

  /*!	@property sampleTime
  	@abstract The time as a number of audio samples, as tracked by the current audio device.
  */
  var sampleTime: AVAudioFramePosition { get }

  /*!	@property sampleRate
  	@abstract The sample rate at which sampleTime is being expressed.
  */
  var sampleRate: Double { get }

  /*! @property audioTimeStamp
  	@abstract The time expressed as an AudioTimeStamp structure.
  	@discussion
  		This may be useful for compatibility with lower-level CoreAudio and AudioToolbox API's.
  */
  var audioTimeStamp: AudioTimeStamp { get }
  init()
}

/*! @typedef AVAudioFramePosition
	@abstract A position in an audio file or stream.
*/
typealias AVAudioFramePosition = Int64

/*!	@typedef AVAudioFrameCount
	@abstract A number of audio sample frames.
	
	@discussion
		Rationale: making this a potentially larger-than-32-bit type like NSUInteger would open the
		door to a large set of runtime failures due to underlying implementations' use of UInt32.
		
		TODO: Remove rationales.
*/
typealias AVAudioFrameCount = UInt32

/*!	@typedef AVAudioPacketCount
	@abstract A number of packets of compressed audio data.
	
	@discussion
		Rationale: making this a potentially larger-than-32-bit type like NSUInteger would open the
		door to a large set of runtime failures due to underlying implementations' use of UInt32.
		
		TODO: Remove rationales.
*/
typealias AVAudioPacketCount = UInt32

/*!	@typedef AVAudioChannelCount
	@abstract A number of audio channels.
	
	@discussion
		Rationale: making this a potentially larger-than-32-bit type like NSUInteger would open the
		door to a large set of runtime failures due to underlying implementations' use of UInt32.
*/
typealias AVAudioChannelCount = UInt32

/*! @typedef AVAudioNodeCompletionHandler
	@abstract Generic callback handler.
	@discussion
		Various AVAudioEngine objects issue callbacks to generic blocks of this type. In general
		the callback arrives on a non-main thread and it is the client's responsibility to handle it
		in a thread-safe manner.
*/
typealias AVAudioNodeCompletionHandler = () -> Void

/*!	@typedef AVAudioNodeBus
	@abstract The index of a bus on an AVAudioNode.
	@discussion
		@link AVAudioNode @/link objects potentially have multiple input and/or output busses.
		AVAudioNodeBus represents a bus as a zero-based index.
*/
typealias AVAudioNodeBus = Int

/*!	@struct AVAudio3DPoint
    @abstract Struct representing a point in 3D space
    @discussion
        This struct is used by classes dealing with 3D audio such as `AVAudioMixing`
        and `AVAudioEnvironmentNode` and represents a point in 3D space.
*/
struct AVAudio3DPoint {
  var x: Float
  var y: Float
  var z: Float
  init()
  init(x: Float, y: Float, z: Float)
}

/*!	@method AVAudioMake3DPoint
    @abstract Creates and returns an AVAudio3DPoint object
*/
func AVAudioMake3DPoint(x: Float, _ y: Float, _ z: Float) -> AVAudio3DPoint

/*!	@typedef AVAudio3DVector
    @abstract Struct representing a vector in 3D space
    @discussion
        This struct is used by classes dealing with 3D audio such as @link AVAudioMixing @/link
        and @link AVAudioEnvironmentNode @/link and represents a vector in 3D space.
*/
typealias AVAudio3DVector = AVAudio3DPoint

/*!	@method AVAudio3DVector
    @abstract Creates and returns an AVAudio3DVector object
*/
func AVAudioMake3DVector(x: Float, _ y: Float, _ z: Float) -> AVAudio3DVector

/*!	@struct AVAudio3DVectorOrientation
    @abstract Struct representing the orientation of the listener in 3D space
    @discussion
        Two orthogonal vectors describe the orientation of the listener. The forward
        vector points in the direction that the listener is facing. The up vector is orthogonal
        to the forward vector and points upwards from the listener's head.
*/
struct AVAudio3DVectorOrientation {
  var forward: AVAudio3DVector
  var up: AVAudio3DVector
  init()
  init(forward: AVAudio3DVector, up: AVAudio3DVector)
}

/*!	@method AVAudioMake3DVectorOrientation
    @abstract Creates and returns an AVAudio3DVectorOrientation object
*/
func AVAudioMake3DVectorOrientation(forward: AVAudio3DVector, _ up: AVAudio3DVector) -> AVAudio3DVectorOrientation

/*!	@struct AVAudio3DAngularOrientation
    @abstract Struct representing the orientation of the listener in 3D space
    @discussion
        Three angles describe the orientation of a listener's head - yaw, pitch and roll.
 
        Yaw describes the side to side movement of the listener's head.
        The yaw axis is perpendicular to the plane of the listener's ears with its origin at the 
        center of the listener's head and directed towards the bottom of the listener's head. A 
        positive yaw is in the clockwise direction going from 0 to 180 degrees. A negative yaw is in 
        the counter-clockwise direction going from 0 to -180 degrees.
 
        Pitch describes the up-down movement of the listener's head.
        The pitch axis is perpendicular to the yaw axis and is parallel to the plane of the 
        listener's ears with its origin at the center of the listener's head and directed towards 
        the right ear. A positive pitch is the upwards direction going from 0 to 180 degrees. A 
        negative pitch is in the downwards direction going from 0 to -180 degrees.
 
        Roll describes the tilt of the listener's head.
        The roll axis is perpendicular to the other two axes with its origin at the center of the 
        listener's head and is directed towards the listener's nose. A positive roll is to the right 
        going from 0 to 180 degrees. A negative roll is to the left going from 0 to -180 degrees.
*/
struct AVAudio3DAngularOrientation {
  var yaw: Float
  var pitch: Float
  var roll: Float
  init()
  init(yaw: Float, pitch: Float, roll: Float)
}

/*!	@method AVAudioMake3DAngularOrientation
    @abstract Creates and returns an AVAudio3DAngularOrientation object
*/
func AVAudioMake3DAngularOrientation(yaw: Float, _ pitch: Float, _ roll: Float) -> AVAudio3DAngularOrientation

/*! @class AVAudioUnit
    @abstract An AVAudioNode implemented by an audio unit.
    @discussion
        An AVAudioUnit is an AVAudioNode implemented by an audio unit. Depending on the type of
        the audio unit, audio is processed either in real-time or non real-time.
*/
@available(OSX 10.10, *)
class AVAudioUnit : AVAudioNode {

  /*!	@method	instantiateWithComponentDescription:options:completionHandler:
  	@abstract Asynchronously create an instance of an audio unit component, wrapped in an AVAudioUnit.
  	@param audioComponentDescription
  		The component to instantiate.
  	@param options
  		Instantiation options.
  	@param completionHandler
  		Called in an arbitrary thread/queue context when instantiation is complete. The client
  		should retain the provided AVAudioUnit.
  	@discussion
  		Components whose flags include kAudioComponentFlag_RequiresAsyncInstantiation must be 
  		instantiated asynchronously, via this method if they are to be used with AVAudioEngine.
  		See the discussion of this flag in AudioUnit/AudioComponent.h.
  		
  		The returned AVAudioUnit instance normally will be of a subclass (AVAudioUnitEffect,
  		AVAudioUnitGenerator, AVAudioUnitMIDIInstrument, or AVAudioUnitTimeEffect), selected
  		according to the component's type.
  */
  @available(OSX 10.11, *)
  class func instantiateWith(audioComponentDescription: AudioComponentDescription, options: AudioComponentInstantiationOptions = [], completionHandler: (AVAudioUnit?, NSError?) -> Void)

  /*! @method loadAudioUnitPresetAtURL:error:
      @abstract Load an audio unit preset.
      @param url
          NSURL of the .aupreset file.
  	@param outError
      @discussion
          If the .aupreset file cannot be successfully loaded, an error is returned.
  */
  func loadAudioUnitPresetAt(url: NSURL) throws

  /*! @property audioComponentDescription
      @abstract AudioComponentDescription of the underlying audio unit.
  */
  var audioComponentDescription: AudioComponentDescription { get }

  /*! @property audioUnit
      @abstract Reference to the underlying audio unit.
      @discussion
          A reference to the underlying audio unit is provided so that parameters that are not
          exposed by AVAudioUnit subclasses can be modified using the AudioUnit C API.
   
          No operations that may conflict with state maintained by the engine should be performed
          directly on the audio unit. These include changing initialization state, stream formats,
          channel layouts or connections to other audio units.
  */
  var audioUnit: AudioUnit { get }

  /*! @property AUAudioUnit
      @abstract An AUAudioUnit wrapping or underlying the implementation's AudioUnit.
      @discussion
          This provides an AUAudioUnit which either wraps or underlies the implementation's
          AudioUnit, depending on how that audio unit is packaged. Applications can interact with this
          AUAudioUnit to control custom properties, select presets, change parameters, etc.
   
          As with the audioUnit property, no operations that may conflict with state maintained by the
          engine should be performed directly on the audio unit. These include changing initialization
          state, stream formats, channel layouts or connections to other audio units.
  */
  @available(OSX 10.11, *)
  var auAudioUnit: AUAudioUnit { get }

  /*! @property name
      @abstract Name of the audio unit.
  */
  var name: String { get }

  /*! @property manufacturerName
      @abstract Manufacturer name of the audio unit.
  */
  var manufacturerName: String { get }

  /*! @property version
      @abstract Version number of the audio unit.
  */
  var version: Int { get }
  init()
}
@available(OSX 10.10, *)
let AVAudioUnitTypeOutput: String
@available(OSX 10.10, *)
let AVAudioUnitTypeMusicDevice: String
@available(OSX 10.10, *)
let AVAudioUnitTypeMusicEffect: String
@available(OSX 10.10, *)
let AVAudioUnitTypeFormatConverter: String
@available(OSX 10.10, *)
let AVAudioUnitTypeEffect: String
@available(OSX 10.10, *)
let AVAudioUnitTypeMixer: String
@available(OSX 10.10, *)
let AVAudioUnitTypePanner: String
@available(OSX 10.10, *)
let AVAudioUnitTypeGenerator: String
@available(OSX 10.10, *)
let AVAudioUnitTypeOfflineEffect: String
@available(OSX 10.10, *)
let AVAudioUnitTypeMIDIProcessor: String
@available(OSX 10.10, *)
let AVAudioUnitManufacturerNameApple: String

/*!
 @class AVAudioUnitComponent
 @discussion
	 AVAudioUnitComponent provides details about an audio unit such as type, subtype, manufacturer, 
	 location etc. User tags can be added to the AVAudioUnitComponent which can be queried later
 	 for display.
 */
@available(OSX 10.10, *)
class AVAudioUnitComponent : NSObject {

  /*! @property name
  	@abstract the name of an audio component
   */
  var name: String { get }

  /*! @property typeName
  	@abstract standard audio component types returned as strings
   */
  var typeName: String { get }

  /*! @property typeName
  	@abstract localized string of typeName for display
   */
  var localizedTypeName: String { get }

  /*! @property manufacturerName
  	@abstract the manufacturer name, extracted from the manufacturer key defined in Info.plist dictionary
   */
  var manufacturerName: String { get }

  /*! @property version
  	@abstract version number comprised of a hexadecimal number with major, minor, dot-release format: 0xMMMMmmDD
   */
  var version: Int { get }

  /*! @property versionString
  	@abstract version number as string
   */
  var versionString: String { get }

  /*! @property componentURL
  	@abstract URL representing location of component
   */
  @available(OSX, introduced=10.10, deprecated=10.11)
  var componentURL: NSURL? { get }

  /*! @property availableArchitectures
  	@abstract NSArray of NSNumbers each of which corresponds to one of the constants in Mach-O Architecture in NSBundle Class Reference
   */
  @available(OSX 10.10, *)
  var availableArchitectures: [NSNumber] { get }

  /*! @property sandboxSafe
  	@abstract On OSX, YES if the AudioComponent can be loaded into a sandboxed process otherwise NO.
  			  On iOS, this is always YES.
   */
  var isSandboxSafe: Bool { get }

  /*! @property hasMIDIInput
  	@abstract YES if AudioComponent has midi input, otherwise NO
   */
  var hasMIDIInput: Bool { get }

  /*! @property hasMIDIOutput
  	@abstract YES if AudioComponent has midi output, otherwise NO
   */
  var hasMIDIOutput: Bool { get }

  /*! @property audioComponent
  	@abstract the audioComponent that can be used in AudioComponent APIs.
   */
  var audioComponent: AudioComponent { get }

  /*! @property userTagNames
  	@abstract User tags represent the tags from the current user.
   */
  @available(OSX 10.10, *)
  var userTagNames: [String]

  /*! @property allTagNames
  	@abstract represent the tags from the current user and the system tags defined by AudioComponent.
   */
  var allTagNames: [String] { get }

  /*! @property audioComponentDescription
  	@abstract description of the audio component that can be used in AudioComponent APIs.
   */
  var audioComponentDescription: AudioComponentDescription { get }

  /*! @property iconURL
  	@abstract A URL that will specify the location of an icon file that can be used when presenting UI
   for this audio component.
   */
  @available(OSX 10.10, *)
  var iconURL: NSURL? { get }

  /*! @property icon
  	@abstract An icon representing the component.
      @discussion
          For a component originating in an app extension, the returned icon will be that of the
          application containing the extension.
          
          For components loaded from bundles, the icon will be that of the bundle.
   */
  @available(OSX 10.11, *)
  var icon: NSImage? { get }

  /*! @property passesAUVal
  	@abstract YES if the AudioComponent has passed the AU validation tests, otherwise NO
   */
  @available(OSX 10.10, *)
  var passesAUVal: Bool { get }

  /*! @property hasCustomView
  	@abstract YES if the AudioComponent provides custom view, otherwise NO
   */
  @available(OSX 10.10, *)
  var hasCustomView: Bool { get }

  /*! @property configurationDictionary
  	@abstract A NSDictionary that contains information describing the capabilities of the AudioComponent.
  	The specific information depends on the type and the keys are defined in AudioUnitProperties.h
   */
  @available(OSX 10.10, *)
  var configurationDictionary: [String : AnyObject] { get }

  /*! @property supportsNumberInputChannels: outputChannels:
  	@abstract returns YES if the AudioComponent supports the input/output channel configuration
   */
  @available(OSX 10.10, *)
  func supportsNumberInputChannels(numInputChannels: Int, outputChannels numOutputChannels: Int) -> Bool
  init()
}
@available(OSX 10.10, *)
let AVAudioUnitComponentTagsDidChangeNotification: String

/*!
 @class AVAudioUnitComponentManager
 @discussion 
 		AVAudioUnitComponentManager is a singleton object that provides an easy way to find
 		audio components that are registered with the system. It provides methods to search and
 		query various information about the audio components without opening them.
 
 		Currently audio components that are audio units can only be searched.
 
 		The class also supports predefined system tags and arbitrary user tags. Each audio unit can be 
 		tagged as part of its definition. Refer to AudioComponent.h for more details. AudioUnit Hosts
 		such as Logic or GarageBand can present groupings of audio units based on the tags.
 
 		Searching for audio units can be done in various ways
 			- using a NSPredicate that contains search strings for tags or descriptions
 			- using a block to match on custom criteria 
			- using an AudioComponentDescription
 */
@available(OSX 10.10, *)
class AVAudioUnitComponentManager : NSObject {

  /*! @discussion 
   		returns all tags associated with the current user as well as all system tags defined by 
  		the audio unit(s).
   */
  var tagNames: [String] { get }

  /*! @discussion
  		returns the localized standard system tags defined by the audio unit(s).
   */
  var standardLocalizedTagNames: [String] { get }
  class func shared() -> Self

  /*!
   @method componentsMatchingPredicate:
   @abstract	returns an array of AVAudioUnitComponent objects that match the search predicate.
   @discussion
   		AudioComponent's information or tags can be used to build a search criteria. 
   		For example, "typeName CONTAINS 'Effect'" or tags IN {'Sampler', 'MIDI'}"
   */
  func componentsMatching(predicate: NSPredicate) -> [AVAudioUnitComponent]

  /*!
   @method componentsPassingTest:
   @abstract	returns an array of AVAudioUnitComponent objects that pass the user provided block method.
   @discussion
  		For each AudioComponent found by the manager, the block method will be called. If the return
   		value is YES then the AudioComponent is added to the resulting array else it will excluded. 
   		This gives more control to the block provider to filter out the components returned.
   */
  func componentsPassingTest(testHandler: (AVAudioUnitComponent, UnsafeMutablePointer<ObjCBool>) -> Bool) -> [AVAudioUnitComponent]

  /*!
   @method componentsMatchingDescription:
   @abstract	returns an array of AVAudioUnitComponent objects that match the description.
   @discussion
   		This method provides a mechanism to search for AudioComponents using AudioComponentDescription
  		structure. The type, subtype and manufacturer fields are used to search for audio units. A 
   		value of 0 for any of these fields is a wildcard and returns the first match found.
   */
  func componentsMatching(desc: AudioComponentDescription) -> [AVAudioUnitComponent]
  init()
}

/*! @class AVAudioUnitDelay
    @abstract an AVAudioUnitEffect that implements a delay effect
    @discussion
        A delay unit delays the input signal by the specified time interval
        and then blends it with the input signal. The amount of high frequency
        roll-off can also be controlled in order to simulate the effect of
        a tape delay.
 
*/
@available(OSX 10.10, *)
class AVAudioUnitDelay : AVAudioUnitEffect {

  /*! @property delayTime
      Time taken by the delayed input signal to reach the output
      @abstract
      Range:      0 -> 2
      Default:    1
      Unit:       Seconds
   */
  var delayTime: NSTimeInterval

  /*! @property feedback
      @abstract
      Amount of the output signal fed back into the delay line
      Range:      -100 -> 100
      Default:    50
      Unit:       Percent
  */
  var feedback: Float

  /*! @property lowPassCutoff
      @abstract
      Cutoff frequency above which high frequency content is rolled off
      Range:      10 -> (samplerate/2)
      Default:    15000
      Unit:       Hertz
  */
  var lowPassCutoff: Float

  /*! @property wetDryMix
      @abstract
      Blend of the wet and dry signals
      Range:      0 (all dry) -> 100 (all wet)
      Default:    100
      Unit:       Percent
  */
  var wetDryMix: Float

  /*! @method initWithAudioComponentDescription:
      @abstract Create an AVAudioUnitEffect object.
      
      @param audioComponentDescription
      @abstract AudioComponentDescription of the audio unit to be instantiated.
      @discussion
      The componentType must be one of these types
      kAudioUnitType_Effect
      kAudioUnitType_MusicEffect
      kAudioUnitType_Panner
      kAudioUnitType_RemoteEffect
      kAudioUnitType_RemoteMusicEffect
  
  */
  init(audioComponentDescription: AudioComponentDescription)
  init()
}
@available(OSX 10.10, *)
enum AVAudioUnitDistortionPreset : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case DrumsBitBrush
  case DrumsBufferBeats
  case DrumsLoFi
  case MultiBrokenSpeaker
  case MultiCellphoneConcert
  case MultiDecimated1
  case MultiDecimated2
  case MultiDecimated3
  case MultiDecimated4
  case MultiDistortedFunk
  case MultiDistortedCubed
  case MultiDistortedSquared
  case MultiEcho1
  case MultiEcho2
  case MultiEchoTight1
  case MultiEchoTight2
  case MultiEverythingIsBroken
  case SpeechAlienChatter
  case SpeechCosmicInterference
  case SpeechGoldenPi
  case SpeechRadioTower
  case SpeechWaves
}

/*! @class AVAudioUnitDistortion
    @abstract An AVAudioUnitEffect that implements a multi-stage distortion effect.
 
*/
@available(OSX 10.10, *)
class AVAudioUnitDistortion : AVAudioUnitEffect {

  /*! @method loadFactoryPreset:
      @abstract Load a distortion preset.
      Default:    AVAudioUnitDistortionPresetDrumsBitBrush
  */
  func loadFactoryPreset(preset: AVAudioUnitDistortionPreset)

  /*! @property preGain
      @abstract
      Gain applied to the signal before being distorted
      Range:      -80 -> 20
      Default:    -6
      Unit:       dB
  */
  var preGain: Float

  /*! @property wetDryMix
      @abstract
      Blend of the distorted and dry signals
      Range:      0 (all dry) -> 100 (all distorted)
      Default:    50
      Unit:       Percent
  */
  var wetDryMix: Float

  /*! @method initWithAudioComponentDescription:
      @abstract Create an AVAudioUnitEffect object.
      
      @param audioComponentDescription
      @abstract AudioComponentDescription of the audio unit to be instantiated.
      @discussion
      The componentType must be one of these types
      kAudioUnitType_Effect
      kAudioUnitType_MusicEffect
      kAudioUnitType_Panner
      kAudioUnitType_RemoteEffect
      kAudioUnitType_RemoteMusicEffect
  
  */
  init(audioComponentDescription: AudioComponentDescription)
  init()
}

/*! @enum AVAudioUnitEQFilterType
    @abstract Filter types available to use with AVAudioUnitEQ.
    @discussion
        Depending on the filter type, a combination of one or all of the filter parameters defined 
        in AVAudioUnitEQFilterParameters are used to set the filter.
     
        AVAudioUnitEQFilterTypeParametric
            Parametric filter based on Butterworth analog prototype.
            Required parameters: frequency (center), bandwidth, gain
     
        AVAudioUnitEQFilterTypeLowPass
            Simple Butterworth 2nd order low pass filter
            Required parameters: frequency (-3 dB cutoff at specified frequency)
        
        AVAudioUnitEQFilterTypeHighPass
            Simple Butterworth 2nd order high pass filter
            Required parameters: frequency (-3 dB cutoff at specified frequency)
     
        AVAudioUnitEQFilterTypeResonantLowPass
            Low pass filter with resonance support (via bandwidth parameter)
            Required parameters: frequency (-3 dB cutoff at specified frequency), bandwidth
     
        AVAudioUnitEQFilterTypeResonantHighPass
            High pass filter with resonance support (via bandwidth parameter)
            Required parameters: frequency (-3 dB cutoff at specified frequency), bandwidth
     
        AVAudioUnitEQFilterTypeBandPass
            Band pass filter
            Required parameters: frequency (center), bandwidth
     
        AVAudioUnitEQFilterTypeBandStop
            Band stop filter (aka "notch filter")
            Required parameters: frequency (center), bandwidth
     
        AVAudioUnitEQFilterTypeLowShelf
            Low shelf filter
            Required parameters: frequency (center), gain
     
        AVAudioUnitEQFilterTypeHighShelf
            High shelf filter
            Required parameters: frequency (center), gain
     
        AVAudioUnitEQFilterTypeResonantLowShelf
            Low shelf filter with resonance support (via bandwidth parameter)
            Required parameters: frequency (center), bandwidth, gain
     
        AVAudioUnitEQFilterTypeResonantHighShelf
            High shelf filter with resonance support (via bandwidth parameter)
            Required parameters: frequency (center), bandwidth, gain
 
*/
@available(OSX 10.10, *)
enum AVAudioUnitEQFilterType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Parametric
  case LowPass
  case HighPass
  case ResonantLowPass
  case ResonantHighPass
  case BandPass
  case BandStop
  case LowShelf
  case HighShelf
  case ResonantLowShelf
  case ResonantHighShelf
}

/*! @class AVAudioUnitEQFilterParameters
    @abstract Filter parameters used by AVAudioUnitEQ.
    @discussion
        A standalone instance of AVAudioUnitEQFilterParameters cannot be created. Only an instance
        vended out by a source object (e.g. AVAudioUnitEQ) can be used.
*/
@available(OSX 10.10, *)
class AVAudioUnitEQFilterParameters : NSObject {

  /*! @property filterType
      @abstract AVAudioUnitEQFilterType
      @discussion
      Default:    AVAudioUnitEQFilterTypeParametric
  */
  var filterType: AVAudioUnitEQFilterType

  /*! @property frequency
      @abstract Frequency in Hertz.
      @discussion
      Range:      20 -> (SampleRate/2)
      Unit:       Hertz
  */
  var frequency: Float

  /*! @property bandwidth
      @abstract Bandwidth in octaves.
      @discussion
      Range:      0.05 -> 5.0
      Unit:       Octaves
  */
  var bandwidth: Float

  /*! @property gain
      @abstract Gain in dB.
      @discussion
      Range:      -96 -> 24
      Default:    0
      Unit:       dB
  */
  var gain: Float

  /*! @property bypass
      @abstract bypass state of band.
      @discussion
      Default:    YES
  */
  var bypass: Bool
  init()
}

/*! @class AVAudioUnitEQ
    @abstract An AVAudioUnitEffect that implements a Multi-Band Equalizer.
 
*/
@available(OSX 10.10, *)
class AVAudioUnitEQ : AVAudioUnitEffect {

  /*! @method initWithNumberOfBands:
      @abstract Initialize the EQ with number of bands.
      @param numberOfBands
          The number of bands created by the EQ.
  */
  init(numberOfBands: Int)

  /*! @property bands
      @abstract Array of AVAudioUnitEQFilterParameters objects.
      @discussion
          The number of elements in the array is equal to the number of bands.
  */
  var bands: [AVAudioUnitEQFilterParameters] { get }

  /*! @property globalGain
      @abstract Overall gain adjustment applied to the signal.
      @discussion
          Range:     -96 -> 24
          Default:   0
          Unit:      dB
  */
  var globalGain: Float

  /*! @method initWithAudioComponentDescription:
      @abstract Create an AVAudioUnitEffect object.
      
      @param audioComponentDescription
      @abstract AudioComponentDescription of the audio unit to be instantiated.
      @discussion
      The componentType must be one of these types
      kAudioUnitType_Effect
      kAudioUnitType_MusicEffect
      kAudioUnitType_Panner
      kAudioUnitType_RemoteEffect
      kAudioUnitType_RemoteMusicEffect
  
  */
  init(audioComponentDescription: AudioComponentDescription)
  init()
}

/*! @class AVAudioUnitEffect
    @abstract an AVAudioUnit that processes audio in real-time
    @discussion
    An AVAudioUnitEffect represents an audio unit of type kAudioUnitType_Effect,
    kAudioUnitType_MusicEffect, kAudioUnitType_Panner, kAudioUnitType_RemoteEffect or 
    kAudioUnitType_RemoteMusicEffect.

    These effects run in real-time and process some x number of audio input 
    samples to produce x number of audio output samples. A delay unit is an 
    example of an effect unit.
 
*/
@available(OSX 10.10, *)
class AVAudioUnitEffect : AVAudioUnit {

  /*! @method initWithAudioComponentDescription:
      @abstract Create an AVAudioUnitEffect object.
      
      @param audioComponentDescription
      @abstract AudioComponentDescription of the audio unit to be instantiated.
      @discussion
      The componentType must be one of these types
      kAudioUnitType_Effect
      kAudioUnitType_MusicEffect
      kAudioUnitType_Panner
      kAudioUnitType_RemoteEffect
      kAudioUnitType_RemoteMusicEffect
  
  */
  init(audioComponentDescription: AudioComponentDescription)

  /*! @property bypass
      @abstract Bypass state of the audio unit.
  */
  var bypass: Bool
  init()
}

/*! @class AVAudioUnitGenerator
    @abstract an AVAudioUnit that generates audio output
    @discussion
    An AVAudioUnitGenerator represents an audio unit of type kAudioUnitType_Generator or
	kAudioUnitType_RemoteGenerator.
    A generator will have no audio input, but will just produce audio output.
    A tone generator is an example of this. 
*/
@available(OSX 10.10, *)
class AVAudioUnitGenerator : AVAudioUnit, AVAudioMixing {

  /*! @method initWithAudioComponentDescription:
      @abstract Create an AVAudioUnitGenerator object.
      
      @param audioComponentDescription
      @abstract AudioComponentDescription of the audio unit to be instantiated.
      @discussion
      The componentType must be kAudioUnitType_Generator or kAudioUnitType_RemoteGenerator
  */
  init(audioComponentDescription: AudioComponentDescription)

  /*! @property bypass
      @abstract Bypass state of the audio unit.
  */
  var bypass: Bool
  init()

  /*! @method destinationForMixer:bus:
  	@abstract Returns the AVAudioMixingDestination object corresponding to specified mixer node and
  		its input bus
  	@discussion
  		When a source node is connected to multiple mixers downstream, setting AVAudioMixing 
  		properties directly on the source node will apply the change to all the mixers downstream. 
  		If you want to set/get properties on a specific mixer, use this method to get the 
  		corresponding AVAudioMixingDestination and set/get properties on it. 
   
  		Note:
  		- Properties set on individual AVAudioMixingDestination instances will not reflect at the
  			source node level.
  
  		- AVAudioMixingDestination reference returned by this method could become invalid when
  			there is any disconnection between the source and the mixer node. Hence this reference
  			should not be retained and should be fetched every time you want to set/get properties 
  			on a specific mixer.
   
  		If the source node is not connected to the specified mixer/input bus, this method
  		returns nil.
  		Calling this on an AVAudioMixingDestination instance returns self if the specified
  		mixer/input bus match its connection point, otherwise returns nil.
  */
  @available(OSX 10.11, *)
  func destinationForMixer(mixer: AVAudioNode, bus: AVAudioNodeBus) -> AVAudioMixingDestination?

  /*! @property volume
      @abstract Set a bus's input volume
      @discussion
          Range:      0.0 -> 1.0
          Default:    1.0
          Mixers:     AVAudioMixerNode, AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var volume: Float

  /*! @property pan
      @abstract Set a bus's stereo pan
      @discussion
          Range:      -1.0 -> 1.0
          Default:    0.0
          Mixer:      AVAudioMixerNode
  */
  @available(OSX 10.10, *)
  var pan: Float

  /*! @property renderingAlgorithm
      @abstract Type of rendering algorithm used
      @discussion
          Depending on the current output format of the AVAudioEnvironmentNode, only a subset of the 
          rendering algorithms may be supported. An array of valid rendering algorithms can be 
          retrieved by calling applicableRenderingAlgorithms on AVAudioEnvironmentNode.
   
          Default:    AVAudio3DMixingRenderingAlgorithmEqualPowerPanning
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var renderingAlgorithm: AVAudio3DMixingRenderingAlgorithm

  /*! @property rate
      @abstract Changes the playback rate of the input signal
      @discussion
          A value of 2.0 results in the output audio playing one octave higher.
          A value of 0.5, results in the output audio playing one octave lower.
       
          Range:      0.5 -> 2.0
          Default:    1.0
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var rate: Float

  /*! @property reverbBlend
      @abstract Controls the blend of dry and reverb processed audio
      @discussion
          This property controls the amount of the source's audio that will be processed by the reverb 
          in AVAudioEnvironmentNode. A value of 0.5 will result in an equal blend of dry and processed 
          (wet) audio.
   
          Range:      0.0 (completely dry) -> 1.0 (completely wet)
          Default:    0.0
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var reverbBlend: Float

  /*! @property obstruction
      @abstract Simulates filtering of the direct path of sound due to an obstacle
      @discussion
          Only the direct path of sound between the source and listener is blocked.
   
          Range:      -100.0 -> 0.0 dB
          Default:    0.0
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var obstruction: Float

  /*! @property occlusion
      @abstract Simulates filtering of the direct and reverb paths of sound due to an obstacle
      @discussion
          Both the direct and reverb paths of sound between the source and listener are blocked.
   
          Range:      -100.0 -> 0.0 dB
          Default:    0.0
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var occlusion: Float

  /*! @property position
      @abstract The location of the source in the 3D environment
      @discussion
          The coordinates are specified in meters.
   
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var position: AVAudio3DPoint
}

/*!
 @class AVAudioUnitMIDIInstrument
 @abstract Base class for sample synthesizers.
 @discussion
    This base class represents audio units of type kAudioUnitType_MusicDevice or kAudioUnitType_RemoteInstrument. This can be used in a chain
    that processes realtime input (live) and has general concept of music events i.e. notes.
 */
@available(OSX 10.10, *)
class AVAudioUnitMIDIInstrument : AVAudioUnit, AVAudioMixing {

  /*! @method initWithAudioComponentDescription:
   @abstract initialize the node with the component description
   @param description
      audio component description structure that describes the audio component of type kAudioUnitType_MusicDevice
      or kAudioUnitType_RemoteInstrument.
   */
  init(audioComponentDescription description: AudioComponentDescription)

  /*! @method startNote:withVelocity:onChannel:
   @abstract sends a MIDI Note On event to the instrument
   @param note
      the note number (key) to play.
      Range: 0 -> 127
   @param velocity
      specifies the volume with which the note is played.
      Range: 0 -> 127
   @param channel
      the channel number to which the event is sent.
   */
  func startNote(note: UInt8, withVelocity velocity: UInt8, onChannel channel: UInt8)

  /*! @method stopNote:onChannel:
   @abstract sends a MIDI Note Off event to the instrument
   @param note
      the note number (key) to stop
      Range: 0 -> 127
   @param channel
      the channel number to which the event is sent. 
  
   */
  func stopNote(note: UInt8, onChannel channel: UInt8)

  /*! @method sendController:withValue:onChannel:
   @abstract send a MIDI controller event to the instrument.
   @param controller
      a standard MIDI controller number. 
      Range: 0 -> 127
   @param  value
      value for the controller. 
      Range: 0 -> 127
   @param channel
      the channel number to which the event is sent. 
   
   */
  func sendController(controller: UInt8, withValue value: UInt8, onChannel channel: UInt8)

  /*! @method sendPitchBend:onChannel:
   @abstract sends MIDI Pitch Bend event to the instrument.
   @param pitchbend
      value of the pitchbend
      Range: 0 -> 16383
   @param channel
      the channel number to which the pitch bend message is sent
   
   */
  func sendPitchBend(pitchbend: UInt16, onChannel channel: UInt8)

  /*! @method sendPressure:onChannel:
   @abstract sends MIDI channel pressure event to the instrument.
   @param pressure 
      value of the pressure.
      Range: 0 -> 127
   @param channel
      the channel number to which the event is sent. 
  
   */
  func sendPressure(pressure: UInt8, onChannel channel: UInt8)

  /*! @method sendPressureForKey:withValue:onChannel:
   @abstract sends MIDI Polyphonic key pressure event to the instrument
   @param key
      the key (note) number to which the pressure event applies
      Range: 0 -> 127
   @param value
      value of the pressure
      Range: 0 -> 127
   @param channel
      channel number to which the event is sent. 
  
   */
  func sendPressureForKey(key: UInt8, withValue value: UInt8, onChannel channel: UInt8)

  /*! @method sendProgramChange:onChannel:
   @abstract sends MIDI Program Change event to the instrument
   @param program
      the program number.
      Range: 0 -> 127
   @param channel
      channel number to which the event is sent.
   @discussion
      the instrument will be loaded from the bank that has been previous set by MIDI Bank Select
      controller messages (0 and 31). If none has been set, bank 0 will be used. 
   */
  func sendProgramChange(program: UInt8, onChannel channel: UInt8)

  /*! @method sendProgramChange:bankMSB:bankLSB:onChannel:
   @abstract sends a MIDI Program Change and Bank Select events to the instrument
   @param program
      specifies the program (preset) number within the bank to load.
      Range: 0 -> 127
   @param bankMSB
      specifies the most significant byte value for the bank to select.
      Range: 0 -> 127
   @param bankLSB
      specifies the least significant byte value for the bank to select.
      Range: 0 -> 127
   @param channel
      channel number to which the events are sent.
   @discussion
   
   */
  func sendProgramChange(program: UInt8, bankMSB: UInt8, bankLSB: UInt8, onChannel channel: UInt8)

  /*! @method sendMIDIEvent:data1:data2:
   @abstract sends a MIDI event which contains two data bytes to the instrument.
   @param midiStatus
      the STATUS value of the MIDI event
   @param data1
      the first data byte of the MIDI event
   @param data2
      the second data byte of the MIDI event.
    */
  func sendMIDIEvent(midiStatus: UInt8, data1: UInt8, data2: UInt8)

  /*! @method sendMIDIEvent:data1:
   @abstract sends a MIDI event which contains one data byte to the instrument.
   @param midiStatus
      the STATUS value of the MIDI event
   @param data1
      the first data byte of the MIDI event
   */
  func sendMIDIEvent(midiStatus: UInt8, data1: UInt8)

  /*! @method sendMIDISysExEvent:
   @abstract sends a MIDI System Exclusive event to the instrument.
   @param midiData
      a NSData object containing the complete SysEx data including start(F0) and termination(F7) bytes.
   
   */
  func sendMIDISysExEvent(midiData: NSData)
  init()

  /*! @method destinationForMixer:bus:
  	@abstract Returns the AVAudioMixingDestination object corresponding to specified mixer node and
  		its input bus
  	@discussion
  		When a source node is connected to multiple mixers downstream, setting AVAudioMixing 
  		properties directly on the source node will apply the change to all the mixers downstream. 
  		If you want to set/get properties on a specific mixer, use this method to get the 
  		corresponding AVAudioMixingDestination and set/get properties on it. 
   
  		Note:
  		- Properties set on individual AVAudioMixingDestination instances will not reflect at the
  			source node level.
  
  		- AVAudioMixingDestination reference returned by this method could become invalid when
  			there is any disconnection between the source and the mixer node. Hence this reference
  			should not be retained and should be fetched every time you want to set/get properties 
  			on a specific mixer.
   
  		If the source node is not connected to the specified mixer/input bus, this method
  		returns nil.
  		Calling this on an AVAudioMixingDestination instance returns self if the specified
  		mixer/input bus match its connection point, otherwise returns nil.
  */
  @available(OSX 10.11, *)
  func destinationForMixer(mixer: AVAudioNode, bus: AVAudioNodeBus) -> AVAudioMixingDestination?

  /*! @property volume
      @abstract Set a bus's input volume
      @discussion
          Range:      0.0 -> 1.0
          Default:    1.0
          Mixers:     AVAudioMixerNode, AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var volume: Float

  /*! @property pan
      @abstract Set a bus's stereo pan
      @discussion
          Range:      -1.0 -> 1.0
          Default:    0.0
          Mixer:      AVAudioMixerNode
  */
  @available(OSX 10.10, *)
  var pan: Float

  /*! @property renderingAlgorithm
      @abstract Type of rendering algorithm used
      @discussion
          Depending on the current output format of the AVAudioEnvironmentNode, only a subset of the 
          rendering algorithms may be supported. An array of valid rendering algorithms can be 
          retrieved by calling applicableRenderingAlgorithms on AVAudioEnvironmentNode.
   
          Default:    AVAudio3DMixingRenderingAlgorithmEqualPowerPanning
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var renderingAlgorithm: AVAudio3DMixingRenderingAlgorithm

  /*! @property rate
      @abstract Changes the playback rate of the input signal
      @discussion
          A value of 2.0 results in the output audio playing one octave higher.
          A value of 0.5, results in the output audio playing one octave lower.
       
          Range:      0.5 -> 2.0
          Default:    1.0
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var rate: Float

  /*! @property reverbBlend
      @abstract Controls the blend of dry and reverb processed audio
      @discussion
          This property controls the amount of the source's audio that will be processed by the reverb 
          in AVAudioEnvironmentNode. A value of 0.5 will result in an equal blend of dry and processed 
          (wet) audio.
   
          Range:      0.0 (completely dry) -> 1.0 (completely wet)
          Default:    0.0
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var reverbBlend: Float

  /*! @property obstruction
      @abstract Simulates filtering of the direct path of sound due to an obstacle
      @discussion
          Only the direct path of sound between the source and listener is blocked.
   
          Range:      -100.0 -> 0.0 dB
          Default:    0.0
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var obstruction: Float

  /*! @property occlusion
      @abstract Simulates filtering of the direct and reverb paths of sound due to an obstacle
      @discussion
          Both the direct and reverb paths of sound between the source and listener are blocked.
   
          Range:      -100.0 -> 0.0 dB
          Default:    0.0
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var occlusion: Float

  /*! @property position
      @abstract The location of the source in the 3D environment
      @discussion
          The coordinates are specified in meters.
   
          Mixer:      AVAudioEnvironmentNode
  */
  @available(OSX 10.10, *)
  var position: AVAudio3DPoint
}
@available(OSX 10.10, *)
enum AVAudioUnitReverbPreset : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case SmallRoom
  case MediumRoom
  case LargeRoom
  case MediumHall
  case LargeHall
  case Plate
  case MediumChamber
  case LargeChamber
  case Cathedral
  case LargeRoom2
  case MediumHall2
  case MediumHall3
  case LargeHall2
}

/*! @class AVAudioUnitReverb
    @abstract an AVAudioUnitEffect that implements a reverb
    @discussion
        A reverb simulates the acoustic characteristics of a particular environment.
        Use the different presets to simulate a particular space and blend it in with
        the original signal using the wetDryMix parameter.
 
*/
@available(OSX 10.10, *)
class AVAudioUnitReverb : AVAudioUnitEffect {

  /*! @method loadFactoryPreset:
      @abstract load a reverb preset
      Default:    AVAudioUnitReverbPresetMediumHall
  */
  func loadFactoryPreset(preset: AVAudioUnitReverbPreset)

  /*! @property wetDryMix
      @abstract
      Blend of the wet and dry signals
      Range:      0 (all dry) -> 100 (all wet)
      Unit:       Percent
  */
  var wetDryMix: Float

  /*! @method initWithAudioComponentDescription:
      @abstract Create an AVAudioUnitEffect object.
      
      @param audioComponentDescription
      @abstract AudioComponentDescription of the audio unit to be instantiated.
      @discussion
      The componentType must be one of these types
      kAudioUnitType_Effect
      kAudioUnitType_MusicEffect
      kAudioUnitType_Panner
      kAudioUnitType_RemoteEffect
      kAudioUnitType_RemoteMusicEffect
  
  */
  init(audioComponentDescription: AudioComponentDescription)
  init()
}

/*!
 @class AVAudioUnitSampler
 @abstract Apple's sampler audio unit.
 @discussion
    An AVAudioUnit for Apple's Sampler Audio Unit. The sampler can be configured by loading
    instruments from different types of files such as an aupreset, a DLS or SF2 sound bank,
    an EXS24 instrument, a single audio file, or an array of audio files.

    The output is a single stereo bus. 
*/
@available(OSX 10.10, *)
class AVAudioUnitSampler : AVAudioUnitMIDIInstrument {

  /*! @method loadSoundBankInstrumentAtURL:program:bankMSB:bankLSB:error:
  	@abstract loads a specific instrument from the specified sound bank
  	@param bankURL
  		URL for a Soundbank file. The file can be either a DLS bank (.dls) or a SoundFont bank (.sf2).
  	@param program
  		program number for the instrument to load
  	@param bankMSB
  		MSB for the bank number for the instrument to load.  This is usually 0x79 for melodic
  		instruments and 0x78 for percussion instruments.
  	@param bankLSB
  		LSB for the bank number for the instrument to load.  This is often 0, and represents the "bank variation".
  	@param outError
      	the status of the operation
  	@discussion
   		This method reads from file and allocates memory, so it should not be called on a real time thread.
   */
  func loadSoundBankInstrumentAt(bankURL: NSURL, program: UInt8, bankMSB: UInt8, bankLSB: UInt8) throws

  /*! @method loadInstrumentAtURL:error:
  	@abstract configures the sampler by loading the specified preset file.
  	@param instrumentURL
      	URL to the preset file or audio file
  	@param outError
  		the status of the operation
  	@discussion
  		The file can be of one of the following types: Logic/GarageBand EXS24 instrument,
  		the Sampler AU's native aupreset, or an audio file (eg. .caf, .aiff, .wav, .mp3).
  	 
  		If an audio file URL is loaded, it will become the sole sample in a new default instrument.
  		Any information contained in the file regarding its keyboard placement (e.g. root key,
  		key range) will be used.
  		This method reads from file and allocates memory, so it should not be called on a real time thread.
   
   */
  func loadInstrumentAt(instrumentURL: NSURL) throws

  /*! @method loadAudioFilesAtURLs:error:
  	@abstract configures the sampler by loading a set of audio files.
  	@param audioFiles
  		array of URLs for audio files to be loaded
  	@param outError
  		the status of the operation
  	@discussion
  		The audio files are loaded into a new default instrument with each audio file placed
  		into its own sampler zone. Any information contained in the audio file regarding
  		their placement on the keyboard (e.g. root key, key range) will be used.
  		This method reads from file and allocates memory, so it should not be called on a real time thread.
   
   */
  func loadAudioFilesAtURLs(audioFiles: [NSURL]) throws

  /*! @property stereoPan
  	@abstract
  		adjusts the pan for all the notes played.
  		Range:     -1 -> +1
  		Default:   0
   */
  var stereoPan: Float

  /*! @property masterGain
  	@abstract
      	adjusts the gain of all the notes played
  		Range:     -90.0 -> +12 db
  		Default: 0 db
   */
  var masterGain: Float

  /*! @property globalTuning
  	@abstract
  		adjusts the tuning of all the notes played.
  		Range:     -2400 -> +2400 cents
  		Default:   0
   */
  var globalTuning: Float

  /*! @method initWithAudioComponentDescription:
   @abstract initialize the node with the component description
   @param description
      audio component description structure that describes the audio component of type kAudioUnitType_MusicDevice
      or kAudioUnitType_RemoteInstrument.
   */
  init(audioComponentDescription description: AudioComponentDescription)
  init()
}

/*! @class AVAudioUnitTimeEffect
    @abstract an AVAudioUnit that processes audio in non real-time
    @discussion
    An AVAudioUnitTimeEffect represents an audio unit of type aufc.
    These effects do not process audio in real-time. The varispeed
    unit is an example of a time effect unit.
 
*/
@available(OSX 10.10, *)
class AVAudioUnitTimeEffect : AVAudioUnit {

  /*! @method initWithAudioComponentDescription:
      @abstract create an AVAudioUnitTimeEffect object
      
      @param audioComponentDescription
      @abstract AudioComponentDescription of the audio unit to be initialized
      @discussion 
      The componentType must be kAudioUnitType_FormatConverter
  */
  init(audioComponentDescription: AudioComponentDescription)

  /*! @property bypass
      @abstract bypass state of the audio unit
  */
  var bypass: Bool
  init()
}

/*! @class AVAudioUnitTimePitch
    @abstract an AVAudioUnitTimeEffect that provides good quality time stretching and pitch shifting
    @discussion
        In this time effect, the playback rate and pitch parameters function independently of each other
 
*/
@available(OSX 10.10, *)
class AVAudioUnitTimePitch : AVAudioUnitTimeEffect {

  /*! @property rate
      @abstract playback rate of the input signal
   
      Range:      1/32 -> 32.0
      Default:    1.0
      Unit:       Generic
  */
  var rate: Float

  /*! @property pitch
      @abstract amount by which the input signal is pitch shifted
      @discussion
                1 octave  = 1200 cents
      1 musical semitone  = 100 cents
   
      Range:      -2400 -> 2400
      Default:    1.0
      Unit:       Cents
  */
  var pitch: Float

  /*! @property overlap
      @abstract amount of overlap between segments of the input audio signal
      @discussion
      A higher value results in fewer artifacts in the output signal.
      This parameter also impacts the amount of CPU used.
   
      Range:      3.0 -> 32.0
      Default:    8.0
      Unit:       Generic
  */
  var overlap: Float

  /*! @method initWithAudioComponentDescription:
      @abstract create an AVAudioUnitTimeEffect object
      
      @param audioComponentDescription
      @abstract AudioComponentDescription of the audio unit to be initialized
      @discussion 
      The componentType must be kAudioUnitType_FormatConverter
  */
  init(audioComponentDescription: AudioComponentDescription)
  init()
}

/*! @class AVAudioUnitVarispeed
    @abstract an AVAudioUnitTimeEffect that can be used to control the playback rate 
*/
@available(OSX 10.10, *)
class AVAudioUnitVarispeed : AVAudioUnitTimeEffect {

  /*! @property rate
      @abstract controls the playback rate of the audio signal
      @discussion
      Since this unit resamples the input signal, changing the playback rate also changes the pitch.
      
      i.e. changing the rate to 2.0 results in the output audio playing one octave higher.
      Similarly changing the rate to 0.5, results in the output audio playing one octave lower.
   
      The playback rate and pitch can be calculated as
                    rate  = pow(2, cents/1200.0)
          pitch in cents  = 1200.0 * log2(rate)
      
      Where,    1 octave  = 1200 cents
      1 musical semitone  = 100 cents
   
      Range:      0.25 -> 4.0
      Default:    1.0
      Unit:       Generic
  */
  var rate: Float

  /*! @method initWithAudioComponentDescription:
      @abstract create an AVAudioUnitTimeEffect object
      
      @param audioComponentDescription
      @abstract AudioComponentDescription of the audio unit to be initialized
      @discussion 
      The componentType must be kAudioUnitType_FormatConverter
  */
  init(audioComponentDescription: AudioComponentDescription)
  init()
}

/*!
 @constant AVCaptureDeviceWasConnectedNotification
 @abstract
    Posted when a device becomes available on the system.

 @discussion
    The notification object is an AVCaptureDevice instance representing the device that became available.
*/
@available(OSX 10.7, *)
let AVCaptureDeviceWasConnectedNotification: String

/*!
 @constant AVCaptureDeviceWasDisconnectedNotification
 @abstract
    Posted when a device becomes unavailable on the system.

 @discussion
    The notification object is an AVCaptureDevice instance representing the device that became unavailable.
*/
@available(OSX 10.7, *)
let AVCaptureDeviceWasDisconnectedNotification: String

/*!
 @class AVCaptureDevice
 @abstract
    An AVCaptureDevice represents a physical device that provides realtime input media data, such as video and audio.

 @discussion
    Each instance of AVCaptureDevice corresponds to a device, such as a camera or microphone. Instances of
    AVCaptureDevice cannot be created directly. An array of all currently available devices can also be obtained using
    the devices class method. Devices can provide one or more streams of a given media type. Applications can search
    for devices that provide media of a specific type using the devicesWithMediaType: and defaultDeviceWithMediaType:
    class methods.

    Instances of AVCaptureDevice can be used to provide media data to an AVCaptureSession by creating an
    AVCaptureDeviceInput with the device and adding that to the capture session.
*/
@available(OSX 10.7, *)
class AVCaptureDevice : NSObject {

  /*!
   @method devices
   @abstract
      Returns an array of devices currently available for use as media input sources.
   
   @result
      An NSArray of AVCaptureDevice instances for each available device.
  
   @discussion
      This method returns an array of AVCaptureDevice instances for input devices currently connected and available for
      capture. The returned array contains all devices that are available at the time the method is called. Applications
      should observe AVCaptureDeviceWasConnectedNotification and AVCaptureDeviceWasDisconnectedNotification to be notified
      when the list of available devices has changed.
  */
  class func devices() -> [AnyObject]!

  /*!
   @method devicesWithMediaType:
   @abstract
      Returns an array of devices currently available for use as sources of media with the given media type.
  
   @param mediaType
      The media type, such as AVMediaTypeVideo, AVMediaTypeAudio, or AVMediaTypeMuxed, supported by each returned device.
   @result
      An NSArray of AVCaptureDevice instances for each available device.
  
   @discussion
      This method returns an array of AVCaptureDevice instances for input devices currently connected and available for
      capture that provide media of the given type. Media type constants are defined in AVMediaFormat.h. The returned
      array contains all devices that are available at the time the method is called. Applications should observe
      AVCaptureDeviceWasConnectedNotification and AVCaptureDeviceWasDisconnectedNotification to be notified when the list
      of available devices has changed.
  */
  class func devicesWithMediaType(mediaType: String!) -> [AnyObject]!

  /*!
   @method defaultDeviceWithMediaType:
   @abstract
      Returns an AVCaptureDevice instance for the default device of the given media type.
  
   @param mediaType
      The media type, such as AVMediaTypeVideo, AVMediaTypeAudio, or AVMediaTypeMuxed, supported by the returned device.
   @result
      The default device with the given media type, or nil if no device with that media type exists.
  
   @discussion
      This method returns the default device of the given media type currently available on the system. For example, for
      AVMediaTypeVideo, this method will return the built in camera that is primarily used for capture and recording.
      Media type constants are defined in AVMediaFormat.h.
  */
  class func defaultDeviceWithMediaType(mediaType: String!) -> AVCaptureDevice!

  /*!
   @method deviceWithUniqueID:
   @abstract
      Returns an AVCaptureDevice instance with the given unique ID.
  
   @param deviceUniqueID
      The unique ID of the device instance to be returned.
   @result
      An AVCaptureDevice instance with the given unique ID, or nil if no device with that unique ID is available.
  
   @discussion
      Every available capture device has a unique ID that persists on one system across device connections and
      disconnections, application restarts, and reboots of the system itself. This method can be used to recall or track
      the status of a specific device whose unique ID has previously been saved.
  */
  /*not inherited*/ init!(uniqueID deviceUniqueID: String!)

  /*!
   @property uniqueID
   @abstract
      An ID unique to the model of device corresponding to the receiver.
  
   @discussion
      Every available capture device has a unique ID that persists on one system across device connections and
      disconnections, application restarts, and reboots of the system itself. Applications can store the value returned by
      this property to recall or track the status of a specific device in the future.
  */
  var uniqueID: String! { get }

  /*!
   @property modelID
   @abstract
      The model ID of the receiver.
  
   @discussion
      The value of this property is an identifier unique to all devices of the same model. The value is persistent across
      device connections and disconnections, and across different systems. For example, the model ID of the camera built
      in to two identical iPhone models will be the same even though they are different physical devices.
  */
  var modelID: String! { get }

  /*!
   @property localizedName
   @abstract
      A localized human-readable name for the receiver.
   
   @discussion
      This property can be used for displaying the name of a capture device in a user interface.
  */
  var localizedName: String! { get }

  /*!
   @property manufacturer
   @abstract
      The human-readable manufacturer name for the receiver.
  
   @discussion
      This property can be used to identify capture devices from a particular manufacturer.  All Apple devices return "Apple Inc.".
      Devices from third party manufacturers may return an empty string.
  */
  @available(OSX 10.9, *)
  var manufacturer: String! { get }

  /*!
   @property transportType
   @abstract
      The transport type of the receiver (e.g. USB, PCI, etc).
  
   @discussion
      This property can be used to discover the transport type of a capture device.  Transport types
      are defined in <IOKit/audio/IOAudioTypes.h> as kIOAudioDeviceTransportType*.
  */
  @available(OSX 10.7, *)
  var transportType: Int32 { get }

  /*!
   @method hasMediaType:
   @abstract
      Returns whether the receiver provides media with the given media type.
  
   @param mediaType
      A media type, such as AVMediaTypeVideo, AVMediaTypeAudio, or AVMediaTypeMuxed.
   @result
      YES if the device outputs the given media type, NO otherwise.
   
   @discussion
      Media type constants are defined in AVMediaFormat.h.
  */
  func hasMediaType(mediaType: String!) -> Bool

  /*!
   @method lockForConfiguration:
   @abstract
      Requests exclusive access to configure device hardware properties.
  
   @param outError
      On return, if the device could not be locked, points to an NSError describing why the failure occurred.
   @result
      A BOOL indicating whether the device was successfully locked for configuration.
  
   @discussion
      In order to set hardware properties on an AVCaptureDevice, such as focusMode and exposureMode, clients must first
      acquire a lock on the device.  Clients should only hold the device lock if they require settable device properties
      to remain unchanged.  Holding the device lock unnecessarily may degrade capture quality in other applications
      sharing the device.
  */
  func lockForConfiguration() throws

  /*!
   @method unlockForConfiguration
   @abstract
      Release exclusive control over device hardware properties.
  
   @discussion
      This method should be called to match an invocation of lockForConfiguration: when an application no longer needs to
      keep device hardware properties from changing automatically.
  */
  func unlockForConfiguration()

  /*!
   @method supportsAVCaptureSessionPreset:
   @abstract
      Returns whether the receiver can be used in an AVCaptureSession configured with the given preset.
  
   @param preset
      An AVCaptureSession preset.
   @result
      YES if the receiver can be used with the given preset, NO otherwise.
  
   @discussion
      An AVCaptureSession instance can be associated with a preset that configures its inputs and outputs to fulfill common
      use cases. This method can be used to determine if the receiver can be used in a capture session with the given
      preset. Presets are defined in AVCaptureSession.h.
  */
  func supportsAVCaptureSessionPreset(preset: String!) -> Bool

  /*!
   @property connected
   @abstract
      Indicates whether the device is connected and available to the system.
  
   @discussion
      The value of this property is a BOOL indicating whether the device represented by the receiver is connected and
      available for use as a capture device. Clients can key value observe the value of this property to be notified when
      a device is no longer available. When the value of this property becomes NO for a given instance, it will not become
      YES again. If the same physical device again becomes available to the system, it will be represented using a new
      instance of AVCaptureDevice.
  */
  var isConnected: Bool { get }

  /*!
   @property inUseByAnotherApplication
   @abstract
      Indicates whether the device is in use by another application.
  
   @discussion
      The value of this property is a BOOL indicating whether the device represented by the receiver is
      in use by another application. Clients can key value observe the value of this property to be notified when
      another app starts or stops using this device.
  */
  @available(OSX 10.7, *)
  var isInUseByAnotherApplication: Bool { get }

  /*!
   @property suspended
   @abstract
      Indicates whether the device is suspended.
  
   @discussion
      The value of this property is a BOOL indicating whether the device represented by the receiver is
      currently suspended.  Some devices disallow data capture due to a feature on the device.
      For example, isSuspended returns YES for the external iSight when its privacy iris is closed, or 
      for the internal iSight on a notebook when the notebook's display is closed.  Clients can key value 
      observe the value of this property to be notified when the device becomes suspended or unsuspended.
  */
  @available(OSX 10.7, *)
  var isSuspended: Bool { get }

  /*!
   @property linkedDevices
   @abstract
      An array of AVCaptureDevice objects physically linked to the receiver.
  
   @discussion
      The value of this property is an array of AVCaptureDevice objects that are a part of the same physical 
      device as the receiver.  For example, for the external iSight camera, linkedDevices returns an array 
      containing an AVCaptureDevice for the external iSight microphone.
  */
  @available(OSX 10.7, *)
  var linkedDevices: [AnyObject]! { get }

  /*!
   @property formats
   @abstract
      An array of AVCaptureDeviceFormat objects supported by the receiver.
  
   @discussion
      This property can be used to enumerate the formats natively supported by the receiver.  The
      capture device's activeFormat property may be set to one of the formats in this array.  Clients 
      can observe automatic changes to the receiver's formats by key value observing this property.
  */
  @available(OSX 10.7, *)
  var formats: [AnyObject]! { get }

  /*!
   @property activeFormat
   @abstract
      The currently active format of the receiver.
  
   @discussion
      This property can be used to get or set the currently active device format.
      -setActiveFormat: throws an NSInvalidArgumentException if set to a format not present in the formats
      array.  -setActiveFormat: throws an NSGenericException if called without first obtaining exclusive
      access to the receiver using lockForConfiguration:.  Clients can observe automatic changes to the 
      receiver's activeFormat by key value observing this property.
   
      On iOS, use of AVCaptureDevice's setActiveFormat: and AVCaptureSession's setSessionPreset: are mutually
      exclusive.  If you set a capture device's active format, the session to which it is attached changes its
      preset to AVCaptureSessionPresetInputPriority.  Likewise if you set the AVCaptureSession's sessionPreset
      property, the session assumes control of its input devices, and configures their activeFormat appropriately.
      Note that audio devices do not expose any user-configurable formats on iOS.  To configure audio input on
      iOS, you should use the AVAudioSession APIs instead (see AVAudioSession.h).
      
      The activeFormat, activeVideoMinFrameDuration, and activeVideoMaxFrameDuration properties may be set simultaneously
      by using AVCaptureSession's begin/commitConfiguration methods:
   
      [session beginConfiguration]; // the session to which the receiver's AVCaptureDeviceInput is added.
      if ( [device lockForConfiguration:&error] ) {
          [device setActiveFormat:newFormat];
          [device setActiveVideoMinFrameDuration:newMinDuration];
          [device setActiveVideoMaxFrameDuration:newMaxDuration];
  	    [device unlockForConfiguration];
      }
      [session commitConfiguration]; // The new format and frame rates are applied together in commitConfiguration
   
  	Note that when configuring a session to use an active format intended for high resolution still photography and applying one or more of the
  	following operations to an AVCaptureVideoDataOutput, the system may not meet the target framerate: zoom, orientation changes, format conversion.
  */
  @available(OSX 10.7, *)
  var activeFormat: AVCaptureDeviceFormat!

  /*!
   @property activeVideoMinFrameDuration
   @abstract
      A property indicating the receiver's current active minimum frame duration (the reciprocal of its max frame rate).
  
   @discussion
      An AVCaptureDevice's activeVideoMinFrameDuration property is the reciprocal of its active
      maximum frame rate.  To limit the max frame rate of the capture device, clients may
      set this property to a value supported by the receiver's activeFormat (see AVCaptureDeviceFormat's 
      videoSupportedFrameRateRanges property).  Clients may set this property's value to kCMTimeInvalid to
      return activeVideoMinFrameDuration to its default value for the given activeFormat.
      -setActiveVideoMinFrameDuration: throws an NSInvalidArgumentException if set to an unsupported value.  
      -setActiveVideoMinFrameDuration: throws an NSGenericException if called without first obtaining exclusive 
      access to the receiver using lockForConfiguration:.  Clients can observe automatic changes to the receiver's 
      activeVideoMinFrameDuration by key value observing this property.
   
      On iOS, the receiver's activeVideoMinFrameDuration resets to its default value under the following conditions:
  	    - The receiver's activeFormat changes
          - The receiver's AVCaptureDeviceInput's session's sessionPreset changes
          - The receiver's AVCaptureDeviceInput is added to a session
   
      When exposureMode is AVCaptureExposureModeCustom, setting the activeVideoMinFrameDuration affects max frame
      rate, but not exposureDuration. You may use setExposureModeCustomWithDuration:ISO:completionHandler:
      to set a shorter exposureDuration than your activeVideoMinFrameDuration, if desired.
  */
  @available(OSX 10.7, *)
  var activeVideoMinFrameDuration: CMTime

  /*!
   @property activeVideoMaxFrameDuration
   @abstract
      A property indicating the receiver's current active maximum frame duration (the reciprocal of its min frame rate).
  
   @discussion
      An AVCaptureDevice's activeVideoMaxFrameDuration property is the reciprocal of its active
      minimum frame rate.  To limit the min frame rate of the capture device, clients may
      set this property to a value supported by the receiver's activeFormat (see AVCaptureDeviceFormat's 
      videoSupportedFrameRateRanges property).  Clients may set this property's value to kCMTimeInvalid to
      return activeVideoMaxFrameDuration to its default value for the given activeFormat.
      -setActiveVideoMaxFrameDuration: throws an NSInvalidArgumentException if set to an unsupported value.  
      -setActiveVideoMaxFrameDuration: throws an NSGenericException if called without first obtaining exclusive 
      access to the receiver using lockForConfiguration:.  Clients can observe automatic changes to the receiver's 
      activeVideoMaxFrameDuration by key value observing this property.
   
      On iOS, the receiver's activeVideoMaxFrameDuration resets to its default value under the following conditions:
  	    - The receiver's activeFormat changes
          - The receiver's AVCaptureDeviceInput's session's sessionPreset changes
          - The receiver's AVCaptureDeviceInput is added to a session
   
      When exposureMode is AVCaptureExposureModeCustom, frame rate and exposure duration are interrelated.
      If you call setExposureModeCustomWithDuration:ISO:completionHandler: with an exposureDuration longer 
      than the current activeVideoMaxFrameDuration, the activeVideoMaxFrameDuration will be lengthened to
      accommodate the longer exposure time.  Setting a shorter exposure duration does not automatically
      change the activeVideoMinFrameDuration or activeVideoMaxFrameDuration. To explicitly increase the
      frame rate in custom exposure mode, you must set the activeVideoMaxFrameDuration to a shorter value.
      If your new max frame duration is shorter than the current exposureDuration, the exposureDuration will
      shorten as well to accommodate the new frame rate.
  */
  @available(OSX 10.9, *)
  var activeVideoMaxFrameDuration: CMTime

  /*!
   @property inputSources
   @abstract
      An array of AVCaptureDeviceInputSource objects supported by the receiver.
   
   @discussion
      Some devices can capture data from one of multiple data sources (different input jacks on the same 
      audio device, for example).  For devices with multiple possible data sources, inputSources can be 
      used to enumerate the possible choices. Clients can observe automatic changes to the receiver's 
      inputSources by key value observing this property.
  */
  @available(OSX 10.7, *)
  var inputSources: [AnyObject]! { get }

  /*!
   @property activeInputSource
   @abstract
      The currently active input source of the receiver.
  
   @discussion
      This property can be used to get or set the currently active device input source.
      -setActiveInputSource: throws an NSInvalidArgumentException if set to a value not present in the
      inputSources array.  -setActiveInputSource: throws an NSGenericException if called without first 
      obtaining exclusive access to the receiver using lockForConfiguration:.  Clients can observe automatic  
      changes to the receiver's activeInputSource by key value observing this property.
  */
  @available(OSX 10.7, *)
  var activeInputSource: AVCaptureDeviceInputSource!
  init()
}

/*!
 @enum AVCaptureDevicePosition
 @abstract
    Constants indicating the physical position of an AVCaptureDevice's hardware on the system.

 @constant AVCaptureDevicePositionUnspecified
    Indicates that the device's position relative to the system hardware is unspecified.
 @constant AVCaptureDevicePositionBack
    Indicates that the device is physically located on the back of the system hardware.
 @constant AVCaptureDevicePositionFront
    Indicates that the device is physically located on the front of the system hardware.
*/
@available(OSX 10.7, *)
enum AVCaptureDevicePosition : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unspecified
  case Back
  case Front
}
extension AVCaptureDevice {

  /*!
   @property position
   @abstract
      Indicates the physical position of an AVCaptureDevice's hardware on the system.
  
   @discussion
      The value of this property is an AVCaptureDevicePosition indicating where the receiver's device is physically
      located on the system hardware.
  */
  var position: AVCaptureDevicePosition { get }
}

/*!
 @enum AVCaptureFlashMode
 @abstract
    Constants indicating the mode of the flash on the receiver's device, if it has one.

 @constant AVCaptureFlashModeOff
    Indicates that the flash should always be off.
 @constant AVCaptureFlashModeOn
    Indicates that the flash should always be on.
 @constant AVCaptureFlashModeAuto
    Indicates that the flash should be used automatically depending on ambient light conditions.
*/
@available(OSX 10.7, *)
enum AVCaptureFlashMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Off
  case On
  case Auto
}
extension AVCaptureDevice {

  /*!
   @property hasFlash
   @abstract
      Indicates whether the receiver has a flash.
  
   @discussion
      The value of this property is a BOOL indicating whether the receiver has a flash. The receiver's flashMode property
      can only be set when this property returns YES.
  */
  var hasFlash: Bool { get }

  /*!
   @method isFlashModeSupported:
   @abstract
      Returns whether the receiver supports the given flash mode.
  
   @param flashMode
      An AVCaptureFlashMode to be checked.
   @result
      YES if the receiver supports the given flash mode, NO otherwise.
  
   @discussion
      The receiver's flashMode property can only be set to a certain mode if this method returns YES for that mode.
  */
  func isFlashModeSupported(flashMode: AVCaptureFlashMode) -> Bool

  /*!
   @property flashMode
   @abstract
      Indicates current mode of the receiver's flash, if it has one.
  
   @discussion
      The value of this property is an AVCaptureFlashMode that determines the mode of the 
      receiver's flash, if it has one.  -setFlashMode: throws an NSInvalidArgumentException
      if set to an unsupported value (see -isFlashModeSupported:).  -setFlashMode: throws an NSGenericException 
      if called without first obtaining exclusive access to the receiver using lockForConfiguration:.
      Clients can observe automatic changes to the receiver's flashMode by key value observing this property.
  */
  var flashMode: AVCaptureFlashMode
}

/*!
 @enum AVCaptureTorchMode
 @abstract
    Constants indicating the mode of the torch on the receiver's device, if it has one.

 @constant AVCaptureTorchModeOff
    Indicates that the torch should always be off.
 @constant AVCaptureTorchModeOn
    Indicates that the torch should always be on.
 @constant AVCaptureTorchModeAuto
    Indicates that the torch should be used automatically depending on ambient light conditions.
*/
@available(OSX 10.7, *)
enum AVCaptureTorchMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Off
  case On
  case Auto
}

/*!
  @constant AVCaptureMaxAvailableTorchLevel
    A special value that may be passed to -setTorchModeWithLevel:error: to set the torch to the
    maximum level currently available. Under thermal duress, the maximum available torch level
    may be less than 1.0.
*/
let AVCaptureMaxAvailableTorchLevel: Float
extension AVCaptureDevice {

  /*!
   @property hasTorch
   @abstract
      Indicates whether the receiver has a torch.
  
   @discussion
      The value of this property is a BOOL indicating whether the receiver has a torch. The receiver's torchMode property
      can only be set when this property returns YES.
  */
  var hasTorch: Bool { get }

  /*!
   @method isTorchModeSupported:
   @abstract
      Returns whether the receiver supports the given torch mode.
  
   @param torchMode
      An AVCaptureTorchMode to be checked.
   @result
      YES if the receiver supports the given torch mode, NO otherwise.
  
   @discussion
      The receiver's torchMode property can only be set to a certain mode if this method returns YES for that mode.
  */
  func isTorchModeSupported(torchMode: AVCaptureTorchMode) -> Bool

  /*!
   @property torchMode
   @abstract
      Indicates current mode of the receiver's torch, if it has one.
  
   @discussion
      The value of this property is an AVCaptureTorchMode that determines the mode of the 
      receiver's torch, if it has one.  -setTorchMode: throws an NSInvalidArgumentException
      if set to an unsupported value (see -isTorchModeSupported:).  -setTorchMode: throws an NSGenericException 
      if called without first obtaining exclusive access to the receiver using lockForConfiguration:.
      Clients can observe automatic changes to the receiver's torchMode by key value observing this property.
  */
  var torchMode: AVCaptureTorchMode
}

/*!
 @enum AVCaptureFocusMode
 @abstract
    Constants indicating the mode of the focus on the receiver's device, if it has one.

 @constant AVCaptureFocusModeLocked
    Indicates that the focus should be locked at the lens' current position.
 @constant AVCaptureFocusModeAutoFocus
    Indicates that the device should autofocus once and then change the focus mode to AVCaptureFocusModeLocked.
 @constant AVCaptureFocusModeContinuousAutoFocus
    Indicates that the device should automatically focus when needed.
*/
@available(OSX 10.7, *)
enum AVCaptureFocusMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Locked
  case AutoFocus
  case ContinuousAutoFocus
}
extension AVCaptureDevice {

  /*!
   @method isFocusModeSupported:
   @abstract
      Returns whether the receiver supports the given focus mode.
  
   @param focusMode
      An AVCaptureFocusMode to be checked.
   @result
      YES if the receiver supports the given focus mode, NO otherwise.
  
   @discussion
      The receiver's focusMode property can only be set to a certain mode if this method returns YES for that mode.
  */
  func isFocusModeSupported(focusMode: AVCaptureFocusMode) -> Bool

  /*!
   @property focusMode
   @abstract
      Indicates current focus mode of the receiver, if it has one.
  
   @discussion
      The value of this property is an AVCaptureFocusMode that determines the receiver's focus mode, if it has one.
      -setFocusMode: throws an NSInvalidArgumentException if set to an unsupported value (see -isFocusModeSupported:).  
      -setFocusMode: throws an NSGenericException if called without first obtaining exclusive access to the receiver 
      using lockForConfiguration:.  Clients can observe automatic changes to the receiver's focusMode by key value 
      observing this property.
  */
  var focusMode: AVCaptureFocusMode

  /*!
   @property focusPointOfInterestSupported
   @abstract
      Indicates whether the receiver supports focus points of interest.
  
   @discussion
      The receiver's focusPointOfInterest property can only be set if this property returns YES.
  */
  var focusPointOfInterestSupported: Bool { get }

  /*!
   @property focusPointOfInterest
   @abstract
      Indicates current focus point of interest of the receiver, if it has one.
  
   @discussion
      The value of this property is a CGPoint that determines the receiver's focus point of interest, if it has one. A
      value of (0,0) indicates that the camera should focus on the top left corner of the image, while a value of (1,1)
      indicates that it should focus on the bottom right. The default value is (0.5,0.5).  -setFocusPointOfInterest:
      throws an NSInvalidArgumentException if isFocusPointOfInterestSupported returns NO.  -setFocusPointOfInterest: throws 
      an NSGenericException if called without first obtaining exclusive access to the receiver using lockForConfiguration:.  
      Clients can observe automatic changes to the receiver's focusPointOfInterest by key value observing this property.  Note that
      setting focusPointOfInterest alone does not initiate a focus operation.  After setting focusPointOfInterest, call
      -setFocusMode: to apply the new point of interest.
  */
  var focusPointOfInterest: CGPoint

  /*!
   @property adjustingFocus
   @abstract
      Indicates whether the receiver is currently performing a focus scan to adjust focus.
  
   @discussion
      The value of this property is a BOOL indicating whether the receiver's camera focus is being automatically
      adjusted by means of a focus scan, because its focus mode is AVCaptureFocusModeAutoFocus or
  	AVCaptureFocusModeContinuousAutoFocus.
      Clients can observe the value of this property to determine whether the camera's focus is stable.
  	@seealso lensPosition
  	@seealso AVCaptureAutoFocusSystem
  */
  var adjustingFocus: Bool { get }
}

/*!
 @enum AVCaptureExposureMode
 @abstract
    Constants indicating the mode of the exposure on the receiver's device, if it has adjustable exposure.

 @constant AVCaptureExposureModeLocked
    Indicates that the exposure should be locked at its current value.
 @constant AVCaptureExposureModeAutoExpose
    Indicates that the device should automatically adjust exposure once and then change the exposure mode to 
    AVCaptureExposureModeLocked.
 @constant AVCaptureExposureModeContinuousAutoExposure
    Indicates that the device should automatically adjust exposure when needed.
 @constant AVCaptureExposureModeCustom
    Indicates that the device should only adjust exposure according to user provided ISO, exposureDuration values.
*/
@available(OSX 10.7, *)
enum AVCaptureExposureMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Locked
  case AutoExpose
  case ContinuousAutoExposure
}
extension AVCaptureDevice {

  /*!
   @method isExposureModeSupported:
   @abstract
      Returns whether the receiver supports the given exposure mode.
  
   @param exposureMode
      An AVCaptureExposureMode to be checked.
   @result
      YES if the receiver supports the given exposure mode, NO otherwise.
  
   @discussion
      The receiver's exposureMode property can only be set to a certain mode if this method returns YES for that mode.
  */
  func isExposureModeSupported(exposureMode: AVCaptureExposureMode) -> Bool

  /*!
   @property exposureMode
   @abstract
      Indicates current exposure mode of the receiver, if it has adjustable exposure.
  
   @discussion
      The value of this property is an AVCaptureExposureMode that determines the receiver's exposure mode, if it has
      adjustable exposure.  -setExposureMode: throws an NSInvalidArgumentException if set to an unsupported value 
      (see -isExposureModeSupported:).  -setExposureMode: throws an NSGenericException if called without first obtaining 
      exclusive access to the receiver using lockForConfiguration:. When using AVCaptureStillImageOutput with
      automaticallyEnablesStillImageStabilizationWhenAvailable set to YES (the default behavior), the receiver's ISO and 
      exposureDuration values may be overridden by automatic still image stabilization values if the scene is dark enough to 
      warrant still image stabilization.  To ensure that the receiver's ISO and exposureDuration values are honored while
      in AVCaptureExposureModeCustom or AVCaptureExposureModeLocked, you must set AVCaptureStillImageOutput's
      automaticallyEnablesStillImageStabilizationWhenAvailable property to NO. Clients can observe automatic changes to the receiver's
      exposureMode by key value observing this property.
  */
  var exposureMode: AVCaptureExposureMode

  /*!
   @property exposurePointOfInterestSupported:
   @abstract
      Indicates whether the receiver supports exposure points of interest.
   
   @discussion
      The receiver's exposurePointOfInterest property can only be set if this property returns YES.
  */
  var isExposurePointOfInterestSupported: Bool { get }

  /*!
   @property exposurePointOfInterest
   @abstract
      Indicates current exposure point of interest of the receiver, if it has one.
  
   @discussion
      The value of this property is a CGPoint that determines the receiver's exposure point of interest, if it has
      adjustable exposure. A value of (0,0) indicates that the camera should adjust exposure based on the top left
      corner of the image, while a value of (1,1) indicates that it should adjust exposure based on the bottom right corner. The
      default value is (0.5,0.5). -setExposurePointOfInterest: throws an NSInvalidArgumentException if isExposurePointOfInterestSupported 
      returns NO.  -setExposurePointOfInterest: throws an NSGenericException if called without first obtaining exclusive access 
      to the receiver using lockForConfiguration:.  Note that setting exposurePointOfInterest alone does not initiate an exposure
      operation.  After setting exposurePointOfInterest, call -setExposureMode: to apply the new point of interest.
  */
  var exposurePointOfInterest: CGPoint

  /*!
   @property adjustingExposure
   @abstract
      Indicates whether the receiver is currently adjusting camera exposure.
  
   @discussion
      The value of this property is a BOOL indicating whether the receiver's camera exposure is being automatically
      adjusted because its exposure mode is AVCaptureExposureModeAutoExpose or AVCaptureExposureModeContinuousAutoExposure.
      Clients can observe the value of this property to determine whether the camera exposure is stable or is being
      automatically adjusted.
  */
  var isAdjustingExposure: Bool { get }
}

/*!
 @enum AVCaptureWhiteBalanceMode
 @abstract
    Constants indicating the mode of the white balance on the receiver's device, if it has adjustable white balance.

 @constant AVCaptureWhiteBalanceModeLocked
    Indicates that the white balance should be locked at its current value.
 @constant AVCaptureWhiteBalanceModeAutoWhiteBalance
    Indicates that the device should automatically adjust white balance once and then change the white balance mode to 
    AVCaptureWhiteBalanceModeLocked.
 @constant AVCaptureWhiteBalanceModeContinuousAutoWhiteBalance
    Indicates that the device should automatically adjust white balance when needed.
*/
@available(OSX 10.7, *)
enum AVCaptureWhiteBalanceMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Locked
  case AutoWhiteBalance
  case ContinuousAutoWhiteBalance
}
extension AVCaptureDevice {

  /*!
   @method isWhiteBalanceModeSupported:
   @abstract
      Returns whether the receiver supports the given white balance mode.
  
   @param whiteBalanceMode
      An AVCaptureWhiteBalanceMode to be checked.
   @result
      YES if the receiver supports the given white balance mode, NO otherwise.
  
   @discussion
      The receiver's whiteBalanceMode property can only be set to a certain mode if this method returns YES for that mode.
  */
  func isWhiteBalanceModeSupported(whiteBalanceMode: AVCaptureWhiteBalanceMode) -> Bool

  /*!
   @property whiteBalanceMode
   @abstract
      Indicates current white balance mode of the receiver, if it has adjustable white balance.
  
   @discussion
      The value of this property is an AVCaptureWhiteBalanceMode that determines the receiver's white balance mode, if it
      has adjustable white balance. -setWhiteBalanceMode: throws an NSInvalidArgumentException if set to an unsupported value 
      (see -isWhiteBalanceModeSupported:).  -setWhiteBalanceMode: throws an NSGenericException if called without first obtaining 
      exclusive access to the receiver using lockForConfiguration:.  Clients can observe automatic changes to the receiver's 
      whiteBalanceMode by key value observing this property.
  */
  var whiteBalanceMode: AVCaptureWhiteBalanceMode

  /*!
   @property adjustingWhiteBalance
   @abstract
      Indicates whether the receiver is currently adjusting camera white balance.
  
   @discussion
      The value of this property is a BOOL indicating whether the receiver's camera white balance is being
      automatically adjusted because its white balance mode is AVCaptureWhiteBalanceModeAutoWhiteBalance or
      AVCaptureWhiteBalanceModeContinuousAutoWhiteBalance. Clients can observe the value of this property to determine
      whether the camera white balance is stable or is being automatically adjusted.
  */
  var isAdjustingWhiteBalance: Bool { get }
}
extension AVCaptureDevice {
}
extension AVCaptureDevice {
}
extension AVCaptureDevice {
}
extension AVCaptureDevice {
}
typealias AVCaptureDeviceTransportControlsSpeed = Float

/*!
 @enum AVCaptureDeviceTransportControlsPlaybackMode
 @abstract
    Constants indicating the transport controls' current mode of play back, if it has one.

 @constant AVCaptureDeviceTransportControlsNotPlayingMode
    Indicates that the tape transport is not threaded through the play head.
 @constant AVCaptureDeviceTransportControlsPlayingMode
    Indicates that the tape transport is threaded through the play head.
*/
@available(OSX 10.7, *)
enum AVCaptureDeviceTransportControlsPlaybackMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotPlayingMode
  case PlayingMode
}
extension AVCaptureDevice {

  /*!
   @property transportControlsSupported
   @abstract
      Returns whether the receiver supports transport control commands.
  
   @discussion
      For devices with transport controls, such as AVC tape-based camcorders or pro capture devices with
      RS422 deck control, the value of this property is YES.  If transport controls are not supported,
      none of the associated transport control methods and properties are available on the receiver.
  */
  @available(OSX 10.7, *)
  var transportControlsSupported: Bool { get }

  /*!
   @property transportControlsPlaybackMode
   @abstract
      Returns the receiver's current playback mode.
  
   @discussion
      For devices that support transport control, this property may be queried to discover the 
      current playback mode.
  */
  @available(OSX 10.7, *)
  var transportControlsPlaybackMode: AVCaptureDeviceTransportControlsPlaybackMode { get }

  /*!
   @property transportControlsSpeed
   @abstract
      Returns the receiver's current playback speed as a floating point value.
  
   @discussion
      For devices that support transport control, this property may be queried to discover the 
      current playback speed of the deck.
      0.0 -> stopped.
      1.0 -> forward at normal speed.
      -1.0-> reverse at normal speed.
      2.0 -> forward at 2x normal speed.
      etc.
  */
  @available(OSX 10.7, *)
  var transportControlsSpeed: AVCaptureDeviceTransportControlsSpeed { get }

  /*!
   @method setTransportControlsPlaybackMode:speed:
   @abstract
      sets both the transport controls playback mode and speed in a single method.
  
   @param mode
      A AVCaptureDeviceTransportControlsPlaybackMode indicating whether the deck should be put into
      play mode.
  @param speed
      A AVCaptureDeviceTransportControlsSpeed indicating the speed at which to wind or play the tape.
  
   @discussion
      A method for setting the receiver's transport controls playback mode and speed.  The receiver must 
      be locked for configuration using lockForConfiguration: before clients can set this method, otherwise
      an NSGenericException is thrown.
  */
  @available(OSX 10.7, *)
  func setTransportControlsPlaybackMode(mode: AVCaptureDeviceTransportControlsPlaybackMode, speed: AVCaptureDeviceTransportControlsSpeed)
}
extension AVCaptureDevice {
}

/*!
 @class AVFrameRateRange
 @abstract
    An AVFrameRateRange expresses a range of valid frame rates as min and max
    rate and min and max duration.

 @discussion
    An AVCaptureDevice exposes an array of formats, and its current activeFormat may be queried.  The
    payload for the formats property is an array of AVCaptureDeviceFormat objects and the activeFormat property
    payload is an AVCaptureDeviceFormat.  AVCaptureDeviceFormat wraps a CMFormatDescription and
    expresses a range of valid video frame rates as an NSArray of AVFrameRateRange objects.
    AVFrameRateRange expresses min and max frame rate as a rate in frames per second and
    duration (CMTime).  An AVFrameRateRange object is immutable.  Its values do not change for the life of the object.
*/
@available(OSX 10.7, *)
class AVFrameRateRange : NSObject {

  /*!
   @property minFrameRate
   @abstract
      A Float64 indicating the minimum frame rate supported by this range.
  
   @discussion
      This read-only property indicates the minimum frame rate supported by
      this range in frames per second.
  */
  var minFrameRate: Float64 { get }

  /*!
   @property maxFrameRate
   @abstract
      A Float64 indicating the maximum frame rate supported by this range.
  
   @discussion
      This read-only property indicates the maximum frame rate supported by
      this range in frames per second.
  */
  var maxFrameRate: Float64 { get }

  /*!
   @property maxFrameDuration
   @abstract
      A CMTime indicating the maximum frame duration supported by this range.
  
   @discussion
      This read-only property indicates the maximum frame duration supported by
      this range.  It is the reciprocal of minFrameRate, and expresses minFrameRate
      as a duration.
  */
  var maxFrameDuration: CMTime { get }

  /*!
   @property minFrameDuration
   @abstract
      A CMTime indicating the minimum frame duration supported by this range.
  
   @discussion
      This read-only property indicates the minimum frame duration supported by
      this range.  It is the reciprocal of maxFrameRate, and expresses maxFrameRate
      as a duration.
  */
  var minFrameDuration: CMTime { get }
  init()
}

/*!
 @class AVCaptureDeviceFormat
 @abstract
    An AVCaptureDeviceFormat wraps a CMFormatDescription and other format-related information, such
    as min and max framerate.

 @discussion
    An AVCaptureDevice exposes an array of formats, and its current activeFormat may be queried.  The
    payload for the formats property is an array of AVCaptureDeviceFormat objects and the activeFormat property
    payload is an AVCaptureDeviceFormat.  AVCaptureDeviceFormat is a thin wrapper around a 
    CMFormatDescription, and can carry associated device format information that doesn't go in a
    CMFormatDescription, such as min and max frame rate.  An AVCaptureDeviceFormat object is immutable.
    Its values do not change for the life of the object.
*/
@available(OSX 10.7, *)
class AVCaptureDeviceFormat : NSObject {

  /*!
   @property mediaType
   @abstract
      An NSString describing the media type of an AVCaptureDevice active or supported format.
  
   @discussion
      Supported mediaTypes are listed in AVMediaFormat.h.  This is a read-only
      property.  The caller assumes no ownership of the returned value and should not CFRelease it.
  */
  var mediaType: String! { get }

  /*!
   @property formatDescription
   @abstract
      A CMFormatDescription describing an AVCaptureDevice active or supported format.
  
   @discussion
      A CMFormatDescription describing an AVCaptureDevice active or supported format.  This is a read-only
      property.  The caller assumes no ownership of the returned value and should not CFRelease it.
  */
  var formatDescription: CMFormatDescription! { get }

  /*!
   @property videoSupportedFrameRateRanges
   @abstract
      A property indicating the format's supported frame rate ranges.
  
   @discussion
      videoSupportedFrameRateRanges is an array of AVFrameRateRange objects, one for
      each of the format's supported video frame rate ranges.
  */
  var videoSupportedFrameRateRanges: [AnyObject]! { get }
  init()
}

/*!
 @class AVCaptureDeviceInputSource
 @abstract
    An AVCaptureDeviceInputSource represents a distinct input source on an AVCaptureDevice object.

 @discussion
    An AVCaptureDevice may optionally present an array of inputSources, representing distinct mutually
    exclusive inputs to the device, for example, an audio AVCaptureDevice might have ADAT optical
    and analog input sources.  A video AVCaptureDevice might have an HDMI input source, or a component 
    input source.
*/
@available(OSX 10.7, *)
class AVCaptureDeviceInputSource : NSObject {

  /*!
   @property inputSourceID
   @abstract
      An ID unique among the inputSources exposed by a given AVCaptureDevice.
  
   @discussion
      An AVCaptureDevice's inputSources array must contain AVCaptureInputSource objects with unique
      inputSourceIDs.
  */
  var inputSourceID: String! { get }

  /*!
   @property localizedName
   @abstract
      A localized human-readable name for the receiver.
  
   @discussion
      This property can be used for displaying the name of the capture device input source in a user interface.
  */
  var localizedName: String! { get }
  init()
}

/*!
 @class AVCaptureInput
 @abstract
    AVCaptureInput is an abstract class that provides an interface for connecting capture input sources to an
    AVCaptureSession.

 @discussion
    Concrete instances of AVCaptureInput representing input sources such as cameras can be added to instances of
    AVCaptureSession using the -[AVCaptureSession addInput:] method. An AVCaptureInput vends one or more streams of
    media data. For example, input devices can provide both audio and video data. Each media stream provided by an input
    is represented by an AVCaptureInputPort object. Within a capture session, connections are made between
    AVCaptureInput instances and AVCaptureOutput instances via AVCaptureConnection objects that define the mapping
    between a set of AVCaptureInputPort objects and a single AVCaptureOutput.
*/
@available(OSX 10.7, *)
class AVCaptureInput : NSObject {

  /*!
   @property ports
   @abstract
      The ports owned by the receiver.
  
   @discussion
      The value of this property is an array of AVCaptureInputPort objects, each exposing an interface to a single stream
      of media data provided by an input.
  */
  var ports: [AnyObject]! { get }
  init()
}

/*!
 @constant AVCaptureInputPortFormatDescriptionDidChangeNotification
 @abstract
    This notification is posted when the value of an AVCaptureInputPort instance's formatDescription property changes.

 @discussion
    The notification object is the AVCaptureInputPort instance whose format description changed.
*/
@available(OSX 10.7, *)
let AVCaptureInputPortFormatDescriptionDidChangeNotification: String

/*!
 @class AVCaptureInputPort
 @abstract
    An AVCaptureInputPort describes a single stream of media data provided by an AVCaptureInput and provides an
    interface for connecting that stream to AVCaptureOutput instances via AVCaptureConnection.

 @discussion
    Instances of AVCaptureInputPort cannot be created directly. An AVCaptureInput exposes its input ports via its ports
    property. Input ports provide information about the format of their media data via the mediaType and
    formatDescription properties, and allow clients to control the flow of data via the enabled property. Input ports
    are used by an AVCaptureConnection to define the mapping between inputs and outputs in an AVCaptureSession.
*/
@available(OSX 10.7, *)
class AVCaptureInputPort : NSObject {

  /*!
   @property input
   @abstract
      The input that owns the receiver.
  
   @discussion
      The value of this property is an AVCaptureInput instance that owns the receiver.
  */
  var input: AVCaptureInput! { get }

  /*!
   @property mediaType
   @abstract
      The media type of the data provided by the receiver.
  
   @discussion
      The value of this property is a constant describing the type of media, such as AVMediaTypeVideo or AVMediaTypeAudio,
      provided by the receiver. Media type constants are defined in AVMediaFormat.h.
  */
  var mediaType: String! { get }

  /*!
   @property formatDescription
   @abstract
      The format of the data provided by the receiver.
  
   @discussion
      The value of this property is a CMFormatDescription that describes the format of the media data currently provided
      by the receiver. Clients can be notified of changes to the format by observing the
      AVCaptureInputPortFormatDescriptionDidChangeNotification.
  */
  var formatDescription: CMFormatDescription! { get }

  /*!
   @property enabled
   @abstract
      Whether the receiver should provide data.
  
   @discussion
      The value of this property is a BOOL that determines whether the receiver should provide data to outputs when a
      session is running. Clients can set this property to fine tune which media streams from a given input will be used
      during capture. The default value is YES.
  */
  var isEnabled: Bool

  /*!
   @property clock
   @abstract
  	Provides access to the "native" clock used by the input port.
   @discussion
  	The clock is read-only.
   */
  @available(OSX 10.9, *)
  var clock: CMClock! { get }
  init()
}

/*!
 @class AVCaptureDeviceInput
 @abstract
    AVCaptureDeviceInput is a concrete subclass of AVCaptureInput that provides an interface for capturing media from an
    AVCaptureDevice.

 @discussion
    Instances of AVCaptureDeviceInput are input sources for AVCaptureSession that provide media data from devices
    connected to the system, represented by instances of AVCaptureDevice.
*/
@available(OSX 10.7, *)
class AVCaptureDeviceInput : AVCaptureInput {

  /*!
   @method initWithDevice:error:
   @abstract
      Creates an AVCaptureDeviceInput instance that provides media data from the given device.
  
   @param device
      An AVCaptureDevice instance to be used for capture.
   @param outError
      On return, if the given device cannot be used for capture, points to an NSError describing the problem.
   @result
      An AVCaptureDeviceInput instance that provides data from the given device, or nil, if the device could not be used
      for capture.
  
   @discussion
      This method creates an instance of AVCaptureDeviceInput that can be used to capture data from an AVCaptureDevice in
      an AVCaptureSession. This method attempts to open the device for capture, taking exclusive control of it if
      necessary. If the device cannot be opened because it is no longer available or because it is in use, for example,
      this method returns nil, and the optional outError parameter points to an NSError describing the problem.
  */
  init(device: AVCaptureDevice!) throws

  /*!
   @property device
   @abstract
      The device from which the receiver provides data.
  
   @discussion
      The value of this property is the AVCaptureDevice instance that was used to create the receiver.
  */
  var device: AVCaptureDevice! { get }
  init()
}

/*!
 @class AVCaptureScreenInput
 @abstract
    AVCaptureScreenInput is a concrete subclass of AVCaptureInput that provides an interface for capturing media from
    a screen or portion thereof.

 @discussion
    Instances of AVCaptureScreenInput are input sources for AVCaptureSession that provide media data from
    one of the screens connected to the system, represented by CGDirectDisplayIDs.
*/
@available(OSX 10.7, *)
class AVCaptureScreenInput : AVCaptureInput {

  /*!
   @method initWithDisplayID:
   @abstract
      Creates an AVCaptureScreenInput instance that provides media data from the given display.
   
   @param displayID
      The id of the display from which to capture video.  CGDirectDisplayID is defined in <CoreGraphics/CGDirectDisplay.h>
   @result
      An AVCaptureScreenInput instance that provides data from the given screen, or nil, if the screen could not be used
      for capture.
  
   @discussion
      This method creates an instance of AVCaptureScreenInput that can be used to capture data from a display in
      an AVCaptureSession. This method validates the displayID. If the display cannot be used because it is not available
      on the system, for example, this method returns nil.
  */
  init!(displayID: CGDirectDisplayID)

  /*!
   @property minFrameDuration
   @abstract
      A property indicating the screen input's minimum frame duration.
  
   @discussion
      An AVCaptureScreenInput's minFrameDuration is the reciprocal of its maximum frame rate.  This property
      may be used to request a maximum frame rate at which the input produces video frames.  The requested
      rate may not be achievable due to overall bandwidth, so actual frame rates may be lower.
  */
  var minFrameDuration: CMTime

  /*!
   @property cropRect
   @abstract
      A property indicating the bounding rectangle of the screen area to be captured in pixels.
  
   @discussion
      By default, AVCaptureScreenInput captures the entire area of the displayID with which it is associated.
      To limit the capture rectangle to a subsection of the screen, set the cropRect property, which
      defines a smaller section of the screen in the screen's coordinate system.  The origin (0,0) is
      the bottom-left corner of the screen.
  */
  var cropRect: CGRect

  /*!
   @property scaleFactor
   @abstract
      A property indicating the factor by which video buffers captured from the screen are to be scaled.
  
   @discussion
      By default, AVCaptureScreenInput captures the video buffers from the display at a scale factor
      of 1.0 (no scaling).  Set this property to scale the buffers by a given factor.  For instance,
      a 320x240 capture area with a scaleFactor of 2.0f produces video buffers at 640x480.
  */
  var scaleFactor: CGFloat

  /*!
   @property capturesMouseClicks
   @abstract
      A property indicating whether mouse clicks should be highlighted in the captured output.
  
   @discussion
      By default, AVCaptureScreenInput does not highlight mouse clicks in its captured output.  If this
      property is set to YES, mouse clicks are highlighted (a circle is drawn around the mouse for the
      duration of the click) in the captured output.
  */
  var capturesMouseClicks: Bool

  /*!
   @property capturesCursor
   @abstract
      A property indicating whether the cursor should be rendered to the captured output.
  
   @discussion
      By default, AVCaptureScreenInput draws the cursor in its captured output.  If this property
      is set to NO, the captured output contains only the windows on the screen.  Cursor is
      omitted.  Note that cursor position and mouse button state at the time of capture is
      preserved in CMSampleBuffers emitted from AVCaptureScreenInput.  See the inline documentation
      for kCMIOSampleBufferAttachmentKey_MouseAndKeyboardModifiers in <CoreMediaIO/CMIOSampleBuffer.h>
  */
  @available(OSX 10.8, *)
  var capturesCursor: Bool

  /*!
   @property removesDuplicateFrames
   @abstract
      A property indicating whether duplicate frames should be removed by the input.
  
   @discussion
      If this property is set to YES, AVCaptureScreenInput performs frame differencing and when it
  	detects duplicate frames, it drops them.  If set to NO, the captured output receives all frames
      from the input.  Prior to 10.9 this value defaulted to YES.  In 10.9 and later, it defaults to
  	NO, as modern platforms support frame differencing in hardware-based encoders.
  	
  	As of 10.10, this property has been deprecated and is ignored.  Clients wishing to re-create
  	this functionality can use an AVCaptureVideoDataOutput and compare frame contents in their
  	own code.  If they wish to write a movie file, they can then pass the unique frames to an
  	AVAssetWriterInput.
  */
  @available(OSX, introduced=10.8, deprecated=10.10)
  var removesDuplicateFrames: Bool
  init()
}

/*!
 @class AVCaptureOutput
 @abstract
    AVCaptureOutput is an abstract class that defines an interface for an output destination of an AVCaptureSession.
 
 @discussion
    AVCaptureOutput provides an abstract interface for connecting capture output destinations, such as files and video
    previews, to an AVCaptureSession.

    An AVCaptureOutput can have multiple connections represented by AVCaptureConnection objects, one for each stream of
    media that it receives from an AVCaptureInput. An AVCaptureOutput does not have any connections when it is first
    created. When an output is added to an AVCaptureSession, connections are created that map media data from that
    session's inputs to its outputs.

    Concrete AVCaptureOutput instances can be added to an AVCaptureSession using the -[AVCaptureSession addOutput:] and
    -[AVCaptureSession addOutputWithNoConnections:] methods.
*/
@available(OSX 10.7, *)
class AVCaptureOutput : NSObject {

  /*!
   @property connections
   @abstract
      The connections that describe the flow of media data to the receiver from AVCaptureInputs.
  
   @discussion
      The value of this property is an NSArray of AVCaptureConnection objects, each describing the mapping between the
      receiver and the AVCaptureInputPorts of one or more AVCaptureInputs.
  */
  var connections: [AnyObject]! { get }

  /*!
   @method connectionWithMediaType:
   @abstract
      Returns the first connection in the connections array with an inputPort of the specified mediaType.
  
   @param mediaType
      An AVMediaType constant from AVMediaFormat.h, e.g. AVMediaTypeVideo.
  
   @discussion
      This convenience method returns the first AVCaptureConnection in the receiver's
      connections array that has an AVCaptureInputPort of the specified mediaType.  If no
      connection with the specified mediaType is found, nil is returned.
  */
  @available(OSX 10.7, *)
  func connectionWithMediaType(mediaType: String!) -> AVCaptureConnection!
  init()
}

/*!
 @class AVCaptureVideoDataOutput
 @abstract
    AVCaptureVideoDataOutput is a concrete subclass of AVCaptureOutput that can be used to process uncompressed or
    compressed frames from the video being captured.

 @discussion
    Instances of AVCaptureVideoDataOutput produce video frames suitable for processing using other media APIs.
    Applications can access the frames with the captureOutput:didOutputSampleBuffer:fromConnection: delegate method.
*/
@available(OSX 10.7, *)
class AVCaptureVideoDataOutput : AVCaptureOutput {

  /*!
   @method setSampleBufferDelegate:queue:
   @abstract
      Sets the receiver's delegate that will accept captured buffers and dispatch queue on which the delegate will be
      called.
  
   @param sampleBufferDelegate
      An object conforming to the AVCaptureVideoDataOutputSampleBufferDelegate protocol that will receive sample buffers
      after they are captured.
   @param sampleBufferCallbackQueue
      A dispatch queue on which all sample buffer delegate methods will be called.
  
   @discussion
      When a new video sample buffer is captured it will be vended to the sample buffer delegate using the
      captureOutput:didOutputSampleBuffer:fromConnection: delegate method. All delegate methods will be called on the
      specified dispatch queue. If the queue is blocked when new frames are captured, those frames will be automatically
      dropped at a time determined by the value of the alwaysDiscardsLateVideoFrames property. This allows clients to
      process existing frames on the same queue without having to manage the potential memory usage increases that would
      otherwise occur when that processing is unable to keep up with the rate of incoming frames. If their frame processing
      is consistently unable to keep up with the rate of incoming frames, clients should consider using the
      minFrameDuration property, which will generally yield better performance characteristics and more consistent frame
      rates than frame dropping alone.
  
      Clients that need to minimize the chances of frames being dropped should specify a queue on which a sufficiently
      small amount of processing is being done outside of receiving sample buffers. However, if such clients migrate extra
      processing to another queue, they are responsible for ensuring that memory usage does not grow without bound from
      frames that have not been processed.
  
      A serial dispatch queue must be used to guarantee that video frames will be delivered in order.
      The sampleBufferCallbackQueue parameter may not be NULL, except when setting the sampleBufferDelegate
      to nil.
  */
  func setSampleBufferDelegate(sampleBufferDelegate: AVCaptureVideoDataOutputSampleBufferDelegate!, queue sampleBufferCallbackQueue: dispatch_queue_t!)

  /*!
   @property sampleBufferDelegate
   @abstract
      The receiver's delegate.
  
   @discussion
      The value of this property is an object conforming to the AVCaptureVideoDataOutputSampleBufferDelegate protocol that
      will receive sample buffers after they are captured. The delegate is set using the setSampleBufferDelegate:queue:
      method.
  */
  var sampleBufferDelegate: AVCaptureVideoDataOutputSampleBufferDelegate! { get }

  /*!
   @property sampleBufferCallbackQueue
   @abstract
      The dispatch queue on which all sample buffer delegate methods will be called.
  
   @discussion
      The value of this property is a dispatch_queue_t. The queue is set using the setSampleBufferDelegate:queue: method.
  */
  var sampleBufferCallbackQueue: dispatch_queue_t! { get }

  /*!
   @property videoSettings
   @abstract
      Specifies the settings used to decode or re-encode video before it is output by the receiver.
  
   @discussion
      See AVVideoSettings.h for more information on how to construct a video settings dictionary.  To receive samples in their 
      device native format, set this property to an empty dictionary (i.e. [NSDictionary dictionary]).  To receive samples in
      a default uncompressed format, set this property to nil.  Note that after this property is set to nil, subsequent
      querying of this property will yield a non-nil dictionary reflecting the settings used by the AVCaptureSession's current 
      sessionPreset.
  
      On iOS, the only supported key is kCVPixelBufferPixelFormatTypeKey. Supported pixel formats are
      kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange, kCVPixelFormatType_420YpCbCr8BiPlanarFullRange and kCVPixelFormatType_32BGRA.
  */
  var videoSettings: [NSObject : AnyObject]!

  /*!
   @property availableVideoCVPixelFormatTypes
   @abstract
      Indicates the supported video pixel formats that can be specified in videoSettings.
  
   @discussion
      The value of this property is an NSArray of NSNumbers that can be used as values for the 
      kCVPixelBufferPixelFormatTypeKey in the receiver's videoSettings property.  The first
      format in the returned list is the most efficient output format.
  */
  @available(OSX 10.7, *)
  var availableVideoCVPixelFormatTypes: [AnyObject]! { get }

  /*!
   @property availableVideoCodecTypes
   @abstract
      Indicates the supported video codec formats that can be specified in videoSettings.
  
   @discussion
      The value of this property is an NSArray of NSStrings that can be used as values for the 
      AVVideoCodecKey in the receiver's videoSettings property.
  */
  @available(OSX 10.7, *)
  var availableVideoCodecTypes: [AnyObject]! { get }

  /*!
   @property alwaysDiscardsLateVideoFrames
   @abstract
      Specifies whether the receiver should always discard any video frame that is not processed before the next frame is
      captured.
  
   @discussion
      When the value of this property is YES, the receiver will immediately discard frames that are captured while the
      dispatch queue handling existing frames is blocked in the captureOutput:didOutputSampleBuffer:fromConnection:
      delegate method. When the value of this property is NO, delegates will be allowed more time to process old frames
      before new frames are discarded, but application memory usage may increase significantly as a result. The default
      value is YES.
  */
  var alwaysDiscardsLateVideoFrames: Bool
  init()
}

/*!
 @protocol AVCaptureVideoDataOutputSampleBufferDelegate
 @abstract
    Defines an interface for delegates of AVCaptureVideoDataOutput to receive captured video sample buffers and be
    notified of late sample buffers that were dropped.
*/
protocol AVCaptureVideoDataOutputSampleBufferDelegate : NSObjectProtocol {

  /*!
   @method captureOutput:didOutputSampleBuffer:fromConnection:
   @abstract
      Called whenever an AVCaptureVideoDataOutput instance outputs a new video frame.
  
   @param captureOutput
      The AVCaptureVideoDataOutput instance that output the frame.
   @param sampleBuffer
      A CMSampleBuffer object containing the video frame data and additional information about the frame, such as its
      format and presentation time.
   @param connection
      The AVCaptureConnection from which the video was received.
  
   @discussion
      Delegates receive this message whenever the output captures and outputs a new video frame, decoding or re-encoding it
      as specified by its videoSettings property. Delegates can use the provided video frame in conjunction with other APIs
      for further processing. This method will be called on the dispatch queue specified by the output's
      sampleBufferCallbackQueue property. This method is called periodically, so it must be efficient to prevent capture
      performance problems, including dropped frames.
  
      Clients that need to reference the CMSampleBuffer object outside of the scope of this method must CFRetain it and
      then CFRelease it when they are finished with it.
  
      Note that to maintain optimal performance, some sample buffers directly reference pools of memory that may need to be
      reused by the device system and other capture inputs. This is frequently the case for uncompressed device native
      capture where memory blocks are copied as little as possible. If multiple sample buffers reference such pools of
      memory for too long, inputs will no longer be able to copy new samples into memory and those samples will be dropped.
      If your application is causing samples to be dropped by retaining the provided CMSampleBuffer objects for too long,
      but it needs access to the sample data for a long period of time, consider copying the data into a new buffer and
      then calling CFRelease on the sample buffer if it was previously retained so that the memory it references can be
      reused.
  */
  @available(OSX 10.7, *)
  optional func captureOutput(captureOutput: AVCaptureOutput!, didOutputSampleBuffer sampleBuffer: CMSampleBuffer!, from connection: AVCaptureConnection!)

  /*!
   @method captureOutput:didDropSampleBuffer:fromConnection:
   @abstract
      Called once for each frame that is discarded.
  
   @param captureOutput
      The AVCaptureVideoDataOutput instance that dropped the frame.
   @param sampleBuffer
      A CMSampleBuffer object containing information about the dropped frame, such as its format and presentation time.
      This sample buffer will contain none of the original video data.
   @param connection
      The AVCaptureConnection from which the dropped video frame was received.
  
   @discussion
      Delegates receive this message whenever a video frame is dropped. This method is called once 
      for each dropped frame. The CMSampleBuffer object passed to this delegate method will contain metadata 
      about the dropped video frame, such as its duration and presentation time stamp, but will contain no 
      actual video data. On iOS, Included in the sample buffer attachments is the kCMSampleBufferAttachmentKey_DroppedFrameReason,
      which indicates why the frame was dropped.  This method will be called on the dispatch queue specified by the output's
      sampleBufferCallbackQueue property. Because this method will be called on the same dispatch queue that is responsible
      for outputting video frames, it must be efficient to prevent further capture performance problems, such as additional
      dropped video frames.
   */
  @available(OSX 10.7, *)
  optional func captureOutput(captureOutput: AVCaptureOutput!, didDrop sampleBuffer: CMSampleBuffer!, from connection: AVCaptureConnection!)
}

/*!
 @class AVCaptureAudioDataOutput
 @abstract
    AVCaptureAudioDataOutput is a concrete subclass of AVCaptureOutput that can be used to process uncompressed or
    compressed samples from the audio being captured.
 
 @discussion
    Instances of AVCaptureAudioDataOutput produce audio sample buffers suitable for processing using other media APIs.
    Applications can access the sample buffers with the captureOutput:didOutputSampleBuffer:fromConnection: delegate
    method.
*/
@available(OSX 10.7, *)
class AVCaptureAudioDataOutput : AVCaptureOutput {

  /*!
   @method setSampleBufferDelegate:queue:
   @abstract
      Sets the receiver's delegate that will accept captured buffers and dispatch queue on which the delegate will be
      called.
  
   @param sampleBufferDelegate
      An object conforming to the AVCaptureAudioDataOutputSampleBufferDelegate protocol that will receive sample buffers
      after they are captured.
   @param sampleBufferCallbackQueue
      A dispatch queue on which all sample buffer delegate methods will be called.
  
   @discussion
      When a new audio sample buffer is captured it will be vended to the sample buffer delegate using the
      captureOutput:didOutputSampleBuffer:fromConnection: delegate method. All delegate methods will be called on the
      specified dispatch queue. If the queue is blocked when new samples are captured, those samples will be automatically
      dropped when they become sufficiently late. This allows clients to process existing samples on the same queue without
      having to manage the potential memory usage increases that would otherwise occur when that processing is unable to
      keep up with the rate of incoming samples.
  
      Clients that need to minimize the chances of samples being dropped should specify a queue on which a sufficiently
      small amount of processing is being done outside of receiving sample buffers. However, if such clients migrate extra
      processing to another queue, they are responsible for ensuring that memory usage does not grow without bound from
      samples that have not been processed.
  
      A serial dispatch queue must be used to guarantee that audio samples will be delivered in order.
      The sampleBufferCallbackQueue parameter may not be NULL, except when setting sampleBufferDelegate to nil.
  */
  func setSampleBufferDelegate(sampleBufferDelegate: AVCaptureAudioDataOutputSampleBufferDelegate!, queue sampleBufferCallbackQueue: dispatch_queue_t!)

  /*!
   @property sampleBufferDelegate
   @abstract
      The receiver's delegate.
  
   @discussion
      The value of this property is an object conforming to the AVCaptureAudioDataOutputSampleBufferDelegate protocol that
      will receive sample buffers after they are captured. The delegate is set using the setSampleBufferDelegate:queue:
      method.
  */
  var sampleBufferDelegate: AVCaptureAudioDataOutputSampleBufferDelegate! { get }

  /*!
   @property sampleBufferCallbackQueue
   @abstract
      The dispatch queue on which all sample buffer delegate methods will be called.
  
   @discussion
      The value of this property is a dispatch_queue_t. The queue is set using the setSampleBufferDelegate:queue: method.
  */
  var sampleBufferCallbackQueue: dispatch_queue_t! { get }

  /*!
   @property	 audioSettings
   @abstract
      Specifies the settings used to decode or re-encode audio before it is output by the receiver.
  
   @discussion
      The value of this property is an NSDictionary containing values for audio settings keys defined 
      in AVAudioSettings.h.  When audioSettings is set to nil, the AVCaptureAudioDataOutput vends samples
      in their device native format.
  */
  @available(OSX 10.7, *)
  var audioSettings: [NSObject : AnyObject]!
  init()
}

/*!
 @protocol AVCaptureAudioDataOutputSampleBufferDelegate
 @abstract
    Defines an interface for delegates of AVCaptureAudioDataOutput to receive captured audio sample buffers.
*/
protocol AVCaptureAudioDataOutputSampleBufferDelegate : NSObjectProtocol {

  /*!
   @method captureOutput:didOutputSampleBuffer:fromConnection:
   @abstract
      Called whenever an AVCaptureAudioDataOutput instance outputs a new audio sample buffer.
  
   @param captureOutput
      The AVCaptureAudioDataOutput instance that output the samples.
   @param sampleBuffer
      A CMSampleBuffer object containing the audio samples and additional information about them, such as their format and
      presentation time.
   @param connection
      The AVCaptureConnection from which the audio was received.
  
   @discussion
      Delegates receive this message whenever the output captures and outputs new audio samples, decoding or re-encoding
      as specified by the audioSettings property. Delegates can use the provided sample buffer in conjunction with other
      APIs for further processing. This method will be called on the dispatch queue specified by the output's
      sampleBufferCallbackQueue property. This method is called periodically, so it must be efficient to prevent capture
      performance problems, including dropped audio samples.
  
      Clients that need to reference the CMSampleBuffer object outside of the scope of this method must CFRetain it and
      then CFRelease it when they are finished with it.
  */
  @available(OSX 10.7, *)
  optional func captureOutput(captureOutput: AVCaptureOutput!, didOutputSampleBuffer sampleBuffer: CMSampleBuffer!, from connection: AVCaptureConnection!)
}

/*!
 @class AVCaptureFileOutput
 @abstract
    AVCaptureFileOutput is an abstract subclass of AVCaptureOutput that provides an interface for writing captured media
    to files.
 
 @discussion
    This abstract superclass defines the interface for outputs that record media samples to files. File outputs can start
    recording to a new file using the startRecordingToOutputFileURL:recordingDelegate: method. On successive invocations of this method on
    Mac OS X, the output file can by changed dynamically without losing media samples. A file output can stop recording
    using the stopRecording method. Because files are recorded in the background, applications will need to specify a
    delegate for each new file so that they can be notified when recorded files are finished.

    On Mac OS X, clients can also set a delegate on the file output itself that can be used to control recording along
    exact media sample boundaries using the captureOutput:didOutputSampleBuffer:fromConnection: method.

    The concrete subclasses of AVCaptureFileOutput are AVCaptureMovieFileOutput, which records media to a QuickTime movie
    file, and AVCaptureAudioFileOutput, which writes audio media to a variety of audio file formats.
*/
@available(OSX 10.7, *)
class AVCaptureFileOutput : AVCaptureOutput {

  /*!
   @property delegate
   @abstract
      The receiver's delegate.
  
   @discussion
      The value of this property is an object conforming to the AVCaptureFileOutputDelegate protocol that will be able to
      monitor and control recording along exact sample boundaries.
  */
  @available(OSX 10.7, *)
  unowned(unsafe) var delegate: @sil_unmanaged AVCaptureFileOutputDelegate!

  /*!
   @property outputFileURL
   @abstract
      The file URL of the file to which the receiver is currently recording incoming buffers.
  
   @discussion
      The value of this property is an NSURL object containing the file URL of the file currently being written by the
      receiver. Returns nil if the receiver is not recording to any file.
  */
  var outputFileURL: NSURL! { get }

  /*!
   @method startRecordingToOutputFileURL:recordingDelegate:
   @abstract
      Tells the receiver to start recording to a new file, and specifies a delegate that will be notified when recording is
      finished.
   
   @param outputFileURL
      An NSURL object containing the URL of the output file. This method throws an NSInvalidArgumentException if the URL is
      not a valid file URL.
   @param delegate
      An object conforming to the AVCaptureFileOutputRecordingDelegate protocol. Clients must specify a delegate so that
      they can be notified when recording to the given URL is finished.
  
   @discussion
      The method sets the file URL to which the receiver is currently writing output media. If a file at the given URL
      already exists when capturing starts, recording to the new file will fail.
  
      Clients need not call stopRecording before calling this method while another recording is in progress. On Mac OS X,
      if this method is invoked while an existing output file was already being recorded, no media samples will be
      discarded between the old file and the new file.
  
      When recording is stopped either by calling stopRecording, by changing files using this method, or because of an
      error, the remaining data that needs to be included to the file will be written in the background. Therefore, clients
      must specify a delegate that will be notified when all data has been written to the file using the
      captureOutput:didFinishRecordingToOutputFileAtURL:fromConnections:error: method. The recording delegate can also
      optionally implement methods that inform it when data starts being written, when recording is paused and resumed, and
      when recording is about to be finished.
  
      On Mac OS X, if this method is called within the captureOutput:didOutputSampleBuffer:fromConnection: delegate method,
      the first samples written to the new file are guaranteed to be those contained in the sample buffer passed to that
      method.
  
      Note: AVCaptureAudioFileOutput does not support -startRecordingToOutputFileURL:recordingDelegate:.  Use
      -startRecordingToOutputFileURL:outputFileType:recordingDelegate: instead.
  */
  func startRecordingToOutputFileURL(outputFileURL: NSURL!, recordingDelegate delegate: AVCaptureFileOutputRecordingDelegate!)

  /*!
   @method stopRecording
   @abstract
      Tells the receiver to stop recording to the current file.
  
   @discussion
      Clients can call this method when they want to stop recording new samples to the current file, and do not want to
      continue recording to another file. Clients that want to switch from one file to another should not call this method.
      Instead they should simply call startRecordingToOutputFileURL:recordingDelegate: with the new file URL.
  
      When recording is stopped either by calling this method, by changing files using
      startRecordingToOutputFileURL:recordingDelegate:, or because of an error, the remaining data that needs to be
      included to the file will be written in the background. Therefore, before using the file, clients must wait until the
      delegate that was specified in startRecordingToOutputFileURL:recordingDelegate: is notified when all data has been
      written to the file using the captureOutput:didFinishRecordingToOutputFileAtURL:fromConnections:error: method.
  
      On Mac OS X, if this method is called within the captureOutput:didOutputSampleBuffer:fromConnection: delegate method,
      the last samples written to the current file are guaranteed to be those that were output immediately before those in
      the sample buffer passed to that method.
  */
  func stopRecording()

  /*!
   @property recording
   @abstract
      Indicates whether the receiver is currently recording.
  
   @discussion
      The value of this property is YES when the receiver currently has a file to which it is writing new samples, NO
      otherwise.
  */
  var isRecording: Bool { get }

  /*!
   @property recordingPaused
   @abstract
      Indicates whether recording to the current output file is paused.
  
   @discussion
      This property indicates recording to the file returned by outputFileURL has been previously paused using the
      pauseRecording method. When a recording is paused, captured samples are not written to the output file, but new
      samples can be written to the same file in the future by calling resumeRecording.
  */
  @available(OSX 10.7, *)
  var isRecordingPaused: Bool { get }

  /*!
   @method pauseRecording
   @abstract
      Pauses recording to the current output file.
  
   @discussion
      This method causes the receiver to stop writing captured samples to the current output file returned by
      outputFileURL, but leaves the file open so that samples can be written to it in the future, when resumeRecording is
      called. This allows clients to record multiple media segments that are not contiguous in time to a single file.
  
      On Mac OS X, if this method is called within the captureOutput:didOutputSampleBuffer:fromConnection: delegate method,
      the last samples written to the current file are guaranteed to be those that were output immediately before those in
      the sample buffer passed to that method. 
  */
  @available(OSX 10.7, *)
  func pauseRecording()

  /*!
   @method resumeRecording
   @abstract
      Resumes recording to the current output file after it was previously paused using pauseRecording.
  
   @discussion
      This method causes the receiver to resume writing captured samples to the current output file returned by
      outputFileURL, after recording was previously paused using pauseRecording. This allows clients to record multiple
      media segments that are not contiguous in time to a single file. 
  
      On Mac OS X, if this method is called within the captureOutput:didOutputSampleBuffer:fromConnection: delegate method,
      the first samples written to the current file are guaranteed to be those contained in the sample buffer passed to
      that method.
  */
  @available(OSX 10.7, *)
  func resumeRecording()

  /*!
   @property recordedDuration
   @abstract
      Indicates the duration of the media recorded to the current output file.
  
   @discussion
      If recording is in progress, this property returns the total time recorded so far.
  */
  var recordedDuration: CMTime { get }

  /*!
   @property recordedFileSize
   @abstract
      Indicates the size, in bytes, of the data recorded to the current output file.
  
   @discussion
      If a recording is in progress, this property returns the size in bytes of the data recorded so far.
  */
  var recordedFileSize: Int64 { get }

  /*!
   @property maxRecordedDuration
   @abstract
      Specifies the maximum duration of the media that should be recorded by the receiver.
  
   @discussion
      This property specifies a hard limit on the duration of recorded files. Recording is stopped when the limit is
      reached and the captureOutput:didFinishRecordingToOutputFileAtURL:fromConnections:error: delegate method is invoked
      with an appropriate error. The default value of this property is kCMTimeInvalid, which indicates no limit.
  */
  var maxRecordedDuration: CMTime

  /*!
   @property maxRecordedFileSize
   @abstract
      Specifies the maximum size, in bytes, of the data that should be recorded by the receiver.
   
   @discussion
      This property specifies a hard limit on the data size of recorded files. Recording is stopped when the limit is
      reached and the captureOutput:didFinishRecordingToOutputFileAtURL:fromConnections:error: delegate method is invoked
      with an appropriate error. The default value of this property is 0, which indicates no limit.
  */
  var maxRecordedFileSize: Int64

  /*!
   @property minFreeDiskSpaceLimit
   @abstract
      Specifies the minimum amount of free space, in bytes, required for recording to continue on a given volume.
  
   @discussion
      This property specifies a hard lower limit on the amount of free space that must remain on a target volume for
      recording to continue. Recording is stopped when the limit is reached and the
      captureOutput:didFinishRecordingToOutputFileAtURL:fromConnections:error: delegate method is invoked with an
      appropriate error.
  */
  var minFreeDiskSpaceLimit: Int64
  init()
}

/*!
 @protocol AVCaptureFileOutputRecordingDelegate
 @abstract
    Defines an interface for delegates of AVCaptureFileOutput to respond to events that occur in the process of recording
    a single file.
*/
protocol AVCaptureFileOutputRecordingDelegate : NSObjectProtocol {

  /*!
   @method captureOutput:didStartRecordingToOutputFileAtURL:fromConnections:
   @abstract
      Informs the delegate when the output has started writing to a file.
  
   @param captureOutput
      The capture file output that started writing the file.
   @param fileURL
      The file URL of the file that is being written.
   @param connections
      An array of AVCaptureConnection objects attached to the file output that provided the data that is being written to
      the file.
  
   @discussion
      This method is called when the file output has started writing data to a file. If an error condition prevents any
      data from being written, this method may not be called.
      captureOutput:willFinishRecordingToOutputFileAtURL:fromConnections:error: and
      captureOutput:didFinishRecordingToOutputFileAtURL:fromConnections:error: will always be called, even if no data is
      written.
  
      Clients should not assume that this method will be called on a specific thread, and should also try to make this
      method as efficient as possible.
  */
  @available(OSX 10.7, *)
  optional func capture(captureOutput: AVCaptureFileOutput!, didStartRecordingToOutputFileAt fileURL: NSURL!, fromConnections connections: [AnyObject]!)

  /*!
   @method captureOutput:didPauseRecordingToOutputFileAtURL:fromConnections:
   @abstract
      Called whenever the output is recording to a file and successfully pauses the recording at the request of the client.
  
   @param captureOutput
      The capture file output that has paused its file recording.
   @param fileURL
      The file URL of the file that is being written.
   @param connections
      An array of AVCaptureConnection objects attached to the file output that provided the data that is being written to
      the file.
  
   @discussion
      Delegates can use this method to be informed when a request to pause recording is actually respected. It is safe for
      delegates to change what the file output is currently doing (starting a new file, for example) from within this
      method. If recording to a file is stopped, either manually or due to an error, this method is not guaranteed to be
      called, even if a previous call to pauseRecording was made.
  
      Clients should not assume that this method will be called on a specific thread, and should also try to make this
      method as efficient as possible.
  */
  @available(OSX 10.7, *)
  optional func capture(captureOutput: AVCaptureFileOutput!, didPauseRecordingToOutputFileAt fileURL: NSURL!, fromConnections connections: [AnyObject]!)

  /*!
   @method captureOutput:didResumeRecordingToOutputFileAtURL:fromConnections:
   @abstract
      Called whenever the output, at the request of the client, successfully resumes a file recording that was paused.
  
   @param captureOutput
      The capture file output that has resumed its paused file recording.
   @param fileURL
      The file URL of the file that is being written.
   @param connections
      An array of AVCaptureConnection objects attached to the file output that provided the data that is being written to
      the file.
  
   @discussion
      Delegates can use this method to be informed when a request to resume recording is actually respected. It is safe for
      delegates to change what the file output is currently doing (starting a new file, for example) from within this
      method. If recording to a file is stopped, either manually or due to an error, this method is not guaranteed to be
      called, even if a previous call to resumeRecording was made.
  
      Clients should not assume that this method will be called on a specific thread, and should also try to make this
      method as efficient as possible.
  */
  @available(OSX 10.7, *)
  optional func capture(captureOutput: AVCaptureFileOutput!, didResumeRecordingToOutputFileAt fileURL: NSURL!, fromConnections connections: [AnyObject]!)

  /*!
   @method captureOutput:willFinishRecordingToOutputFileAtURL:fromConnections:error:
   @abstract
      Informs the delegate when the output will stop writing new samples to a file.
  
   @param captureOutput
      The capture file output that will finish writing the file.
   @param fileURL
      The file URL of the file that is being written.
   @param connections
      An array of AVCaptureConnection objects attached to the file output that provided the data that is being written to
      the file.
   @param error
      An error describing what caused the file to stop recording, or nil if there was no error.
  
   @discussion
      This method is called when the file output will stop recording new samples to the file at outputFileURL, either
      because startRecordingToOutputFileURL:recordingDelegate: or stopRecording were called, or because an error, described
      by the error parameter, occurred (if no error occurred, the error parameter will be nil). This method will always be
      called for each recording request, even if no data is successfully written to the file.
  
      Clients should not assume that this method will be called on a specific thread, and should also try to make this
      method as efficient as possible.
  */
  @available(OSX 10.7, *)
  optional func capture(captureOutput: AVCaptureFileOutput!, willFinishRecordingToOutputFileAt fileURL: NSURL!, fromConnections connections: [AnyObject]!, error: NSError!)

  /*!
   @method captureOutput:didFinishRecordingToOutputFileAtURL:fromConnections:error:
   @abstract
      Informs the delegate when all pending data has been written to an output file.
  
   @param captureOutput
      The capture file output that has finished writing the file.
   @param fileURL
      The file URL of the file that has been written.
   @param connections
      An array of AVCaptureConnection objects attached to the file output that provided the data that was written to the
      file.
   @param error
      An error describing what caused the file to stop recording, or nil if there was no error.
  
   @discussion
      This method is called when the file output has finished writing all data to a file whose recording was stopped,
      either because startRecordingToOutputFileURL:recordingDelegate: or stopRecording were called, or because an error,
      described by the error parameter, occurred (if no error occurred, the error parameter will be nil).  This method will
      always be called for each recording request, even if no data is successfully written to the file.
  
      Clients should not assume that this method will be called on a specific thread.
  
      Delegates are required to implement this method.
  */
  @available(OSX 10.7, *)
  func capture(captureOutput: AVCaptureFileOutput!, didFinishRecordingToOutputFileAt outputFileURL: NSURL!, fromConnections connections: [AnyObject]!, error: NSError!)
}

/*!
 @protocol AVCaptureFileOutputDelegate
 @abstract
    Defines an interface for delegates of AVCaptureFileOutput to monitor and control recordings along exact sample
    boundaries.
*/
protocol AVCaptureFileOutputDelegate : NSObjectProtocol {

  /*!
   @method captureOutputShouldProvideSampleAccurateRecordingStart:
   @abstract
      Allows a client to opt in to frame accurate record-start in captureOutput:didOutputSampleBuffer:fromConnection:
  
   @param captureOutput
      The AVCaptureFileOutput instance with which the delegate is associated.
  
   @discussion
      In apps linked before Mac OS X 10.8, delegates that implement the captureOutput:didOutputSampleBuffer:fromConnection: 
      method can ensure frame accurate start / stop of a recording by calling startRecordingToOutputFileURL:recordingDelegate:
      from within the callback.  Frame accurate start requires the capture output to apply outputSettings
      when the session starts running, so it is ready to record on any given frame boundary.  Compressing
      all the time while the session is running has power, thermal, and CPU implications.  In apps linked on or after
      Mac OS X 10.8, delegates must implement captureOutputShouldProvideSampleAccurateRecordingStart: to indicate
      whether frame accurate start/stop recording is required (returning YES) or not (returning NO).
      The output calls this method as soon as the delegate is added, and never again.  If your delegate returns
      NO, the capture output applies compression settings when startRecordingToOutputFileURL:recordingDelegate: is called, 
      and disables compression settings after the recording is stopped.
  */
  @available(OSX 10.8, *)
  func captureOutputShouldProvideSampleAccurateRecordingStart(captureOutput: AVCaptureOutput!) -> Bool

  /*!
   @method captureOutput:didOutputSampleBuffer:fromConnection:
   @abstract
      Gives the delegate the opportunity to inspect samples as they are received by the output and optionally start and
      stop recording at exact times.
  
   @param captureOutput
      The capture file output that is receiving the media data.
   @param sampleBuffer
      A CMSampleBuffer object containing the sample data and additional information about the sample, such as its format
      and presentation time.
   @param connection
      The AVCaptureConnection object attached to the file output from which the sample data was received.
  
   @discussion
      This method is called whenever the file output receives a single sample buffer (a single video frame or audio buffer,
      for example) from the given connection. This gives delegates an opportunity to start and stop recording or change
      output files at an exact sample boundary if -captureOutputShouldProvideSampleAccurateRecordingStart: returns YES. 
      If called from within this method, the file output's startRecordingToOutputFileURL:recordingDelegate: and 
      resumeRecording methods are guaranteed to include the received sample buffer in the new file, whereas calls to 
      stopRecording and pauseRecording are guaranteed to include all samples leading up to those in the current sample 
      buffer in the existing file.
  
      Delegates can gather information particular to the samples by inspecting the CMSampleBuffer object. Sample buffers
      always contain a single frame of video if called from this method but may also contain multiple samples of audio. For
      B-frame video formats, samples are always delivered in presentation order.
  
      Clients that need to reference the CMSampleBuffer object outside of the scope of this method must CFRetain it and
      then CFRelease it when they are finished with it.
  
      Note that to maintain optimal performance, some sample buffers directly reference pools of memory that may need to be
      reused by the device system and other capture inputs. This is frequently the case for uncompressed device native
      capture where memory blocks are copied as little as possible. If multiple sample buffers reference such pools of
      memory for too long, inputs will no longer be able to copy new samples into memory and those samples will be dropped.
      If your application is causing samples to be dropped by retaining the provided CMSampleBuffer objects for too long,
      but it needs access to the sample data for a long period of time, consider copying the data into a new buffer and
      then calling CFRelease on the sample buffer if it was previously retained so that the memory it references can be
      reused. 
   
      Clients should not assume that this method will be called on a specific thread. In addition, this method is called
      periodically, so it must be efficient to prevent capture performance problems.
  */
  @available(OSX 10.7, *)
  optional func capture(captureOutput: AVCaptureFileOutput!, didOutputSampleBuffer sampleBuffer: CMSampleBuffer!, from connection: AVCaptureConnection!)
}

/*!
 @class AVCaptureMovieFileOutput
 @abstract
    AVCaptureMovieFileOutput is a concrete subclass of AVCaptureFileOutput that writes captured media to QuickTime movie
    files.

 @discussion
    AVCaptureMovieFileOutput implements the complete file recording interface declared by AVCaptureFileOutput for writing
    media data to QuickTime movie files. In addition, instances of AVCaptureMovieFileOutput allow clients to configure
    options specific to the QuickTime file format, including allowing them to write metadata collections to each file,
    specify media encoding options for each track (Mac OS X), and specify an interval at which movie fragments should be written.
*/
@available(OSX 10.7, *)
class AVCaptureMovieFileOutput : AVCaptureFileOutput {

  /*!
   @property movieFragmentInterval
   @abstract
      Specifies the frequency with which movie fragments should be written.
  
   @discussion
      When movie fragments are used, a partially written QuickTime movie file whose writing is unexpectedly interrupted can
      be successfully opened and played up to multiples of the specified time interval. A value of kCMTimeInvalid indicates
      that movie fragments should not be used, but that only a movie atom describing all of the media in the file should be
      written. The default value of this property is ten seconds.
  
      Changing the value of this property will not affect the movie fragment interval of the file currently being written,
      if there is one.
  */
  var movieFragmentInterval: CMTime

  /*!
   @property metadata
   @abstract
      A collection of metadata to be written to the receiver's output files.
  
   @discussion
      The value of this property is an array of AVMetadataItem objects representing the collection of top-level metadata to
      be written in each output file.
  */
  var metadata: [AnyObject]!

  /*!
   @method outputSettingsForConnection:
   @abstract
      Returns the options the receiver uses to re-encode media from the given connection as it is being recorded.
  
   @param connection
      The connection delivering the media to be re-encoded.
   @result
      An NSDictionary of output settings.
  
   @discussion
      See AVAudioSettings.h for audio connections or AVVideoSettings.h for video connections for more information on
      how to construct an output settings dictionary.  If the returned value is an empty dictionary (i.e. [NSDictionary
      dictionary], the format of the media from the connection will not be changed before being written to the file.  If
      -setOutputSettings:forConnection: was called with a nil dictionary, this method returns a non-nil dictionary reflecting
      the settings used by the AVCaptureSession's current sessionPreset.
  */
  @available(OSX 10.7, *)
  func outputSettingsFor(connection: AVCaptureConnection!) -> [NSObject : AnyObject]!

  /*!
   @method setOutputSettings:forConnection:
   @abstract
      Sets the options the receiver uses to re-encode media from the given connection as it is being recorded.
  
   @param outputSettings
      An NSDictionary of output settings.
   @param connection
      The connection delivering the media to be re-encoded.
  
   @discussion
      See AVAudioSettings.h for audio connections or AVVideoSettings.h for video connections for more information on
      how to construct an output settings dictionary.  A value of an empty dictionary (i.e. [NSDictionary dictionary], means
      that the format of the media from the connection should not be changed before being written to the file.  A value of
      nil means that the output format will be determined by the session preset.  In this case, -outputSettingsForConnection:
      will return a non-nil dictionary reflecting the settings used by the AVCaptureSession's current sessionPreset.
  */
  @available(OSX 10.7, *)
  func setOutputSettings(outputSettings: [NSObject : AnyObject]!, forConnection connection: AVCaptureConnection!)
  init()
}

/*!
 @class AVCaptureAudioFileOutput
 @abstract
    AVCaptureAudioFileOutput is a concrete subclass of AVCaptureFileOutput that writes captured audio to any audio file
    type supported by CoreAudio.
 
 @discussion
    AVCaptureAudioFileOutput implements the complete file recording interface declared by AVCaptureFileOutput for writing
    media data to audio files. In addition, instances of AVCaptureAudioFileOutput allow clients to configure options
    specific to the audio file formats, including allowing them to write metadata collections to each file and specify
    audio encoding options.
*/
@available(OSX 10.7, *)
class AVCaptureAudioFileOutput : AVCaptureFileOutput {

  /*!
   @method availableOutputFileTypes
   @abstract		
      Provides the file types AVCaptureAudioFileOutput can write.
   @result
      An NSArray of UTIs identifying the file types the AVCaptureAudioFileOutput class can write.
  */
  class func availableOutputFileTypes() -> [AnyObject]!

  /*!
   @method startRecordingToOutputFileURL:outputFileType:recordingDelegate:
   @abstract
      Tells the receiver to start recording to a new file of the specified format, and specifies a delegate that will be
      notified when recording is finished.
  
   @param outputFileURL
      An NSURL object containing the URL of the output file. This method throws an NSInvalidArgumentException if the URL is
      not a valid file URL.
   @param fileType
      A UTI indicating the format of the file to be written.
   @param delegate
      An object conforming to the AVCaptureFileOutputRecordingDelegate protocol. Clients must specify a delegate so that they
      can be notified when recording to the given URL is finished.
  
   @discussion
      The method sets the file URL to which the receiver is currently writing output media. If a file at the given URL
      already exists when capturing starts, recording to the new file will fail.
  
      The fileType argument is a UTI corresponding to the audio file format that should be written. UTIs for common 
      audio file types are declared in AVMediaFormat.h.
  
      Clients need not call stopRecording before calling this method while another recording is in progress. If this method
      is invoked while an existing output file was already being recorded, no media samples will be discarded between the
      old file and the new file.
  
      When recording is stopped either by calling stopRecording, by changing files using this method, or because of an
      error, the remaining data that needs to be included to the file will be written in the background. Therefore, clients
      must specify a delegate that will be notified when all data has been written to the file using the
      captureOutput:didFinishRecordingToOutputFileAtURL:fromConnections:error: method. The recording delegate can also
      optionally implement methods that inform it when data starts being written, when recording is paused and resumed, and
      when recording is about to be finished.
  
      On Mac OS X, if this method is called within the captureOutput:didOutputSampleBuffer:fromConnection: delegate method,
      the first samples written to the new file are guaranteed to be those contained in the sample buffer passed to that
      method.
  */
  func startRecordingToOutputFileURL(outputFileURL: NSURL!, outputFileType fileType: String!, recordingDelegate delegate: AVCaptureFileOutputRecordingDelegate!)

  /*!
   @property metadata
   @abstract
      A collection of metadata to be written to the receiver's output files.
  
   @discussion
      The value of this property is an array of AVMetadataItem objects representing the collection of top-level metadata to
      be written in each output file. Only ID3 v2.2, v2.3, or v2.4 style metadata items are supported.
  */
  var metadata: [AnyObject]!

  /*!
   @property audioSettings
   @abstract
      Specifies the options the receiver uses to re-encode audio as it is being recorded.
  
   @discussion
      The output settings dictionary can contain values for keys from AVAudioSettings.h. A value of nil indicates that the
      format of the audio should not be changed before being written to the file.
  */
  var audioSettings: [NSObject : AnyObject]!
  init()
}

/*!
 @class AVCaptureStillImageOutput
 @abstract
    AVCaptureStillImageOutput is a concrete subclass of AVCaptureOutput that can be used to capture high-quality still
    images with accompanying metadata.

 @discussion
    Instances of AVCaptureStillImageOutput can be used to capture, on demand, high quality snapshots from a realtime
    capture source. Clients can request a still image for the current time using the
    captureStillImageAsynchronouslyFromConnection:completionHandler: method. Clients can also configure still image
    outputs to produce still images in specific image formats.
*/
@available(OSX 10.7, *)
class AVCaptureStillImageOutput : AVCaptureOutput {

  /*!
   @property outputSettings
   @abstract
      Specifies the options the receiver uses to encode still images before they are delivered.
  
   @discussion
      See AVVideoSettings.h for more information on how to construct an output settings dictionary.
  
      On iOS, the only currently supported keys are AVVideoCodecKey and kCVPixelBufferPixelFormatTypeKey. 
      Use -availableImageDataCVPixelFormatTypes and -availableImageDataCodecTypes to determine what 
      codec keys and pixel formats are supported. AVVideoQualityKey is supported on iOS 6.0 and later
      and may only be used when AVVideoCodecKey is set to AVVideoCodecJPEG.
  */
  var outputSettings: [NSObject : AnyObject]!

  /*!
   @property availableImageDataCVPixelFormatTypes
   @abstract
      Indicates the supported image pixel formats that can be specified in outputSettings.
  
   @discussion
      The value of this property is an NSArray of NSNumbers that can be used as values for the 
      kCVPixelBufferPixelFormatTypeKey in the receiver's outputSettings property.  The first
      format in the returned list is the most efficient output format.
  */
  var availableImageDataCVPixelFormatTypes: [AnyObject]! { get }

  /*!
   @property availableImageDataCodecTypes
   @abstract
      Indicates the supported image codec formats that can be specified in outputSettings.
  
   @discussion
      The value of this property is an NSArray of NSStrings that can be used as values for the 
      AVVideoCodecKey in the receiver's outputSettings property.
  */
  var availableImageDataCodecTypes: [AnyObject]! { get }

  /*!
   @property capturingStillImage
   @abstract
      A boolean value that becomes true when a still image is being captured.
  
   @discussion
      The value of this property is a BOOL that becomes true when a still image is being
      captured, and false when no still image capture is underway.  This property is
      key-value observable.
  */
  @available(OSX 10.8, *)
  var isCapturingStillImage: Bool { get }

  /*!
   @method captureStillImageAsynchronouslyFromConnection:completionHandler:
   @abstract
      Initiates an asynchronous still image capture, returning the result to a completion handler.
  
   @param connection
      The AVCaptureConnection object from which to capture the still image.
   @param handler
      A block that will be called when the still image capture is complete. The block will be passed a CMSampleBuffer
      object containing the image data or an NSError object if an image could not be captured.
  
   @discussion
      This method will return immediately after it is invoked, later calling the provided completion handler block when
      image data is ready. If the request could not be completed, the error parameter will contain an NSError object
      describing the failure.
  
      Attachments to the image data sample buffer may contain metadata appropriate to the image data format. For instance,
      a sample buffer containing JPEG data may carry a kCGImagePropertyExifDictionary as an attachment. See
      <ImageIO/CGImageProperties.h> for a list of keys and value types.
  
      Clients should not assume that the completion handler will be called on a specific thread.
   
      Calls to captureStillImageAsynchronouslyFromConnection:completionHandler: are not synchronized with AVCaptureDevice
      manual control completion handlers. Setting a device manual control, waiting for its completion, then calling
      captureStillImageAsynchronouslyFromConnection:completionHandler: DOES NOT ensure that the still image returned reflects
      your manual control change. It may be from an earlier time. You can compare your manual control completion handler sync time
      to the returned still image's presentation time. You can retrieve the sample buffer's pts using 
      CMSampleBufferGetPresentationTimestamp(). If the still image has an earlier timestamp, your manual control command 
      does not apply to it.
  */
  func captureStillImageAsynchronouslyFrom(connection: AVCaptureConnection!, completionHandler handler: ((CMSampleBuffer!, NSError!) -> Void)!)

  /*!
   @method jpegStillImageNSDataRepresentation:
   @abstract
      Converts the still image data and metadata attachments in a JPEG sample buffer to an NSData representation.
  
   @param jpegSampleBuffer
      The sample buffer carrying JPEG image data, optionally with Exif metadata sample buffer attachments.
      This method throws an NSInvalidArgumentException if jpegSampleBuffer is NULL or not in the JPEG format.
  
   @discussion
      This method returns an NSData representation of a JPEG still image sample buffer, merging the image data and
      Exif metadata sample buffer attachments without recompressing the image.
      The returned NSData is suitable for writing to disk.
  */
  class func jpegStillImageNSDataRepresentation(jpegSampleBuffer: CMSampleBuffer!) -> NSData!
  init()
}

/*!
 @class AVCaptureAudioPreviewOutput
 @abstract
    AVCaptureAudioPreviewOutput is a concrete subclass of AVCaptureOutput that can be used to preview the audio being
    captured.
 
 @discussion
    Instances of AVCaptureAudioPreviewOutput have an associated Core Audio output device that can be used to play audio
    being captured by the capture session. The unique ID of a Core Audio device can be obtained from its
    kAudioDevicePropertyDeviceUID property.
*/
@available(OSX 10.7, *)
class AVCaptureAudioPreviewOutput : AVCaptureOutput {

  /*!
   @property outputDeviceUniqueID
   @abstract
      Specifies the unique ID of the Core Audio output device being used to play preview audio.
  
   @discussion
      The value of this property is an NSString containing the unique ID of the Core Audio device to be used for output, or
      nil if the default system output should be used
  */
  var outputDeviceUniqueID: String!

  /*!
   @property volume
   @abstract
      Specifies the preview volume of the output.
  
   @discussion
      The value of this property is the preview volume of the receiver, where 1.0 is the maximum volume and 0.0 is muted. 
  */
  var volume: Float
  init()
}

/*!
 @protocol AVCaptureMetadataOutputObjectsDelegate
 @abstract
    Defines an interface for delegates of AVCaptureMetadataOutput to receive emitted objects.
*/
protocol AVCaptureMetadataOutputObjectsDelegate : NSObjectProtocol {

  /*!
   @method captureOutput:didOutputMetadataObjects:fromConnection:
   @abstract
      Called whenever an AVCaptureMetadataOutput instance emits new objects through a connection.
  
   @param captureOutput
      The AVCaptureMetadataOutput instance that emitted the objects.
   @param metadataObjects
      An array of AVMetadataObject subclasses (see AVMetadataObject.h).
   @param connection
      The AVCaptureConnection through which the objects were emitted.
  
   @discussion
      Delegates receive this message whenever the output captures and emits new objects, as specified by
      its metadataObjectTypes property. Delegates can use the provided objects in conjunction with other APIs
      for further processing. This method will be called on the dispatch queue specified by the output's
      metadataObjectsCallbackQueue property. This method may be called frequently, so it must be efficient to 
      prevent capture performance problems, including dropped metadata objects.
  
      Clients that need to reference metadata objects outside of the scope of this method must retain them and
      then release them when they are finished with them.
  */
  @available(OSX 10.7, *)
  optional func captureOutput(captureOutput: AVCaptureOutput!, didOutputMetadataObjects metadataObjects: [AnyObject]!, from connection: AVCaptureConnection!)
}

/*!
 @constant AVCaptureSessionRuntimeErrorNotification
 @abstract
    Posted when an unexpected error occurs while an AVCaptureSession instance is running.
 
 @discussion
    The notification object is the AVCaptureSession instance that encountered a runtime error.
    The userInfo dictionary contains an NSError for the key AVCaptureSessionErrorKey.
*/
@available(OSX 10.7, *)
let AVCaptureSessionRuntimeErrorNotification: String

/*!
 @constant AVCaptureSessionErrorKey
 @abstract
    The key used to provide an NSError describing the failure condition in an
    AVCaptureSessionRuntimeErrorNotification.
 
 @discussion
    AVCaptureSessionErrorKey may be found in the userInfo dictionary provided with
    an AVCaptureSessionRuntimeErrorNotification.  The NSError associated with the
    notification gives greater detail on the nature of the error, and in some cases
    recovery suggestions. 
*/
@available(OSX 10.7, *)
let AVCaptureSessionErrorKey: String

/*!
 @constant AVCaptureSessionDidStartRunningNotification
 @abstract
    Posted when an instance of AVCaptureSession successfully starts running.
 
 @discussion
    Clients may observe the AVCaptureSessionDidStartRunningNotification to know
    when an instance of AVCaptureSession starts running.
*/
@available(OSX 10.7, *)
let AVCaptureSessionDidStartRunningNotification: String

/*!
 @constant AVCaptureSessionDidStopRunningNotification
 @abstract
    Posted when an instance of AVCaptureSession stops running.
 
 @discussion
    Clients may observe the AVCaptureSessionDidStopRunningNotification to know
    when an instance of AVCaptureSession stops running.  An AVCaptureSession instance
    may stop running automatically due to external system conditions, such as the
    device going to sleep, or being locked by a user.
*/
@available(OSX 10.7, *)
let AVCaptureSessionDidStopRunningNotification: String

/*!
 @enum AVCaptureVideoOrientation
 @abstract
    Constants indicating video orientation, for use with AVCaptureVideoPreviewLayer 
    (see AVCaptureVideoPreviewLayer.h) and AVCaptureConnection (see below).
 
 @constant AVCaptureVideoOrientationPortrait
    Indicates that video should be oriented vertically, home button on the bottom.
 @constant AVCaptureVideoOrientationPortraitUpsideDown
    Indicates that video should be oriented vertically, home button on the top.
 @constant AVCaptureVideoOrientationLandscapeRight
    Indicates that video should be oriented horizontally, home button on the right.
 @constant AVCaptureVideoOrientationLandscapeLeft
    Indicates that video should be oriented horizontally, home button on the left.
*/
@available(OSX 10.7, *)
enum AVCaptureVideoOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Portrait
  case PortraitUpsideDown
  case LandscapeRight
  case LandscapeLeft
}

/*!
 @constant AVCaptureSessionPresetPhoto
 @abstract
    An AVCaptureSession preset suitable for high resolution photo quality output.
 
 @discussion
    Clients may set an AVCaptureSession instance's sessionPreset to AVCaptureSessionPresetPhoto
    for full resolution photo quality output.
*/
@available(OSX 10.7, *)
let AVCaptureSessionPresetPhoto: String

/*!
 @constant AVCaptureSessionPresetHigh
 @abstract
    An AVCaptureSession preset suitable for high quality video and audio output.
 
 @discussion
    Clients may set an AVCaptureSession instance's sessionPreset to AVCaptureSessionPresetHigh
    to achieve high quality video and audio output.  AVCaptureSessionPresetHigh is the
    default sessionPreset value.
*/
@available(OSX 10.7, *)
let AVCaptureSessionPresetHigh: String

/*!
 @constant AVCaptureSessionPresetMedium
 @abstract
    An AVCaptureSession preset suitable for medium quality output.
 
 @discussion
    Clients may set an AVCaptureSession instance's sessionPreset to AVCaptureSessionPresetMedium
    to achieve output video and audio bitrates suitable for sharing over WiFi.
*/
@available(OSX 10.7, *)
let AVCaptureSessionPresetMedium: String

/*!
 @constant AVCaptureSessionPresetLow
 @abstract
    An AVCaptureSession preset suitable for low quality output.
 
 @discussion
    Clients may set an AVCaptureSession instance's sessionPreset to AVCaptureSessionPresetLow
    to achieve output video and audio bitrates suitable for sharing over 3G.
*/
@available(OSX 10.7, *)
let AVCaptureSessionPresetLow: String

/*!
 @constant AVCaptureSessionPreset320x240
 @abstract
    An AVCaptureSession preset suitable for 320x240 video output.
 
 @discussion
    Clients may set an AVCaptureSession instance's sessionPreset to AVCaptureSessionPreset320x240
    to achieve 320x240 output.
*/
@available(OSX 10.7, *)
let AVCaptureSessionPreset320x240: String

/*!
 @constant AVCaptureSessionPreset352x288
 @abstract
    An AVCaptureSession preset suitable for 352x288 video output.
 
 @discussion
    Clients may set an AVCaptureSession instance's sessionPreset to AVCaptureSessionPreset352x288
    to achieve CIF quality (352x288) output.
*/
@available(OSX 10.7, *)
let AVCaptureSessionPreset352x288: String

/*!
 @constant AVCaptureSessionPreset640x480
 @abstract
    An AVCaptureSession preset suitable for 640x480 video output.
 
 @discussion
    Clients may set an AVCaptureSession instance's sessionPreset to AVCaptureSessionPreset640x480
    to achieve VGA quality (640x480) output.
*/
@available(OSX 10.7, *)
let AVCaptureSessionPreset640x480: String

/*!
 @constant AVCaptureSessionPreset960x540
 @abstract
    An AVCaptureSession preset suitable for 960x540 video output.
 
 @discussion
    Clients may set an AVCaptureSession instance's sessionPreset to AVCaptureSessionPreset960x540
    to achieve quarter HD quality (960x540) output.
*/
@available(OSX 10.7, *)
let AVCaptureSessionPreset960x540: String

/*!
 @constant AVCaptureSessionPreset1280x720
 @abstract
    An AVCaptureSession preset suitable for 1280x720 video output.
 
 @discussion
    Clients may set an AVCaptureSession instance's sessionPreset to AVCaptureSessionPreset1280x720
    to achieve 1280x720 output.
*/
@available(OSX 10.7, *)
let AVCaptureSessionPreset1280x720: String

/*!
@constant AVCaptureSessionPresetiFrame960x540
@abstract
    An AVCaptureSession preset producing 960x540 Apple iFrame video and audio content.

@discussion
    Clients may set an AVCaptureSession instance's sessionPreset to AVCaptureSessionPresetiFrame960x540
    to achieve 960x540 quality iFrame H.264 video at ~30 Mbits/sec with AAC audio.  QuickTime
    movies captured in iFrame format are optimal for editing applications.
*/
@available(OSX 10.9, *)
let AVCaptureSessionPresetiFrame960x540: String

/*!
@constant AVCaptureSessionPresetiFrame1280x720
@abstract
    An AVCaptureSession preset producing 1280x720 Apple iFrame video and audio content.

@discussion
    Clients may set an AVCaptureSession instance's sessionPreset to AVCaptureSessionPresetiFrame1280x720
    to achieve 1280x720 quality iFrame H.264 video at ~40 Mbits/sec with AAC audio.  QuickTime
    movies captured in iFrame format are optimal for editing applications.
*/
@available(OSX 10.9, *)
let AVCaptureSessionPresetiFrame1280x720: String

/*!
 @class AVCaptureSession
 @abstract
    AVCaptureSession is the central hub of the AVFoundation capture classes.
 
 @discussion
    To perform a real-time capture, a client may instantiate AVCaptureSession and add appropriate
    AVCaptureInputs, such as AVCaptureDeviceInput, and outputs, such as AVCaptureMovieFileOutput.
    [AVCaptureSession startRunning] starts the flow of data from the inputs to the outputs, and 
    [AVCaptureSession stopRunning] stops the flow.  A client may set the sessionPreset property to 
    customize the quality level or bitrate of the output.
*/
@available(OSX 10.7, *)
class AVCaptureSession : NSObject {

  /*!
   @method canSetSessionPreset:
   @abstract
      Returns whether the receiver can be configured with the given preset.
   
   @param preset
      An AVCaptureSession preset.
   @result
      YES if the receiver can be set to the given preset, NO otherwise.
   
   @discussion
      An AVCaptureSession instance can be associated with a preset that configures its inputs and outputs to fulfill common
      use cases. This method can be used to determine if the receiver supports the desired preset given its
      current input and output configuration.  The receiver's sessionPreset property may only be 
      set to a certain preset if this method returns YES for that preset.
  */
  func canSetSessionPreset(preset: String!) -> Bool

  /*!
   @property sessionPreset
   @abstract
      Indicates the session preset currently in use by the receiver.
   
   @discussion
      The value of this property is an NSString (one of AVCaptureSessionPreset*) indicating 
      the current session preset in use by the receiver.  The sessionPreset property may be set 
      while the receiver is running.
  */
  var sessionPreset: String!

  /*!
   @property inputs
   @abstract
      An NSArray of AVCaptureInputs currently added to the receiver.
  
   @discussion
      The value of this property is an NSArray of AVCaptureInputs currently added to
      the receiver.  Clients can add AVCaptureInputs to a session by calling -addInput:.
  */
  var inputs: [AnyObject]! { get }

  /*!
   @method canAddInput:
   @abstract
      Returns whether the proposed input can be added to the receiver.
   
   @param input
      An AVCaptureInput instance.
   @result
      YES if the proposed input can be added to the receiver, NO otherwise.
   
   @discussion
      An AVCaptureInput instance can only be added to a session using -addInput: if
      canAddInput: returns YES.
  */
  func canAddInput(input: AVCaptureInput!) -> Bool

  /*!
   @method addInput:
   @abstract
      Adds an AVCaptureInput to the session.
   
   @param input
      An AVCaptureInput instance.
   
   @discussion
      An AVCaptureInput instance can only be added to a session using -addInput: if
      canAddInput: returns YES.  -addInput: may be called while the session is running.
  */
  func addInput(input: AVCaptureInput!)

  /*!
   @method removeInput:
   @abstract
      Removes an AVCaptureInput from the session.
   
   @param input
      An AVCaptureInput instance.
   
   @discussion
      -removeInput: may be called while the session is running.
  */
  func removeInput(input: AVCaptureInput!)

  /*!
   @property outputs
   @abstract
      An NSArray of AVCaptureOutputs currently added to the receiver.
  
   @discussion
      The value of this property is an NSArray of AVCaptureOutputs currently added to
      the receiver.  Clients can add AVCaptureOutputs to a session by calling -addOutput:.
  */
  var outputs: [AnyObject]! { get }

  /*!
   @method canAddOutput:
   @abstract
      Returns whether the proposed output can be added to the receiver.
   
   @param output
      An AVCaptureOutput instance.
   @result
      YES if the proposed output can be added to the receiver, NO otherwise.
   
   @discussion
      An AVCaptureOutput instance can only be added to a session using -addOutput: if
      canAddOutput: returns YES.
  */
  func canAddOutput(output: AVCaptureOutput!) -> Bool

  /*!
   @method addOutput:
   @abstract
      Adds an AVCaptureOutput to the session.
   
   @param output
      An AVCaptureOutput instance.
   
   @discussion
      An AVCaptureOutput instance can only be added to a session using -addOutput: if
      canAddOutput: returns YES.  -addOutput: may be called while the session is running.
  */
  func addOutput(output: AVCaptureOutput!)

  /*!
   @method removeOutput:
   @abstract
      Removes an AVCaptureOutput from the session.
   
   @param output
      An AVCaptureOutput instance.
   
   @discussion
      -removeOutput: may be called while the session is running.
  */
  func removeOutput(output: AVCaptureOutput!)

  /*!
   @method addInputWithNoConnections:
   @abstract
      Adds an AVCaptureInput to the session without forming any connections.
   
   @param input
      An AVCaptureInput instance.
   
   @discussion
      -addInputWithNoConnections: may be called while the session is running.
      The -addInput: method is the preferred method for adding an input to an
      AVCaptureSession.  -addInputWithNoConnections: may be called if you need 
      fine-grained control over which inputs are connected to which outputs.
  */
  @available(OSX 10.7, *)
  func addInputWithNoConnections(input: AVCaptureInput!)

  /*!
   @method addOutputWithNoConnections:
   @abstract
      Adds an AVCaptureOutput to the session without forming any connections.
   
   @param output
      An AVCaptureOutput instance.
   
   @discussion
      -addOutputWithNoConnections: may be called while the session is running.
      The -addOutput: method is the preferred method for adding an output to an
      AVCaptureSession.  -addOutputWithNoConnections: may be called if you need 
      fine-grained control over which inputs are connected to which outputs.
  */
  @available(OSX 10.7, *)
  func addOutputWithNoConnections(output: AVCaptureOutput!)

  /*!
   @method canAddConnection:
   @abstract
      Returns whether the proposed connection can be added to the receiver.
   
   @param connection
      An AVCaptureConnection instance.
   
   @discussion
      An AVCaptureConnection instance can only be added to a session using -addConnection:
      if canAddConnection: returns YES.  When using -addInput: or -addOutput:, connections
      are formed automatically between all compatible inputs and outputs.  Manually
      adding connections is only necessary when adding an input or output with
      no connections.
  */
  @available(OSX 10.7, *)
  func canAdd(connection: AVCaptureConnection!) -> Bool

  /*!
   @method addConnection:
   @abstract
      Adds an AVCaptureConnection to the session.
   
   @param connection
      An AVCaptureConnection instance.
   
   @discussion
      An AVCaptureConnection instance can only be added to a session using -addConnection:
      if canAddConnection: returns YES.  When using -addInput: or -addOutput:, connections
      are formed automatically between all compatible inputs and outputs.  Manually
      adding connections is only necessary when adding an input or output with
      no connections.  -addConnection: may be called while the session is running.
  */
  @available(OSX 10.7, *)
  func add(connection: AVCaptureConnection!)

  /*!
   @method removeConnection:
   @abstract
      Removes an AVCaptureConnection from the session.
   
   @param connection
      An AVCaptureConnection instance.
   
   @discussion
      -removeConnection: may be called while the session is running.
  */
  @available(OSX 10.7, *)
  func remove(connection: AVCaptureConnection!)

  /*!
   @method beginConfiguration
   @abstract
      When paired with commitConfiguration, allows a client to batch multiple configuration
      operations on a running session into atomic updates.
  
   @discussion
      -beginConfiguration / -commitConfiguration are AVCaptureSession's mechanism
      for batching multiple configuration operations on a running session into atomic
      updates.  After calling [session beginConfiguration], clients may add or remove
      outputs, alter the sessionPreset, or configure individual AVCaptureInput or Output
      properties.  All changes will be pended until the client calls [session commitConfiguration],
      at which time they will be applied together.  -beginConfiguration / -commitConfiguration
      pairs may be nested, and will only be applied when the outermost commit is invoked.
  */
  func beginConfiguration()

  /*!
   @method commitConfiguration
   @abstract
      When preceded by beginConfiguration, allows a client to batch multiple configuration
      operations on a running session into atomic updates.
  
   @discussion
      -beginConfiguration / -commitConfiguration are AVCaptureSession's mechanism
      for batching multiple configuration operations on a running session into atomic
      updates.  After calling [session beginConfiguration], clients may add or remove
      outputs, alter the sessionPreset, or configure individual AVCaptureInput or Output
      properties.  All changes will be pended until the client calls [session commitConfiguration],
      at which time they will be applied together.  -beginConfiguration / -commitConfiguration
      pairs may be nested, and will only be applied when the outermost commit is invoked.
  */
  func commitConfiguration()

  /*!
   @property running
   @abstract
      Indicates whether the session is currently running.
   
   @discussion
      The value of this property is a BOOL indicating whether the receiver is running.
      Clients can key value observe the value of this property to be notified when
      the session automatically starts or stops running.
  */
  var isRunning: Bool { get }

  /*!
   @method startRunning
   @abstract
      Starts an AVCaptureSession instance running.
  
   @discussion
      Clients invoke -startRunning to start the flow of data from inputs to outputs connected to 
      the AVCaptureSession instance.  This call blocks until the session object has completely
      started up or failed.  A failure to start running is reported through the AVCaptureSessionRuntimeErrorNotification
      mechanism.
  */
  func startRunning()

  /*!
   @method stopRunning
   @abstract
      Stops an AVCaptureSession instance that is currently running.
  
   @discussion
      Clients invoke -stopRunning to stop the flow of data from inputs to outputs connected to 
      the AVCaptureSession instance.  This call blocks until the session object has completely
      stopped.
  */
  func stopRunning()

  /*!
   @property masterClock
   @abstract
  	Provides the master clock being used for output synchronization.
   @discussion
  	The masterClock is readonly. Use masterClock to synchronize AVCaptureOutput data with external data sources (e.g motion samples). 
  	All capture output sample buffer timestamps are on the masterClock timebase.
  	
  	For example, if you want to reverse synchronize the output timestamps to the original timestamps, you can do the following:
  	In captureOutput:didOutputSampleBuffer:fromConnection:
   
  	AVCaptureInputPort *port = [[connection inputPorts] objectAtIndex:0];
  	CMClockRef originalClock = [port clock];
   
  	CMTime syncedPTS = CMSampleBufferGetPresentationTime( sampleBuffer );
  	CMTime originalPTS = CMSyncConvertTime( syncedPTS, [session masterClock], originalClock );
   
  	This property is key-value observable.
   */
  @available(OSX 10.9, *)
  var masterClock: CMClock! { get }
  init()
}

/*!
 @enum AVVideoFieldMode
 @abstract
    Constants indicating video field mode, for use with AVCaptureConnection's videoFieldMode
    property (see below).
 
 @constant AVVideoFieldModeBoth
    Indicates that both top and bottom video fields in interlaced content should be passed thru.
 @constant AVVideoFieldModeTopOnly
    Indicates that only the top video field in interlaced content should be passed thru.
 @constant AVVideoFieldModeBottomOnly
    Indicates that the bottom video field only in interlaced content should be passed thru.
 @constant AVVideoFieldModeDeinterlace
    Indicates that top and bottom video fields in interlaced content should be deinterlaced.
*/
@available(OSX 10.7, *)
enum AVVideoFieldMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Both
  case TopOnly
  case BottomOnly
  case Deinterlace
}

/*!
 @class AVCaptureConnection
 @abstract
    AVCaptureConnection represents a connection between an AVCaptureInputPort or ports, and an AVCaptureOutput or 
    AVCaptureVideoPreviewLayer present in an AVCaptureSession.
 
 @discussion
    AVCaptureInputs have one or more AVCaptureInputPorts.  AVCaptureOutputs can accept
    data from one or more sources (example - an AVCaptureMovieFileOutput accepts both video and audio data).
    AVCaptureVideoPreviewLayers can accept data from one AVCaptureInputPort whose mediaType is
    AVMediaTypeVideo. When an input or output is added to a session, or a video preview layer is
    associated with a session, the session greedily forms connections between all the compatible AVCaptureInputs' 
    ports and AVCaptureOutputs or AVCaptureVideoPreviewLayers.  Iterating through an output's connections or a
    video preview layer's sole connection, a client may enable or disable the flow of data from a given input 
    to a given output or preview layer.
     
    Connections involving audio expose an array of AVCaptureAudioChannel objects, which can be used for
    monitoring levels.

    Connections involving video expose video specific properties, such as videoMirrored and videoOrientation.
*/
@available(OSX 10.7, *)
class AVCaptureConnection : NSObject {

  /*!
   @method initWithInputPorts:output:
   @abstract
      Returns an AVCaptureConnection instance describing a connection between the specified inputPorts 
      and the specified output.
   
   @param ports
      An array of AVCaptureInputPort objects associated with AVCaptureInput objects.
   @param output
      An AVCaptureOutput object.
   @result
      An AVCaptureConnection instance joining the specified inputPorts to the specified
      output port.
   
   @discussion
      This method returns an instance of AVCaptureConnection that may be subsequently added to an
      AVCaptureSession instance using AVCaptureSession's -addConnection: method.  When using 
      -addInput: or -addOutput:, connections are formed between all compatible inputs and outputs
      automatically.  You do not need to manually create and add connections to the session unless
      you use the primitive -addInputWithNoConnections: or -addOutputWithNoConnections: methods.
  */
  @available(OSX 10.7, *)
  init!(inputPorts ports: [AnyObject]!, output: AVCaptureOutput!)

  /*!
   @method initWithInputPort:videoPreviewLayer:
   @abstract
      Returns an AVCaptureConnection instance describing a connection between the specified inputPort 
      and the specified AVCaptureVideoPreviewLayer instance.
   
   @param port
      An AVCaptureInputPort object associated with an AVCaptureInput object.
   @param layer
      An AVCaptureVideoPreviewLayer object.
   @result
      An AVCaptureConnection instance joining the specified inputPort to the specified
      video preview layer.
   
   @discussion
      This method returns an instance of AVCaptureConnection that may be subsequently added to an
      AVCaptureSession instance using AVCaptureSession's -addConnection: method.  When using 
      AVCaptureVideoPreviewLayer's -initWithSession: or -setSession:, a connection is formed between 
      the first compatible input port and the video preview layer automatically.  You do not need to 
      manually create and add connections to the session unless you use AVCaptureVideoPreviewLayer's 
      primitive -initWithSessionWithNoConnection: or -setSessionWithNoConnection: methods.
  */
  @available(OSX 10.7, *)
  init!(inputPort port: AVCaptureInputPort!, videoPreviewLayer layer: AVCaptureVideoPreviewLayer!)

  /*!
   @property inputPorts
   @abstract
      An array of AVCaptureInputPort instances providing data through this connection.
  
   @discussion
      An AVCaptureConnection may involve one or more AVCaptureInputPorts producing data
      to the connection's AVCaptureOutput.  This property is read-only.  An AVCaptureConnection's
      inputPorts remain static for the life of the object.  
  */
  var inputPorts: [AnyObject]! { get }

  /*!
   @property output
   @abstract
      The AVCaptureOutput instance consuming data from this connection's inputPorts.
  
   @discussion
      An AVCaptureConnection may involve one or more AVCaptureInputPorts producing data
      to the connection's AVCaptureOutput.  This property is read-only.  An AVCaptureConnection's
      output remains static for the life of the object.  Note that a connection can either
      be to an output or a video preview layer, but never to both.
  */
  var output: AVCaptureOutput! { get }

  /*!
   @property videoPreviewLayer
   @abstract
      The AVCaptureVideoPreviewLayer instance consuming data from this connection's inputPort.
   
   @discussion
      An AVCaptureConnection may involve one AVCaptureInputPort producing data
      to an AVCaptureVideoPreviewLayer object.  This property is read-only.  An AVCaptureConnection's
      videoPreviewLayer remains static for the life of the object. Note that a connection can either
      be to an output or a video preview layer, but never to both.
  */
  @available(OSX 10.7, *)
  var videoPreviewLayer: AVCaptureVideoPreviewLayer! { get }

  /*!
   @property enabled
   @abstract
      Indicates whether the connection's output should consume data.
  
   @discussion
      The value of this property is a BOOL that determines whether the receiver's output should consume data 
      from its connected inputPorts when a session is running. Clients can set this property to stop the 
      flow of data to a given output during capture.  The default value is YES.  
  */
  var isEnabled: Bool

  /*!
   @property active
   @abstract
      Indicates whether the receiver's output is currently capable of consuming
      data through this connection.
  
   @discussion
      The value of this property is a BOOL that determines whether the receiver's output
      can consume data provided through this connection.  This property is read-only.  Clients
      may key-value observe this property to know when a session's configuration forces a
      connection to become inactive.  The default value is YES.  
  */
  var isActive: Bool { get }

  /*!
   @property audioChannels
   @abstract
      An array of AVCaptureAudioChannel objects representing individual channels of
      audio data flowing through the connection.
  
   @discussion
      This property is only applicable to AVCaptureConnection instances involving
      audio.  In such connections, the audioChannels array contains one AVCaptureAudioChannel
      object for each channel of audio data flowing through this connection.
  */
  var audioChannels: [AnyObject]! { get }

  /*!
   @property supportsVideoMirroring
   @abstract
      Indicates whether the connection supports setting the videoMirrored property.
  
   @discussion
      This property is only applicable to AVCaptureConnection instances involving
      video.  In such connections, the videoMirrored property may only be set if
      -isVideoMirroringSupported returns YES.
  */
  var supportsVideoMirroring: Bool { get }

  /*!
   @property videoMirrored
   @abstract
      Indicates whether the video flowing through the connection should be mirrored
      about its vertical axis.
  
   @discussion
      This property is only applicable to AVCaptureConnection instances involving
      video.  if -isVideoMirroringSupported returns YES, videoMirrored may be set
      to flip the video about its vertical axis and produce a mirror-image effect.
  */
  var isVideoMirrored: Bool

  /*!
   @property automaticallyAdjustsVideoMirroring
   @abstract
      Specifies whether or not the value of @"videoMirrored" can change based on configuration
      of the session.
  	
   @discussion		
      For some session configurations, video data flowing through the connection will be mirrored 
      by default.  When the value of this property is YES, the value of @"videoMirrored" may change 
      depending on the configuration of the session, for example after switching to a different AVCaptureDeviceInput.
      The default value is YES.
  */
  @available(OSX 10.7, *)
  var automaticallyAdjustsVideoMirroring: Bool

  /*!
   @property supportsVideoOrientation
   @abstract
      Indicates whether the connection supports setting the videoOrientation property.
  
   @discussion
      This property is only applicable to AVCaptureConnection instances involving
      video.  In such connections, the videoOrientation property may only be set if
      -isVideoOrientationSupported returns YES.
  */
  var supportsVideoOrientation: Bool { get }

  /*!
   @property videoOrientation
   @abstract
      Indicates whether the video flowing through the connection should be rotated
      to a given orientation.
  
   @discussion
      This property is only applicable to AVCaptureConnection instances involving
      video.  If -isVideoOrientationSupported returns YES, videoOrientation may be set
      to rotate the video buffers being consumed by the connection's output.  Note that
      setting videoOrientation does not necessarily result in a physical rotation of
      video buffers.  For instance, a video connection to an AVCaptureMovieFileOutput
      handles orientation using a Quicktime track matrix.  In the AVCaptureStillImageOutput,
      orientation is handled using Exif tags.
  */
  var videoOrientation: AVCaptureVideoOrientation

  /*!
   @property supportsVideoFieldMode
   @abstract
      Indicates whether the connection supports setting the videoFieldMode property.
   
   @discussion
      This property is only applicable to AVCaptureConnection instances involving
      video.  In such connections, the videoFieldMode property may only be set if
      -isVideoFieldModeSupported returns YES.
  */
  @available(OSX 10.7, *)
  var supportsVideoFieldMode: Bool { get }

  /*!
   @property videoFieldMode
   @abstract
      Indicates how interlaced video flowing through the connection should be treated.
   
   @discussion
      This property is only applicable to AVCaptureConnection instances involving
      video.  If -isVideoFieldModeSupported returns YES, videoFieldMode may be set
      to affect interlaced video content flowing through the connection.
  */
  @available(OSX 10.7, *)
  var videoFieldMode: AVVideoFieldMode

  /*!
   @property supportsVideoMinFrameDuration
   @abstract
      Indicates whether the connection supports setting the videoMinFrameDuration property.
   
   @discussion
      This property is only applicable to AVCaptureConnection instances involving
      video.  In such connections, the videoMinFrameDuration property may only be set if
      -isVideoMinFrameDurationSupported returns YES.
   
      This property is deprecated on iOS, where min and max frame rate adjustments are applied
      exclusively at the AVCaptureDevice using the activeVideoMinFrameDuration and activeVideoMaxFrameDuration
      properties.  On Mac OS X, frame rate adjustments are supported both at the AVCaptureDevice
      and at AVCaptureConnection, enabling connections to output different frame rates.
  */
  @available(OSX, introduced=10.7, message="Use AVCaptureDevice's activeFormat.videoSupportedFrameRateRanges instead.")
  var supportsVideoMinFrameDuration: Bool { get }

  /*!
   @property videoMinFrameDuration
   @abstract
      Indicates the minimum time interval at which the receiver should output consecutive video frames.
   
   @discussion
      The value of this property is a CMTime specifying the minimum duration of each video frame output by the receiver,
      placing a lower bound on the amount of time that should separate consecutive frames. This is equivalent to
      the reciprocal of the maximum frame rate. A value of kCMTimeZero or kCMTimeInvalid indicates an unlimited maximum frame
      rate. The default value is kCMTimeInvalid.
   
      This property is deprecated on iOS, where min and max frame rate adjustments are applied
      exclusively at the AVCaptureDevice using the activeVideoMinFrameDuration and activeVideoMaxFrameDuration
      properties.  On Mac OS X, frame rate adjustments are supported both at the AVCaptureDevice
      and at AVCaptureConnection, enabling connections to output different frame rates.
  */
  @available(OSX, introduced=10.7, message="Use AVCaptureDevice's activeVideoMinFrameDuration instead.")
  var videoMinFrameDuration: CMTime

  /*!
   @property supportsVideoMaxFrameDuration
   @abstract
      Indicates whether the connection supports setting the videoMaxFrameDuration property.
   
   @discussion
      This property is only applicable to AVCaptureConnection instances involving
      video.  In such connections, the videoMaxFrameDuration property may only be set if
      -isVideoMaxFrameDurationSupported returns YES.
   
  	This property is deprecated on iOS, where min and max frame rate adjustments are applied
  	exclusively at the AVCaptureDevice using the activeVideoMinFrameDuration and activeVideoMaxFrameDuration
  	properties.  On Mac OS X, frame rate adjustments are supported both at the AVCaptureDevice
  	and at AVCaptureConnection, enabling connections to output different frame rates.
  */
  @available(OSX, introduced=10.9, message="Use AVCaptureDevice's activeFormat.videoSupportedFrameRateRanges instead.")
  var supportsVideoMaxFrameDuration: Bool { get }

  /*!
   @property videoMaxFrameDuration
   @abstract
      Indicates the maximum time interval at which the receiver should output consecutive video frames.
   
   @discussion
      The value of this property is a CMTime specifying the maximum duration of each video frame output by the receiver,
      placing an upper bound on the amount of time that should separate consecutive frames. This is equivalent to
      the reciprocal of the minimum frame rate. A value of kCMTimeZero or kCMTimeInvalid indicates an unlimited minimum frame
      rate. The default value is kCMTimeInvalid.
   
  	This property is deprecated on iOS, where min and max frame rate adjustments are applied
  	exclusively at the AVCaptureDevice using the activeVideoMinFrameDuration and activeVideoMaxFrameDuration
  	properties.  On Mac OS X, frame rate adjustments are supported both at the AVCaptureDevice
  	and at AVCaptureConnection, enabling connections to output different frame rates.
  */
  @available(OSX, introduced=10.9, message="Use AVCaptureDevice's activeVideoMaxFrameDuration instead.")
  var videoMaxFrameDuration: CMTime
  init()
}

/*!
 @class AVCaptureAudioChannel
 @abstract
    AVCaptureAudioChannel represents a single channel of audio flowing through 
    an AVCaptureSession.
 
 @discussion
    An AVCaptureConnection from an input producing audio to an output receiving audio
    exposes an array of AVCaptureAudioChannel objects, one for each channel of audio
    available.  Iterating through these audio channel objects, a client may poll
    for audio levels. Instances of AVCaptureAudioChannel cannot be created directly.
*/
@available(OSX 10.7, *)
class AVCaptureAudioChannel : NSObject {

  /*!
   @property averagePowerLevel
   @abstract
      A measurement of the instantaneous average power level of the audio
      flowing through the receiver.
  
   @discussion
      A client may poll an AVCaptureAudioChannel object for its current
      averagePowerLevel to get its instantaneous average power level in decibels.
      This property is not key-value observable.
  */
  var averagePowerLevel: Float { get }

  /*!
   @property peakHoldLevel
   @abstract
      A measurement of the peak/hold level of the audio flowing through the receiver.
  
   @discussion
      A client may poll an AVCaptureAudioChannel object for its current
      peakHoldLevel to get its most recent peak hold level in decibels.
      This property is not key-value observable.
  */
  var peakHoldLevel: Float { get }

  /*!
   @property volume
   @abstract
      A property indicating the current volume (gain) of the receiver.
  
   @discussion
      The volume property indicates the current volume or gain of the receiver as a floating
      point value between 0.0 -> 1.0.  If you desire to boost the gain in software, you
      may specify a a value greater than 1.0.
  */
  @available(OSX 10.7, *)
  var volume: Float

  /*!
   @property enabled
   @abstract
      A property indicating whether the receiver is currently enabled for data capture.
  
   @discussion
      By default, all AVCaptureAudioChannel objects exposed by a connection are enabled.
      You may set enabled to NO to stop the flow of data for a particular AVCaptureAudioChannel.
  */
  @available(OSX 10.7, *)
  var isEnabled: Bool
  init()
}

/*!
 @class AVCaptureVideoPreviewLayer
 @abstract
    A CoreAnimation layer subclass for previewing the visual output of an AVCaptureSession.

 @discussion		
    An AVCaptureVideoPreviewLayer instance is a subclass of CALayer and is therefore
    suitable for insertion in a layer hierarchy as part of a graphical interface.
    One creates an AVCaptureVideoPreviewLayer instance with the capture session to be
    previewed, using +layerWithSession: or -initWithSession:.  Using the @"videoGravity"
    property, one can influence how content is viewed relative to the layer bounds.  On
    some hardware configurations, the orientation of the layer can be manipulated using
    @"orientation" and @"mirrored".
*/
@available(OSX 10.7, *)
class AVCaptureVideoPreviewLayer : CALayer {

  /*!
   @method initWithSession:
   @abstract
      Creates an AVCaptureVideoPreviewLayer for previewing the visual output of the
      specified AVCaptureSession.
  
   @param session
      The AVCaptureSession instance to be previewed.
   @result
      A newly initialized AVCaptureVideoPreviewLayer instance.
  */
  init!(session: AVCaptureSession!)

  /*!
   @method initWithSessionWithNoConnection:
   @abstract
      Creates an AVCaptureVideoPreviewLayer for previewing the visual output of the
      specified AVCaptureSession, but creates no connections to any of the session's
      eligible video inputs.  Only use this initializer if you intend to manually 
      form a connection between a desired AVCaptureInputPort and the receiver using 
      AVCaptureSession's -addConnection: method.
   
   @param session
      The AVCaptureSession instance to be previewed.
   @result
      A newly initialized AVCaptureVideoPreviewLayer instance.
  */
  @available(OSX 10.7, *)
  init!(sessionWithNoConnection session: AVCaptureSession!)

  /*!
   @property session
   @abstract
      The AVCaptureSession instance being previewed by the receiver.
  
   @discussion
      The session is retained by the preview layer.
  */
  var session: AVCaptureSession!

  /*!
   method setSessionWithNoConnection:
   @abstract
      Attaches the receiver to a given session without implicitly forming a
      connection to the first eligible video AVCaptureInputPort.  Only use this 
      setter if you intend to manually form a connection between a desired 
      AVCaptureInputPort and the receiver using AVCaptureSession's -addConnection:
      method.
   
   @discussion
      The session is retained by the preview layer.
  */
  @available(OSX 10.7, *)
  func setSessionWithNoConnection(session: AVCaptureSession!)

  /*!
   @property connection
   @abstract
      The AVCaptureConnection instance describing the AVCaptureInputPort to which
      the receiver is connected.
   
   @discussion
      When calling initWithSession: or setSession: with a valid AVCaptureSession instance, 
      a connection is formed to the first eligible video AVCaptureInput.  If the receiver 
      is detached from a session, the connection property becomes nil.
  */
  @available(OSX 10.7, *)
  var connection: AVCaptureConnection! { get }

  /*!
   @property videoGravity
   @abstract
      A string defining how the video is displayed within an AVCaptureVideoPreviewLayer bounds rect.
  
   @discussion
      Options are AVLayerVideoGravityResize, AVLayerVideoGravityResizeAspect 
      and AVLayerVideoGravityResizeAspectFill. AVLayerVideoGravityResizeAspect is default.
      See <AVFoundation/AVAnimation.h> for a description of these options.
  */
  var videoGravity: String!
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.7, *)
class AVComposition : AVAsset, NSMutableCopying {
  var tracks: [AVCompositionTrack] { get }
  var naturalSize: CGSize { get }

  /*!
  	@property		URLAssetInitializationOptions
  	@abstract		Specifies the initialization options for the creation of AVURLAssets by the receiver, e.g. AVURLAssetPreferPreciseDurationAndTimingKey. The default behavior for creation of AVURLAssets by an AVComposition is equivalent to the behavior of +[AVURLAsset URLAssetWithURL:options:] when specifying no initialization options.
  	@discussion
  		AVCompositions create AVURLAssets internally for URLs specified by AVCompositionTrackSegments of AVCompositionTracks, as needed, whenever AVCompositionTrackSegments were originally added to a track via -[AVMutableCompositionTrack setSegments:] rather than by inserting timeranges of already existing AVAssets or AVAssetTracks.
  		The value of URLAssetInitializationOptions can be specified at the time an AVMutableComposition is created via +compositionWithURLAssetInitializationOptions:.
   */
  @available(OSX 10.11, *)
  var urlAssetInitializationOptions: [String : AnyObject] { get }

  /*!
    @method		assetWithURL:
    @abstract		Returns an instance of AVAsset for inspection of a media resource.
    @param		URL
  				An instance of NSURL that references a media resource.
    @result		An instance of AVAsset.
    @discussion	Returns a newly allocated instance of a subclass of AVAsset initialized with the specified URL.
  */
  convenience init(url URL: NSURL)
  init()
  @available(OSX 10.7, *)
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
}
extension AVComposition {

  /*!
    @method		trackWithTrackID:
    @abstract		Provides an instance of AVCompositionTrack that represents the track of the specified trackID.
    @param		trackID
  				The trackID of the requested AVCompositionTrack.
    @result		An instance of AVCompositionTrack; may be nil if no track of the specified trackID is available.
    @discussion	Becomes callable without blocking when the key @"tracks" has been loaded
  */
  func trackWithTrackID(trackID: CMPersistentTrackID) -> AVCompositionTrack?

  /*!
    @method		tracksWithMediaType:
    @abstract		Provides an array of AVCompositionTracks of the asset that present media of the specified media type.
    @param		mediaType
  				The media type according to which the receiver filters its AVCompositionTracks. (Media types are defined in AVMediaFormat.h)
    @result		An NSArray of AVCompositionTracks; may be empty if no tracks of the specified media type are available.
    @discussion	Becomes callable without blocking when the key @"tracks" has been loaded
  */
  func tracksWithMediaType(mediaType: String) -> [AVCompositionTrack]

  /*!
    @method		tracksWithMediaCharacteristic:
    @abstract		Provides an array of AVCompositionTracks of the asset that present media with the specified characteristic.
    @param		mediaCharacteristic
  				The media characteristic according to which the receiver filters its AVCompositionTracks. (Media characteristics are defined in AVMediaFormat.h)
    @result		An NSArray of AVCompositionTracks; may be empty if no tracks with the specified characteristic are available.
    @discussion	Becomes callable without blocking when the key @"tracks" has been loaded
  */
  func tracksWithMediaCharacteristic(mediaCharacteristic: String) -> [AVCompositionTrack]
}
@available(OSX 10.7, *)
class AVMutableComposition : AVComposition {
  var tracks: [AVMutableCompositionTrack] { get }
  var naturalSize: CGSize

  /*!
  	@method			compositionWithURLAssetInitializationOptions:
  	@abstract		Returns an empty AVMutableComposition.
  	@param			URLAssetInitializationOptions
  					Specifies the initialization options that the receiver should use when creating AVURLAssets internally, e.g. AVURLAssetPreferPreciseDurationAndTimingKey. The default behavior for creation of AVURLAssets by an AVMutableComposition is equivalent to the behavior of +[AVURLAsset URLAssetWithURL:options:] when specifying no initialization options.
  	@discussion		AVMutableCompositions create AVURLAssets internally for URLs specified by AVCompositionTrackSegments of AVMutableCompositionTracks, as needed, whenever AVCompositionTrackSegments are added to tracks via -[AVMutableCompositionTrack setSegments:] rather than by inserting timeranges of already existing AVAssets or AVAssetTracks.
   */
  @available(OSX 10.11, *)
  convenience init(urlAssetInitializationOptions URLAssetInitializationOptions: [String : AnyObject]?)

  /*!
    @method		assetWithURL:
    @abstract		Returns an instance of AVAsset for inspection of a media resource.
    @param		URL
  				An instance of NSURL that references a media resource.
    @result		An instance of AVAsset.
    @discussion	Returns a newly allocated instance of a subclass of AVAsset initialized with the specified URL.
  */
  convenience init(url URL: NSURL)
  init()
}
extension AVMutableComposition {

  /*!
  	@method			insertTimeRange:ofAsset:atTime:error:
  	@abstract		Inserts all the tracks of a timeRange of an asset into a composition.
  	@param			timeRange
  					Specifies the timeRange of the asset to be inserted.
  	@param			asset
  					Specifies the asset that contains the tracks that are to be inserted. Only instances of AVURLAsset and AVComposition are supported (AVComposition starting in MacOS X 10.10 and iOS 8.0).
  	@param			startTime
  					Specifies the time at which the inserted tracks are to be presented by the composition.
  	@param			outError
  					Describes failures that may be reported to the user, e.g. the asset that was selected for insertion in the composition is restricted by copy-protection.
  	@result			A BOOL value indicating the success of the insertion.
  	@discussion	
  		You provide a reference to an AVAsset and the timeRange within it that you want to insert. You specify the start time in the destination composition at which the timeRange should be inserted.
  		
  		This method may add new tracks to ensure that all tracks of the asset are represented in the inserted timeRange.
  		
  		Note that the media data for the inserted timeRange will be presented at its natural duration and rate. It can be scaled to a different duration and presented at a different rate via -scaleTimeRange:toDuration:.
  		
  		Existing content at the specified startTime will be pushed out by the duration of timeRange. 
  */
  func insert(timeRange: CMTimeRange, of asset: AVAsset, at startTime: CMTime) throws

  /*!
  	@method			insertEmptyTimeRange:
  	@abstract		Adds or extends an empty timeRange within all tracks of the composition.
  	@param			timeRange
  					Specifies the empty timeRange to be inserted.
  	@discussion	
  		If you insert an empty timeRange into the composition, any media that was presented
  		during that interval prior to the insertion will be presented instead immediately
  		afterward. You can use this method to reserve an interval in which you want a subsequently
  		created track to present its media.
  */
  func insertEmpty(timeRange: CMTimeRange)

  /*!
  	@method			removeTimeRange:
  	@abstract		Removes a specified timeRange from all tracks of the composition.
  	@param			timeRange
  					Specifies the timeRange to be removed.
  	@discussion
  		Removal of a time range does not cause any existing tracks to be removed from the composition, 
  		even if removing timeRange results in an empty track.
  		Instead, it removes or truncates track segments that intersect with the timeRange.
  
  		After removing, existing content after timeRange will be pulled in.
  */
  func remove(timeRange: CMTimeRange)

  /*!
  	@method			scaleTimeRange:toDuration:
  	@abstract		Changes the duration of a timeRange of all tracks.
  	@param			timeRange
  					Specifies the timeRange of the composition to be scaled.
  	@param			duration
  					Specifies the new duration of the timeRange.
  	@discussion
  		Each trackSegment affected by the scaling operation will be presented at a rate equal to
  		source.duration / target.duration of its resulting timeMapping.
  */
  func scaleTimeRange(timeRange: CMTimeRange, toDuration duration: CMTime)
}
extension AVMutableComposition {

  /*!
  	@method			addMutableTrackWithMediaType:preferredTrackID:
  	@abstract		Adds an empty track to a mutable composition.
  	@param			mediaType
  					The media type of the new track.
  	@param			preferredTrackID
  					Specifies the preferred track ID for the new track.
  					The preferred track ID will be used for the new track provided that it is not currently in use and 
  					has not previously been used.
  					If you do not need to specify a preferred track ID, pass kCMPersistentTrackID_Invalid.
  					If the specified preferred track ID is not available, or kCMPersistentTrackID_Invalid was passed in,
  					a unique track ID will be generated.
  	@result			An instance of AVMutableCompositionTrack representing the new track.
      				Its actual trackID is available via its @"trackID" key.
  */
  func addMutableTrackWithMediaType(mediaType: String, preferredTrackID: CMPersistentTrackID) -> AVMutableCompositionTrack

  /*!
  	@method			removeTrack:
  	@abstract		Removes a track of a mutable composition.
  	@param			track
  					A reference to the AVCompositionTrack to be removed.
  	@discussion
  		If you retain a reference to the removed track, note that its @"composition" key will have the value nil, and
  		the values of its other properties are undefined.
  */
  func removeTrack(track: AVCompositionTrack)

  /*!
  	@method			mutableTrackCompatibleWithTrack:
  	@abstract		Provides a reference to a track of a mutable composition into which any timeRange of an AVAssetTrack
  					can be inserted (via -[AVMutableCompositionTrack insertTimeRange:ofTrack:atTime:error:]).
  	@param			track
  					A reference to the AVAssetTrack from which a timeRange may be inserted.
  	@result			An AVMutableCompositionTrack that can accommodate the insertion.
  					If no such track is available, the result is nil. A new track of the same mediaType
  					as the AVAssetTrack can be created via -addMutableTrackWithMediaType:preferredTrackID:,
  					and this new track will be compatible.
  	@discussion		Similar to -[AVAsset compatibleTrackForCompositionTrack:].
  		For best performance, the number of tracks of a composition should be kept to a minimum, corresponding to the
  		number for which media data must be presented in parallel. If media data of the same type is to be presented
  		serially, even from multiple assets, a single track of that media type should be used. This method,
  		-mutableTrackCompatibleWithTrack:, can help the client to identify an existing target track for an insertion.
  */
  func mutableTrackCompatibleWith(track: AVAssetTrack) -> AVMutableCompositionTrack?
}
extension AVMutableComposition {

  /*!
    @method		trackWithTrackID:
    @abstract		Provides an instance of AVMutableCompositionTrack that represents the track of the specified trackID.
    @param		trackID
  				The trackID of the requested AVMutableCompositionTrack.
    @result		An instance of AVMutableCompositionTrack; may be nil if no track of the specified trackID is available.
    @discussion	Becomes callable without blocking when the key @"tracks" has been loaded
  */
  func trackWithTrackID(trackID: CMPersistentTrackID) -> AVMutableCompositionTrack?

  /*!
    @method		tracksWithMediaType:
    @abstract		Provides an array of AVMutableCompositionTracks of the asset that present media of the specified media type.
    @param		mediaType
  				The media type according to which the receiver filters its AVMutableCompositionTracks. (Media types are defined in AVMediaFormat.h)
    @result		An NSArray of AVMutableCompositionTracks; may be empty if no tracks of the specified media type are available.
    @discussion	Becomes callable without blocking when the key @"tracks" has been loaded
  */
  func tracksWithMediaType(mediaType: String) -> [AVMutableCompositionTrack]

  /*!
    @method		tracksWithMediaCharacteristic:
    @abstract		Provides an array of AVMutableCompositionTracks of the asset that present media with the specified characteristic.
    @param		mediaCharacteristic
  				The media characteristic according to which the receiver filters its AVMutableCompositionTracks. (Media characteristics are defined in AVMediaFormat.h)
    @result		An NSArray of AVMutableCompositionTracks; may be empty if no tracks with the specified characteristic are available.
    @discussion	Becomes callable without blocking when the key @"tracks" has been loaded
  */
  func tracksWithMediaCharacteristic(mediaCharacteristic: String) -> [AVMutableCompositionTrack]
}
@available(OSX 10.7, *)
class AVCompositionTrack : AVAssetTrack {
  var segments: [AVCompositionTrackSegment] { get }
}
@available(OSX 10.7, *)
class AVMutableCompositionTrack : AVCompositionTrack {
  var naturalTimeScale: CMTimeScale
  var languageCode: String?
  var extendedLanguageTag: String?
  var preferredTransform: CGAffineTransform
  var preferredVolume: Float
  var segments: [AVCompositionTrackSegment]!

  /*!
  	@method			insertTimeRange:ofTrack:atTime:error:
  	@abstract		Inserts a timeRange of a source track into a track of a composition.
  	@param			timeRange
  					Specifies the timeRange of the track to be inserted.
  	@param			track
  					Specifies the source track to be inserted. Only AVAssetTracks of AVURLAssets and AVCompositions are supported (AVCompositions starting in MacOS X 10.10 and iOS 8.0).
  	@param			startTime
  					Specifies the time at which the inserted track is to be presented by the composition track. You may pass kCMTimeInvalid for startTime to indicate that the timeRange should be appended to the end of the track.
  	@param			error
  					Describes failures that may be reported to the user, e.g. the asset that was selected for insertion in the composition is restricted by copy-protection.
  	@result			A BOOL value indicating the success of the insertion.
  	@discussion	
  		You provide a reference to an AVAssetTrack and the timeRange within it that you want to insert. You specify the start time in the target composition track at which the timeRange should be inserted.
  		
  		Note that the inserted track timeRange will be presented at its natural duration and rate. It can be scaled to a different duration (and presented at a different rate) via -scaleTimeRange:toDuration:.
  */
  func insertTimeRange(timeRange: CMTimeRange, of track: AVAssetTrack, at startTime: CMTime) throws

  /*!
  	@method			insertTimeRanges:ofTracks:atTime:error:
  	@abstract		Inserts the timeRanges of multiple source tracks into a track of a composition.
  	@param			timeRanges
  					Specifies the timeRanges to be inserted.  An NSArray of NSValues containing CMTimeRange. 
  					See +[NSValue valueWithCMTimeRange:] in AVTime.h.
  	@param			tracks
  					Specifies the source tracks to be inserted. Only AVAssetTracks of AVURLAssets and AVCompositions are supported (AVCompositions starting in MacOS X 10.10 and iOS 8.0).
  	@param			startTime
  					Specifies the time at which the inserted tracks are to be presented by the composition track. You may pass kCMTimeInvalid for startTime to indicate that the timeRanges should be appended to the end of the track.
  	@param			error
  					Describes failures that may be reported to the user, e.g. the asset that was selected for insertion in the composition is restricted by copy-protection.
  	@result			A BOOL value indicating the success of the insertion.
  	@discussion	
  		This method is equivalent to (but more efficient than) calling -insertTimeRange:ofTrack:atTime:error: for each timeRange/track pair. If this method returns an error, none of the time ranges will be inserted into the composition track. To specify an empty time range, pass NSNull for the track and a time range of starting at kCMTimeInvalid with a duration of the desired empty edit.
  */
  @available(OSX 10.8, *)
  func insertTimeRanges(timeRanges: [NSValue], of tracks: [AVAssetTrack], at startTime: CMTime) throws

  /*!
  	@method			insertEmptyTimeRange:
  	@abstract		Adds or extends an empty timeRange within the composition track.
  	@param			timeRange
  					Specifies the empty timeRange to be inserted.
  	@discussion	
  		If you insert an empty timeRange into the track, any media that was presented
  		during that interval prior to the insertion will be presented instead immediately
  		afterward.
  		The exact meaning of the term "empty timeRange" depends upon the mediaType of the track.  
  		For example, an empty timeRange in a sound track presents silence.
  */
  func insertEmptyTimeRange(timeRange: CMTimeRange)

  /*!
  	@method			removeTimeRange:
  	@abstract		Removes a specified timeRange from the track.
  	@param			timeRange
  					Specifies the timeRange to be removed.
  	@discussion
  		Removal of a timeRange does not cause the track to be removed from the composition.
  		Instead it removes or truncates track segments that intersect with the timeRange.
  */
  func removeTimeRange(timeRange: CMTimeRange)

  /*!
  	@method			scaleTimeRange:toDuration:
  	@abstract		Changes the duration of a timeRange of the track.
  	@param			timeRange
  					Specifies the timeRange of the track to be scaled.
  	@param			duration
  					Specifies the new duration of the timeRange.
  	@discussion
  		Each trackSegment affected by the scaling operation will be presented at a rate equal to
  		source.duration / target.duration of its resulting timeMapping.
  */
  func scaleTimeRange(timeRange: CMTimeRange, toDuration duration: CMTime)

  /*!
  	@method			validateTrackSegments:error:
  	@abstract		Tests an array of AVCompositionTrackSegments to determine whether they conform
  					to the timing rules noted above (see the property key @"trackSegments").
  	@param			trackSegments
  					The array of AVCompositionTrackSegments to be validated.
  	@param			error
  					If validation fais, returns information about the failure.
  	@discussion
  		The array is tested for suitability for setting as the value of the trackSegments property.
  		If a portion of an existing trackSegments array is to be modified, the modification can
  		be made via an instance of NSMutableArray, and the resulting array can be tested via
  		-validateTrackSegments:error:.
  */
  func validate(trackSegments: [AVCompositionTrackSegment]) throws
}
@available(OSX 10.7, *)
class AVCompositionTrackSegment : AVAssetTrackSegment {

  /*!
  	@method			initWithURL:trackID:sourceTimeRange:targetTimeRange:
  	@abstract		Initializes an instance of AVCompositionTrackSegment that presents a portion of a file referenced by URL.
  	@param			URL
  					An instance of NSURL that references the container file to be presented by the AVCompositionTrackSegment.
  	@param			trackID
  					The track identifier that specifies the track of the container file to be presented by the AVCompositionTrackSegment.
  	@param			sourceTimeRange
  					The timeRange of the track of the container file to be presented by the AVCompositionTrackSegment.
  	@param			targetTimeRange
  					The timeRange of the composition track during which the AVCompositionTrackSegment is to be presented.
  	@result			An instance of AVCompositionTrackSegment.
  	@discussion		To specify that the segment be played at the asset's normal rate, set source.duration == target.duration in the timeMapping.
  					Otherwise, the segment will be played at a rate equal to the ratio source.duration / target.duration.
  */
  init(url URL: NSURL, trackID: CMPersistentTrackID, sourceTimeRange: CMTimeRange, targetTimeRange: CMTimeRange)

  /*!
  	@method			initWithTimeRange:
  	@abstract		Initializes an instance of AVCompositionTrackSegment that presents an empty track segment.
  	@param			timeRange
  					The timeRange of the empty AVCompositionTrackSegment.
  	@result			An instance of AVCompositionTrackSegment.
  */
  init(timeRange: CMTimeRange)
  var isEmpty: Bool { get }
  var sourceURL: NSURL? { get }
  var sourceTrackID: CMPersistentTrackID { get }
}
@available(OSX 10.7, *)
let AVFoundationErrorDomain: String
@available(OSX 10.7, *)
let AVErrorDeviceKey: String
@available(OSX 10.7, *)
let AVErrorTimeKey: String
@available(OSX 10.7, *)
let AVErrorFileSizeKey: String
@available(OSX 10.7, *)
let AVErrorPIDKey: String
@available(OSX 10.7, *)
let AVErrorRecordingSuccessfullyFinishedKey: String
@available(OSX 10.7, *)
let AVErrorMediaTypeKey: String
@available(OSX 10.7, *)
let AVErrorMediaSubTypeKey: String
@available(OSX 10.10, *)
let AVErrorPresentationTimeStampKey: String
@available(OSX 10.10, *)
let AVErrorPersistentTrackIDKey: String
@available(OSX 10.10, *)
let AVErrorFileTypeKey: String
@available(OSX 10.7, *)
let AVErrorDiscontinuityFlagsKey: String
enum AVError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case OutOfMemory
  case SessionNotRunning
  case DeviceAlreadyUsedByAnotherSession
  case NoDataCaptured
  case SessionConfigurationChanged
  case DiskFull
  case DeviceWasDisconnected
  case MediaChanged
  case MaximumDurationReached
  case MaximumFileSizeReached
  case MediaDiscontinuity
  case MaximumNumberOfSamplesForFileFormatReached
  case DeviceNotConnected
  case DeviceInUseByAnotherApplication
  case DeviceLockedForConfigurationByAnotherProcess
  case ExportFailed
  case DecodeFailed
  case InvalidSourceMedia
  case FileAlreadyExists
  case CompositionTrackSegmentsNotContiguous
  case InvalidCompositionTrackSegmentDuration
  case InvalidCompositionTrackSegmentSourceStartTime
  case InvalidCompositionTrackSegmentSourceDuration
  case FileFormatNotRecognized
  case FileFailedToParse
  case MaximumStillImageCaptureRequestsExceeded
  case ContentIsProtected
  case NoImageAtTime
  case DecoderNotFound
  case EncoderNotFound
  case ContentIsNotAuthorized
  case ApplicationIsNotAuthorized
  case OperationNotSupportedForAsset
  case DecoderTemporarilyUnavailable
  case EncoderTemporarilyUnavailable
  case InvalidVideoComposition
  case ReferenceForbiddenByReferencePolicy
  case InvalidOutputURLPathExtension
  case ScreenCaptureFailed
  case DisplayWasDisabled
  case TorchLevelUnavailable
  case IncompatibleAsset
  case FailedToLoadMediaData
  case ServerIncorrectlyConfigured
  case ApplicationIsNotAuthorizedToUseDevice
  @available(OSX 10.10, *)
  case FailedToParse
  @available(OSX 10.10, *)
  case FileTypeDoesNotSupportSampleReferences
  @available(OSX 10.10, *)
  case UndecodableMediaData
  @available(OSX 10.10, *)
  case AirPlayControllerRequiresInternet
  @available(OSX 10.10, *)
  case AirPlayReceiverRequiresInternet
  @available(OSX 10.11, *)
  case VideoCompositorFailed
}

extension AVError : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}

/*! @typedef AVMIDIPlayerCompletionHandler
	@abstract Generic callback block.
 */
typealias AVMIDIPlayerCompletionHandler = () -> Void

/*! @class AVMIDIPlayer
	@abstract A player for music file formats (MIDI, iMelody).
 */
@available(OSX 10.10, *)
class AVMIDIPlayer : NSObject {

  /*!	@method initWithContentsOfURL:soundBankURL:error:
   	@abstract Create a player with the contents of the file specified by the URL.
  	@discussion
   		'bankURL' should contain the path to a SoundFont2 or DLS bank to be used
   		by the MIDI synthesizer.  For OSX it can be set to nil for the default,
   		but for iOS it must always refer to a valid bank file.
  */
  init(contentsOf inURL: NSURL, soundBankURL bankURL: NSURL?) throws

  /*!	@method initWithData:soundBankURL:error:
  	@abstract Create a player with the contents of the data object
  	@discussion
  		'bankURL' should contain the path to a SoundFont2 or DLS bank to be used
  		by the MIDI synthesizer.  For OSX it can be set to nil for the default,
  		but for iOS it must always refer to a valid bank file.
   */
  init(data: NSData, soundBankURL bankURL: NSURL?) throws

  /*! @method prepareToPlay
  	@abstract Get ready to play the sequence by prerolling all events
  	@discussion
  		Happens automatically on play if it has not already been called, but may produce a delay in startup.
   */
  func prepareToPlay()

  /*! @method play:
  	@abstract Play the sequence.
   */
  func play(completionHandler: AVMIDIPlayerCompletionHandler? = nil)

  /*! @method stop
  	@abstract Stop playing the sequence.
   */
  func stop()

  /*! @property duration
  	@abstract The length of the currently loaded file in seconds.
   */
  var duration: NSTimeInterval { get }

  /*! @property playing
  	@abstract Indicates whether or not the player is playing
   */
  var isPlaying: Bool { get }

  /*! @property rate
  	@abstract The playback rate of the player
  	@discussion
  		1.0 is normal playback rate.  Rate must be > 0.0.
   */
  var rate: Float

  /*! @property currentPosition
  	@abstract The current playback position in seconds
  	@discussion
  		Setting this positions the player to the specified time.  No range checking on the time value is done.
   		This can be set while the player is playing, in which case playback will resume at the new time.
   */
  var currentPosition: NSTimeInterval
  init()
}
@available(OSX 10.7, *)
let AVMediaTypeVideo: String
@available(OSX 10.7, *)
let AVMediaTypeAudio: String
@available(OSX 10.7, *)
let AVMediaTypeText: String
@available(OSX 10.7, *)
let AVMediaTypeClosedCaption: String
@available(OSX 10.7, *)
let AVMediaTypeSubtitle: String
@available(OSX 10.7, *)
let AVMediaTypeTimecode: String
@available(OSX 10.8, *)
let AVMediaTypeMetadata: String
@available(OSX 10.7, *)
let AVMediaTypeMuxed: String

/*!
 @constant AVMediaCharacteristicVisual
 @abstract A media characteristic that indicates that a track or media selection option includes visual content.
 @discussion
 AVMediaTypeVideo, AVMediaTypeSubtitle, AVMediaTypeClosedCaption are examples of media types with the characteristic AVMediaCharacteristicVisual.
 Also see -[AVAssetTrack hasMediaCharacteristic:] and -[AVMediaSelectionOption hasMediaCharacteristic:].
*/
@available(OSX 10.7, *)
let AVMediaCharacteristicVisual: String

/*!
 @constant AVMediaCharacteristicAudible
 @abstract A media characteristic that indicates that a track or media selection option includes audible content.
 @discussion
 AVMediaTypeAudio is a media type with the characteristic AVMediaCharacteristicAudible.
 Also see -[AVAssetTrack hasMediaCharacteristic:] and -[AVMediaSelectionOption hasMediaCharacteristic:].
*/
@available(OSX 10.7, *)
let AVMediaCharacteristicAudible: String

/*!
 @constant AVMediaCharacteristicLegible
 @abstract A media characteristic that indicates that a track or media selection option includes legible content.
 @discussion
 AVMediaTypeSubtitle and AVMediaTypeClosedCaption are examples of media types with the characteristic AVMediaCharacteristicLegible.
 Also see -[AVAssetTrack hasMediaCharacteristic:] and -[AVMediaSelectionOption hasMediaCharacteristic:].
*/
@available(OSX 10.7, *)
let AVMediaCharacteristicLegible: String

/*!
 @constant AVMediaCharacteristicFrameBased
 @abstract A media characteristic that indicates that a track or media selection option includes content that's frame-based.
 @discussion
 Frame-based content typically comprises discrete media samples that, once rendered, can remain current for indefinite periods of time without additional processing in support of "time-stretching". Further, any dependencies between samples are always explicitly signalled, so that the operations required to render any single sample can readily be performed on demand. AVMediaTypeVideo is the most common type of frame-based media. AVMediaTypeAudio is the most common counterexample. 
 Also see -[AVAssetTrack hasMediaCharacteristic:] and -[AVMediaSelectionOption hasMediaCharacteristic:].
*/
@available(OSX 10.7, *)
let AVMediaCharacteristicFrameBased: String

/*!
 @constant AVMediaCharacteristicIsMainProgramContent
 @abstract A media characteristic that indicates that a track or media selection option includes content that's marked by the content author as intrinsic to the presentation of the asset.
 @discussion
 Example: an option that presents the main program audio for the presentation, regardless of locale, would typically have this characteristic.
 The value of this characteristic is @"public.main-program-content".
 Note for content authors: the presence of this characteristic for a media option is inferred; any option that does not have the characteristic AVMediaCharacteristicIsAuxiliaryContent is considered to have the characteristic AVMediaCharacteristicIsMainProgramContent.

 Also see -[AVAssetTrack hasMediaCharacteristic:] and -[AVMediaSelectionOption hasMediaCharacteristic:].
*/
@available(OSX 10.8, *)
let AVMediaCharacteristicIsMainProgramContent: String

/*!
 @constant AVMediaCharacteristicIsAuxiliaryContent
 @abstract A media characteristic that indicates that a track or media selection option includes content that's marked by the content author as auxiliary to the presentation of the asset.
 @discussion
 The value of this characteristic is @"public.auxiliary-content".
 Example: an option that presents audio media containing commentary on the presentation would typically have this characteristic.
 Note for content authors: for QuickTime movie and .m4v files a media option is considered to have the characteristic AVMediaCharacteristicIsAuxiliaryContent if it's explicitly tagged with that characteristic or if, as a member of an alternate track group, its associated track is excluded from autoselection.
 See the discussion of the tagging of tracks with media characteristics below.

 Also see -[AVAssetTrack hasMediaCharacteristic:] and -[AVMediaSelectionOption hasMediaCharacteristic:].
*/
@available(OSX 10.8, *)
let AVMediaCharacteristicIsAuxiliaryContent: String

/*!
 @constant AVMediaCharacteristicContainsOnlyForcedSubtitles
 @abstract A media characteristic that indicates that a track or media selection option presents only forced subtitles.
 @discussion
 Media options with forced-only subtitles are typically selected when 1) the user has not selected a legible option with an accessibility characteristic or an auxiliary purpose and 2) its locale matches the locale of the selected audible media selection option.
 The value of this characteristic is @"public.subtitles.forced-only".
 Note for content authors: the presence of this characteristic for a legible media option may be inferred from the format description of the associated track that presents the subtitle media, if the format description carries sufficient information to indicate the presence or absence of forced and non-forced subtitles. If the format description does not carry this information, the legible media option can be explicitly tagged with the characteristic.

 Also see -[AVAssetTrack hasMediaCharacteristic:] and -[AVMediaSelectionOption hasMediaCharacteristic:].
*/
@available(OSX 10.8, *)
let AVMediaCharacteristicContainsOnlyForcedSubtitles: String

/*!
 @constant AVMediaCharacteristicTranscribesSpokenDialogForAccessibility
 @abstract A media characteristic that indicates that a track or media selection option includes legible content in the language of its specified locale that:
 	- transcribes spoken dialog and
 	- identifies speakers whenever other visual cues are insufficient for a viewer to determine who is speaking.
 @discussion
 Legible tracks provided for accessibility purposes are typically tagged both with this characteristic as well as with AVMediaCharacteristicDescribesMusicAndSoundForAccessibility.

 A legible track provided for accessibility purposes that's associated with an audio track that has no spoken dialog can be tagged with this characteristic, because it trivially meets these requirements.

 The value of this characteristic is @"public.accessibility.transcribes-spoken-dialog".

 Note for content authors: for QuickTime movie and .m4v files a media option is considered to have the characteristic AVMediaCharacteristicTranscribesSpokenDialogForAccessibility only if it's explicitly tagged with that characteristic.
 See the discussion of the tagging of tracks with media characteristics below.

 Also see -[AVAssetTrack hasMediaCharacteristic:] and -[AVMediaSelectionOption hasMediaCharacteristic:].
*/
@available(OSX 10.8, *)
let AVMediaCharacteristicTranscribesSpokenDialogForAccessibility: String

/*!
 @constant AVMediaCharacteristicDescribesMusicAndSoundForAccessibility
 @abstract A media characteristic that indicates that a track or media selection option includes legible content in the language of its specified locale that:
 	- describes music and
 	- describes sound other than spoken dialog, such as sound effects and significant silences, occurring in program audio.
 @discussion
 Legible tracks provided for accessibility purposes are typically tagged both with this characteristic as well as with AVMediaCharacteristicTranscribesSpokenDialogForAccessibility.

 A legible track provided for accessibility purposes that's associated with an audio track without music and without sound other than spoken dialog -- lacking even significant silences -- can be tagged with this characteristic, because it trivially meets these requirements.

 The value of this characteristic is @"public.accessibility.describes-music-and-sound".

 Note for content authors: for QuickTime movie and .m4v files a media option is considered to have the characteristic AVMediaCharacteristicDescribesMusicAndSoundForAccessibility only if it's explicitly tagged with that characteristic.
 See the discussion of the tagging of tracks with media characteristics below.

 Also see -[AVAssetTrack hasMediaCharacteristic:] and -[AVMediaSelectionOption hasMediaCharacteristic:].
*/
@available(OSX 10.8, *)
let AVMediaCharacteristicDescribesMusicAndSoundForAccessibility: String

/*!
 @constant AVMediaCharacteristicEasyToRead
 @abstract A media characteristic that indicates that a track or media selection option provides legible content in the language of its specified locale that has been edited for ease of reading.
 @discussion
 The value of this characteristic is @"public.easy-to-read".
 
 Closed caption tracks that carry "easy reader" captions (per the CEA-608 specification) should be tagged with this characteristic. Subtitle tracks can also be tagged with this characteristic, where appropriate.

 Note for content authors: for QuickTime movie and .m4v files a track is considered to have the characteristic AVMediaCharacteristicEasyToRead only if it's explicitly tagged with that characteristic.
 See the discussion of the tagging of tracks with media characteristics below.

 Also see -[AVAssetTrack hasMediaCharacteristic:] and -[AVMediaSelectionOption hasMediaCharacteristic:].
*/
@available(OSX 10.8, *)
let AVMediaCharacteristicEasyToRead: String

/*!
 @constant AVMediaCharacteristicDescribesVideoForAccessibility
 @abstract A media characteristic that indicates that a track or media selection option includes audible descriptions of the visual portion of the presentation that are sufficient for listeners without access to the visual content to comprehend the essential information, such as action and setting, that it depicts.
 @discussion
 See -[AVAssetTrack hasMediaCharacteristic:] and -[AVMediaSelectionOption hasMediaCharacteristic:].
 The value of this characteristic is @"public.accessibility.describes-video".
 Note for content authors: for QuickTime movie and .m4v files a media option is considered to have the characteristic AVMediaCharacteristicDescribesVideoForAccessibility only if it's explicitly tagged with that characteristic.
 See the discussion of the tagging of tracks with media characteristics below.

 Also see -[AVAssetTrack hasMediaCharacteristic:] and -[AVMediaSelectionOption hasMediaCharacteristic:].
*/
@available(OSX 10.8, *)
let AVMediaCharacteristicDescribesVideoForAccessibility: String

/*!
 @constant AVMediaCharacteristicLanguageTranslation
 @abstract A media characteristic that indicates that a track or media selection option contains a language or dialect translation of originally or previously produced content, intended to be used as a substitute for that content by users who prefer its designated language.
 @discussion
 See -[AVAssetTrack hasMediaCharacteristic:] and -[AVMediaSelectionOption hasMediaCharacteristic:].
 The value of this characteristic is @"public.translation".
 Note for content authors: for QuickTime movie and .m4v files a media option is considered to have the characteristic AVMediaCharacteristicLanguageTranslation only if it's explicitly tagged with that characteristic.
 See the discussion of the tagging of tracks with media characteristics below.
*/
@available(OSX 10.11, *)
let AVMediaCharacteristicLanguageTranslation: String

/*!
 @constant AVMediaCharacteristicDubbedTranslation
 @abstract A media characteristic that indicates that a track or media selection option contains a language or dialect translation of originally or previously produced content, created by substituting most or all of the dialog in a previous mix of audio content with dialog spoken in its designated language.
 @discussion
 Tracks to which this characteristic is assigned should typically also be assigned the characteristic AVMediaCharacteristicLanguageTranslation.
 See -[AVAssetTrack hasMediaCharacteristic:] and -[AVMediaSelectionOption hasMediaCharacteristic:].
 The value of this characteristic is @"public.translation.dubbed".
 Note for content authors: for QuickTime movie and .m4v files a media option is considered to have the characteristic AVMediaCharacteristicDubbedTranslation only if it's explicitly tagged with that characteristic.
 See the discussion of the tagging of tracks with media characteristics below.
*/
@available(OSX 10.11, *)
let AVMediaCharacteristicDubbedTranslation: String

/*!
 @constant AVMediaCharacteristicVoiceOverTranslation NS_AVAILABLE(10_11, 9_0);
 @abstract A media characteristic that indicates that a track or media selection option contains a language translation of originally or previously produced content, created by adding, in its designated language, a verbal interpretation of dialog and translations of other important information to a new mix of the audio content.
 @discussion
 Tracks to which this characteristic is assigned should typically also be assigned the characteristic AVMediaCharacteristicLanguageTranslation.
 See -[AVAssetTrack hasMediaCharacteristic:] and -[AVMediaSelectionOption hasMediaCharacteristic:].
 The value of this characteristic is @"public.translation.voice-over".
 Note for content authors: for QuickTime movie and .m4v files a media option is considered to have the characteristic AVMediaCharacteristicVoiceOverTranslation only if it's explicitly tagged with that characteristic.
 See the discussion of the tagging of tracks with media characteristics below.
*/
@available(OSX 10.11, *)
let AVMediaCharacteristicVoiceOverTranslation: String

/*!
 @constant AVFileTypeQuickTimeMovie
 @abstract A UTI for the QuickTime movie file format.
 @discussion
 The value of this UTI is @"com.apple.quicktime-movie".
 Files are identified with the .mov and .qt extensions.
 */
@available(OSX 10.7, *)
let AVFileTypeQuickTimeMovie: String

/*!
 @constant AVFileTypeMPEG4
 @abstract A UTI for the MPEG-4 file format.
 @discussion
 The value of this UTI is @"public.mpeg-4".
 Files are identified with the .mp4 extension.
 */
@available(OSX 10.7, *)
let AVFileTypeMPEG4: String

/*!
 @constant AVFileTypeAppleM4V
 @discussion
 The value of this UTI is @"com.apple.m4v-video".
 Files are identified with the .m4v extension.
 */
@available(OSX 10.7, *)
let AVFileTypeAppleM4V: String

/*!
 @constant AVFileTypeAppleM4A
 @discussion
 The value of this UTI is @"com.apple.m4a-audio".
 Files are identified with the .m4a extension.
 */
@available(OSX 10.7, *)
let AVFileTypeAppleM4A: String

/*!
 @constant AVFileType3GPP
 @abstract A UTI for the 3GPP file format.
 @discussion
 The value of this UTI is @"public.3gpp".
 Files are identified with the .3gp, .3gpp, and .sdv extensions.
 */
@available(OSX 10.11, *)
let AVFileType3GPP: String

/*!
 @constant AVFileType3GPP2
 @abstract A UTI for the 3GPP file format.
 @discussion
 The value of this UTI is @"public.3gpp2".
 Files are identified with the .3g2, .3gp2 extensions.
 */
@available(OSX 10.11, *)
let AVFileType3GPP2: String

/*!
 @constant AVFileTypeCoreAudioFormat
 @abstract A UTI for the CoreAudio file format.
 @discussion
 The value of this UTI is @"com.apple.coreaudio-format".
 Files are identified with the .caf extension.
 */
@available(OSX 10.7, *)
let AVFileTypeCoreAudioFormat: String

/*!
 @constant AVFileTypeWAVE
 @abstract A UTI for the WAVE audio file format.
 @discussion
 The value of this UTI is @"com.microsoft.waveform-audio".
 Files are identified with the .wav, .wave, and .bwf extensions.
 */
@available(OSX 10.7, *)
let AVFileTypeWAVE: String

/*!
 @constant AVFileTypeAIFF
 @abstract A UTI for the AIFF audio file format.
 @discussion
 The value of this UTI is @"public.aiff-audio".
 Files are identified with the .aif and .aiff extensions.
 */
@available(OSX 10.7, *)
let AVFileTypeAIFF: String

/*!
 @constant AVFileTypeAIFC
 @abstract A UTI for the AIFC audio file format.
 @discussion
 The value of this UTI is @"public.aifc-audio".
 Files are identified with the .aifc and .cdda extensions.
 */
@available(OSX 10.7, *)
let AVFileTypeAIFC: String

/*!
 @constant AVFileTypeAMR
 @abstract A UTI for the adaptive multi-rate audio file format.
 @discussion
 The value of this UTI is @"org.3gpp.adaptive-multi-rate-audio".
 Files are identified with the .amr extension.
 */
@available(OSX 10.7, *)
let AVFileTypeAMR: String

/*!
 @constant AVFileTypeMPEGLayer3
 @abstract A UTI for the MPEG layer 3 audio file format.
 @discussion
 The value of this UTI is @"public.mp3".
 Files are identified with the .mp3 extension.
 */
@available(OSX 10.9, *)
let AVFileTypeMPEGLayer3: String

/*!
 @constant AVFileTypeSunAU
 @abstract A UTI for the Sun/NeXT audio file format.
 @discussion
 The value of this UTI is @"public.au-audio".
 Files are identified with the .au and .snd extensions.
 */
@available(OSX 10.9, *)
let AVFileTypeSunAU: String

/*!
 @constant AVFileTypeAC3
 @abstract A UTI for the AC-3 audio file format.
 @discussion
 The value of this UTI is @"public.ac3-audio".
 Files are identified with the .ac3 extension.
 */
@available(OSX 10.9, *)
let AVFileTypeAC3: String

/*!
 @constant AVFileTypeEnhancedAC3
 @abstract A UTI for the enhanced AC-3 audio file format.
 @discussion
 The value of this UTI is @"public.enhanced-ac3-audio".
 Files are identified with the .eac3 extension.
 */
@available(OSX 10.11, *)
let AVFileTypeEnhancedAC3: String

/*!
 @constant AVStreamingKeyDeliveryContentKeyType
 @abstract A UTI for streaming key delivery content keys
 @discussion
 The value of this UTI is @"com.apple.streamingkeydelivery.contentkey".
 */
@available(OSX 10.11, *)
let AVStreamingKeyDeliveryContentKeyType: String

/*!
 @constant AVStreamingKeyDeliveryPersistentContentKeyType
 @abstract A UTI for persistent streaming key delivery content keys
 @discussion
 The value of this UTI is @"com.apple.streamingkeydelivery.persistentcontentkey".
 */
@available(OSX 10.11, *)
let AVStreamingKeyDeliveryPersistentContentKeyType: String
@available(OSX 10.11, *)
class AVMediaSelection : NSObject, NSCopying, NSMutableCopying {
  weak var asset: @sil_weak AVAsset? { get }

  /*!
   @method		selectedMediaOptionInMediaSelectionGroup:
   @abstract		Indicates the media selection option that's currently selected from the specified group. May be nil.
   @param 		mediaSelectionGroup
  				A media selection group obtained from the receiver's asset.
   @result		An instance of AVMediaSelectionOption that describes the currently selection option in the group.
   @discussion
  				If the value of the property allowsEmptySelection of the AVMediaSelectionGroup is YES, the currently selected option in the group may be nil.
  */
  func selectedMediaOptionIn(mediaSelectionGroup: AVMediaSelectionGroup) -> AVMediaSelectionOption?

  /*!
   @method		mediaSelectionCriteriaCanBeAppliedAutomaticallyToMediaSelectionGroup:
   @abstract		Indicates that specified media selection group is subject to automatic media selection.
   @param 		mediaSelectionGroup
  				A media selection group obtained from the receiver's asset.
   @result		YES if the group is subject to automatic media selection.
   @discussion	Automatic application of media selection criteria is suspended in any group in which a specific selection has been made via an invocation of -selectMediaOption:inMediaSelectionGroup:.
  */
  func mediaSelectionCriteriaCanBeAppliedAutomaticallyTo(mediaSelectionGroup: AVMediaSelectionGroup) -> Bool
  init()
  @available(OSX 10.11, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.11, *)
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.11, *)
class AVMutableMediaSelection : AVMediaSelection {

  /*!
   @method		selectMediaOption:inMediaSelectionGroup:
   @abstract		Selects the media option described by the specified instance of AVMediaSelectionOption in the specified AVMediaSelectionGroup and deselects all other options in that group.
   @param			mediaSelectionOption
  				The option to select.
   @param			mediaSelectionGroup
  				The media selection group, obtained from the receiver's asset, that contains the specified option.
   @discussion
  				If the specified media selection option isn't a member of the specified media selection group, no change in presentation state will result.
  				If the value of the property allowsEmptySelection of the AVMediaSelectionGroup is YES, you can pass nil for mediaSelectionOption to deselect all media selection options in the group.
  */
  func selectMediaOption(mediaSelectionOption: AVMediaSelectionOption?, `in` mediaSelectionGroup: AVMediaSelectionGroup)
  init()
}
@available(OSX 10.8, *)
class AVMediaSelectionGroup : NSObject, NSCopying {

  /*!
   @property		options
   @abstract		A collection of mutually exclusive media selection options.
   @discussion	An NSArray of AVMediaSelectionOption*.
  */
  var options: [AVMediaSelectionOption] { get }

  /*!
   @property		defaultOption
   @abstract		Indicates the default option in the group, i.e. the option that's intended for use in the absence of a specific end-user selection or preference.
   @discussion
  	Can be nil, indicating that without a specific end-user selection or preference, no option in the group is intended to be selected.
  */
  @available(OSX 10.10, *)
  var defaultOption: AVMediaSelectionOption? { get }

  /*!
   @property		allowsEmptySelection
   @abstract		Indicates whether it's possible to present none of the options in the group when an associated AVPlayerItem is played.
   @discussion
  	If allowsEmptySelection is YES, all of the available media options in the group can be deselected by passing nil
  	as the specified AVMediaSelectionOption to -[AVPlayerItem selectMediaOption:inMediaSelectionGroup:].
  */
  var allowsEmptySelection: Bool { get }

  /*!
    @method		mediaSelectionOptionWithPropertyList:
    @abstract		Returns the instance of AVMediaSelectionOption with properties that match the specified property list.
    @param		plist
    				A property list previously obtained from an option in the group via -[AVMediaSelectionOption propertyList].
    @result		If the specified properties match those of an option in the group, an instance of AVMediaSelectionOption. Otherwise nil.
  */
  func mediaSelectionOptionWithPropertyList(plist: AnyObject) -> AVMediaSelectionOption?
  init()
  @available(OSX 10.8, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
extension AVMediaSelectionGroup {

  /*!
    @method		playableMediaSelectionOptionsFromArray:
    @abstract		Filters an array of AVMediaSelectionOptions according to whether they are playable.
    @param		mediaSelectionOptions
    				An array of AVMediaSelectionOption to be filtered according to whether they are playable.
    @result		An instance of NSArray containing the media selection options of the specified NSArray that are playable.
  */
  class func playableMediaSelectionOptionsFrom(mediaSelectionOptions: [AVMediaSelectionOption]) -> [AVMediaSelectionOption]

  /*!
   @method		mediaSelectionOptionsFromArray:filteredAndSortedAccordingToPreferredLanguages:
   @abstract		Filters an array of AVMediaSelectionOptions according to whether their locales match any language identifier in the specified array of preferred languages. The returned array is sorted according to the order of preference of the language each matches.
   @param			mediaSelectionOptions
  				An array of AVMediaSelectionOptions to be filtered and sorted.
   @param			preferredLanguages
  				An array of language identifiers in order of preference, each of which is an IETF BCP 47 (RFC 4646) language identifier. Use +[NSLocale preferredLanguages] to obtain the user's list of preferred languages.
   @result		An instance of NSArray containing media selection options of the specified NSArray that match a preferred language, sorted according to the order of preference of the language each matches.
  */
  @available(OSX 10.8, *)
  class func mediaSelectionOptionsFrom(mediaSelectionOptions: [AVMediaSelectionOption], filteredAndSortedAccordingToPreferredLanguages preferredLanguages: [String]) -> [AVMediaSelectionOption]

  /*!
    @method		mediaSelectionOptionsFromArray:withLocale:
    @abstract		Filters an array of AVMediaSelectionOptions according to locale.
    @param		mediaSelectionOptions
  				An array of AVMediaSelectionOption to be filtered by locale.
    @param		locale
    				The NSLocale that must be matched for a media selection option to be copied to the output array.
    @result		An instance of NSArray containing the media selection options of the specified NSArray that match the specified locale.
  */
  class func mediaSelectionOptionsFrom(mediaSelectionOptions: [AVMediaSelectionOption], withLocale locale: NSLocale) -> [AVMediaSelectionOption]

  /*!
    @method		mediaSelectionOptionsFromArray:withMediaCharacteristics:
    @abstract		Filters an array of AVMediaSelectionOptions according to one or more media characteristics.
    @param		mediaSelectionOptions
    				An array of AVMediaSelectionOptions to be filtered by media characteristic.
    @param		mediaCharacteristics
    				The media characteristics that must be matched for a media selection option to be copied to the output array.
    @result		An instance of NSArray containing the media selection options of the specified NSArray that match the specified
  				media characteristics.
  */
  class func mediaSelectionOptionsFrom(mediaSelectionOptions: [AVMediaSelectionOption], withMediaCharacteristics mediaCharacteristics: [String]) -> [AVMediaSelectionOption]

  /*!
    @method		mediaSelectionOptionsFromArray:withoutMediaCharacteristics:
    @abstract		Filters an array of AVMediaSelectionOptions according to whether they lack one or more media characteristics.
    @param		mediaSelectionOptions
    				An array of AVMediaSelectionOptions to be filtered by media characteristic.
    @param		mediaCharacteristics
    				The media characteristics that must not be present for a media selection option to be copied to the output array.
    @result		An instance of NSArray containing the media selection options of the specified NSArray that lack the specified
  				media characteristics.
  */
  class func mediaSelectionOptionsFrom(mediaSelectionOptions: [AVMediaSelectionOption], withoutMediaCharacteristics mediaCharacteristics: [String]) -> [AVMediaSelectionOption]
}
@available(OSX 10.8, *)
class AVMediaSelectionOption : NSObject, NSCopying {

  /*!
   @property		mediaType
   @abstract		The media type of the media data, e.g. AVMediaTypeAudio, AVMediaTypeSubtitle, etc.
  */
  var mediaType: String { get }

  /*!
   @property		mediaSubTypes
   @abstract		The mediaSubTypes of the media data associated with the option. 
   @discussion
  	An NSArray of NSNumbers carrying four character codes (of type FourCharCode) as defined in CoreAudioTypes.h for audio media and in CMFormatDescription.h for video media.
  	Also see CMFormatDescriptionGetMediaSubType in CMFormatDescription.h for more information about media subtypes.
  	
  	Note that if no information is available about the encoding of the media presented when a media option is selected, the value of mediaSubTypes will be an empty array. This can occur, for example, with streaming media. In these cases the value of mediaSubTypes should simply not be used as a criteria for selection.
  */
  var mediaSubTypes: [NSNumber] { get }

  /*!
    @method		hasMediaCharacteristic:
    @abstract		Reports whether the media selection option includes media with the specified media characteristic.
    @param		mediaCharacteristic
    				The media characteristic of interest, e.g. AVMediaCharacteristicVisual, AVMediaCharacteristicAudible, AVMediaCharacteristicLegible, etc.
    @result		YES if the media selection option includes media with the specified characteristic, otherwise NO.
  */
  func hasMediaCharacteristic(mediaCharacteristic: String) -> Bool

  /*!
   @property		playable
   @abstract		Indicates whether a media selection option is playable.
   @discussion	If the media data associated with the option cannot be decoded or otherwise rendered, playable is NO.
  */
  var isPlayable: Bool { get }

  /*!
   @property		extendedLanguageTag
   @abstract		Indicates the RFC 4646 language tag associated with the option. May be nil.
   */
  @available(OSX 10.9, *)
  var extendedLanguageTag: String? { get }

  /*!
   @property		locale
   @abstract		Indicates the locale for which the media option was authored.
   @discussion
   	Use -[NSLocale objectForKey:NSLocaleLanguageCode] to obtain the language code of the locale. See NSLocale.h for additional information.
  */
  var locale: NSLocale? { get }

  /*!
   @property		commonMetadata
   @abstract		Provides an array of AVMetadataItems for each common metadata key for which a value is available.
   @discussion
     The array of AVMetadataItems can be filtered according to language via +[AVMetadataItem metadataItemsFromArray:filteredAndSortedAccordingToPreferredLanguages:], according to locale via +[AVMetadataItem metadataItemsFromArray:withLocale:],
     or according to key via +[AVMetadataItem metadataItemsFromArray:withKey:keySpace:].
     Example: to obtain the name (or title) of a media selection option in any of the user's preferred languages.
  
  	NSString *title = nil;
  	NSArray *titles = [AVMetadataItem metadataItemsFromArray:[mediaSelectionOption commonMetadata] withKey:AVMetadataCommonKeyTitle keySpace:AVMetadataKeySpaceCommon];
  	if ([titles count] > 0)
  	{
  		// Try to get a title that matches one of the user's preferred languages.
  		NSArray *titlesForPreferredLanguages = [AVMetadataItem metadataItemsFromArray:titles filteredAndSortedAccordingToPreferredLanguages:[NSLocale preferredLanguages]];
  		if ([titlesForPreferredLanguages count] > 0)
  		{
  			title = [[titlesForPreferredLanguages objectAtIndex:0] stringValue];
  		}
  		
  		// No matches in any of the preferred languages. Just use the primary title metadata we find.
  		if (title == nil)
  		{
  			title = [[titles objectAtIndex:0] stringValue];
  		}
  	}
  
  */
  var commonMetadata: [AVMetadataItem] { get }

  /*!
   @property		availableMetadataFormats
   @abstract		Provides an NSArray of NSStrings, each representing a metadata format that contains metadata associated with the option (e.g. ID3, iTunes metadata, etc.).
   @discussion
     Metadata formats are defined in AVMetadataFormat.h.
  */
  var availableMetadataFormats: [String] { get }

  /*!
    @method		metadataForFormat:
    @abstract		Provides an NSArray of AVMetadataItems, one for each metadata item in the container of the specified format.
    @param		format
    				The metadata format for which items are requested.
    @result		An NSArray containing AVMetadataItems.
  */
  func metadataForFormat(format: String) -> [AVMetadataItem]

  /*!
    @method		associatedMediaSelectionOptionInMediaSelectionGroup
    @abstract		If a media selection option in another group is associated with the specified option, returns a reference to the associated option.
    @param		mediaSelectionGroup
    				A media selection group in which an associated option is to be sought.
    @result		An instance of AVMediaSelectionOption.
   @discussion
     Audible media selection options often have associated legible media selection options; in particular, audible options are typically associated with forced-only subtitle options with the same locale. See AVMediaCharacteristicContainsOnlyForcedSubtitles in AVMediaFormat.h for a discussion of forced-only subtitles.
  */
  func associatedMediaSelectionOptionIn(mediaSelectionGroup: AVMediaSelectionGroup) -> AVMediaSelectionOption?

  /*!
    @method		propertyList
    @abstract		Returns a serializable property list that can be used to obtain an instance of AVMediaSelectionOption representing the same option as the receiver via -[AVMediaSelectionGroup mediaSelectionOptionWithPropertyList:].
    @result		A serializable property list that's sufficient to identify the option within its group. For serialization utilities, see NSPropertyList.h.
  */
  func propertyList() -> AnyObject

  /*!
    @method		displayNameWithLocale
    @abstract		Provides an NSString suitable for display.
    @param		locale
    				Localize manufactured portions of the string using the specificed locale.
    @discussion
     May use this option's common metadata, media characteristics and locale properties in addition to the provided locale to formulate an NSString intended for display. Will only consider common metadata with the specified locale.
  */
  @available(OSX 10.9, *)
  func displayNameWith(locale: NSLocale) -> String

  /*!
    @property		displayName
    @abstract		Provides an NSString suitable for display using the current system locale.
    @discussion
     May use this option's common metadata, media characteristics and locale properties in addition to the current system locale to formulate an NSString intended for display.
     In the event that common metadata is not available in the specified locale, displayName will fall back to considering locales with the multilingual ("mul") then undetermined ("und") locale identifiers.
     For a display name strictly with the specified locale use displayNameWithLocale: instead.
  */
  @available(OSX 10.9, *)
  var displayName: String { get }
  init()
  @available(OSX 10.8, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.7, *)
let AVMetadataKeySpaceCommon: String
@available(OSX 10.7, *)
let AVMetadataCommonKeyTitle: String
@available(OSX 10.7, *)
let AVMetadataCommonKeyCreator: String
@available(OSX 10.7, *)
let AVMetadataCommonKeySubject: String
@available(OSX 10.7, *)
let AVMetadataCommonKeyDescription: String
@available(OSX 10.7, *)
let AVMetadataCommonKeyPublisher: String
@available(OSX 10.7, *)
let AVMetadataCommonKeyContributor: String
@available(OSX 10.7, *)
let AVMetadataCommonKeyCreationDate: String
@available(OSX 10.7, *)
let AVMetadataCommonKeyLastModifiedDate: String
@available(OSX 10.7, *)
let AVMetadataCommonKeyType: String
@available(OSX 10.7, *)
let AVMetadataCommonKeyFormat: String
@available(OSX 10.7, *)
let AVMetadataCommonKeyIdentifier: String
@available(OSX 10.7, *)
let AVMetadataCommonKeySource: String
@available(OSX 10.7, *)
let AVMetadataCommonKeyLanguage: String
@available(OSX 10.7, *)
let AVMetadataCommonKeyRelation: String
@available(OSX 10.7, *)
let AVMetadataCommonKeyLocation: String
@available(OSX 10.7, *)
let AVMetadataCommonKeyCopyrights: String
@available(OSX 10.7, *)
let AVMetadataCommonKeyAlbumName: String
@available(OSX 10.7, *)
let AVMetadataCommonKeyAuthor: String
@available(OSX 10.7, *)
let AVMetadataCommonKeyArtist: String
@available(OSX 10.7, *)
let AVMetadataCommonKeyArtwork: String
@available(OSX 10.7, *)
let AVMetadataCommonKeyMake: String
@available(OSX 10.7, *)
let AVMetadataCommonKeyModel: String
@available(OSX 10.7, *)
let AVMetadataCommonKeySoftware: String
@available(OSX 10.7, *)
let AVMetadataFormatQuickTimeUserData: String
@available(OSX 10.7, *)
let AVMetadataKeySpaceQuickTimeUserData: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyAlbum: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyArranger: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyArtist: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyAuthor: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyChapter: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyComment: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyComposer: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyCopyright: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyCreationDate: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyDescription: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyDirector: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyDisclaimer: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyEncodedBy: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyFullName: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyGenre: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyHostComputer: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyInformation: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyKeywords: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyMake: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyModel: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyOriginalArtist: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyOriginalFormat: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyOriginalSource: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyPerformers: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyProducer: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyPublisher: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyProduct: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeySoftware: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeySpecialPlaybackRequirements: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyTrack: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyWarning: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyWriter: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyURLLink: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyLocationISO6709: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyTrackName: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyCredits: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeUserDataKeyPhonogramRights: String
@available(OSX 10.8, *)
let AVMetadataQuickTimeUserDataKeyTaggedCharacteristic: String
@available(OSX 10.9, *)
let AVMetadataFormatISOUserData: String
@available(OSX 10.9, *)
let AVMetadataKeySpaceISOUserData: String
@available(OSX 10.7, *)
let AVMetadataISOUserDataKeyCopyright: String
@available(OSX 10.10, *)
let AVMetadataISOUserDataKeyTaggedCharacteristic: String
@available(OSX 10.7, *)
let AVMetadata3GPUserDataKeyCopyright: String
@available(OSX 10.7, *)
let AVMetadata3GPUserDataKeyAuthor: String
@available(OSX 10.7, *)
let AVMetadata3GPUserDataKeyPerformer: String
@available(OSX 10.7, *)
let AVMetadata3GPUserDataKeyGenre: String
@available(OSX 10.7, *)
let AVMetadata3GPUserDataKeyRecordingYear: String
@available(OSX 10.7, *)
let AVMetadata3GPUserDataKeyLocation: String
@available(OSX 10.7, *)
let AVMetadata3GPUserDataKeyTitle: String
@available(OSX 10.7, *)
let AVMetadata3GPUserDataKeyDescription: String
@available(OSX 10.9, *)
let AVMetadata3GPUserDataKeyCollection: String
@available(OSX 10.9, *)
let AVMetadata3GPUserDataKeyUserRating: String
@available(OSX 10.9, *)
let AVMetadata3GPUserDataKeyThumbnail: String
@available(OSX 10.9, *)
let AVMetadata3GPUserDataKeyAlbumAndTrack: String
@available(OSX 10.9, *)
let AVMetadata3GPUserDataKeyKeywordList: String
@available(OSX 10.9, *)
let AVMetadata3GPUserDataKeyMediaClassification: String
@available(OSX 10.9, *)
let AVMetadata3GPUserDataKeyMediaRating: String
@available(OSX 10.7, *)
let AVMetadataFormatQuickTimeMetadata: String
@available(OSX 10.7, *)
let AVMetadataKeySpaceQuickTimeMetadata: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyAuthor: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyComment: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyCopyright: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyCreationDate: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyDirector: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyDisplayName: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyInformation: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyKeywords: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyProducer: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyPublisher: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyAlbum: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyArtist: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyArtwork: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyDescription: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeySoftware: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyYear: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyGenre: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyiXML: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyLocationISO6709: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyMake: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyModel: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyArranger: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyEncodedBy: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyOriginalArtist: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyPerformer: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyComposer: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyCredits: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyPhonogramRights: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyCameraIdentifier: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyCameraFrameReadoutTime: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyTitle: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyCollectionUser: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyRatingUser: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyLocationName: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyLocationBody: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyLocationNote: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyLocationRole: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyLocationDate: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyDirectionFacing: String
@available(OSX 10.7, *)
let AVMetadataQuickTimeMetadataKeyDirectionMotion: String
@available(OSX 10.11, *)
let AVMetadataQuickTimeMetadataKeyContentIdentifier: String
@available(OSX 10.7, *)
let AVMetadataFormatiTunesMetadata: String
@available(OSX 10.7, *)
let AVMetadataKeySpaceiTunes: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyAlbum: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyArtist: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyUserComment: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyCoverArt: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyCopyright: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyReleaseDate: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyEncodedBy: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyPredefinedGenre: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyUserGenre: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeySongName: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyTrackSubTitle: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyEncodingTool: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyComposer: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyAlbumArtist: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyAccountKind: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyAppleID: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyArtistID: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeySongID: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyDiscCompilation: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyDiscNumber: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyGenreID: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyGrouping: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyPlaylistID: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyContentRating: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyBeatsPerMin: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyTrackNumber: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyArtDirector: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyArranger: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyAuthor: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyLyrics: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyAcknowledgement: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyConductor: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyDescription: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyDirector: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyEQ: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyLinerNotes: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyRecordCompany: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyOriginalArtist: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyPhonogramRights: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyProducer: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyPerformer: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyPublisher: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeySoundEngineer: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeySoloist: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyCredits: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyThanks: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyOnlineExtras: String
@available(OSX 10.7, *)
let AVMetadataiTunesMetadataKeyExecProducer: String
@available(OSX 10.7, *)
let AVMetadataFormatID3Metadata: String
@available(OSX 10.7, *)
let AVMetadataKeySpaceID3: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyAudioEncryption: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyAttachedPicture: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyAudioSeekPointIndex: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyComments: String
@available(OSX 10.11, *)
let AVMetadataID3MetadataKeyCommercial: String
@available(OSX, introduced=10.7, deprecated=10.11)
let AVMetadataID3MetadataKeyCommerical: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyEncryption: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyEqualization: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyEqualization2: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyEventTimingCodes: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyGeneralEncapsulatedObject: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyGroupIdentifier: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyInvolvedPeopleList_v23: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyLink: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyMusicCDIdentifier: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyMPEGLocationLookupTable: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyOwnership: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyPrivate: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyPlayCounter: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyPopularimeter: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyPositionSynchronization: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyRecommendedBufferSize: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyRelativeVolumeAdjustment: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyRelativeVolumeAdjustment2: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyReverb: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeySeek: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeySignature: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeySynchronizedLyric: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeySynchronizedTempoCodes: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyAlbumTitle: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyBeatsPerMinute: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyComposer: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyContentType: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyCopyright: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyDate: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyEncodingTime: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyPlaylistDelay: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyOriginalReleaseTime: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyRecordingTime: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyReleaseTime: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyTaggingTime: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyEncodedBy: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyLyricist: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyFileType: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyTime: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyInvolvedPeopleList_v24: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyContentGroupDescription: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyTitleDescription: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeySubTitle: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyInitialKey: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyLanguage: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyLength: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyMusicianCreditsList: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyMediaType: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyMood: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyOriginalAlbumTitle: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyOriginalFilename: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyOriginalLyricist: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyOriginalArtist: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyOriginalReleaseYear: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyFileOwner: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyLeadPerformer: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyBand: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyConductor: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyModifiedBy: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyPartOfASet: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyProducedNotice: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyPublisher: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyTrackNumber: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyRecordingDates: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyInternetRadioStationName: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyInternetRadioStationOwner: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeySize: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyAlbumSortOrder: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyPerformerSortOrder: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyTitleSortOrder: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyInternationalStandardRecordingCode: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyEncodedWith: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeySetSubtitle: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyYear: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyUserText: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyUniqueFileIdentifier: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyTermsOfUse: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyUnsynchronizedLyric: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyCommercialInformation: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyCopyrightInformation: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyOfficialAudioFileWebpage: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyOfficialArtistWebpage: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyOfficialAudioSourceWebpage: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyOfficialInternetRadioStationHomepage: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyPayment: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyOfficialPublisherWebpage: String
@available(OSX 10.7, *)
let AVMetadataID3MetadataKeyUserURL: String
@available(OSX 10.10, *)
let AVMetadataKeySpaceIcy: String
@available(OSX 10.10, *)
let AVMetadataIcyMetadataKeyStreamTitle: String
@available(OSX 10.10, *)
let AVMetadataIcyMetadataKeyStreamURL: String
@available(OSX 10.10, *)
let AVMetadataFormatHLSMetadata: String

/*!
 @constant		AVMetadataExtraAttributeValueURIKey
 @abstract
	When present in an item's extraAttributes dictionary, identifies the resource to be used as the item's value. Values for this key are of type NSString.
*/
@available(OSX 10.10, *)
let AVMetadataExtraAttributeValueURIKey: String

/*!
 @constant		AVMetadataExtraAttributeBaseURIKey
 @abstract
	When present in an item's extraAttributes dictionary, identifies the base URI against which other URIs related to the item are to be resolved, e.g. AVMetadataExtraAttributeValueURIKey. Values for this key are of type NSString.
*/
@available(OSX 10.10, *)
let AVMetadataExtraAttributeBaseURIKey: String

/*!
	@constant		AVMetadataExtraAttributeInfoKey
	@abstract		More information about the item; specific to the 
					item keySpace & key.
	@discussion		For example, this key is used with the following ID3 tags:
					TXXX, WXXX, APIC, GEOB: carries the Description
					PRIV: carries the Owner Identifier
 */
@available(OSX 10.11, *)
let AVMetadataExtraAttributeInfoKey: String
@available(OSX 10.10, *)
let AVMetadataCommonIdentifierTitle: String
@available(OSX 10.10, *)
let AVMetadataCommonIdentifierCreator: String
@available(OSX 10.10, *)
let AVMetadataCommonIdentifierSubject: String
@available(OSX 10.10, *)
let AVMetadataCommonIdentifierDescription: String
@available(OSX 10.10, *)
let AVMetadataCommonIdentifierPublisher: String
@available(OSX 10.10, *)
let AVMetadataCommonIdentifierContributor: String
@available(OSX 10.10, *)
let AVMetadataCommonIdentifierCreationDate: String
@available(OSX 10.10, *)
let AVMetadataCommonIdentifierLastModifiedDate: String
@available(OSX 10.10, *)
let AVMetadataCommonIdentifierType: String
@available(OSX 10.10, *)
let AVMetadataCommonIdentifierFormat: String
@available(OSX 10.10, *)
let AVMetadataCommonIdentifierAssetIdentifier: String
@available(OSX 10.10, *)
let AVMetadataCommonIdentifierSource: String
@available(OSX 10.10, *)
let AVMetadataCommonIdentifierLanguage: String
@available(OSX 10.10, *)
let AVMetadataCommonIdentifierRelation: String
@available(OSX 10.10, *)
let AVMetadataCommonIdentifierLocation: String
@available(OSX 10.10, *)
let AVMetadataCommonIdentifierCopyrights: String
@available(OSX 10.10, *)
let AVMetadataCommonIdentifierAlbumName: String
@available(OSX 10.10, *)
let AVMetadataCommonIdentifierAuthor: String
@available(OSX 10.10, *)
let AVMetadataCommonIdentifierArtist: String
@available(OSX 10.10, *)
let AVMetadataCommonIdentifierArtwork: String
@available(OSX 10.10, *)
let AVMetadataCommonIdentifierMake: String
@available(OSX 10.10, *)
let AVMetadataCommonIdentifierModel: String
@available(OSX 10.10, *)
let AVMetadataCommonIdentifierSoftware: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataAlbum: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataArranger: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataArtist: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataAuthor: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataChapter: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataComment: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataComposer: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataCopyright: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataCreationDate: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataDescription: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataDirector: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataDisclaimer: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataEncodedBy: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataFullName: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataGenre: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataHostComputer: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataInformation: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataKeywords: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataMake: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataModel: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataOriginalArtist: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataOriginalFormat: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataOriginalSource: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataPerformers: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataProducer: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataPublisher: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataProduct: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataSoftware: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataSpecialPlaybackRequirements: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataTrack: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataWarning: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataWriter: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataURLLink: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataLocationISO6709: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataTrackName: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataCredits: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataPhonogramRights: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeUserDataTaggedCharacteristic: String
@available(OSX 10.10, *)
let AVMetadataIdentifierISOUserDataCopyright: String
@available(OSX 10.10, *)
let AVMetadataIdentifierISOUserDataTaggedCharacteristic: String
@available(OSX 10.10, *)
let AVMetadataIdentifier3GPUserDataCopyright: String
@available(OSX 10.10, *)
let AVMetadataIdentifier3GPUserDataAuthor: String
@available(OSX 10.10, *)
let AVMetadataIdentifier3GPUserDataPerformer: String
@available(OSX 10.10, *)
let AVMetadataIdentifier3GPUserDataGenre: String
@available(OSX 10.10, *)
let AVMetadataIdentifier3GPUserDataRecordingYear: String
@available(OSX 10.10, *)
let AVMetadataIdentifier3GPUserDataLocation: String
@available(OSX 10.10, *)
let AVMetadataIdentifier3GPUserDataTitle: String
@available(OSX 10.10, *)
let AVMetadataIdentifier3GPUserDataDescription: String
@available(OSX 10.10, *)
let AVMetadataIdentifier3GPUserDataCollection: String
@available(OSX 10.10, *)
let AVMetadataIdentifier3GPUserDataUserRating: String
@available(OSX 10.10, *)
let AVMetadataIdentifier3GPUserDataThumbnail: String
@available(OSX 10.10, *)
let AVMetadataIdentifier3GPUserDataAlbumAndTrack: String
@available(OSX 10.10, *)
let AVMetadataIdentifier3GPUserDataKeywordList: String
@available(OSX 10.10, *)
let AVMetadataIdentifier3GPUserDataMediaClassification: String
@available(OSX 10.10, *)
let AVMetadataIdentifier3GPUserDataMediaRating: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataAuthor: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataComment: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataCopyright: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataCreationDate: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataDirector: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataDisplayName: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataInformation: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataKeywords: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataProducer: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataPublisher: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataAlbum: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataArtist: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataArtwork: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataDescription: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataSoftware: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataYear: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataGenre: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataiXML: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataLocationISO6709: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataMake: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataModel: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataArranger: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataEncodedBy: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataOriginalArtist: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataPerformer: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataComposer: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataCredits: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataPhonogramRights: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataCameraIdentifier: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataCameraFrameReadoutTime: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataTitle: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataCollectionUser: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataRatingUser: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataLocationName: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataLocationBody: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataLocationNote: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataLocationRole: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataLocationDate: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataDirectionFacing: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataDirectionMotion: String
@available(OSX 10.10, *)
let AVMetadataIdentifierQuickTimeMetadataPreferredAffineTransform: String
@available(OSX 10.11, *)
let AVMetadataIdentifierQuickTimeMetadataDetectedFace: String
@available(OSX 10.11, *)
let AVMetadataIdentifierQuickTimeMetadataVideoOrientation: String
@available(OSX 10.11, *)
let AVMetadataIdentifierQuickTimeMetadataContentIdentifier: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataAlbum: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataArtist: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataUserComment: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataCoverArt: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataCopyright: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataReleaseDate: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataEncodedBy: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataPredefinedGenre: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataUserGenre: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataSongName: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataTrackSubTitle: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataEncodingTool: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataComposer: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataAlbumArtist: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataAccountKind: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataAppleID: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataArtistID: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataSongID: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataDiscCompilation: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataDiscNumber: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataGenreID: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataGrouping: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataPlaylistID: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataContentRating: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataBeatsPerMin: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataTrackNumber: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataArtDirector: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataArranger: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataAuthor: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataLyrics: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataAcknowledgement: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataConductor: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataDescription: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataDirector: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataEQ: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataLinerNotes: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataRecordCompany: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataOriginalArtist: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataPhonogramRights: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataProducer: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataPerformer: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataPublisher: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataSoundEngineer: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataSoloist: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataCredits: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataThanks: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataOnlineExtras: String
@available(OSX 10.10, *)
let AVMetadataIdentifieriTunesMetadataExecProducer: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataAudioEncryption: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataAttachedPicture: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataAudioSeekPointIndex: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataComments: String
@available(OSX 10.11, *)
let AVMetadataIdentifierID3MetadataCommercial: String
@available(OSX, introduced=10.10, deprecated=10.11)
let AVMetadataIdentifierID3MetadataCommerical: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataEncryption: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataEqualization: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataEqualization2: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataEventTimingCodes: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataGeneralEncapsulatedObject: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataGroupIdentifier: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataInvolvedPeopleList_v23: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataLink: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataMusicCDIdentifier: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataMPEGLocationLookupTable: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataOwnership: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataPrivate: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataPlayCounter: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataPopularimeter: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataPositionSynchronization: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataRecommendedBufferSize: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataRelativeVolumeAdjustment: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataRelativeVolumeAdjustment2: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataReverb: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataSeek: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataSignature: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataSynchronizedLyric: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataSynchronizedTempoCodes: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataAlbumTitle: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataBeatsPerMinute: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataComposer: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataContentType: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataCopyright: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataDate: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataEncodingTime: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataPlaylistDelay: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataOriginalReleaseTime: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataRecordingTime: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataReleaseTime: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataTaggingTime: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataEncodedBy: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataLyricist: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataFileType: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataTime: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataInvolvedPeopleList_v24: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataContentGroupDescription: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataTitleDescription: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataSubTitle: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataInitialKey: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataLanguage: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataLength: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataMusicianCreditsList: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataMediaType: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataMood: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataOriginalAlbumTitle: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataOriginalFilename: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataOriginalLyricist: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataOriginalArtist: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataOriginalReleaseYear: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataFileOwner: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataLeadPerformer: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataBand: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataConductor: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataModifiedBy: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataPartOfASet: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataProducedNotice: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataPublisher: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataTrackNumber: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataRecordingDates: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataInternetRadioStationName: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataInternetRadioStationOwner: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataSize: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataAlbumSortOrder: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataPerformerSortOrder: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataTitleSortOrder: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataInternationalStandardRecordingCode: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataEncodedWith: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataSetSubtitle: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataYear: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataUserText: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataUniqueFileIdentifier: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataTermsOfUse: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataUnsynchronizedLyric: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataCommercialInformation: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataCopyrightInformation: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataOfficialAudioFileWebpage: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataOfficialArtistWebpage: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataOfficialAudioSourceWebpage: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataOfficialInternetRadioStationHomepage: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataPayment: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataOfficialPublisherWebpage: String
@available(OSX 10.10, *)
let AVMetadataIdentifierID3MetadataUserURL: String
@available(OSX 10.10, *)
let AVMetadataIdentifierIcyMetadataStreamTitle: String
@available(OSX 10.10, *)
let AVMetadataIdentifierIcyMetadataStreamURL: String
@available(OSX 10.7, *)
class AVMetadataItem : NSObject, AVAsynchronousKeyValueLoading, NSCopying, NSMutableCopying {
  @available(OSX 10.10, *)
  var identifier: String? { get }
  @available(OSX 10.10, *)
  var extendedLanguageTag: String? { get }
  @NSCopying var locale: NSLocale? { get }
  var time: CMTime { get }
  @available(OSX 10.7, *)
  var duration: CMTime { get }
  @available(OSX 10.10, *)
  var dataType: String? { get }
  @NSCopying var value: protocol<NSCopying, NSObjectProtocol>? { get }
  var extraAttributes: [String : AnyObject]? { get }
  init()
  @available(OSX 10.7, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
}
extension AVMetadataItem {
  @available(OSX 10.11, *)
  @NSCopying var startDate: NSDate? { get }
}
extension AVMetadataItem {
  var stringValue: String? { get }
  var numberValue: NSNumber? { get }
  var dateValue: NSDate? { get }
  var dataValue: NSData? { get }
}
extension AVMetadataItem {
  @available(OSX 10.7, *)
  func statusOfValueForKey(key: String, error outError: NSErrorPointer) -> AVKeyValueStatus
  @available(OSX 10.7, *)
  func loadValuesAsynchronouslyForKeys(keys: [String], completionHandler handler: (() -> Void)? = nil)
}
extension AVMetadataItem {

  /*!
   @method		metadataItemsFromArray:filteredAndSortedAccordingToPreferredLanguages:
   @abstract		Filters an array of AVMetadataItems according to whether their locales match any language identifier in the specified array of preferred languages. The returned array is sorted according to the order of preference of the language each matches.
   @param			metadataItems
  				An array of AVMetadataItems to be filtered and sorted.
   @param			preferredLanguages
  				An array of language identifiers in order of preference, each of which is an IETF BCP 47 (RFC 4646) language identifier. Use +[NSLocale preferredLanguages] to obtain the user's list of preferred languages.
   @result		An instance of NSArray containing metadata items of the specified NSArray that match a preferred language, sorted according to the order of preference of the language each matches.
  */
  @available(OSX 10.8, *)
  class func metadataItemsFrom(metadataItems: [AVMetadataItem], filteredAndSortedAccordingToPreferredLanguages preferredLanguages: [String]) -> [AVMetadataItem]

  /*!
  	@method			metadataItemsFromArray:filteredByIdentifier:
  	@abstract			Filters an array of AVMetadataItems according to identifier.
  	@param			metadataItems
  	An array of AVMetadataItems to be filtered by identifier.
  	@param			identifier
  	The identifier that must be matched for a metadata item to be copied to the output array. Items are considered a match not only when their identifiers are equal to the specified identifier, and also when their identifiers conform to the specified identifier.
  	@result			An instance of NSArray containing the metadata items of the target NSArray that match the specified identifier.
  */
  @available(OSX 10.10, *)
  class func metadataItemsFrom(metadataItems: [AVMetadataItem], filteredByIdentifier identifier: String) -> [AVMetadataItem]

  /*!
  	@method			metadataItemsFromArray:filteredByMetadataItemFilter:
  	@abstract		Filters an array of AVMetadataItems using the supplied AVMetadataItemFilter.
  	@param			metadataItems
  					An array of AVMetadataItems to be filtered.
  	@param			metadataItemFilter
  					The AVMetadataItemFilter object for filtering the metadataItems.
  	@result			An instance of NSArray containing the metadata items of the target NSArray that have not been removed by metadataItemFilter.
  */
  @available(OSX 10.9, *)
  class func metadataItemsFrom(metadataItems: [AVMetadataItem], filteredBy metadataItemFilter: AVMetadataItemFilter) -> [AVMetadataItem]
}
extension AVMetadataItem {

  /*!
  	@method			identifierForKey:keySpace:
  	@abstract		Provides the metadata identifier that's equivalent to a key and keySpace.
  	@param			key
  					The metadata key.
  	@param			keySpace
  					The metadata keySpace.
  	@result			A metadata identifier equivalent to the given key and keySpace, or nil if no identifier can be constructed from the given key and keySpace.
  	@discussion
  		Metadata keys that are not instances of NSString, NSNumber, or NSData cannot be converted to metadata identifiers; they also cannot be written to media resources via AVAssetExportSession or AVAssetWriter.  Metadata item keySpaces must be a string of one to four printable ASCII characters.
   
  		For custom identifiers, the keySpace AVMetadataKeySpaceQuickTimeMetadata is recommended.  This keySpace defines its key values to be expressed as reverse-DNS strings, which allows third parties to define their own keys in a well established way that avoids collisions.
  */
  @available(OSX 10.10, *)
  class func identifierForKey(key: AnyObject, keySpace: String) -> String?
  @available(OSX 10.10, *)
  class func keySpaceForIdentifier(identifier: String) -> String?
  @available(OSX 10.10, *)
  class func keyForIdentifier(identifier: String) -> AnyObject?
  @NSCopying var key: protocol<NSCopying, NSObjectProtocol>? { get }
  var commonKey: String? { get }
  var keySpace: String? { get }
}
@available(OSX 10.7, *)
class AVMutableMetadataItem : AVMetadataItem {
  @available(OSX 10.10, *)
  var identifier: String?
  @available(OSX 10.10, *)
  var extendedLanguageTag: String?
  @NSCopying var locale: NSLocale?
  var time: CMTime
  @available(OSX 10.7, *)
  var duration: CMTime
  @available(OSX 10.10, *)
  var dataType: String?
  @NSCopying var value: protocol<NSCopying, NSObjectProtocol>?
  var extraAttributes: [String : AnyObject]?
  init()
}
extension AVMutableMetadataItem {
  @available(OSX 10.11, *)
  @NSCopying var startDate: NSDate?
}
extension AVMutableMetadataItem {
  var keySpace: String?
  @NSCopying var key: protocol<NSCopying, NSObjectProtocol>?
}
extension AVMetadataItem {

  /*!
  	@method			metadataItemWithPropertiesOfMetadataItem:valueLoadingHandler:
  	@abstract		Creates an instance of AVMutableMetadataItem with a value that you do not wish to load unless required, e.g. a large image value that needn't be loaded into memory until another module wants to display it.
  	@param			metadataItem
  					An instance of AVMetadataItem with the identifier, extendedLanguageTag, and other property values that you want the newly created instance of AVMetadataItem to share. The value of metadataItem is ignored.
  	@param			handler
  					A block that loads the value of the metadata item.
  	@result			An instance of AVMetadataItem.
  	@discussion
   		This method is intended for the creation of metadata items for optional display purposes, when there is no immediate need to load specific metadata values. For example, see the interface for navigation markers as consumed by AVPlayerViewController. It's not intended for the creation of metadata items with values that are required immediately, such as metadata items that are provided for impending serialization operations (e.g. via -[AVAssetExportSession setMetadata:] and other similar methods defined on AVAssetWriter and AVAssetWriterInput). 
  		When -loadValuesAsynchronouslyForKeys:completionHandler: is invoked on an AVMetadataItem created via +metadataItemWithPropertiesOfMetadataItem:valueLoadingHandler: and @"value" is among the keys for which loading is requested, the block you provide as the value loading handler will be executed on an arbitrary dispatch queue, off the main thread. The handler can perform I/O and other necessary operations to obtain the value. If loading of the value succeeds, provide the value by invoking -[AVMetadataItemValueRequest respondWithValue:]. If loading of the value fails, provide an instance of NSError that describes the failure by invoking -[AVMetadataItemValueRequest respondWithError:].
  */
  @available(OSX 10.11, *)
  /*not inherited*/ init(propertiesOf metadataItem: AVMetadataItem, valueLoadingHandler handler: (AVMetadataItemValueRequest) -> Void)
}
@available(OSX 10.11, *)
class AVMetadataItemValueRequest : NSObject {
  weak var metadataItem: @sil_weak AVMetadataItem? { get }

  /*!
  	@method			respondWithValue:
  	@abstract		Allows you to respond to an AVMetadataItemValueRequest by providing a value.
  	@param			value
  					The value of the AVMetadataItem.
  */
  func respondWithValue(value: protocol<NSCopying, NSObjectProtocol>)

  /*!
  	@method			respondWithError:
  	@abstract		Allows you to respond to an AVMetadataItemValueRequest in the case of failure.
  	@param			error
  					An instance of NSError that describes a failure encountered while loading the value of an AVMetadataItem.
  */
  func respondWith(error: NSError)
  init()
}
@available(OSX 10.9, *)
class AVMetadataItemFilter : NSObject {
  class func forSharing() -> AVMetadataItemFilter
  init()
}
extension AVMetadataItem {

  /*!
   @method			metadataItemsFromArray:withLocale:
   @discussion		Instead, use metadataItemsFromArray:filteredAndSortedAccordingToPreferredLanguages:.
   */
  class func metadataItemsFrom(metadataItems: [AVMetadataItem], withLocale locale: NSLocale) -> [AVMetadataItem]

  /*!
   @method			metadataItemsFromArray:withKey:keySpace:
   @discussion		Instead, use metadataItemsFromArray:filteredByIdentifier:.
   */
  class func metadataItemsFrom(metadataItems: [AVMetadataItem], withKey key: AnyObject?, keySpace: String?) -> [AVMetadataItem]
}

/*!
 @class AVMetadataObject
 @abstract
    AVMetadataObject is an abstract class that defines an interface for a metadata object used by AVFoundation.
 
 @discussion
    AVMetadataObject provides an abstract interface for metadata associated with a piece of media.  One example 
    is face metadata that might be detected in a picture. All metadata objects have a time, duration, bounds, and type.
 
    The concrete AVMetadataFaceObject is used by AVCaptureMetadataOutput for face detection.
*/
@available(OSX 10.10, *)
class AVMetadataObject : NSObject {

  /*!
   @property time
   @abstract
      The media time associated with this metadata object.
   
   @discussion
      The value of this property is a CMTime associated with the metadata object. For capture, it is the time at 
  	which this object was captured. If this metadata object originates from a CMSampleBuffer, its time matches
      the sample buffer's presentation time. This property may return kCMTimeInvalid.
  */
  var time: CMTime { get }

  /*!
   @property duration
   @abstract
      The media duration associated with this metadata object.
   
   @discussion
      The value of this property is a CMTime representing the duration of the metadata object. If this metadata 
      object originates from a CMSampleBuffer, its duration matches the sample buffer's duration. This property 
      may return kCMTimeInvalid.
  */
  var duration: CMTime { get }

  /*!
   @property bounds
   @abstract
      The bounding rectangle of the receiver.
   
   @discussion
      The value of this property is a CGRect representing the bounding rectangle of the object with respect to the 
      picture in which it resides.  The rectangle's origin is top left.  If the metadata originates from video, bounds 
      may be expressed as scalar values from 0. - 1.  If the original video has been scaled down, the bounds of the 
      metadata object still are meaningful.  This property may return CGRectZero if the metadata has no bounds.
  */
  var bounds: CGRect { get }

  /*!
   @property type
   @abstract
      An identifier for the metadata object.
   
   @discussion
      The value of this property is an NSString representing the type of the metadata object.  Clients inspecting
      a collection of metadata objects can use this property to filter objects with a matching type.
  */
  var type: String! { get }
}

/*!
 @constant AVMetadataObjectTypeFace
 @abstract An identifier for an instance of AVMetadataFaceObject.
 @discussion
    AVMetadataFaceObject objects return this constant as their type.
*/
@available(OSX 10.10, *)
let AVMetadataObjectTypeFace: String

/*!
 @class AVMetadataFaceObject
 @abstract
    AVMetadataFaceObject is a concrete subclass of AVMetadataObject defining the features of a detected face.
 
 @discussion
    AVMetadataFaceObject represents a single detected face in a picture.  It is an immutable object
    describing the various features found in the face.

    On supported platforms, AVCaptureMetadataOutput outputs arrays of detected face objects.  See AVCaptureOutput.h.
*/
@available(OSX 10.10, *)
class AVMetadataFaceObject : AVMetadataObject, NSCopying {

  /*!
   @property faceID
   @abstract
      A unique number associated with the receiver.
   
   @discussion
      The value of this property is an NSInteger indicating the unique identifier of this face in the picture.
      When a new face enters the picture, it is assigned a new unique identifier.  faceIDs are not re-used as
      faces leave the picture and new ones enter.  Faces that leave the picture then re-enter are assigned
      a new faceID.
  */
  var faceID: Int { get }

  /*!
   @property hasRollAngle
   @abstract
      A BOOL indicating whether the rollAngle property is valid for this receiver.
   
   @discussion
  */
  var hasRollAngle: Bool { get }

  /*!
   @property rollAngle
   @abstract
      The roll angle of the face in degrees.
   
   @discussion
      The value of this property is a CGFloat indicating the face's angle of roll (or tilt) in degrees.
      A value of 0.0 indicates that the face is level in the picture.  If -hasRollAngle returns NO,
      then reading this property throws an NSGenericException.
  */
  var rollAngle: CGFloat { get }

  /*!
   @property hasYawAngle
   @abstract
      A BOOL indicating whether the yawAngle property is valid for this receiver.
   
   @discussion
  */
  var hasYawAngle: Bool { get }

  /*!
   @property yawAngle
   @abstract
      The yaw angle of the face in degrees.
   
   @discussion
      The value of this property is a CGFloat indicating the face's angle of yaw (or turn) in degrees.
      A value of 0.0 indicates that the face is straight on in the picture.  If -hasYawAngle returns NO,
      then reading this property throws an NSGenericException.
  */
  var yawAngle: CGFloat { get }
  @available(OSX 10.10, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
  @constant		AVMovieReferenceRestrictionsKey
  @abstract
	Indicates the restrictions used by the movie when resolving references to external media data. The value of this key is an NSNumber wrapping an AVAssetReferenceRestrictions enum value or the logical combination of multiple such values. See AVAsset.h for the declaration of the AVAssetReferenceRestrictions enum.
  @discussion
	Some movies can contain references to media data stored outside the movie's container, for example in another file. This key can be used to specify a policy to use when these references are encountered. If a movie contains one or more references of a type that is forbidden by the reference restrictions, loading of movie properties will fail. In addition, such a movie cannot be used with other AVFoundation modules, such as AVPlayerItem or AVAssetExportSession.
*/
@available(OSX 10.10, *)
let AVMovieReferenceRestrictionsKey: String
@available(OSX 10.10, *)
class AVMovie : AVAsset, NSCopying, NSMutableCopying {

  /*!
  	@method			movieTypes
  	@abstract		Provides the file types the AVMovie class understands.
  	@result			An NSArray of UTIs identifying the file types the AVMovie class understands.
  */
  class func movieTypes() -> [String]

  /*!
  	@method			initWithURL:options:
  	@abstract		Creates an AVMovie object from a movie header stored in a QuickTime movie file or ISO base media file.
  	@param			URL
  					An NSURL object that specifies a file containing a movie header.
  	@param			options
  					An NSDictionary object that contains keys for specifying options for the initialization of the AVMovie object. Currently no keys are defined.
  	@result			An AVMovie object
  	@discussion     By default, the defaultMediaDataStorage property will be nil and each associated AVMovieTrack's mediaDataStorage property will be nil.
                      If you want to create an AVMutableMovie from a file and then append sample buffers to any of its tracks, you must first set one of these properties 
                      to indicate where the sample data should be written.
  */
  init(url URL: NSURL, options: [String : AnyObject]?)

  /*!
  	@method			initWithData:options:
  	@abstract		Creates an AVMovie object from a movie header stored in an NSData object.
  	@param			data
  					An NSData object containing a movie header.
  	@param			options
  					An NSDictionary object that contains keys for specifying options for the initialization of the AVMovie object. Currently no keys are defined.
  	@result			An AVMovie object
  	@discussion     You can use this method to operate on movie headers that are not stored in files. In general you should avoid loading an entire movie file with its media data into an instance of NSData!
   
                      By default, the defaultMediaDataStorage property will be nil and each associated AVMovieTrack's mediaDataStorage property will be nil. If you want to create an AVMutableMovie from an NSData object and then append sample buffers to any of its tracks, you must first set one of these properties to indicate where the sample data should be written.
  */
  @available(OSX 10.11, *)
  init(data: NSData, options: [String : AnyObject]?)

  /*!
  	@property       URL
  	@abstract       The URL with which the instance of AVMovie was initialized; may be nil.
  */
  var url: NSURL? { get }

  /*!
  	@property       data
  	@abstract       The data block with which the instance of AVMovie was initialized; may be nil.
  */
  @available(OSX 10.11, *)
  var data: NSData? { get }

  /*!
  	@property       defaultMediaDataStorage
  	@abstract       The default storage container for media data added to a movie.
  	@discussion     The value of this property is an AVMediaDataStorage object that indicates where sample data that is added to a movie should be written by default.
  */
  @available(OSX 10.11, *)
  var defaultMediaDataStorage: AVMediaDataStorage? { get }

  /*!
  	@property       tracks
  	@abstract       The tracks in a movie.
  	@discussion     The value of this property is an array of tracks the movie contains; the tracks are of type AVMovieTrack.
  */
  var tracks: [AVMovieTrack] { get }

  /*!
  	@property       canContainMovieFragments
  	@abstract       Indicates whether the movie file is capable of being extended by fragments.
  	@discussion     The value of this property is YES if an 'mvex' box is present in the 'moov' box. The 'mvex' box is necessary in order to signal the possible presence of later 'moof' boxes.
  */
  var canContainMovieFragments: Bool { get }

  /*!
  	@property       containsMovieFragments
  	@abstract       Indicates whether the movie file is extended by at least one movie fragment.
  	@discussion     The value of this property is YES if canContainMovieFragments is YES and at least one 'moof' box is present after the 'moov' box.
  */
  @available(OSX 10.11, *)
  var containsMovieFragments: Bool { get }

  /*!
    @method		assetWithURL:
    @abstract		Returns an instance of AVAsset for inspection of a media resource.
    @param		URL
  				An instance of NSURL that references a media resource.
    @result		An instance of AVAsset.
    @discussion	Returns a newly allocated instance of a subclass of AVAsset initialized with the specified URL.
  */
  convenience init(url URL: NSURL)
  convenience init()
  @available(OSX 10.10, *)
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
}

/*!
	@enum			AVMovieWritingOptions
	@abstract		These options can be passed into writeMovieHeaderToURL:fileType:options:error: to control the writing of a movie header to a destination URL.
	@constant		AVMovieWritingAddMovieHeaderToDestination
					Writing the movie header will remove any existing movie header in the destination file and add a new movie header, preserving any other data in the file. If the destination file was empty, a file type box will be written at the beginning of the file.
	@constant		AVMovieWritingTruncateDestinationToMovieHeaderOnly
					If set, writing the movie header will truncate all existing data in the destination file and write a new movie header, thereby creating a pure reference movie file. A file type box will be written at the beginning of the file.
	@discussion     You would not want to use the AVMovieWritingTruncateDestinationToMovieHeaderOnly option if you had written sample data to the destination file using (for example) -[AVMutableMovie insertTimeRange:ofAsset:atTime:copySampleData:error:] with copySampleData set to YES, since that data would be lost.
 */
@available(OSX 10.11, *)
struct AVMovieWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var AddMovieHeaderToDestination: AVMovieWritingOptions { get }
  static var TruncateDestinationToMovieHeaderOnly: AVMovieWritingOptions { get }
}
extension AVMovie {

  /*!
  	@method			movieHeaderWithFileType:error:
  	@abstract		Creates an NSData object containing the movie header of the AVMovie object.
  	@param			fileType
  					A UTI indicating the specific file format of the movie header (e.g. AVFileTypeQuickTimeMovie for a QuickTime movie).
  	@param			outError
  					If an error occurs reading the movie header, describes the nature of the failure.
  	@result			An NSData object.
  	@discussion     The movie header will be a pure reference movie, with no base URL, suitable for use on the pasteboard.
  */
  @available(OSX 10.11, *)
  func movieHeaderWithFileType(fileType: String) throws -> NSData

  /*!
  	@method			writeMovieHeaderToURL:fileType:options:error:
  	@abstract		Writes the movie header to a destination URL.
  	@param			URL
  					An NSURL object indicating where to write the movie header.
  	@param			fileType
  					A UTI indicating the specific file format (e.g. AVFileTypeQuickTimeMovie for a QuickTime movie).
  	@param			options
                      An NSUInteger whose bits specify options for the writing of the movie header. See AVMovieWritingOptions above.
  	@param			outError
  					If an error occurs writing the movie header, describes the nature of the failure.
  	@discussion		Data references in the output movie header are adjusted to be relative to the destination URL. Note that modifications to instances of AVMutableMovie, to their constituent AVMutableMovieTracks, or to their collections of metadata are committed to storage when their movie headers are written.
  */
  @available(OSX 10.11, *)
  func writeMovieHeaderTo(URL: NSURL, fileType: String, options: AVMovieWritingOptions = []) throws

  /*!
  	@method			isCompatibleWithFileType:
  	@abstract		Indicates whether a movie header for the AVMovie object can be created for the specified file type.
  	@param			fileType
  					A UTI indicating a movie file format (e.g. AVFileTypeQuickTimeMovie for a QuickTime movie).
  	@discussion     This method returns a BOOL that indicates whether a movie header of the specified type can be created for the receiver. For example, this method returns NO if the movie contains tracks whose media types or media subtypes are not allowed by the specified file type.
  */
  @available(OSX 10.11, *)
  func isCompatibleWithFileType(fileType: String) -> Bool
}
extension AVMovie {

  /*!
    @method		trackWithTrackID:
    @abstract		Provides an instance of AVMovieTrack that represents the track of the specified trackID.
    @param		trackID
  				The trackID of the requested AVMovieTrack.
    @result		An instance of AVMovieTrack; may be nil if no track of the specified trackID is available.
    @discussion	Becomes callable without blocking when the key @"tracks" has been loaded
  */
  func trackWithTrackID(trackID: CMPersistentTrackID) -> AVMovieTrack?

  /*!
    @method		tracksWithMediaType:
    @abstract		Provides an array of AVMovieTracks of the asset that present media of the specified media type.
    @param		mediaType
  				The media type according to which the receiver filters its AVMovieTracks. (Media types are defined in AVMediaFormat.h)
    @result		An NSArray of AVMovieTracks; may be empty if no tracks of the specified media type are available.
    @discussion	Becomes callable without blocking when the key @"tracks" has been loaded
  */
  func tracksWithMediaType(mediaType: String) -> [AVMovieTrack]

  /*!
    @method		tracksWithMediaCharacteristic:
    @abstract		Provides an array of AVMovieTracks of the asset that present media with the specified characteristic.
    @param		mediaCharacteristic
  				The media characteristic according to which the receiver filters its AVMovieTracks. (Media characteristics are defined in AVMediaFormat.h)
    @result		An NSArray of AVMovieTracks; may be empty if no tracks with the specified characteristic are available.
    @discussion	Becomes callable without blocking when the key @"tracks" has been loaded
  */
  func tracksWithMediaCharacteristic(mediaCharacteristic: String) -> [AVMovieTrack]
}

/*!
    @class			AVMutableMovie

    @abstract       AVMutableMovie adds to its immutable superclass, AVMovie, several categories of methods for editing QuickTime movie files, e.g. inserting and removing time ranges of media, adding and removing tracks, and modifying the metadata collections stored therein.

	@discussion     By default, after creating an AVMutableMovie the defaultMediaDataStorage property will be nil and each associated AVMutableMovieTrack's mediaDataStorage property will be nil. If you want to create an AVMutableMovie from a file and then append sample buffers to any of its tracks, you must first set one of these properties to indicate where the sample data should be written.
*/
@available(OSX 10.11, *)
class AVMutableMovie : AVMovie {

  /*!
  	@method			initWithURL:options:error:
  	@abstract		Creates an AVMutableMovie object from a movie header stored in a QuickTime movie file or ISO base media file.
  	@param			URL
  					An NSURL object that specifies a file containing a movie header.
  	@param			options
  					An NSDictionary object that contains keys for specifying options for the initialization of the AVMutableMovie object. Currently no keys are defined.
  	@param			outError
  					If an error occurs creating a movie, describes the nature of the failure.
  	@result			An AVMutableMovie object
  	@discussion     By default, the defaultMediaDataStorage property will be nil and each associated AVMutableMovieTrack's mediaDataStorage property will be nil.
                      If you want to create an AVMutableMovie from a file and then append sample buffers to any of its tracks, you must first set one of these properties 
                      to indicate where the sample data should be written.
  */
  init(url URL: NSURL, options: [String : AnyObject]?, error: ()) throws

  /*!
  	@method			initWithData:options:error:
  	@abstract		Creates an AVMutableMovie object from a movie header stored in an NSData object.
  	@param			data
  					An NSData object containing a movie header.
  	@param			options
  					An NSDictionary object that contains keys for specifying options for the initialization of the AVMutableMovie object. Currently no keys are defined.
  	@param			outError
  					If an error occurs creating a movie, describes the nature of the failure.
  	@result			An AVMutableMovie object
  	@discussion     You can use this method to operate on movie headers that are not stored in files. In general you should avoid loading an entire movie file with its media data into an instance of NSData!
   
                      By default, the defaultMediaDataStorage property will be nil and each associated AVMutableMovieTrack's mediaDataStorage property will be nil. If you want to create an AVMutableMovie from an NSData object and then append sample buffers to any of its tracks, you must first set one of these properties to indicate where the sample data should be written.
  */
  init(data: NSData, options: [String : AnyObject]?, error: ()) throws

  /*!
  	@method			initWithSettingsFromMovie:options:error:
  	@abstract		Creates an AVMutableMovie object without tracks (and therefore without media).
  	@param			movie
  					If you wish to transfer settings from an existing movie (including movie userdata and metadata, preferred rate, preferred volume, etc.), pass a reference to an AVMovie object representing that movie. Otherwise pass nil. The userdata and metadata from the source movie may need to be converted if the format of that movie differs from fileType; you may wish to inspect the userdata or metadata of the receiver to ensure that important data was copied.
  	@param			options
  					An NSDictionary object that contains keys for specifying options for the initialization of the AVMutableMovie object. Currently no keys are defined; pass nil for default initialization behavior.
  	@param			outError
  					If an error occurs creating a movie, describes the nature of the failure.
  	@result			An AVMutableMovie object
  	@discussion
                      By default, the defaultMediaDataStorage property will be nil and each associated AVMovieTrack's mediaDataStorage property will be nil.
                      If you want to create an AVMutableMovie from an NSData object and then append sample buffers to any of its tracks, you must first set one of these properties to indicate where the sample data should be written.
  */
  init(settingsFrom movie: AVMovie?, options: [String : AnyObject]?) throws

  /*!
  	@property       preferredRate
  	@abstract       The natural rate at which the movie is to be played; often but not always 1.0.
  */
  var preferredRate: Float

  /*!
  	@property       preferredVolume
  	@abstract       The preferred volume of the audible media data of the movie; often but not always 1.0.
  */
  var preferredVolume: Float

  /*!
  	@property       preferredTransform
  	@abstract       A CGAffineTransform indicating the transform specified in the movie's storage container as the preferred transformation of the visual media data for display purposes; the value is often but not always CGAffineTransformIdentity.
  */
  var preferredTransform: CGAffineTransform

  /*!
  	@property       timescale
  	@abstract       For file types that contain a 'moov' atom, such as QuickTime Movie files, specifies the time scale of the movie.
  	@discussion		The default movie time scale is 600. In certain cases, you may want to set this to a different value. For instance, a movie that
  					contains a single audio track should typically have the movie time scale set to the media time scale of that track.
   
  					This property should be set on a new empty movie before any edits are performed on the movie.
  */
  var timescale: CMTimeScale

  /*!
  	@property       tracks
  	@abstract       The tracks in a mutable movie.
  	@discussion     The value of this property is an array of tracks the mutable movie contains; the tracks are of type AVMutableMovieTrack.
  */
  var tracks: [AVMutableMovieTrack] { get }

  /*!
  	@method			initWithURL:options:
  	@abstract		Creates an AVMovie object from a movie header stored in a QuickTime movie file or ISO base media file.
  	@param			URL
  					An NSURL object that specifies a file containing a movie header.
  	@param			options
  					An NSDictionary object that contains keys for specifying options for the initialization of the AVMovie object. Currently no keys are defined.
  	@result			An AVMovie object
  	@discussion     By default, the defaultMediaDataStorage property will be nil and each associated AVMovieTrack's mediaDataStorage property will be nil.
                      If you want to create an AVMutableMovie from a file and then append sample buffers to any of its tracks, you must first set one of these properties 
                      to indicate where the sample data should be written.
  */
  convenience init(url URL: NSURL, options: [String : AnyObject]?)

  /*!
  	@method			initWithData:options:
  	@abstract		Creates an AVMovie object from a movie header stored in an NSData object.
  	@param			data
  					An NSData object containing a movie header.
  	@param			options
  					An NSDictionary object that contains keys for specifying options for the initialization of the AVMovie object. Currently no keys are defined.
  	@result			An AVMovie object
  	@discussion     You can use this method to operate on movie headers that are not stored in files. In general you should avoid loading an entire movie file with its media data into an instance of NSData!
   
                      By default, the defaultMediaDataStorage property will be nil and each associated AVMovieTrack's mediaDataStorage property will be nil. If you want to create an AVMutableMovie from an NSData object and then append sample buffers to any of its tracks, you must first set one of these properties to indicate where the sample data should be written.
  */
  @available(OSX 10.11, *)
  convenience init(data: NSData, options: [String : AnyObject]?)

  /*!
    @method		assetWithURL:
    @abstract		Returns an instance of AVAsset for inspection of a media resource.
    @param		URL
  				An instance of NSURL that references a media resource.
    @result		An instance of AVAsset.
    @discussion	Returns a newly allocated instance of a subclass of AVAsset initialized with the specified URL.
  */
  convenience init(url URL: NSURL)
  convenience init()
}
extension AVMutableMovie {

  /*!
  	@property       modified
  	@abstract       Whether a movie has been modified.
  	@discussion     The value of this property is a BOOL that indicates whether the AVMutableMovie object has been modified since it was created, was last written, or had its modified state cleared via a call to setModified:NO.
  */
  var isModified: Bool

  /*!
  	@property       defaultMediaDataStorage
  	@abstract       The default storage container for media data added to a movie.
  	@discussion     The value of this property is an AVMediaDataStorage object that indicates where sample data that is added to a movie should be written, for any track for whose mediaDataStorage property is nil.
  */
  @NSCopying var defaultMediaDataStorage: AVMediaDataStorage

  /*!
  	@property		interleavingPeriod
  	@abstract		A CMTime that indicates the duration for interleaving runs of samples of each track.
  	@discussion		The default interleaving period is 0.5 seconds.
   */
  var interleavingPeriod: CMTime

  /*!
  	@method			insertTimeRange:ofAsset:atTime:copySampleData:error:
  	@abstract		Inserts all the tracks of a timeRange of an asset into a movie.
  	@param			timeRange
  					The time range of the asset to be inserted.
  	@param			asset
  					An AVAsset object indicating the source of the inserted media. Only instances of AVURLAsset and AVComposition are supported.
  					Must not be nil.
  	@param			startTime
  					The time in the target movie at which the media is to be inserted.
  	@param			copySampleData
                      A BOOL value that indicates whether sample data is to be copied from the source to the destination during edits.
  					If YES, the sample data is written to the location specified by the track property mediaDataStorage if non-nil,
  					or else by the movie property defaultMediaDataStorage if non-nil; if both are nil, the method will fail and return NO.
  					If NO, sample data will not be written and sample references to the samples in their original container will be added as necessary. 
  					Note that in this case, this method will fail if the source AVAsset is not able to provide sample reference information for the original container.
  	@param			outError
  					If the insertion fails, an NSError object that describes the nature of the failure.
  	@result			A BOOL value that indicates the success of the insertion.
  	@discussion		This method may add new tracks to the target movie to ensure that all tracks of the asset are represented in the inserted timeRange.
  					Existing content at the specified startTime will be pushed out by the duration of timeRange.
  */
  func insert(timeRange: CMTimeRange, of asset: AVAsset, at startTime: CMTime, copySampleData: Bool) throws

  /*!
  	@method			insertEmptyTimeRange:
  	@abstract		Adds an empty time range to the target movie.
  	@param			timeRange
  					The time range to be made empty. Note that you cannot add empty time ranges to the end of a movie.
  */
  func insertEmpty(timeRange: CMTimeRange)

  /*!
  	@method			removeTimeRange:
  	@abstract		Removes a specified time range from a movie.
  	@param			timeRange
  					The time range to be removed.
  */
  func remove(timeRange: CMTimeRange)

  /*!
  	@method			scaleTimeRange:toDuration:
  	@abstract		Changes the duration of a time range of a movie.
  	@param			timeRange
  					The time range to be scaled.
  	@param			duration
  					The new duration of the time range.
  */
  func scaleTimeRange(timeRange: CMTimeRange, toDuration duration: CMTime)
}
extension AVMutableMovie {

  /*!
  	@method			mutableTrackCompatibleWithTrack:
  	@abstract		Provides a reference to a track of a mutable movie into which any time range of an AVAssetTrack
  					can be inserted (via -[AVMutableMovieTrack insertTimeRange:ofTrack:atTime:copySampleData:error:]).
  	@param			track
  					A reference to the AVAssetTrack from which a time range may be inserted.
  	@result			An AVMutableMovieTrack that can accommodate the insertion.
  					If no such track is available, the result is nil. A new track of the same media type
  					as the AVAssetTrack can be created via -addMutableTrackWithMediaType:copySettingsFromTrack:options:,
  					and this new track will be compatible.
  	@discussion		For best performance, the number of tracks in a movie should be kept to a minimum, corresponding to the
  					number for which media data must be presented in parallel. If media data of the same type is to be presented
  					serially, even from multiple assets, a single track of that media type should be used. This method,
  					-mutableTrackCompatibleWithTrack:, can help the client to identify an existing target track for an insertion.
  */
  func mutableTrackCompatibleWith(track: AVAssetTrack) -> AVMutableMovieTrack?

  /*!
  	@method			addMutableTrackWithMediaType:copySettingsFromTrack:options:
  	@abstract		Adds an empty track to the target movie.
  	@param			mediaType
  					The media type of the new track (e.g. AVMediaTypeVideo for a video track).
  	@param			track
  					If you wish to transfer settings from an existing track, including track userdata and metadata, width, height, preferred volume, etc., pass a reference to an AVAssetTrack representing that track. Otherwise pass nil.
  	@param			options
  					An NSDictionary object that contains keys for specifying options for the initialization of the new AVMutableMovieTrack object. Currently no keys are defined; pass nil for default initialization behavior.
  	@result			An AVMutableMovieTrack object
      @discussion		The trackID of the newly added track is a property of the returned instance of AVMutableMovieTrack.
  */
  func addMutableTrackWithMediaType(mediaType: String, copySettingsFrom track: AVAssetTrack?, options: [String : AnyObject]?) -> AVMutableMovieTrack

  /*!
  	@method			addMutableTracksCopyingSettingsFromTracks:options:
  	@abstract		Adds one or more empty tracks to the target movie, copying track settings from the source tracks.
  	@param			existingTracks
  					An array of AVAssetTrack objects.
  	@param			options
  					An NSDictionary object that contains keys for specifying options for the initialization of the new AVMutableMovieTrack objects. Currently no keys are defined; pass nil for default initialization behavior.
  	@result			An array of AVMutableMovieTrack objects; the index of a track in this array is the same as the index of its source track in the existingTracks array.
      @discussion		This method creates one or more empty tracks in the target movie and configures those tracks with settings (such as track userdata and metadata, width, height, and preferred volume) copied from the source tracks in the existingTracks array. Also, properties involving pairs of tracks (such as track references) are copied from the source tracks to the target tracks.
  */
  func addMutableTracksCopyingSettingsFrom(existingTracks: [AVAssetTrack], options: [String : AnyObject]?) -> [AVMutableMovieTrack]

  /*!
  	@method			removeTrack:
  	@abstract		Removes a track from the target movie.
  	@param			track
  					The track to be removed.
  */
  func removeTrack(track: AVMovieTrack)
}
extension AVMutableMovie {

  /*!
  	@property       metadata
  	@abstract       A collection of metadata stored by the movie.
  	@discussion     The value of this property is an array of AVMetadataItem objects representing the collection of metadata stored by the movie.
  */
  var metadata: [AVMetadataItem]
}
extension AVMutableMovie {

  /*!
    @method		trackWithTrackID:
    @abstract		Provides an instance of AVMutableMovieTrack that represents the track of the specified trackID.
    @param		trackID
  				The trackID of the requested AVMutableMovieTrack.
    @result		An instance of AVMutableMovieTrack; may be nil if no track of the specified trackID is available.
    @discussion	Becomes callable without blocking when the key @"tracks" has been loaded
  */
  func trackWithTrackID(trackID: CMPersistentTrackID) -> AVMutableMovieTrack?

  /*!
    @method		tracksWithMediaType:
    @abstract		Provides an array of AVMutableMovieTracks of the asset that present media of the specified media type.
    @param		mediaType
  				The media type according to which the receiver filters its AVMutableMovieTracks. (Media types are defined in AVMediaFormat.h)
    @result		An NSArray of AVMutableMovieTracks; may be empty if no tracks of the specified media type are available.
    @discussion	Becomes callable without blocking when the key @"tracks" has been loaded
  */
  func tracksWithMediaType(mediaType: String) -> [AVMutableMovieTrack]

  /*!
    @method		tracksWithMediaCharacteristic:
    @abstract		Provides an array of AVMutableMovieTracks of the asset that present media with the specified characteristic.
    @param		mediaCharacteristic
  				The media characteristic according to which the receiver filters its AVMutableMovieTracks. (Media characteristics are defined in AVMediaFormat.h)
    @result		An NSArray of AVMutableMovieTracks; may be empty if no tracks with the specified characteristic are available.
    @discussion	Becomes callable without blocking when the key @"tracks" has been loaded
  */
  func tracksWithMediaCharacteristic(mediaCharacteristic: String) -> [AVMutableMovieTrack]
}
@available(OSX 10.11, *)
class AVMediaDataStorage : NSObject {

  /*!
  	@method			initWithURL:options:
  	@abstract		Creates an AVMediaDataStorage object associated with a file URL.
  	@param			URL
  					An NSURL object that specifies a file where sample data that is added to a movie or track should be written.
  	@param			options
  					An NSDictionary object that contains keys for specifying options for the initialization of the AVMediaDataStorage object. Currently no keys are defined.
  	@result			An AVMediaDataStorage object
  */
  init(url URL: NSURL, options: [String : AnyObject]?)

  /*!
  	@method			URL
  	@abstract       The URL from which the receiver was initialized; may be nil.
  */
  func url() -> NSURL?
}

/*!
 @constant       AVFragmentedMovieContainsMovieFragmentsDidChangeNotification
 @abstract       Posted after the value of @"containsMovieFragments" has already been loaded and the AVFragmentedMovie is added to an AVFragmentedMovieMinder, either when 1) movie fragments are detected in the movie file on disk after it had previously contained none or when 2) no movie fragments are detected in the movie file on disk after it had previously contained one or more.
*/
@available(OSX 10.10, *)
let AVFragmentedMovieContainsMovieFragmentsDidChangeNotification: String

/*!
 @constant       AVFragmentedMovieDurationDidChangeNotification
 @abstract       Posted when the duration of an AVFragmentedMovie changes while it's being minded by an AVFragmentedMovieMinder, but only for changes that occur after the status of the value of @"duration" has reached AVKeyValueStatusLoaded.
*/
@available(OSX 10.10, *)
let AVFragmentedMovieDurationDidChangeNotification: String

/*!
 @constant       AVFragmentedMovieWasDefragmentedNotification
 @abstract       Posted when the movie file on disk is defragmented while an AVFragmentedMovie is being minded by an AVFragmentedMovieMinder, but only if the defragmentation occurs after the status of the value of @"canContainMovieFragments" has reached AVKeyValueStatusLoaded.
*/
@available(OSX 10.10, *)
let AVFragmentedMovieWasDefragmentedNotification: String
@available(OSX 10.10, *)
class AVFragmentedMovie : AVMovie, AVFragmentMinding {

  /*!
  	@property       tracks
  	@abstract       The tracks in a movie.
  	@discussion     The value of this property is an array of tracks the movie contains; the tracks are of type AVFragmentedMovieTrack.
  */
  var tracks: [AVFragmentedMovieTrack] { get }

  /*!
  	@method			initWithURL:options:
  	@abstract		Creates an AVMovie object from a movie header stored in a QuickTime movie file or ISO base media file.
  	@param			URL
  					An NSURL object that specifies a file containing a movie header.
  	@param			options
  					An NSDictionary object that contains keys for specifying options for the initialization of the AVMovie object. Currently no keys are defined.
  	@result			An AVMovie object
  	@discussion     By default, the defaultMediaDataStorage property will be nil and each associated AVMovieTrack's mediaDataStorage property will be nil.
                      If you want to create an AVMutableMovie from a file and then append sample buffers to any of its tracks, you must first set one of these properties 
                      to indicate where the sample data should be written.
  */
  init(url URL: NSURL, options: [String : AnyObject]?)

  /*!
  	@method			initWithData:options:
  	@abstract		Creates an AVMovie object from a movie header stored in an NSData object.
  	@param			data
  					An NSData object containing a movie header.
  	@param			options
  					An NSDictionary object that contains keys for specifying options for the initialization of the AVMovie object. Currently no keys are defined.
  	@result			An AVMovie object
  	@discussion     You can use this method to operate on movie headers that are not stored in files. In general you should avoid loading an entire movie file with its media data into an instance of NSData!
   
                      By default, the defaultMediaDataStorage property will be nil and each associated AVMovieTrack's mediaDataStorage property will be nil. If you want to create an AVMutableMovie from an NSData object and then append sample buffers to any of its tracks, you must first set one of these properties to indicate where the sample data should be written.
  */
  @available(OSX 10.11, *)
  init(data: NSData, options: [String : AnyObject]?)

  /*!
    @method		assetWithURL:
    @abstract		Returns an instance of AVAsset for inspection of a media resource.
    @param		URL
  				An instance of NSURL that references a media resource.
    @result		An instance of AVAsset.
    @discussion	Returns a newly allocated instance of a subclass of AVAsset initialized with the specified URL.
  */
  convenience init(url URL: NSURL)
  convenience init()

  /*!
    @property		associatedWithFragmentMinder
    @abstract		Indicates whether an AVAsset that supports fragment minding is currently associated with an AVAssetFragmentMinder.
    @discussion	AVAssets that support fragment minding post change notifications only while associated with an AVAssetFragmentMinder.
  */
  @available(OSX 10.11, *)
  var associatedWithFragmentMinder: Bool { get }
}
extension AVFragmentedMovie {

  /*!
    @method		trackWithTrackID:
    @abstract		Provides an instance of AVFragmentedMovieTrack that represents the track of the specified trackID.
    @param		trackID
  				The trackID of the requested AVFragmentedMovieTrack.
    @result		An instance of AVFragmentedMovieTrack; may be nil if no track of the specified trackID is available.
    @discussion	Becomes callable without blocking when the key @"tracks" has been loaded
  */
  func trackWithTrackID(trackID: CMPersistentTrackID) -> AVFragmentedMovieTrack?

  /*!
    @method		tracksWithMediaType:
    @abstract		Provides an array of AVFragmentedMovieTracks of the asset that present media of the specified media type.
    @param		mediaType
  				The media type according to which the receiver filters its AVFragmentedMovieTracks. (Media types are defined in AVMediaFormat.h)
    @result		An NSArray of AVFragmentedMovieTracks; may be empty if no tracks of the specified media type are available.
    @discussion	Becomes callable without blocking when the key @"tracks" has been loaded
  */
  func tracksWithMediaType(mediaType: String) -> [AVFragmentedMovieTrack]

  /*!
    @method		tracksWithMediaCharacteristic:
    @abstract		Provides an array of AVFragmentedMovieTracks of the asset that present media with the specified characteristic.
    @param		mediaCharacteristic
  				The media characteristic according to which the receiver filters its AVFragmentedMovieTracks. (Media characteristics are defined in AVMediaFormat.h)
    @result		An NSArray of AVFragmentedMovieTracks; may be empty if no tracks with the specified characteristic are available.
    @discussion	Becomes callable without blocking when the key @"tracks" has been loaded
  */
  func tracksWithMediaCharacteristic(mediaCharacteristic: String) -> [AVFragmentedMovieTrack]
}

/*!
	@class			AVFragmentedMovieMinder
	@abstract		A class that periodically checks whether additional movie fragments have been appended to fragmented movie files.
	@discussion		AVFragmentedMovieMinder is identical to AVFragmentedAssetMinder except that it's capable of minding only assets of class AVFragmentedMovie.
*/
@available(OSX 10.10, *)
class AVFragmentedMovieMinder : AVFragmentedAssetMinder {

  /*!
  	@method			initWithMovie:mindingInterval:
  	@abstract       Creates an AVFragmentedMovieMinder, adds the specified movie to it, and sets the mindingInterval to the specified value.
  	@param			movie
  					An instance of AVFragmentedMovie to add to the AVFragmentedMovieMinder
  	@param			mindingInterval
  					The initial minding interval of the AVFragmentedMovieMinder.
  	@result			A new instance of AVFragmentedMovieMinder.
  */
  init(movie: AVFragmentedMovie, mindingInterval: NSTimeInterval)

  /*!
  	@property       mindingInterval
  	@abstract       An NSTimeInterval indicating how often a check for additional movie fragments should be performed. The default interval is 10.0.
  */
  var mindingInterval: NSTimeInterval

  /*!
  	@property       movies
  	@abstract       An NSArray of the AVFragmentedMovie objects being minded.
  */
  var movies: [AVFragmentedMovie] { get }

  /*!
  	@method			addFragmentedMovie:
  	@abstract		Adds a fragmented movie to the array of movies being minded.
  	@param			movie
  					The fragmented movie to add to the minder.
  */
  func add(movie: AVFragmentedMovie)

  /*!
  	@method			removeFragmentedMovie:
  	@abstract		Removes a fragmented movie from the array of movies being minded.
  	@param			movie
  					The fragmented movie to remove from the minder.
  */
  func remove(movie: AVFragmentedMovie)

  /*!
  	@method			fragmentedAssetMinderWithAsset:mindingInterval:
  	@abstract       Creates an AVFragmentedAssetMinder, adds the specified asset to it, and sets the mindingInterval to the specified value.
  	@param			asset
  					An instance of AVFragmentedAsset to add to the AVFragmentedAssetMinder
  	@param			mindingInterval
  					The initial minding interval of the AVFragmentedAssetMinder.
  	@result			A new instance of AVFragmentedAssetMinder.
  */
  convenience init(asset: AVAsset, mindingInterval: NSTimeInterval)
  convenience init()
}
@available(OSX 10.10, *)
class AVMovieTrack : AVAssetTrack {

  /*!
  	@property       mediaPresentationTimeRange
  	@abstract       A CMTimeRange indicating the range of presentation times for the track's media.
  */
  @available(OSX 10.11, *)
  var mediaPresentationTimeRange: CMTimeRange { get }

  /*!
  	@property       mediaDecodeTimeRange
  	@abstract       A CMTimeRange indicating the range of decode times for the track's media.
  */
  @available(OSX 10.11, *)
  var mediaDecodeTimeRange: CMTimeRange { get }

  /*!
  	@property       alternateGroupID
  	@abstract       An integer indicating the track as a member of a particular alternate group.
  */
  @available(OSX 10.11, *)
  var alternateGroupID: Int { get }
}
extension AVMovieTrack {

  /*!
  	@property       mediaDataStorage
  	@abstract       The storage container for media data added to a track.
  	@discussion     The value of this property is an AVMediaDataStorage object that indicates the location at which media data inserted or appended to the track will be written.
  */
  @available(OSX 10.11, *)
  @NSCopying var mediaDataStorage: AVMediaDataStorage? { get }
}
@available(OSX 10.11, *)
class AVMutableMovieTrack : AVMovieTrack {

  /*!
  	@property       mediaDataStorage
  	@abstract       The storage container for media data added to a track.
  	@discussion     The value of this property is an AVMediaDataStorage object that indicates the location at which media data inserted or appended to the track will be written.
  */
  @NSCopying var mediaDataStorage: AVMediaDataStorage?

  /*!
  	@property       sampleReferenceBaseURL
  	@abstract       For file types that support writing sample references, such as QuickTime Movie files, specifies the base URL that sample references are relative to; may be nil.
  	@discussion     If the value of this property can be resolved as an absolute URL, the sample locations written to the file when appending sample references to this track will be relative to this URL. The URL must point to a location contained by any common parent directory of the locations that will be referenced. For example, setting the sampleReferenceBaseURL property to "file:///Users/johnappleseed/Movies/" and appending sample buffers that refer to "file:///Users/johnappleseed/Movies/data/movie1.mov" will cause the sample reference "data/movie1.mov" to be written to the movie file.
   
  		If the value of the property cannot be resolved as an absolute URL or if it points to a location that is not contained by any common parent directory of the locations that will be referenced, the location will be written unmodified.
   
  		The default value is nil, which means that the location will be written unmodified.
  */
  @NSCopying var sampleReferenceBaseURL: NSURL?

  /*!
  	@property       enabled
  	@abstract       A BOOL value indicating whether the track is enabled by default for presentation.
  */
  var isEnabled: Bool

  /*!
  	@property       alternateGroupID
  	@abstract       An integer indicating the track as a member of a particular alternate group.
  */
  var alternateGroupID: Int

  /*!
  	@property       modified
  	@abstract       Whether a track has been modified.
  	@discussion     The value of this property is a BOOL that indicates whether the AVMutableMovieTrack object has been modified since it was created, was last written, or had its modified state cleared via a call to setModified:NO.
  */
  var isModified: Bool

  /*!
  	@property       hasProtectedContent
  	@abstract       Whether a track contains protected content.
  	@discussion     The value of this property is a BOOL that indicates whether the track contains protected content.
   */
  var hasProtectedContent: Bool { get }

  /*!
  	@property       timescale
  	@abstract       For file types that contain a 'moov' atom, such as QuickTime Movie files, specifies the time scale of the track's media.
  	@discussion		The default media time scale is 0.
   
  					This property should be set on a new empty track before any edits are performed on the track.
  */
  var timescale: CMTimeScale
}
extension AVMutableMovieTrack {

  /*!
  	@property       languageCode
  	@abstract       The language associated with the track.
  	@discussion     The value of this property is an ISO 639-2/T language code indicating the language associated with the track; may be nil if no language is indicated.
  */
  var languageCode: String?

  /*!
  	@property       extendedLanguageTag
  	@abstract       The language tag associated with the track.
  	@discussion     The value of this property is an IETF BCP 47 (RFC 4646) language identifier indicating the language tag associated with the track; may be nil if no language tag is indicated.
  */
  var extendedLanguageTag: String?
}
extension AVMutableMovieTrack {

  /*!
  	@property       naturalSize
  	@abstract       A CGSize indicating the dimensions at which the visual media data of the track should be displayed.
  */
  var naturalSize: CGSize

  /*!
  	@property       preferredTransform
  	@abstract       A CGAffineTransform indicating the transform specified in the track's storage container as the preferred transformation of the visual media data for display purposes; the value is often but not always CGAffineTransformIdentity.
  */
  var preferredTransform: CGAffineTransform

  /*!
  	@property       layer
  	@abstract       The layer level of the visual media data of the track.
  */
  var layer: Int

  /*!
  	@property       cleanApertureDimensions
  	@abstract       A CGSize indicating the clean aperture dimensions of the track.
  */
  var cleanApertureDimensions: CGSize

  /*!
  	@property       productionApertureDimensions
  	@abstract       A CGSize indicating the production aperture dimensions of the track.
  */
  var productionApertureDimensions: CGSize

  /*!
  	@property       encodedPixelsDimensions
  	@abstract       A CGSize indicating the dimensions encoded pixels dimensions of the track.
  */
  var encodedPixelsDimensions: CGSize
}
extension AVMutableMovieTrack {

  /*!
  	@property       preferredVolume
  	@abstract       The preferred volume of the audible media data of the track; often but not always 1.0.
  */
  var preferredVolume: Float
}
extension AVMutableMovieTrack {

  /*!
  	@property       preferredMediaChunkSize
  	@abstract       For file types that support media chunk sizes, the maximum size (in bytes) to be used for each chunk of sample data written to the file.
  	@discussion		The total size of the samples in a chunk will be no larger than this preferred chunk size, or the size of a single sample if the sample is larger than this preferred chunk size.
   
  					The default media chunk size is 1024 * 1024 bytes. It is an error to set a negative chunk size.
  */
  var preferredMediaChunkSize: Int

  /*!
  	@property		preferredMediaChunkDuration
  	@abstract		For file types that support media chunk durations, the maximum duration to be used for each chunk of sample data written to the file.
   
  	@discussion		The total duration of the samples in a chunk will be no greater than this preferred chunk duration, or the duration of a single sample if the sample's duration is greater than this preferred chunk duration.
   
  					The default media chunk duration is 1.0 second. It is an error to set a chunk duration that is negative or non-numeric.
   */
  var preferredMediaChunkDuration: CMTime

  /*!
  	@property		preferredMediaChunkAlignment
  	@abstract		For file types that support media chunk alignment, the boundary for media chunk alignment (in bytes).
   
  	@discussion		The default value is 0, which means that no padding should be used to achieve chunk alignment. It is an error to set a negative value for chunk alignment.
  */
  var preferredMediaChunkAlignment: Int
}
extension AVMutableMovieTrack {

  /*!
  	@method			insertTimeRange:ofTrack:atTime:copySampleData:error:
  	@abstract		Inserts a portion of an AVAssetTrack object into the target movie.
  	@param			timeRange
  					The time range from the track from which media is to be inserted.
  	@param			track
  					An AVAssetTrack object indicating the source of the inserted media. Only AVAssetTracks of AVURLAssets and AVCompositions are supported.
  					Must not be nil.
  	@param			startTime
  					The time in the target track at which the media is to be inserted.
  	@param			copySampleData
                      A BOOL value that indicates whether sample data is to be copied form the source to the destination during edits.
  					If YES, the sample data is written to the file specified by the track property mediaDataStorage if non-nil,
  					or else by the movie property defaultMediaDataStorage if non-nil; if both are nil, the method will fail and return NO.
  					If NO, sample data will not be written and sample references to the samples in their original container will be added
  					as necessary. Note that in this case, this method will fail if the original samples are fragmented.
  	@param			outError
  					If the insertion fails, describes the nature of the failure.
  	@result			A BOOL value that indicates the success of the insertion.
  
  */
  func insertTimeRange(timeRange: CMTimeRange, of track: AVAssetTrack, at startTime: CMTime, copySampleData: Bool) throws

  /*!
  	@method			insertEmptyTimeRange:
  	@abstract		Adds an empty time range to the target track.
  	@param			timeRange
  					The time range to be made empty. Note that you cannot add empty time ranges to the end of a track.
  */
  func insertEmptyTimeRange(timeRange: CMTimeRange)

  /*!
  	@method			removeTimeRange:
  	@abstract		Removes a specified time range from a track.
  	@param			timeRange
  					The time range to be removed.
  */
  func removeTimeRange(timeRange: CMTimeRange)

  /*!
  	@method			scaleTimeRange:toDuration:
  	@abstract		Changes the duration of a time range of a track.
  	@param			timeRange
  					The time range to be scaled.
  	@param			duration
  					The new duration of the time range.
  */
  func scaleTimeRange(timeRange: CMTimeRange, toDuration duration: CMTime)
}
extension AVMutableMovieTrack {

  /*!
  	@property       metadata
  	@abstract       A collection of metadata stored by the track.
  	@discussion     The value of this property is an array of AVMetadataItem objects representing the collection of metadata stored by the track.
  */
  var metadata: [AVMetadataItem]
}
extension AVMutableMovieTrack {

  /*!
  	@method			addTrackAssociationToTrack:type:
  	@abstract		Establishes a track association of a specific type between two tracks.
  	@param			movieTrack
  					An AVMovieTrack object that is to be associated with the receiver.
  	@param			trackAssociationType
  					The type of track association to add between the receiver and the specified movieTrack (for instance, AVTrackAssociationTypeChapterList).
  */
  func addTrackAssociationTo(movieTrack: AVMovieTrack, type trackAssociationType: String)

  /*!
  	@method			removeTrackAssociationToTrack:type:
  	@abstract		Removes a track association of a specific type between two tracks.
  	@param			movieTrack
  					An AVMovieTrack object that is associated with the receiver.
  	@param			trackAssociationType
  					The type of track association to remove between the receiver and the specified movieTrack (for instance, AVTrackAssociationTypeChapterList).
  */
  func removeTrackAssociationTo(movieTrack: AVMovieTrack, type trackAssociationType: String)
}

/*!
 @constant       AVFragmentedMovieTrackTimeRangeDidChangeNotification
 @abstract       Posted when the timeRange of an AVFragmentedMovieTrack changes while the associated instance of AVFragmentedMovie is being minded by an AVFragmentedMovieMinder, but only for changes that occur after the status of the value of @"timeRange" has reached AVKeyValueStatusLoaded.
*/
@available(OSX 10.10, *)
let AVFragmentedMovieTrackTimeRangeDidChangeNotification: String

/*!
 @constant       AVFragmentedMovieTrackSegmentsDidChangeNotification
 @abstract       Posted when the array of segments of an AVFragmentedMovieTrack changes while the associated instance of AVFragmentedMovie is being minded by an AVFragmentedMovieMinder, but only for changes that occur after the status of the value of @"segments" has reached AVKeyValueStatusLoaded.
*/
@available(OSX 10.10, *)
let AVFragmentedMovieTrackSegmentsDidChangeNotification: String

/*!
 @constant       AVFragmentedMovieTrackTotalSampleDataLengthDidChangeNotification
 @discussion     This notification name has been deprecated. Use either AVFragmentedMovieTrackTimeRangeDidChangeNotification or AVFragmentedMovieTrackSegmentsDidChangeNotification instead; in either case, you can assume that timing changes to fragmented tracks result in changes to the total length of the sample data used by the track.
*/
@available(OSX, introduced=10.10, deprecated=10.11, message="Upon receipt of either AVFragmentedMovieTrackTimeRangeDidChangeNotification or AVFragmentedMovieTrackSegmentsDidChangeNotification, you can assume that the sender's totalSampleDataLength has changed.")
let AVFragmentedMovieTrackTotalSampleDataLengthDidChangeNotification: String
@available(OSX 10.10, *)
class AVFragmentedMovieTrack : AVMovieTrack {
}
@available(OSX 10.9, *)
let AVOutputSettingsPreset640x480: String
@available(OSX 10.9, *)
let AVOutputSettingsPreset960x540: String
@available(OSX 10.9, *)
let AVOutputSettingsPreset1280x720: String
@available(OSX 10.9, *)
let AVOutputSettingsPreset1920x1080: String
@available(OSX 10.10, *)
let AVOutputSettingsPreset3840x2160: String

/*!
	@class AVOutputSettingsAssistant
	@abstract
		A class, each instance of which specifies a set of parameters for configuring objects that use output settings dictionaries, for example AVAssetWriter & AVAssetWriterInput, so that the resulting media file conforms to some specific criteria
	@discussion
		Instances of AVOutputSettingsAssistant are typically created using a string constant representing a specific preset configuration, such as AVOutputSettingsPreset1280x720.  Once you have an instance, its properties can be used as a guide for creating and configuring an AVAssetWriter object and one or more AVAssetWriterInput objects.  If all the suggested properties are respected, the resulting media file will conform to the criteria implied by the preset.  Alternatively, the properties of an instance can be used as a "base" configuration which can be customized to suit your individual needs.
 
		The recommendations made by an instance get better as you tell it more about the format of your source data.  For example, if you set the sourceVideoFormat property, the recommendation made by the videoSettings property will ensure that your video frames are not scaled up from a smaller size.
 */
@available(OSX 10.9, *)
class AVOutputSettingsAssistant : NSObject {

  /*!
  	@method availableOutputSettingsPresets
  	@abstract
  		Returns the list of presets that can be used to create an instance of AVOutputSettingsAssistant
  	@result
  		An NSArray of NSString objects, each of which is a preset identifier
  	@discussion
  		Each preset in the returned list can be passed in to +outputSettingsAssistantWithPreset: to create a new instance of AVOutputSettingsAssistant.
   
  		On iOS, the returned array may be different between different device models.
   */
  @available(OSX 10.10, *)
  class func availableOutputSettingsPresets() -> [String]

  /*!
  	@method outputSettingsAssistantWithPreset:
  	@abstract
  		Returns an instance of AVOutputSettingsAssistant corresponding to the given preset
  	@param presetIdentifier
  		The string identifier, for example AVOutputSettingsPreset1280x720, for the desired preset
  	@result
  		An instance of AVOutputSettingsAssistant with properties corresponding to the given preset, or nil if there is no such available preset.
  	@discussion
  		The properties of the returned object can be used as a guide for creating and configuring an AVAssetWriter object and one or more AVAssetWriterInput objects.  If all the suggested properties are respected in creating the AVAssetWriter, the resulting media file will conform to the criteria implied by the preset.
   
  		Use +availableOutputSettingsPresets to get a list of presets identifiers that can be used with this method.
   */
  convenience init?(preset presetIdentifier: String)

  /*!
  	@property audioSettings
  	@abstract
  		A dictionary of key/value pairs, as specified in AVAudioSettings.h, to be used when e.g. creating an instance of AVAssetWriterInput
  	@discussion
  		The value of this property may change as a result of setting a new value for the sourceAudioFormat property.
   */
  var audioSettings: [String : AnyObject]? { get }

  /*!
  	@property videoSettings
  	@abstract
  		A dictionary of key/value pairs, as specified in AVVideoSettings.h, to be used when e.g. creating an instance of AVAssetWriterInput
  	@discussion
  		The value of this property may change as a result of setting a new value for the sourceVideoFormat property.
   */
  var videoSettings: [String : AnyObject]? { get }

  /*!
  	@property outputFileType
  	@abstract
  		A UTI indicating the type of file to be written, to be used when e.g. creating an instance of AVAssetWriter
  	@discussion
  		Use UTTypeCopyPreferredTagWithClass / kUTTagClassFilenameExtension to get a suitable file extension for a given file type.
   */
  var outputFileType: String { get }
}
extension AVOutputSettingsAssistant {

  /*!
  	@property sourceAudioFormat
  	@abstract
  		A CMAudioFormatDescription object describing the format of you audio data
  	@discussion
  		Setting this property will allow the receiver to make a more informed recommendation for the audio settings that should be used.  After setting this property, you should re-query the audioSettings property to get the new recommendation.  The default value is NULL, which means that the receiver does not know anything about the format of your audio data.
  
  		If you set a non-NULL value for this property, and are using the receiver to initialize an AVAssetWriterInput, the same format description should be used to initialize the AVAssetWriterInput, along with the dictionary from the audioSettings property.
   */
  var sourceAudioFormat: CMAudioFormatDescription?

  /*!
  	@property sourceVideoFormat
  	@abstract
  		A CMVideoFormatDescription object describing the format of your video data
  	@discussion
  		Setting this property will allow the receiver to make a more informed recommendation for the video settings that should be used.  After setting this property, you should re-query the videoSettings property to get the new recommendation.  The default value is NULL, which means that the receiver does not know anything about the format of your video data.
  
  		If you set a non-NULL value for this property, and are using the receiver to initialize an AVAssetWriterInput, the same format description should be used to initialize the AVAssetWriterInput, along with the dictionary from the videoSettings property.
   */
  var sourceVideoFormat: CMVideoFormatDescription?

  /*!
  	@property sourceVideoAverageFrameDuration
  	@abstract
  		A CMTime describing the average frame duration (reciprocal of average frame rate) of your video data
  	@discussion
  		Setting this property will allow the receiver to make a more informed recommendation for the video settings that should be used.  After setting this property, you should re-query the videoSettings property to get the new recommendation.
   
  		The default value is 1/30, which means that the receiver is assuming that your source video has an average frame rate of 30fps.
   
  		It is an error to set this property to a value that is not positive or not numeric.  See CMTIME_IS_NUMERIC.
   */
  var sourceVideoAverageFrameDuration: CMTime

  /*!
  	@property sourceVideoMinFrameDuration
  	@abstract
  		A CMTime describing the minimum frame duration (reciprocal of the maximum frame rate) of your video data
  	@discussion
  		Setting this property will allow the receiver to make a more informed recommendation for the video settings that should be used.  After setting this property, you should re-query the videoSettings property to get the new recommendation.
   
  		If your source of video data is an instance of AVAssetReaderOutput, you can discover the minimum frame duration of your source asset using the AVAssetTrack.minFrameDuration property.
   
  		The default value is 1/30, which means that the receiver is assuming that your source video has a maximum frame rate of 30fps.
   
  		It is an error to set this property to a value that is not positive or not numeric.  See CMTIME_IS_NUMERIC.
   */
  @available(OSX 10.10, *)
  var sourceVideoMinFrameDuration: CMTime
}

/*!
 @enum AVPlayerStatus
 @abstract
	These constants are returned by the AVPlayer status property to indicate whether it can successfully play items.
 
 @constant	 AVPlayerStatusUnknown
	Indicates that the status of the player is not yet known because it has not tried to load new media resources for
	playback.
 @constant	 AVPlayerStatusReadyToPlay
	Indicates that the player is ready to play AVPlayerItem instances.
 @constant	 AVPlayerStatusFailed
	Indicates that the player can no longer play AVPlayerItem instances because of an error. The error is described by
	the value of the player's error property.
 */
enum AVPlayerStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case ReadyToPlay
  case Failed
}
@available(OSX 10.7, *)
class AVPlayer : NSObject {

  /*!
  	@method			initWithURL:
  	@abstract		Initializes an AVPlayer that plays a single audiovisual resource referenced by URL.
  	@param			URL
  	@result			An instance of AVPlayer
  	@discussion		Implicitly creates an AVPlayerItem. Clients can obtain the AVPlayerItem as it becomes the player's currentItem.
  */
  init(url URL: NSURL)

  /*!
  	@method			initWithPlayerItem:
  	@abstract		Create an AVPlayer that plays a single audiovisual item.
  	@param			item
  	@result			An instance of AVPlayer
  	@discussion		Useful in order to play items for which an AVAsset has previously been created. See -[AVPlayerItem initWithAsset:].
  */
  init(playerItem item: AVPlayerItem)

  /*!
   @property status
   @abstract
  	The ability of the receiver to be used for playback.
   
   @discussion
  	The value of this property is an AVPlayerStatus that indicates whether the receiver can be used for playback. When
  	the value of this property is AVPlayerStatusFailed, the receiver can no longer be used for playback and a new
  	instance needs to be created in its place. When this happens, clients can check the value of the error property to
  	determine the nature of the failure. This property is key value observable.
   */
  var status: AVPlayerStatus { get }

  /*!
   @property error
   @abstract
  	If the receiver's status is AVPlayerStatusFailed, this describes the error that caused the failure.
   
   @discussion
  	The value of this property is an NSError that describes what caused the receiver to no longer be able to play items.
  	If the receiver's status is not AVPlayerStatusFailed, the value of this property is nil.
   */
  var error: NSError? { get }
  init()
}
extension AVPlayer {
  var rate: Float

  /*!
  	@method			play
  	@abstract		Begins playback of the current item.
  	@discussion		Same as setting rate to 1.0.
  */
  func play()

  /*!
  	@method			pause
  	@abstract		Pauses playback.
  	@discussion		Same as setting rate to 0.0.
  */
  func pause()
}
extension AVPlayer {
  var currentItem: AVPlayerItem? { get }

  /*!
  	@method			replaceCurrentItemWithPlayerItem:
  	@abstract		Replaces the player's current item with the specified player item.
  	@param			item
  	  The AVPlayerItem that will become the player's current item.
  	@discussion
  	  In all releases of iOS 4, invoking replaceCurrentItemWithPlayerItem: with an AVPlayerItem that's already the receiver's currentItem results in an exception being raised. Starting with iOS 5, it's a no-op.
  */
  func replaceCurrentItemWith(item: AVPlayerItem?)
  var actionAtItemEnd: AVPlayerActionAtItemEnd
}

/*!
 @enum AVPlayerActionAtItemEnd
 @abstract
	These constants are the allowable values of AVPlayer's actionAtItemEnd property.
 
 @constant	 AVPlayerActionAtItemEndAdvance
	Indicates that when an AVPlayerItem reaches its end time the player will automatically advance to the next item in its queue.
	This value is supported only for players of class AVQueuePlayer. An AVPlayer that's not an AVQueuePlayer will raise an NSInvalidArgumentException if an attempt is made to set its actionAtItemEnd to AVPlayerActionAtItemEndAdvance.
 @constant	 AVPlayerActionAtItemEndPause
	Indicates that when an AVPlayerItem reaches its end time the player will automatically pause (which is to say, the player's
	rate will automatically be set to 0).
 @constant	 AVPlayerActionAtItemEndNone
	Indicates that when an AVPlayerItem reaches its end time the player will take no action (which is to say, the player's rate
	will not change, its currentItem will not change, and its currentTime will continue to be incremented or decremented as time
	elapses, according to its rate). After this, if the player's actionAtItemEnd is set to a value other than AVPlayerActionAtItemEndNone,
	the player will immediately take the action appropriate to that value.
*/
enum AVPlayerActionAtItemEnd : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Advance
  case Pause
  case None
}
extension AVPlayer {

  /*!
   @method			currentTime
   @abstract			Returns the current time of the current item.
   @result			A CMTime
   @discussion		Returns the current time of the current item. Not key-value observable; use -addPeriodicTimeObserverForInterval:queue:usingBlock: instead.
   */
  func currentTime() -> CMTime

  /*!
   @method			seekToDate:
   @abstract			Moves the playback cursor.
   @param				date
   @discussion		Use this method to seek to a specified time for the current player item.
  					The time seeked to may differ from the specified time for efficiency. For sample accurate seeking see seekToTime:toleranceBefore:toleranceAfter:.
   */
  func seekTo(date: NSDate)

  /*!
   @method			seekToDate:completionHandler:
   @abstract			Moves the playback cursor and invokes the specified block when the seek operation has either been completed or been interrupted.
   @param				date
   @param				completionHandler
   @discussion		Use this method to seek to a specified time for the current player item and to be notified when the seek operation is complete.
  					The completion handler for any prior seek request that is still in process will be invoked immediately with the finished parameter 
  					set to NO. If the new request completes without being interrupted by another seek request or by any other operation the specified 
  					completion handler will be invoked with the finished parameter set to YES. 
   */
  @available(OSX 10.7, *)
  func seekTo(date: NSDate, completionHandler: (Bool) -> Void)

  /*!
   @method			seekToTime:
   @abstract			Moves the playback cursor.
   @param				time
   @discussion		Use this method to seek to a specified time for the current player item.
  					The time seeked to may differ from the specified time for efficiency. For sample accurate seeking see seekToTime:toleranceBefore:toleranceAfter:.
   */
  func seekTo(time: CMTime)

  /*!
   @method			seekToTime:toleranceBefore:toleranceAfter:
   @abstract			Moves the playback cursor within a specified time bound.
   @param				time
   @param				toleranceBefore
   @param				toleranceAfter
   @discussion		Use this method to seek to a specified time for the current player item.
  					The time seeked to will be within the range [time-toleranceBefore, time+toleranceAfter] and may differ from the specified time for efficiency.
  					Pass kCMTimeZero for both toleranceBefore and toleranceAfter to request sample accurate seeking which may incur additional decoding delay. 
  					Messaging this method with beforeTolerance:kCMTimePositiveInfinity and afterTolerance:kCMTimePositiveInfinity is the same as messaging seekToTime: directly.
   */
  func seekTo(time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime)

  /*!
   @method			seekToTime:completionHandler:
   @abstract			Moves the playback cursor and invokes the specified block when the seek operation has either been completed or been interrupted.
   @param				time
   @param				completionHandler
   @discussion		Use this method to seek to a specified time for the current player item and to be notified when the seek operation is complete.
  					The completion handler for any prior seek request that is still in process will be invoked immediately with the finished parameter 
  					set to NO. If the new request completes without being interrupted by another seek request or by any other operation the specified 
  					completion handler will be invoked with the finished parameter set to YES. 
   */
  @available(OSX 10.7, *)
  func seekTo(time: CMTime, completionHandler: (Bool) -> Void)

  /*!
   @method			seekToTime:toleranceBefore:toleranceAfter:completionHandler:
   @abstract			Moves the playback cursor within a specified time bound and invokes the specified block when the seek operation has either been completed or been interrupted.
   @param				time
   @param				toleranceBefore
   @param				toleranceAfter
   @discussion		Use this method to seek to a specified time for the current player item and to be notified when the seek operation is complete.
  					The time seeked to will be within the range [time-toleranceBefore, time+toleranceAfter] and may differ from the specified time for efficiency.
  					Pass kCMTimeZero for both toleranceBefore and toleranceAfter to request sample accurate seeking which may incur additional decoding delay. 
  					Messaging this method with beforeTolerance:kCMTimePositiveInfinity and afterTolerance:kCMTimePositiveInfinity is the same as messaging seekToTime: directly.
  					The completion handler for any prior seek request that is still in process will be invoked immediately with the finished parameter set to NO. If the new 
  					request completes without being interrupted by another seek request or by any other operation the specified completion handler will be invoked with the 
  					finished parameter set to YES.
   */
  @available(OSX 10.7, *)
  func seekTo(time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime, completionHandler: (Bool) -> Void)
}
extension AVPlayer {

  /*!
  	@method			setRate:time:atHostTime:
  	@abstract		Simultaneously sets the playback rate and the relationship between the current item's current time and host time.
  	@discussion		You can use this function to synchronize playback with an external activity.
  	
  					The current item's timebase is adjusted so that its time will be (or was) itemTime when host time is (or was) hostClockTime.
  					In other words: if hostClockTime is in the past, the timebase's time will be interpolated as though the timebase has been running at the requested rate since that time.  If hostClockTime is in the future, the timebase will immediately start running at the requested rate from an earlier time so that it will reach the requested itemTime at the requested hostClockTime.  (Note that the item's time will not jump backwards, but instead will sit at itemTime until the timebase reaches that time.)
  
  					Note that advanced rate control is not currently supported for HTTP Live Streaming.
  	@param itemTime	The time to start playback from, specified precisely (i.e., with zero tolerance).
  					Pass kCMTimeInvalid to use the current item's current time.
  	@param hostClockTime
  					The host time at which to start playback.
  					If hostClockTime is specified, the player will not ensure that media data is loaded before the timebase starts moving.
  					If hostClockTime is kCMTimeInvalid, the rate and time will be set together, but without external synchronization;
  					a host time in the near future will be used, allowing some time for data media loading.
  */
  @available(OSX 10.8, *)
  func setRate(rate: Float, time itemTime: CMTime, atHostTime hostClockTime: CMTime)

  /*!
  	@method			prerollAtRate:completionHandler:
  	@abstract		Begins loading media data to prime the render pipelines for playback from the current time with the given rate.
  	@discussion		Once the completion handler is called with YES, the player's rate can be set with minimal latency.
  					The completion handler will be called with NO if the preroll is interrupted by a time change or incompatible rate change, or if preroll is not possible for some other reason.
  					Call this method only when the rate is currently zero and only after the AVPlayer's status has become AVPlayerStatusReadyToPlay.
  
  					Note that advanced rate control is not currently supported for HTTP Live Streaming.
  	@param rate		The intended rate for subsequent playback.
  	@param completionHandler
  					The block that will be called when the preroll is either completed or is interrupted.
  */
  @available(OSX 10.8, *)
  func prerollAtRate(rate: Float, completionHandler: ((Bool) -> Void)? = nil)

  /*!
  	@method			cancelPendingPrerolls
  	@abstract		Cancel any pending preroll requests and invoke the corresponding completion handlers if present.
  	@discussion		Use this method to cancel and release the completion handlers for pending prerolls. The finished parameter of the completion handlers will be set to NO.
  */
  @available(OSX 10.8, *)
  func cancelPendingPrerolls()
  @available(OSX 10.8, *)
  var masterClock: CMClock?
}
extension AVPlayer {

  /*!
  	@method			addPeriodicTimeObserverForInterval:queue:usingBlock:
  	@abstract		Requests invocation of a block during playback to report changing time.
  	@param			interval
  	  The interval of invocation of the block during normal playback, according to progress of the current time of the player.
  	@param			queue
  	  The serial queue onto which block should be enqueued.  If you pass NULL, the main queue (obtained using dispatch_get_main_queue()) will be used.  Passing a
  	  concurrent queue to this method will result in undefined behavior.
  	@param			block
  	  The block to be invoked periodically.
  	@result
  	  An object conforming to the NSObject protocol.  You must retain this returned value as long as you want the time observer to be invoked by the player.
  	  Pass this object to -removeTimeObserver: to cancel time observation.
  	@discussion		The block is invoked periodically at the interval specified, interpreted according to the timeline of the current item.
  					The block is also invoked whenever time jumps and whenever playback starts or stops.
  					If the interval corresponds to a very short interval in real time, the player may invoke the block less frequently
  					than requested. Even so, the player will invoke the block sufficiently often for the client to update indications
  					of the current time appropriately in its end-user interface.
  					Each call to -addPeriodicTimeObserverForInterval:queue:usingBlock: should be paired with a corresponding call to -removeTimeObserver:.
  					Releasing the observer object without a call to -removeTimeObserver: will result in undefined behavior.
  */
  func addPeriodicTimeObserverForInterval(interval: CMTime, queue: dispatch_queue_t?, usingBlock block: (CMTime) -> Void) -> AnyObject

  /*!
  	@method			addBoundaryTimeObserverForTimes:queue:usingBlock:
  	@abstract		Requests invocation of a block when specified times are traversed during normal playback.
  	@param			times
  	  The times for which the observer requests notification, supplied as an array of NSValues carrying CMTimes.
  	@param			queue
  	  The serial queue onto which block should be enqueued.  If you pass NULL, the main queue (obtained using dispatch_get_main_queue()) will be used.  Passing a
  	  concurrent queue to this method will result in undefined behavior.
  	@param			block
  	  The block to be invoked when any of the specified times is crossed during normal playback.
  	@result
  	  An object conforming to the NSObject protocol.  You must retain this returned value as long as you want the time observer to be invoked by the player.
  	  Pass this object to -removeTimeObserver: to cancel time observation.
  	@discussion		Each call to -addPeriodicTimeObserverForInterval:queue:usingBlock: should be paired with a corresponding call to -removeTimeObserver:.
  					Releasing the observer object without a call to -removeTimeObserver: will result in undefined behavior.
  */
  func addBoundaryTimeObserverForTimes(times: [NSValue], queue: dispatch_queue_t?, usingBlock block: () -> Void) -> AnyObject

  /*!
  	@method			removeTimeObserver:
  	@abstract		Cancels a previously registered time observer.
  	@param			observer
  	  An object returned by a previous call to -addPeriodicTimeObserverForInterval:queue:usingBlock: or -addBoundaryTimeObserverForTimes:queue:usingBlock:.
  	@discussion		Upon return, the caller is guaranteed that no new time observer blocks will begin executing.  Depending on the calling thread and the queue
  					used to add the time observer, an in-flight block may continue to execute after this method returns.  You can guarantee synchronous time 
  					observer removal by enqueuing the call to -removeTimeObserver: on that queue.  Alternatively, call dispatch_sync(queue, ^{}) after
  					-removeTimeObserver: to wait for any in-flight blocks to finish executing.
  					-removeTimeObserver: should be used to explicitly cancel each time observer added using -addPeriodicTimeObserverForInterval:queue:usingBlock:
  					and -addBoundaryTimeObserverForTimes:queue:usingBlock:.
  */
  func removeTimeObserver(observer: AnyObject)
}
extension AVPlayer {
  @available(OSX 10.7, *)
  var volume: Float
  @available(OSX 10.7, *)
  var isMuted: Bool
  var isClosedCaptionDisplayEnabled: Bool
}
extension AVPlayer {
  @available(OSX 10.9, *)
  var appliesMediaSelectionCriteriaAutomatically: Bool

  /*!
   @method     setMediaSelectionCriteria:forMediaCharacteristic:
   @abstract   Applies automatic selection criteria for media that has the specified media characteristic.
   @param      criteria
     An instance of AVPlayerMediaSelectionCriteria.
   @param      mediaCharacteristic
     The media characteristic for which the selection criteria are to be applied. Supported values include AVMediaCharacteristicAudible, AVMediaCharacteristicLegible, and AVMediaCharacteristicVisual.
   @discussion
  	Criteria will be applied to an AVPlayerItem when:
  		a) It is made ready to play
  		b) Specific media selections are made by -[AVPlayerItem selectMediaOption:inMediaSelectionGroup:] in a different group. The automatic choice in one group may be influenced by a specific selection in another group.
  		c) Underlying system preferences change, e.g. system language, accessibility captions.
  
     Specific selections made by -[AVPlayerItem selectMediaOption:inMediaSelectionGroup:] within any group will override automatic selection in that group until -[AVPlayerItem selectMediaOptionAutomaticallyInMediaSelectionGroup:] is received.
  */
  @available(OSX 10.9, *)
  func setMediaSelectionCriteria(criteria: AVPlayerMediaSelectionCriteria?, forMediaCharacteristic mediaCharacteristic: String)

  /*!
   @method     mediaSelectionCriteriaForMediaCharacteristic:
   @abstract   Returns the automatic selection criteria for media that has the specified media characteristic.
   @param      mediaCharacteristic
    The media characteristic for which the selection criteria is to be returned. Supported values include AVMediaCharacteristicAudible, AVMediaCharacteristicLegible, and AVMediaCharacteristicVisual.
  */
  @available(OSX 10.9, *)
  func mediaSelectionCriteriaForMediaCharacteristic(mediaCharacteristic: String) -> AVPlayerMediaSelectionCriteria?
}
extension AVPlayer {

  /*!
   @property audioOutputDeviceUniqueID
   @abstract
  	Specifies the unique ID of the Core Audio output device used to play audio.
   @discussion
  	By default, the value of this property is nil, indicating that the default audio output device is used. Otherwise the value of this property is an NSString containing the unique ID of the Core Audio output device to be used for audio output.
  
  	Core Audio's kAudioDevicePropertyDeviceUID is a suitable source of audio output device unique IDs.
  */
  @available(OSX 10.9, *)
  var audioOutputDeviceUniqueID: String?
}
extension AVPlayer {
  @available(OSX 10.11, *)
  var allowsExternalPlayback: Bool
  @available(OSX 10.11, *)
  var isExternalPlaybackActive: Bool { get }
}
@available(OSX 10.7, *)
class AVQueuePlayer : AVPlayer {

  /*!
      @method     initWithItems:
      @abstract   Initializes an instance of AVQueuePlayer by enqueueing the AVPlayerItems from the specified array.
      @param      items
        An NSArray of AVPlayerItems with which to populate the player's queue initially.
      @result
        An instance of AVQueuePlayer.
  */
  init(items: [AVPlayerItem])

  /*!
      @method     items
      @abstract   Provides an array of the currently enqueued items.
      @result     An NSArray containing the enqueued AVPlayerItems.
  */
  func items() -> [AVPlayerItem]

  /*!
      @method     advanceToNextItem
      @abstract   Ends playback of the current item and initiates playback of the next item in the player's queue.
      @discussion Removes the current item from the play queue.
  */
  func advanceToNextItem()

  /*!
      @method     canInsertItem:afterItem:
      @abstract   Tests whether an AVPlayerItem can be inserted into the player's queue.
      @param      item
        The AVPlayerItem to be tested.
      @param      afterItem
        The item that the item to be tested is to follow in the queue. Pass nil to test whether the item can be appended to the queue.
      @result
        An indication of whether the item can be inserted into the queue after the specified item.
      @discussion
        Note that adding the same AVPlayerItem to an AVQueuePlayer at more than one position in the queue is not supported.
  */
  func canInsertItem(item: AVPlayerItem, after afterItem: AVPlayerItem?) -> Bool

  /*!
      @method     insertItem:afterItem:
      @abstract   Places an AVPlayerItem after the specified item in the queue.
      @param      item
        The item to be inserted.
      @param      afterItem
        The item that the newly inserted item should follow in the queue. Pass nil to append the item to the queue.
  */
  func insertItem(item: AVPlayerItem, after afterItem: AVPlayerItem?)

  /*!
      @method     removeItem:
      @abstract   Removes an AVPlayerItem from the queue.
      @param      item
        The item to be removed.
      @discussion
        If the item to be removed is currently playing, has the same effect as -advanceToNextItem.
  */
  func removeItem(item: AVPlayerItem)

  /*!
      @method     removeAllItems
      @abstract   Removes all items from the queue.
      @discussion Stops playback by the target.
  */
  func removeAllItems()

  /*!
  	@method			initWithURL:
  	@abstract		Initializes an AVPlayer that plays a single audiovisual resource referenced by URL.
  	@param			URL
  	@result			An instance of AVPlayer
  	@discussion		Implicitly creates an AVPlayerItem. Clients can obtain the AVPlayerItem as it becomes the player's currentItem.
  */
  init(url URL: NSURL)

  /*!
  	@method			initWithPlayerItem:
  	@abstract		Create an AVPlayer that plays a single audiovisual item.
  	@param			item
  	@result			An instance of AVPlayer
  	@discussion		Useful in order to play items for which an AVAsset has previously been created. See -[AVPlayerItem initWithAsset:].
  */
  init(playerItem item: AVPlayerItem)
  init()
}
@available(OSX 10.7, *)
let AVPlayerItemTimeJumpedNotification: String
@available(OSX 10.7, *)
let AVPlayerItemDidPlayToEndTimeNotification: String
@available(OSX 10.7, *)
let AVPlayerItemFailedToPlayToEndTimeNotification: String
@available(OSX 10.9, *)
let AVPlayerItemPlaybackStalledNotification: String
@available(OSX 10.9, *)
let AVPlayerItemNewAccessLogEntryNotification: String
@available(OSX 10.9, *)
let AVPlayerItemNewErrorLogEntryNotification: String
@available(OSX 10.7, *)
let AVPlayerItemFailedToPlayToEndTimeErrorKey: String

/*!
 @enum AVPlayerItemStatus
 @abstract
	These constants are returned by the AVPlayerItem status property to indicate whether it can successfully be played.
 
 @constant	 AVPlayerItemStatusUnknown
	Indicates that the status of the player item is not yet known because it has not tried to load new media resources
	for playback.
 @constant	 AVPlayerItemStatusReadyToPlay
	Indicates that the player item is ready to be played.
 @constant	 AVPlayerItemStatusFailed
	Indicates that the player item can no longer be played because of an error. The error is described by the value of
	the player item's error property.
 */
enum AVPlayerItemStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case ReadyToPlay
  case Failed
}
@available(OSX 10.7, *)
class AVPlayerItem : NSObject, NSCopying {

  /*!
   @method		initWithURL:
   @abstract		Initializes an AVPlayerItem with an NSURL.
   @param			URL
   @result		An instance of AVPlayerItem
   @discussion	Equivalent to -initWithAsset:, passing [AVAsset assetWithURL:URL] as the value of asset.
   */
  convenience init(url URL: NSURL)

  /*!
   @method		initWithAsset:
   @abstract		Initializes an AVPlayerItem with an AVAsset.
   @param			asset
   @result		An instance of AVPlayerItem
   @discussion	Equivalent to -initWithAsset:automaticallyLoadedAssetKeys:, passing @[ @"duration" ] as the value of automaticallyLoadedAssetKeys.
   */
  convenience init(asset: AVAsset)

  /*!
   @method		initWithAsset:automaticallyLoadedAssetKeys:
   @abstract		Initializes an AVPlayerItem with an AVAsset.
   @param			asset
   				An instance of AVAsset.
   @param			automaticallyLoadedAssetKeys
   				An NSArray of NSStrings, each representing a property key defined by AVAsset. See AVAsset.h for property keys, e.g. duration.
   @result		An instance of AVPlayerItem
   @discussion	The value of each key in automaticallyLoadedAssetKeys will be automatically be loaded by the underlying AVAsset before the receiver achieves the status AVPlayerItemStatusReadyToPlay; i.e. when the item is ready to play, the value of -[[AVPlayerItem asset] statusOfValueForKey:error:] will be one of the terminal status values greater than AVKeyValueStatusLoading.
   */
  @available(OSX 10.9, *)
  init(asset: AVAsset, automaticallyLoadedAssetKeys: [String]?)

  /*!
   @property status
   @abstract
  	The ability of the receiver to be used for playback.
   
   @discussion
  	The value of this property is an AVPlayerItemStatus that indicates whether the receiver can be used for playback.
  	When the value of this property is AVPlayerItemStatusFailed, the receiver can no longer be used for playback and
  	a new instance needs to be created in its place. When this happens, clients can check the value of the error
  	property to determine the nature of the failure. This property is key value observable.
   */
  var status: AVPlayerItemStatus { get }

  /*!
   @property error
   @abstract
  	If the receiver's status is AVPlayerItemStatusFailed, this describes the error that caused the failure.
   
   @discussion
  	The value of this property is an NSError that describes what caused the receiver to no longer be able to be played.
  	If the receiver's status is not AVPlayerItemStatusFailed, the value of this property is nil.
   */
  var error: NSError? { get }
  @available(OSX 10.7, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
extension AVPlayerItem {

  /*!
   @property asset
   @abstract Accessor for underlying AVAsset.
   */
  var asset: AVAsset { get }

  /*!
   @property tracks
   @abstract Provides array of AVPlayerItem tracks. Observable (can change dynamically during playback).
  	
   @discussion
  	The value of this property will accord with the properties of the underlying media resource when the receiver becomes ready to play.
  	Before the underlying media resource has been sufficiently loaded, its value is an empty NSArray. Use key-value observation to obtain
  	a valid array of tracks as soon as it becomes available.
   */
  var tracks: [AVPlayerItemTrack] { get }

  /*!
   @property duration
   @abstract Indicates the duration of the item, not considering either its forwardPlaybackEndTime or reversePlaybackEndTime.
   
   @discussion
  	This property is observable. The duration of an item can change dynamically during playback.
  	
  	Unless you omit @"duration" from the array of asset keys you pass to +playerItemWithAsset:automaticallyLoadedAssetKeys: or
  	-initWithAsset:automaticallyLoadedAssetKeys:, the value of this property will accord with the properties of the underlying
  	AVAsset and the current state of playback once the receiver becomes ready to play.
  
  	Before the underlying duration has been loaded, the value of this property is kCMTimeIndefinite. Use key-value observation to
  	obtain a valid duration as soon as it becomes available. (Note that the value of duration may remain kCMTimeIndefinite,
  	e.g. for live streams.)
   */
  @available(OSX 10.7, *)
  var duration: CMTime { get }

  /*!
   @property presentationSize
   @abstract The size of the receiver as presented by the player.
   
   @discussion 
  	Indicates the size at which the visual portion of the item is presented by the player; can be scaled from this 
  	size to fit within the bounds of an AVPlayerLayer via its videoGravity property. Can be scaled arbitarily for presentation
  	via the frame property of an AVPlayerLayer.
  	
  	The value of this property will accord with the properties of the underlying media resource when the receiver becomes ready to play.
  	Before the underlying media resource is sufficiently loaded, its value is CGSizeZero. Use key-value observation to obtain a valid
  	presentationSize as soon as it becomes available. (Note that the value of presentationSize may remain CGSizeZero, e.g. for audio-only items.)
   */
  var presentationSize: CGSize { get }

  /*!
   @property timedMetadata
   @abstract Provides an NSArray of AVMetadataItems representing the timed metadata encountered most recently within the media as it plays. May be nil.
   @discussion
     Notifications of changes are available via key-value observation.
     As an optimization for playback, AVPlayerItem may omit the processing of timed metadata when no observer of this property is registered. Therefore, when no such observer is registered, the value of the timedMetadata property may remain nil regardless of the contents of the underlying media.
   */
  var timedMetadata: [AVMetadataItem]? { get }

  /*!
   @property automaticallyLoadedAssetKeys
   @abstract An array of property keys defined on AVAsset. The value of each key in the array is automatically loaded while the receiver is being made ready to play.
   @discussion
     The value of each key in automaticallyLoadedAssetKeys will be automatically be loaded by the underlying AVAsset before the receiver achieves the status AVPlayerItemStatusReadyToPlay; i.e. when the item is ready to play, the value of -[[AVPlayerItem asset] statusOfValueForKey:error:] will be AVKeyValueStatusLoaded. If loading of any of the values fails, the status of the AVPlayerItem will change instead to AVPlayerItemStatusFailed..
   */
  @available(OSX 10.9, *)
  var automaticallyLoadedAssetKeys: [String] { get }
}
extension AVPlayerItem {
  @available(OSX 10.8, *)
  var canPlayFastForward: Bool { get }
  @available(OSX 10.8, *)
  var canPlaySlowForward: Bool { get }
  @available(OSX 10.8, *)
  var canPlayReverse: Bool { get }
  @available(OSX 10.8, *)
  var canPlaySlowReverse: Bool { get }
  @available(OSX 10.8, *)
  var canPlayFastReverse: Bool { get }
  @available(OSX 10.8, *)
  var canStepForward: Bool { get }
  @available(OSX 10.8, *)
  var canStepBackward: Bool { get }
}
extension AVPlayerItem {

  /*!
   @method			currentTime
   @abstract			Returns the current time of the item.
   @result			A CMTime
   @discussion		Returns the current time of the item.
   */
  func currentTime() -> CMTime

  /*!
   @property forwardPlaybackEndTime
   @abstract
  	The end time for forward playback.
   
   @discussion
  	Specifies the time at which playback should end when the playback rate is positive (see AVPlayer's rate property).
  	The default value is kCMTimeInvalid, which indicates that no end time for forward playback is specified.
  	In this case, the effective end time for forward playback is the receiver's duration.
  	
  	When the end time is reached, the receiver will post AVPlayerItemDidPlayToEndTimeNotification and the AVPlayer will take
  	the action indicated by the value of its actionAtItemEnd property (see AVPlayerActionAtItemEnd in AVPlayer.h). 
  
  	The value of this property has no effect on playback when the rate is negative.
   */
  var forwardPlaybackEndTime: CMTime

  /*!
   @property reversePlaybackEndTime
   @abstract
  	The end time for reverse playback.
   
   @discussion
  	Specifies the time at which playback should end when the playback rate is negative (see AVPlayer's rate property).
  	The default value is kCMTimeInvalid, which indicates that no end time for reverse playback is specified.
  	In this case, the effective end time for reverse playback is kCMTimeZero.
  
  	When the end time is reached, the receiver will post AVPlayerItemDidPlayToEndTimeNotification and the AVPlayer will take
  	the action indicated by the value of its actionAtItemEnd property (see AVPlayerActionAtItemEnd in AVPlayer.h). 
  
  	The value of this property has no effect on playback when the rate is positive.
   */
  var reversePlaybackEndTime: CMTime

  /*!
   @property seekableTimeRanges
   @abstract This property provides a collection of time ranges that the player item can seek to. The ranges provided might be discontinous.
   @discussion Returns an NSArray of NSValues containing CMTimeRanges.
   */
  var seekableTimeRanges: [NSValue] { get }

  /*!
   @method			seekToTime:
   @abstract			Moves the playback cursor.
   @param				time
   @discussion		Use this method to seek to a specified time for the item.
  					The time seeked to may differ from the specified time for efficiency. For sample accurate seeking see seekToTime:toleranceBefore:toleranceAfter:.
   */
  func seekTo(time: CMTime)

  /*!
   @method			seekToTime:completionHandler:
   @abstract			Moves the playback cursor and invokes the specified block when the seek operation has either been completed or been interrupted.
   @param				time
   @param				completionHandler
   @discussion		Use this method to seek to a specified time for the item and to be notified when the seek operation is complete.
   					The completion handler for any prior seek request that is still in process will be invoked immediately with the finished parameter 
   					set to NO. If the new request completes without being interrupted by another seek request or by any other operation the specified 
   					completion handler will be invoked with the finished parameter set to YES. 
   */
  @available(OSX 10.7, *)
  func seekTo(time: CMTime, completionHandler: (Bool) -> Void)

  /*!
   @method			seekToTime:toleranceBefore:toleranceAfter:
   @abstract			Moves the playback cursor within a specified time bound.
   @param				time
   @param				toleranceBefore
   @param				toleranceAfter
   @discussion		Use this method to seek to a specified time for the item.
  					The time seeked to will be within the range [time-toleranceBefore, time+toleranceAfter] and may differ from the specified time for efficiency.
  					Pass kCMTimeZero for both toleranceBefore and toleranceAfter to request sample accurate seeking which may incur additional decoding delay. 
  					Messaging this method with beforeTolerance:kCMTimePositiveInfinity and afterTolerance:kCMTimePositiveInfinity is the same as messaging seekToTime: directly.
  					Seeking is constrained by the collection of seekable time ranges. If you seek to a time outside all of the seekable ranges the seek will result in a currentTime
  					within the seekable ranges.
   */
  func seekTo(time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime)

  /*!
   @method			seekToTime:toleranceBefore:toleranceAfter:completionHandler:
   @abstract			Moves the playback cursor within a specified time bound and invokes the specified block when the seek operation has either been completed or been interrupted.
   @param				time
   @param				toleranceBefore
   @param				toleranceAfter
   @param				completionHandler
   @discussion		Use this method to seek to a specified time for the item and to be notified when the seek operation is complete.
  					The time seeked to will be within the range [time-toleranceBefore, time+toleranceAfter] and may differ from the specified time for efficiency.
  					Pass kCMTimeZero for both toleranceBefore and toleranceAfter to request sample accurate seeking which may incur additional decoding delay. 
  					Messaging this method with beforeTolerance:kCMTimePositiveInfinity and afterTolerance:kCMTimePositiveInfinity is the same as messaging seekToTime: directly.
  					The completion handler for any prior seek request that is still in process will be invoked immediately with the finished parameter set to NO. If the new 
  					request completes without being interrupted by another seek request or by any other operation the specified completion handler will be invoked with the 
  					finished parameter set to YES.
   */
  @available(OSX 10.7, *)
  func seekTo(time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime, completionHandler: (Bool) -> Void)

  /*!
   @method			cancelPendingSeeks
   @abstract			Cancel any pending seek requests and invoke the corresponding completion handlers if present.
   @discussion		Use this method to cancel and release the completion handlers of pending seeks. The finished parameter of the completion handlers will
   					be set to NO.
   */
  @available(OSX 10.7, *)
  func cancelPendingSeeks()

  /*!
  	@method	currentDate
  	@abstract	If currentTime is mapped to a particular (real-time) date, return that date.
  	@result		Returns the date of current playback, or nil if playback is not mapped to any date.
  */
  func currentDate() -> NSDate?

  /*!
   @method		seekToDate
   @abstract		move playhead to a point corresponding to a particular date.
   @discussion
     For playback content that is associated with a range of dates, move the
     playhead to point within that range. Will fail if the supplied date is outside
     the range or if the content is not associated with a range of dates.
   @param			date	The new position for the playhead.
   @result		Returns true if the playhead was moved to the supplied date.
   */
  func seekTo(date: NSDate) -> Bool

  /*!
   @method		seekToDate:completionHandler:
   @abstract		move playhead to a point corresponding to a particular date, and invokes the specified block when the seek operation has either been completed or been interrupted.
   @discussion
     For playback content that is associated with a range of dates, move the
     playhead to point within that range and invokes the completion handler when the seek operation is complete. 
     Will fail if the supplied date is outside the range or if the content is not associated with a range of dates.  
     The completion handler for any prior seek request that is still in process will be invoked immediately with the finished parameter 
     set to NO. If the new request completes without being interrupted by another seek request or by any other operation, the specified 
     completion handler will be invoked with the finished parameter set to YES. 
   @param			date				The new position for the playhead.
   @param			completionHandler	The block to invoke when seek operation is complete
   @result		Returns true if the playhead was moved to the supplied date.
   */
  @available(OSX 10.9, *)
  func seekTo(date: NSDate, completionHandler: (Bool) -> Void) -> Bool

  /*!
   @method		stepByCount:
   @abstract		Moves player's current item's current time forward or backward by the specified number of steps.
   @param 		stepCount
     The number of steps by which to move. A positive number results in stepping forward, a negative number in stepping backward.
   @discussion
     The size of each step depends on the enabled AVPlayerItemTracks of the AVPlayerItem. 
   */
  func stepByCount(stepCount: Int)

  /*!
   @property		timebase
   @abstract		The item's timebase.
   @discussion 
     You can examine the timebase to discover the relationship between the item's time and the master clock used for drift synchronization.
     This timebase is read-only; you cannot set its time or rate to affect playback.  The value of this property may change during playback.
   */
  @available(OSX 10.8, *)
  var timebase: CMTimebase? { get }
}
extension AVPlayerItem {

  /*!
   @property videoComposition
   @abstract Indicates the video composition settings to be applied during playback.
   */
  @NSCopying var videoComposition: AVVideoComposition?

  /*!
   @property customVideoCompositor
   @abstract Indicates the custom video compositor instance.
   @discussion
   	This property is nil if there is no video compositor, or if the internal video compositor is in use. This reference can be used to provide
  	extra context to the custom video compositor instance if required.
   */
  @available(OSX 10.9, *)
  var customVideoCompositor: AVVideoCompositing? { get }

  /*!
   @property seekingWaitsForVideoCompositionRendering
   @abstract Indicates whether the item's timing follows the displayed video frame when seeking with a video composition
   @discussion
     By default, item timing is updated as quickly as possible, not waiting for media at new times to be rendered when seeking or 
     during normal playback. The latency that occurs, for example, between the completion of a seek operation and the display of a 
     video frame at a new time is negligible in most situations. However, when video compositions are in use, the processing of 
     video for any particular time may introduce noticeable latency. Therefore it may be desirable when a video composition is in 
     use for the item's timing be updated only after the video frame for a time has been displayed. This allows, for instance, an 
     AVSynchronizedLayer associated with an AVPlayerItem to remain in synchronization with the displayed video and for the 
     currentTime property to return the time of the displayed video.
  
     This property has no effect on items for which videoComposition is nil.
  
   */
  @available(OSX 10.9, *)
  var seekingWaitsForVideoCompositionRendering: Bool

  /*!
   @property textStyleRules
   @abstract An array of AVTextStyleRules representing text styling that can be applied to subtitles and other legible media.
   @discussion
  	The styling information contained in each AVTextStyleRule object in the array is used only when no equivalent styling information is provided by the media resource being played.  For example, if the text style rules specify Courier font but the media resource specifies Helvetica font, the text will be drawn using Helvetica font.
   
  	This property has an effect only for tracks with media subtype kCMSubtitleFormatType_WebVTT.
  */
  @available(OSX 10.9, *)
  var textStyleRules: [AVTextStyleRule]?
}
extension AVPlayerItem {

  /*!
   @property	audioTimePitchAlgorithm
   @abstract	Indicates the processing algorithm used to manage audio pitch at varying rates and for scaled audio edits.
   @discussion
     Constants for various time pitch algorithms, e.g. AVAudioTimePitchSpectral, are defined in AVAudioProcessingSettings.h.
     The default value on iOS is AVAudioTimePitchAlgorithmLowQualityZeroLatency and on OS X is AVAudioTimePitchAlgorithmSpectral.
  */
  @available(OSX 10.9, *)
  var audioTimePitchAlgorithm: String

  /*!
   @property audioMix
   @abstract Indicates the audio mix parameters to be applied during playback
   @discussion
     The inputParameters of the AVAudioMix must have trackIDs that correspond to a track of the receiver's asset. Otherwise they will be ignored. (See AVAudioMix.h for the declaration of AVAudioMixInputParameters and AVPlayerItem's asset property.)
   */
  @NSCopying var audioMix: AVAudioMix?
}
extension AVPlayerItem {

  /*!
   @property loadedTimeRanges
   @abstract This property provides a collection of time ranges for which the player has the media data readily available. The ranges provided might be discontinuous.
   @discussion Returns an NSArray of NSValues containing CMTimeRanges.
   */
  var loadedTimeRanges: [NSValue] { get }

  /*!
   @property playbackLikelyToKeepUp
   @abstract Indicates whether the item will likely play through without stalling.
   @discussion This property communicates a prediction of playability. Factors considered in this prediction
  	include I/O throughput and media decode performance. It is possible for playbackLikelyToKeepUp to
  	indicate NO while the property playbackBufferFull indicates YES. In this event the playback buffer has
  	reached capacity but there isn't the statistical data to support a prediction that playback is likely to 
  	keep up. It is left to the application programmer to decide to continue media playback or not. 
  	See playbackBufferFull below.
    */
  var isPlaybackLikelyToKeepUp: Bool { get }

  /*! 
   @property playbackBufferFull
   @abstract Indicates that the internal media buffer is full and that further I/O is suspended.
   @discussion This property reports that the data buffer used for playback has reach capacity.
  	Despite the playback buffer reaching capacity there might not exist sufficient statistical 
  	data to support a playbackLikelyToKeepUp prediction of YES. See playbackLikelyToKeepUp above.
   */
  var isPlaybackBufferFull: Bool { get }
  var isPlaybackBufferEmpty: Bool { get }

  /*!
   @property canUseNetworkResourcesForLiveStreamingWhilePaused
   @abstract Indicates whether the player item can use network resources to keep playback state up to date while paused
   @discussion
  	For live streaming content, the player item may need to use extra networking and power resources to keep playback state up to date when paused.  For example, when this property is set to YES, the seekableTimeRanges property will be periodically updated to reflect the current state of the live stream.
   
  	For clients linked on or after OS X 10.11 or iOS 9.0, the default value is NO.  To minimize power usage, avoid setting this property to YES when you do not need playback state to stay up to date while paused.
   */
  @available(OSX 10.11, *)
  var canUseNetworkResourcesForLiveStreamingWhilePaused: Bool
}
extension AVPlayerItem {

  /*!
   @property preferredPeakBitRate
   @abstract Indicates the desired limit of network bandwidth consumption for this item.
  
   @discussion
  	Set preferredPeakBitRate to non-zero to indicate that the player should attempt to limit item playback to that bit rate, expressed in bits per second.
  
  	If network bandwidth consumption cannot be lowered to meet the preferredPeakBitRate, it will be reduced as much as possible while continuing to play the item.
  */
  @available(OSX 10.10, *)
  var preferredPeakBitRate: Double
}
extension AVPlayerItem {

  /*!
   @method		selectMediaOption:inMediaSelectionGroup:
   @abstract
     Selects the media option described by the specified instance of AVMediaSelectionOption in the specified AVMediaSelectionGroup and deselects all other options in that group.
   @param 		mediaSelectionOption	The option to select.
   @param 		mediaSelectionGroup		The media selection group, obtained from the receiver's asset, that contains the specified option.
   @discussion
     If the specified media selection option isn't a member of the specified media selection group, no change in presentation state will result.
     If the value of the property allowsEmptySelection of the AVMediaSelectionGroup is YES, you can pass nil for mediaSelectionOption to deselect
     all media selection options in the group.
     Note that if multiple options within a group meet your criteria for selection according to locale or other considerations, and if these options are otherwise indistinguishable to you according to media characteristics that are meaningful for your application, content is typically authored so that the first available option that meets your criteria is appropriate for selection.
   */
  @available(OSX 10.8, *)
  func selectMediaOption(mediaSelectionOption: AVMediaSelectionOption?, `in` mediaSelectionGroup: AVMediaSelectionGroup)

  /*!
   @method		selectMediaOptionAutomaticallyInMediaSelectionGroup:
   @abstract
      Selects the media option in the specified media selection group that best matches the AVPlayer's current automatic selection criteria. Also allows automatic selection to be re-applied to the specified group subsequently if the relevant criteria are changed.
   @param 		mediaSelectionGroup		The media selection group, obtained from the receiver's asset, that contains the specified option.
   @discussion
     Has no effect unless the appliesMediaSelectionCriteriaAutomatically property of the associated AVPlayer is YES and unless automatic media selection has previously been overridden via -[AVPlayerItem selectMediaOption:inMediaSelectionGroup:].
   */
  @available(OSX 10.9, *)
  func selectMediaOptionAutomaticallyIn(mediaSelectionGroup: AVMediaSelectionGroup)

  /*!
   @method		selectedMediaOptionInMediaSelectionGroup:
   @abstract		Indicates the media selection option that's currently selected from the specified group. May be nil.
   @param 		mediaSelectionGroup		A media selection group obtained from the receiver's asset.
   @result		An instance of AVMediaSelectionOption that describes the currently selection option in the group.
   @discussion
     If the value of the property allowsEmptySelection of the AVMediaSelectionGroup is YES, the currently selected option in the group may be nil.
   */
  @available(OSX 10.8, *)
  func selectedMediaOptionIn(mediaSelectionGroup: AVMediaSelectionGroup) -> AVMediaSelectionOption?

  /*!
    @property		currentMediaSelection
    @abstract		Provides an instance of AVMediaSelection carrying current selections for each of the receiver's media selection groups.
  */
  @available(OSX 10.11, *)
  var currentMediaSelection: AVMediaSelection { get }
}
extension AVPlayerItem {

  /*!
   @method		accessLog
   @abstract		Returns an object that represents a snapshot of the network access log. Can be nil.
   @discussion	An AVPlayerItemAccessLog provides methods to retrieve the network access log in a format suitable for serialization.
   				If nil is returned then there is no logging information currently available for this AVPlayerItem.
  				An AVPlayerItemNewAccessLogEntryNotification will be posted when new logging information becomes available. However, accessLog might already return a non-nil value even before the first notification is posted.
   @result		An autoreleased AVPlayerItemAccessLog instance.
   */
  @available(OSX 10.7, *)
  func accessLog() -> AVPlayerItemAccessLog?

  /*!
   @method		errorLog
   @abstract		Returns an object that represents a snapshot of the error log. Can be nil.
   @discussion	An AVPlayerItemErrorLog provides methods to retrieve the error log in a format suitable for serialization.
   				If nil is returned then there is no logging information currently available for this AVPlayerItem.
   @result		An autoreleased AVPlayerItemErrorLog instance.
   */
  @available(OSX 10.7, *)
  func errorLog() -> AVPlayerItemErrorLog?
}
extension AVPlayerItem {

  /*!
   @method		addOutput:
   @abstract		Adds the specified instance of AVPlayerItemOutput to the receiver's collection of outputs.
   @discussion	
  	The class of AVPlayerItemOutput provided dictates the data structure that decoded samples are vended in. 
   
   	When an AVPlayerItemOutput is associated with an AVPlayerItem, samples are provided for a media type in accordance with the rules for mixing, composition, or exclusion that the AVPlayer honors among multiple enabled tracks of that media type for its own rendering purposes. For example, video media will be composed according to the instructions provided via AVPlayerItem.videoComposition, if present. Audio media will be mixed according to the parameters provided via AVPlayerItem.audioMix, if present.
   @param			output
  				An instance of AVPlayerItemOutput
   */
  @available(OSX 10.8, *)
  func addOutput(output: AVPlayerItemOutput)

  /*!
   @method		removeOutput:
   @abstract		Removes the specified instance of AVPlayerItemOutput from the receiver's collection of outputs.
   @param			output
  				An instance of AVPlayerItemOutput
   */
  @available(OSX 10.8, *)
  func removeOutput(output: AVPlayerItemOutput)

  /*!
   @property		outputs
   @abstract		The collection of associated outputs.
   */
  @available(OSX 10.8, *)
  var outputs: [AVPlayerItemOutput] { get }
}

/*!
 @class			AVPlayerItemAccessLog
 @abstract		An AVPlayerItemAccessLog provides methods to retrieve the access log in a format suitable for serialization.
 @discussion	An AVPlayerItemAccessLog acculumulates key metrics about network playback and presents them as a collection 
 				of AVPlayerItemAccessLogEvent instances. Each AVPlayerItemAccessLogEvent instance collates the data 
 				that relates to each uninterrupted period of playback.
*/
@available(OSX 10.7, *)
class AVPlayerItemAccessLog : NSObject, NSCopying {

  /*!
   @method		extendedLogData
   @abstract		Serializes an AVPlayerItemAccessLog in the Extended Log File Format.
   @discussion	This method converts the webserver access log into a textual format that conforms to the
  				W3C Extended Log File Format for web server log files.
  				For more information see: http://www.w3.org/pub/WWW/TR/WD-logfile.html
   @result		An autoreleased NSData instance.
   */
  func extendedLogData() -> NSData?

  /*!
   @property		extendedLogDataStringEncoding
   @abstract		Returns the NSStringEncoding for extendedLogData, see above.
   @discussion	A string suitable for console output is obtainable by: 
   				[[NSString alloc] initWithData:[myLog extendedLogData] encoding:[myLog extendedLogDataStringEncoding]]
   */
  var extendedLogDataStringEncoding: UInt { get }

  /*!
   @property		events
   @abstract		An ordered collection of AVPlayerItemAccessLogEvent instances.
   @discussion	An ordered collection of AVPlayerItemAccessLogEvent instances that represent the chronological
   				sequence of events contained in the access log.
   				This property is not observable.
   */
  var events: [AVPlayerItemAccessLogEvent] { get }
  init()
  @available(OSX 10.7, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 @class			AVPlayerItemErrorLog
 @abstract		An AVPlayerItemErrorLog provides methods to retrieve the error log in a format suitable for serialization.
 @discussion	An AVPlayerItemErrorLog provides data to identify if, and when, network resource playback failures occured.
*/
@available(OSX 10.7, *)
class AVPlayerItemErrorLog : NSObject, NSCopying {

  /*!
   @method		extendedLogData
   @abstract		Serializes an AVPlayerItemErrorLog in the Extended Log File Format.
   @discussion	This method converts the webserver error log into a textual format that conforms to the
  				W3C Extended Log File Format for web server log files.
  				For more information see: http://www.w3.org/pub/WWW/TR/WD-logfile.html
   @result		An autoreleased NSData instance.
   */
  func extendedLogData() -> NSData?

  /*!
   @property		extendedLogDataStringEncoding
   @abstract		Returns the NSStringEncoding for extendedLogData, see above.
   @discussion	A string suitable for console output is obtainable by: 
   				[[NSString alloc] initWithData:[myLog extendedLogData] encoding:[myLog extendedLogDataStringEncoding]]
   */
  var extendedLogDataStringEncoding: UInt { get }

  /*!
   @property		events
   @abstract		An ordered collection of AVPlayerItemErrorLogEvent instances.
   @discussion	An ordered collection of AVPlayerItemErrorLogEvent instances that represent the chronological
   				sequence of events contained in the error log.
   				This property is not observable.
   */
  var events: [AVPlayerItemErrorLogEvent] { get }
  init()
  @available(OSX 10.7, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 @class			AVPlayerItemAccessLogEvent
 @abstract		An AVPlayerItemAccessLogEvent represents a single log entry.
 @discussion	An AVPlayerItemAccessLogEvent provides named properties for accessing the data
				fields of each log event. None of the properties of this class are observable.
*/
@available(OSX 10.7, *)
class AVPlayerItemAccessLogEvent : NSObject, NSCopying {

  /*!
   @property		numberOfMediaRequests
   @abstract		A count of media read requests.
   @discussion	Value is negative if unknown. A count of media read requests from the server to this client. Corresponds to "sc-count".
  				For HTTP live Streaming, a count of media segments downloaded from the server to this client.
  				For progressive-style HTTP media downloads, a count of HTTP GET (byte-range) requests for the resource.
   				This property is not observable. 
   */
  @available(OSX 10.9, *)
  var numberOfMediaRequests: Int { get }

  /*!
   @property		playbackStartDate
   @abstract		The date/time at which playback began for this event. Can be nil.
   @discussion	If nil is returned the date is unknown. Corresponds to "date".
   				This property is not observable.
   */
  var playbackStartDate: NSDate? { get }

  /*!
   @property		URI
   @abstract		The URI of the playback item. Can be nil.
   @discussion	If nil is returned the URI is unknown. Corresponds to "uri".
   				This property is not observable.
   */
  var uri: String? { get }

  /*!
   @property		serverAddress
   @abstract		The IP address of the server that was the source of the last delivered media segment. Can be nil.
   @discussion	If nil is returned the address is unknown. Can be either an IPv4 or IPv6 address. Corresponds to "s-ip".
   				This property is not observable.
   */
  var serverAddress: String? { get }

  /*!
   @property		numberOfServerAddressChanges
   @abstract		A count of changes to the property serverAddress, see above, over the last uninterrupted period of playback.
   @discussion	Value is negative if unknown. Corresponds to "s-ip-changes".
   				This property is not observable.
   */
  var numberOfServerAddressChanges: Int { get }

  /*!
   @property		playbackSessionID
   @abstract		A GUID that identifies the playback session. This value is used in HTTP requests. Can be nil.
   @discussion	If nil is returned the GUID is unknown. Corresponds to "cs-guid".
   				This property is not observable.
   */
  var playbackSessionID: String? { get }

  /*!
   @property		playbackStartOffset
   @abstract		An offset into the playlist where the last uninterrupted period of playback began. Measured in seconds.
   @discussion	Value is negative if unknown. Corresponds to "c-start-time".
   				This property is not observable.
   */
  var playbackStartOffset: NSTimeInterval { get }

  /*!
   @property		segmentsDownloadedDuration
   @abstract		The accumulated duration of the media downloaded. Measured in seconds.
   @discussion	Value is negative if unknown. Corresponds to "c-duration-downloaded".
   				This property is not observable.
   */
  var segmentsDownloadedDuration: NSTimeInterval { get }

  /*!
   @property		durationWatched
   @abstract		The accumulated duration of the media played. Measured in seconds.
   @discussion	Value is negative if unknown. Corresponds to "c-duration-watched".
   				This property is not observable.
   */
  var durationWatched: NSTimeInterval { get }

  /*!
   @property		numberOfStalls
   @abstract		The total number of playback stalls encountered.
   @discussion	Value is negative if unknown. Corresponds to "c-stalls".
   				This property is not observable.
   */
  var numberOfStalls: Int { get }

  /*!
   @property		numberOfBytesTransferred
   @abstract		The accumulated number of bytes transferred.
   @discussion	Value is negative if unknown. Corresponds to "bytes".
   				This property is not observable.
   */
  var numberOfBytesTransferred: Int64 { get }

  /*!
   @property		transferDuration
   @abstract		The accumulated duration of active network transfer of bytes. Measured in seconds.
   @discussion	Value is negative if unknown. Corresponds to "c-transfer-duration".
  				This property is not observable.
   */
  @available(OSX 10.9, *)
  var transferDuration: NSTimeInterval { get }

  /*!
   @property		observedBitrate
   @abstract		The empirical throughput across all media downloaded. Measured in bits per second.
   @discussion	Value is negative if unknown. Corresponds to "c-observed-bitrate".
   				This property is not observable.
   */
  var observedBitrate: Double { get }

  /*!
   @property		indicatedBitrate
   @abstract		The throughput required to play the stream, as advertised by the server. Measured in bits per second.
   @discussion	Value is negative if unknown. Corresponds to "sc-indicated-bitrate".
   				This property is not observable.
   */
  var indicatedBitrate: Double { get }

  /*!
   @property		numberOfDroppedVideoFrames
   @abstract		The total number of dropped video frames.
   @discussion	Value is negative if unknown. Corresponds to "c-frames-dropped".
   				This property is not observable.
   */
  var numberOfDroppedVideoFrames: Int { get }

  /*!
   @property		startupTime
   @abstract		The accumulated duration until player item is ready to play. Measured in seconds.
   @discussion	Value is negative if unknown. Corresponds to "c-startup-time".
  				This property is not observable.
   */
  @available(OSX 10.9, *)
  var startupTime: NSTimeInterval { get }

  /*!
   @property		downloadOverdue
   @abstract		The total number of times the download of the segments took too long.
   @discussion	Value is negative if unknown. Corresponds to "c-overdue".
  				This property is not observable.
   */
  @available(OSX 10.9, *)
  var downloadOverdue: Int { get }

  /*!
   @property		observedMaxBitrate
   @abstract		Maximum observed segment download bit rate.
   @discussion	Value is negative if unknown. Corresponds to "c-observed-max-bitrate".
  				This property is not observable.
   */
  @available(OSX 10.9, *)
  var observedMaxBitrate: Double { get }

  /*!
   @property		observedMinBitrate
   @abstract		Minimum observed segment download bit rate.
   @discussion	Value is negative if unknown. Corresponds to "c-observed-min-bitrate".
  				This property is not observable.
   */
  @available(OSX 10.9, *)
  var observedMinBitrate: Double { get }

  /*!
   @property		observedBitrateStandardDeviation
   @abstract		Standard deviation of observed segment download bit rates.
   @discussion	Value is negative if unknown. Corresponds to "c-observed-bitrate-sd".
  				This property is not observable.
   */
  @available(OSX 10.9, *)
  var observedBitrateStandardDeviation: Double { get }

  /*!
   @property		playbackType
   @abstract		Playback type (LIVE, VOD, FILE).
   @discussion	If nil is returned the playback type is unknown. Corresponds to "s-playback-type".
  				This property is not observable.
   */
  @available(OSX 10.9, *)
  var playbackType: String? { get }

  /*!
   @property		mediaRequestsWWAN
   @abstract		Number of network read requests over WWAN.
   @discussion	Value is negative if unknown. Corresponds to "sc-wwan-count".
  				This property is not observable.
   */
  @available(OSX 10.9, *)
  var mediaRequestsWWAN: Int { get }

  /*!
   @property		switchBitrate
   @abstract		Bandwidth that caused us to switch (up or down).
   @discussion	Value is negative if unknown. Corresponds to "c-switch-bitrate".
  				This property is not observable.
   */
  @available(OSX 10.9, *)
  var switchBitrate: Double { get }
  init()
  @available(OSX 10.7, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 @class			AVPlayerItemErrorLogEvent
 @abstract		An AVPlayerItemErrorLogEvent represents a single log entry.
 @discussion	An AVPlayerItemErrorLogEvent provides named properties for accessing the data
				fields of each log event. None of the properties of this class are observable.
*/
@available(OSX 10.7, *)
class AVPlayerItemErrorLogEvent : NSObject, NSCopying {

  /*!
   @property		date
   @abstract		The date and time when the error occured. Can be nil.
   @discussion	If nil is returned the date is unknown. Corresponds to "date".
   				This property is not observable.
   */
  var date: NSDate? { get }

  /*!
   @property		URI
   @abstract		The URI of the playback item. Can be nil.
   @discussion	If nil is returned the URI is unknown. Corresponds to "uri".
   				This property is not observable.
   */
  var uri: String? { get }

  /*!
   @property		serverAddress
   @abstract		The IP address of the server that was the source of the error. Can be nil.
   @discussion	If nil is returned the address is unknown. Can be either an IPv4 or IPv6 address. Corresponds to "s-ip".
   				This property is not observable.
   */
  var serverAddress: String? { get }

  /*!
   @property		playbackSessionID
   @abstract		A GUID that identifies the playback session. This value is used in HTTP requests. Can be nil.
   @discussion	If nil is returned the GUID is unknown. Corresponds to "cs-guid".
   				This property is not observable.
   */
  var playbackSessionID: String? { get }

  /*!
   @property		errorStatusCode
   @abstract		A unique error code identifier.
   @discussion	Corresponds to "status".
   				This property is not observable.
   */
  var errorStatusCode: Int { get }

  /*!
   @property		errorDomain
   @abstract		The domain of the error.
   @discussion	Corresponds to "domain".
   				This property is not observable.
   */
  var errorDomain: String { get }

  /*!
   @property		errorComment
   @abstract		A description of the error encountered. Can be nil.
   @discussion	If nil is returned further information is not available. Corresponds to "comment".
   				This property is not observable.
   */
  var errorComment: String? { get }
  init()
  @available(OSX 10.7, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.8, *)
class AVPlayerItemOutput : NSObject {

  /*!
  	@method			itemTimeForHostTime:
  	@abstract		Convert a host time, expressed in seconds, to item time.
  	@discussion
  		Converts a host time value (for example a CADisplayLink timestamp, or the value returned by CACurrentMediaTime()) to the equivalent time on the item's timebase.
  		
  		Note: The Core Animation CADisplayLink timestamp property expresses the most recent, or previous, screen refresh time. You need to increment this timestamp by the CADisplayLink's duration property to find the next appropriate item time.
  	@param			hostTimeInSeconds
  					The timestamp value to convert to item time.
  	@result			The equivalent item time.
   */
  func itemTimeForHostTime(hostTimeInSeconds: CFTimeInterval) -> CMTime

  /*!
  	@method			itemTimeForMachAbsoluteTime:
  	@abstract		Convenience method to convert a Mach host time to item time.
  	@discussion
  		Converts Mach host time to the equivalent time on the item's timebase.
  		mach_absolute_time() returns time awake since boot in system-specific rational units that can be queried by calling mach_timebase_info().
  	@param			machAbsoluteTime
  					The Mach host time to convert to item time.
  	@result			The equivalent item time.
   */
  func itemTimeForMachAbsoluteTime(machAbsoluteTime: Int64) -> CMTime

  /*!
  	@method			itemTimeForCVTimeStamp:
  	@abstract		Convenience method to convert a CoreVideo timestamp to the equivalent time on the item's timebase.
  	@discussion
  		Note: A CVDisplayLink provides a parameter inOutputTimestamp that expresses a future screen refresh time. You can use this value directly to find the next appropriate item time.
  	@param			timestamp
  					The CoreVideo timestamp value to convert to item time.
  	@result			The equivalent item time.
   */
  @available(OSX 10.8, *)
  func itemTimeFor(timestamp: CVTimeStamp) -> CMTime

  /*!
  	@property		suppressesPlayerRendering
  	@abstract		Indicates whether the output, when added to an AVPlayerItem, will be used in addition to normal rendering of media data by the player or instead of normal rendering.
  	@discussion
  		The default value is NO, indicating that the output will be used in addition to normal rendering. If you want to render the media data provided by the output yourself instead of allowing it to be rendered as in normally would be by AVPlayer, set suppressesPlayerRendering to YES.
   
  		 Whenever any output is added to an AVPlayerItem that has suppressesPlayerRendering set to YES, the media data supplied to the output will not be rendered by AVPlayer. Other media data associated with the item but not provided to such an output is not affected. For example, if an output of class AVPlayerItemVideoOutput with a value of YES for suppressesPlayerRendering is added to an AVPlayerItem, video media for that item will not be rendered by the AVPlayer, while audio media, subtitle media, and other kinds of media, if present, will be rendered.
  */
  @available(OSX 10.8, *)
  var suppressesPlayerRendering: Bool
  init()
}
@available(OSX 10.8, *)
class AVPlayerItemVideoOutput : AVPlayerItemOutput {

  /*!
  	@method			initWithPixelBufferAttributes:
  	@abstract		Returns an instance of AVPlayerItemVideoOutput, initialized with the specified pixel buffer attributes, for video image output.
  	@param			pixelBufferAttributes
  					The client requirements for output CVPixelBuffers, expressed using the constants in <CoreVideo/CVPixelBuffer.h>.
  	@result			An instance of AVPlayerItemVideoOutput.
   */
  init(pixelBufferAttributes: [String : AnyObject]?)

  /*!
  	@method			hasNewPixelBufferForItemTime:
  	@abstract		Query if any new video output is available for an item time.
  	@discussion
  		This method returns YES if there is available video output, appropriate for display, at the specified item time not marked as acquired. If you require multiple objects to acquire video output from the same AVPlayerItem, you should instantiate more than one AVPlayerItemVideoOutput and add each via addOutput:. Each AVPlayerItemVideoOutput maintains a separate record of client acquisition.
  	@param			itemTime
  					The item time to query.
  	@result			A BOOL indicating if there is newer output.
   */
  func hasNewPixelBufferForItemTime(itemTime: CMTime) -> Bool

  /*!
  	@method			copyPixelBufferForItemTime:itemTimeForDisplay:
  	@abstract		Retrieves an image that is appropriate for display at the specified item time, and marks the image as acquired.
  	@discussion
  		The client is responsible for calling CVBufferRelease on the returned CVPixelBuffer when finished with it. 
  		
  		Typically you would call this method in response to a CVDisplayLink callback or CADisplayLink delegate invocation and if hasNewPixelBufferForItemTime: also returns YES. 
  		
  		The buffer reference retrieved from copyPixelBufferForItemTime:itemTimeForDisplay: may itself be NULL. A reference to a NULL pixel buffer communicates that nothing should be displayed for the supplied item time.
  	@param			itemTime
  					A CMTime that expresses a desired item time.
  	@param			itemTimeForDisplay
  					A CMTime pointer whose value will contain the true display deadline for the copied pixel buffer. Can be NULL.
   */
  func copyPixelBufferForItemTime(itemTime: CMTime, itemTimeForDisplay outItemTimeForDisplay: UnsafeMutablePointer<CMTime>) -> CVPixelBuffer?

  /*!
  	@method			setDelegate:queue:
  	@abstract		Sets the receiver's delegate and a dispatch queue on which the delegate will be called.
  	@param			delegate
  					An object conforming to AVPlayerItemOutputPullDelegate protocol.
  	@param			delegateQueue
  					A dispatch queue on which all delegate methods will be called.
   */
  func setDelegate(delegate: AVPlayerItemOutputPullDelegate?, queue delegateQueue: dispatch_queue_t?)

  /*!
  	@method			requestNotificationOfMediaDataChangeWithAdvanceInterval:
  	@abstract		Informs the receiver that the AVPlayerItemVideoOutput client is entering a quiescent state.
  	@param			interval
  					A wall clock time interval.
  	@discussion
  		Message this method before you suspend your use of a CVDisplayLink or CADisplayLink. The interval you provide will be used to message your delegate, in advance, that it should resume the display link. If the interval you provide is large, effectively requesting wakeup earlier than the AVPlayerItemVideoOutput is prepared to act, the delegate will be invoked as soon as possible. Do not use this method to force a delegate invocation for each sample.
   */
  func requestNotificationOfMediaDataChangeWithAdvanceInterval(interval: NSTimeInterval)

  /*!
  	@property		delegate
  	@abstract		The receiver's delegate.
   */
  unowned(unsafe) var delegate: @sil_unmanaged AVPlayerItemOutputPullDelegate? { get }

  /*!
  	@property		delegateQueue
  	@abstract		The dispatch queue where the delegate is messaged.
   */
  var delegateQueue: dispatch_queue_t? { get }
  convenience init()
}

/*!
	@protocol		AVPlayerItemOutputPullDelegate
	@abstract		Defines common delegate methods for objects participating in AVPlayerItemOutput pull sample output acquisition.
 */
protocol AVPlayerItemOutputPullDelegate : NSObjectProtocol {

  /*!
  	@method			outputMediaDataWillChange:
  	@abstract		A method invoked once, prior to a new sample, if the AVPlayerItemOutput sender was previously messaged requestNotificationOfMediaDataChangeWithAdvanceInterval:.
  	@discussion
  		This method is invoked once after the sender is messaged requestNotificationOfMediaDataChangeWithAdvanceInterval:.
    */
  @available(OSX 10.8, *)
  optional func outputMediaDataWillChange(sender: AVPlayerItemOutput)

  /*!
  	@method			outputSequenceWasFlushed:
  	@abstract		A method invoked when the output is commencing a new sequence.
  	@discussion
  		This method is invoked after any seeking and change in playback direction. If you are maintaining any queued future samples, copied previously, you may want to discard these after receiving this message.
    */
  @available(OSX 10.8, *)
  optional func outputSequenceWasFlushed(output: AVPlayerItemOutput)
}

/*!
	@class			AVPlayerItemLegibleOutput
	@abstract		A subclass of AVPlayerItemOutput that can vend media with a legible characteristic as NSAttributedStrings.
	@discussion
		An instance of AVPlayerItemLegibleOutput is typically initialized using the -init method.
 */
@available(OSX 10.9, *)
class AVPlayerItemLegibleOutput : AVPlayerItemOutput {

  /*!
  	@method			setDelegate:queue:
  	@abstract		Sets the receiver's delegate and a dispatch queue on which the delegate will be called.
  	@param			delegate
  					An object conforming to AVPlayerItemLegibleOutputPushDelegate protocol.
  	@param			delegateQueue
  					A dispatch queue on which all delegate methods will be called.
  	@discussion
  		The delegate is held using a zeroing-weak reference, so it is safe to deallocate the delegate while the receiver still has a reference to it.
   */
  func setDelegate(delegate: AVPlayerItemLegibleOutputPushDelegate?, queue delegateQueue: dispatch_queue_t?)

  /*!
  	@property		delegate
  	@abstract		The receiver's delegate.
  	@discussion
  		The delegate is held using a zeroing-weak reference, so this property will have a value of nil after a delegate that was previously set has been deallocated.  This property is not key-value observable.
   */
  weak var delegate: @sil_weak AVPlayerItemLegibleOutputPushDelegate? { get }

  /*!
  	@property		delegateQueue
  	@abstract		The dispatch queue where the delegate is messaged.
  	@discussion
  		This property is not key-value observable.
   */
  var delegateQueue: dispatch_queue_t? { get }

  /*!
  	@property		advanceIntervalForDelegateInvocation
  	@abstract		Permits advance invocation of the associated delegate, if any.
  	@discussion
  		If it is possible, an AVPlayerItemLegibleOutput will message its delegate advanceIntervalForDelegateInvocation seconds earlier than otherwise. If the value you provide is large, effectively requesting provision of samples earlier than the AVPlayerItemLegibleOutput is prepared to act on them, the delegate will be invoked as soon as possible.
   */
  var advanceIntervalForDelegateInvocation: NSTimeInterval
  init()
}
extension AVPlayerItemLegibleOutput {

  /*!
  	@method			initWithMediaSubtypesForNativeRepresentation:
  	@abstract		Returns an instance of AVPlayerItemLegibleOutput with filtering enabled for AVPlayerItemLegibleOutputPushDelegate's legibleOutput:didOutputAttributedStrings:nativeSampleBuffers:forItemTime:.
  	@param			subtypes
  					NSArray of NSNumber FourCC codes, e.g. @[ [NSNumber numberWithUnsignedInt:'tx3g'] ]
  	@result			An instance of AVPlayerItemLegibleOutput.
  	@discussion
  		Add media subtype FourCC number objects to the subtypes array to elect to receive that type as a CMSampleBuffer instead of an NSAttributedString.  Initializing an AVPlayerItemLegibleOutput using the -init method is equivalent to calling -initWithMediaSubtypesForNativeRepresentation: with an empty array, which means that all legible data, regardless of media subtype, will be delivered using NSAttributedString in a common format.
   
  		If a media subtype for which there is no legible data in the current player item is included in the media subtypes array, no error will occur.  AVPlayerItemLegibleOutput will not vend closed caption data as CMSampleBuffers, so it is an error to include 'c608' in the media subtypes array.
   */
  init(mediaSubtypesForNativeRepresentation subtypes: [NSNumber])
}
extension AVPlayerItemLegibleOutput {

  /*!
   @property		textStylingResolution
   @abstract		A string identifier indicating the degree of text styling to be applied to attributed strings vended by the receiver
   @discussion
  	Valid values are AVPlayerItemLegibleOutputTextStylingResolutionDefault and AVPlayerItemLegibleOutputTextStylingResolutionSourceAndRulesOnly.  An NSInvalidArgumentException is raised if this property is set to any other value.  The default value is AVPlayerItemLegibleOutputTextStylingResolutionDefault, which indicates that attributed strings vended by the receiver will include the same level of styling information that would be used if AVFoundation were rendering the text via AVPlayerLayer.
   */
  var textStylingResolution: String
}

/*!
 @constant		AVPlayerItemLegibleOutputTextStylingResolutionDefault
 @abstract		Specify this level of text styling resolution to receive attributed strings from an AVPlayerItemLegibleOutput that include the same level of styling information that AVFoundation would use itself to render text within an AVPlayerLayer. The text styling will accommodate user-level Media Accessibility settings.
 */
@available(OSX 10.9, *)
let AVPlayerItemLegibleOutputTextStylingResolutionDefault: String

/*!
 @constant		AVPlayerItemLegibleOutputTextStylingResolutionSourceAndRulesOnly
 @abstract		Specify this level of text styling resolution to receive only the styling present in the source media and the styling provided via AVPlayerItem.textStyleRules.
 @discussion
	This level of resolution excludes styling provided by the user-level Media Accessibility settings. You would typically use it if you wish to override the styling specified in source media. If you do this, you are strongly encouraged to allow your custom styling in turn to be overriden by user preferences for text styling that are available as Media Accessibility settings.
 */
@available(OSX 10.9, *)
let AVPlayerItemLegibleOutputTextStylingResolutionSourceAndRulesOnly: String

/*!
	@protocol		AVPlayerItemLegibleOutputPushDelegate
	@abstract		Extends AVPlayerItemOutputPushDelegate to provide additional methods specific to attributed string output.
 */
protocol AVPlayerItemLegibleOutputPushDelegate : AVPlayerItemOutputPushDelegate {

  /*!
  	@method			legibleOutput:didOutputAttributedStrings:nativeSampleBuffers:forItemTime:
  	@abstract		A delegate callback that delivers new textual samples.
  	@param			output
  					The AVPlayerItemLegibleOutput source.
  	@param			strings
  					An NSArray of NSAttributedString, each containing both the run of text and descriptive markup.
  	@param			nativeSamples
  					An NSArray of CMSampleBuffer objects, for media subtypes included in the array passed in to -initWithMediaSubtypesForNativeRepresentation:
  	@param			itemTime
  					The item time at which the strings should be presented.
  	@discussion
  		For each media subtype in the array passed in to -initWithMediaSubtypesForNativeRepresentation:, the delegate will receive sample buffers carrying data in its native format via the nativeSamples parameter, if there is media data of that subtype in the media resource.  For all other media subtypes present in the media resource, the delegate will receive attributed strings in a common format via the strings parameter.  See <CoreMedia/CMTextMarkup.h> for the string attributes that are used in the attributed strings.
   */
  @available(OSX 10.9, *)
  optional func legibleOutput(output: AVPlayerItemLegibleOutput, didOutputAttributedStrings strings: [NSAttributedString], nativeSampleBuffers nativeSamples: [AnyObject], forItemTime itemTime: CMTime)
}

/*!
 @protocol		AVPlayerItemOutputPushDelegate
 @abstract		Defines common delegate methods for objects participating in AVPlayerItemOutput push sample output acquisition.
 */
protocol AVPlayerItemOutputPushDelegate : NSObjectProtocol {

  /*!
  	@method			outputSequenceWasFlushed:
  	@abstract		A method invoked when the output is commencing a new sequence of media data.
  	@discussion
  		This method is invoked after any seeking and change in playback direction. If you are maintaining any queued future media data, received previously, you may want to discard these after receiving this message.
   */
  @available(OSX 10.8, *)
  optional func outputSequenceWasFlushed(output: AVPlayerItemOutput)
}

/*!
	@class			AVPlayerItemMetadataOutput
	@abstract		A subclass of AVPlayerItemOutput that vends collections of metadata items carried in metadata tracks.
 
	@discussion
		Setting the value of suppressesPlayerRendering on an instance of AVPlayerItemMetadataOutput has no effect.
 */
@available(OSX 10.10, *)
class AVPlayerItemMetadataOutput : AVPlayerItemOutput {

  /*!
  	@method			initWithIdentifiers:
  	@abstract		Creates an instance of AVPlayerItemMetadataOutput.
  	@param			identifiers
  					A array of metadata identifiers indicating the metadata items that the output should provide.
  	@discussion
  		See AVMetadataIdentifiers.h for publicly defined metadata identifiers. Pass nil to receive all of the timed metadata from all enabled AVPlayerItemTracks that carry timed metadata.
   */
  init(identifiers: [String]?)

  /*!
  	@method			setDelegate:queue:
  	@abstract		Sets the receiver's delegate and a dispatch queue on which the delegate will be called.
  	@param			delegate
  					An object conforming to AVPlayerItemMetadataOutputPushDelegate protocol.
  	@param			delegateQueue
  					A dispatch queue on which all delegate methods will be called.
   */
  func setDelegate(delegate: AVPlayerItemMetadataOutputPushDelegate?, queue delegateQueue: dispatch_queue_t?)

  /*!
  	@property		delegate
  	@abstract		The receiver's delegate.
  	@discussion
  		The delegate is held using a zeroing-weak reference, so this property will have a value of nil after a delegate that was previously set has been deallocated.  This property is not key-value observable.
   */
  weak var delegate: @sil_weak AVPlayerItemMetadataOutputPushDelegate? { get }

  /*!
  	@property		delegateQueue
  	@abstract		The dispatch queue on which messages are sent to the delegate.
  	@discussion
  		This property is not key-value observable.
   */
  var delegateQueue: dispatch_queue_t? { get }

  /*!
  	@property		advanceIntervalForDelegateInvocation
  	@abstract		Permits advance invocation of the associated delegate, if any.
  	@discussion
  		If it is possible, an AVPlayerItemMetadataOutput will message its delegate advanceIntervalForDelegateInvocation seconds earlier than otherwise. If the value you provide is large, effectively requesting provision of samples earlier than the AVPlayerItemMetadataOutput is prepared to act on them, the delegate will be invoked as soon as possible.
   */
  var advanceIntervalForDelegateInvocation: NSTimeInterval
  convenience init()
}

/*!
	@protocol		AVPlayerItemMetadataOutputPushDelegate
	@abstract		Extends AVPlayerItemOutputPushDelegate to provide additional methods specific to metadata output.
 */
protocol AVPlayerItemMetadataOutputPushDelegate : AVPlayerItemOutputPushDelegate {

  /*!
  	@method			metadataOutput:didOutputTimedMetadataGroup:fromPlayerItemTrack:
  	@abstract		A delegate callback that delivers a new collection of metadata items.
  	@param			output
  					The AVPlayerItemMetadataOutput source.
  	@param			groups
  					An NSArray of AVTimedMetadataGroups that may contain metadata items with requested identifiers, according to the format descriptions associated with the underlying tracks.
  	@param			track
  					An instance of AVPlayerItemTrack that indicates the source of the metadata items in the group.
  	@discussion
  		Each group provided in a single invocation of this method will have timing that does not overlap with any other group in the array.
  		Note that for some timed metadata formats carried by HTTP live streaming, the timeRange of each group must be reported as kCMTimeIndefinite, because its duration will be unknown until the next metadata group in the stream arrives. In these cases, the groups parameter will always contain a single group.
  		Groups are typically packaged into arrays for delivery to your delegate according to the chunking or interleaving of the underlying metadata data.
  		Note that if the item carries multiple metadata tracks containing metadata with the same metadata identifiers, this method can be invoked for each one separately, each with reference to the associated AVPlayerItemTrack.
  		Note that the associated AVPlayerItemTrack parameter can be nil which implies that the metadata describes the asset as a whole, not just a single track of the asset.
   */
  @available(OSX 10.10, *)
  optional func metadataOutput(output: AVPlayerItemMetadataOutput, didOutputTimedMetadataGroups groups: [AVTimedMetadataGroup], from track: AVPlayerItemTrack)
}

/*!
 @enum		Authorization Request Status
 @abstract	Possible status values resulting from a call to requestContentAuthorizationAsynchronouslyWithTimeoutInterval:CompletionHandler:.
 @constant	AVContentAuthorizationUnknown		No call to request content authorization has completed yet.
 @constant	AVContentAuthorizationCompleted		The last completed call to request content authorization completed.
 @constant	AVContentAuthorizationCancelled		The last call to request content authorization was cancelled by the user.
 @constant	AVContentAuthorizationTimedOut		The last call to request content authorization was cancelled because the timeout interval was reached.
 @constant	AVContentAUthorizationBusy			The last call to request content authorization could not be completed because another asset is currently attempting authorization.
 @constant	AVContentAuthorizationNotAvailable	The last call to request content authorization could not be completed because there was no known mechanism by which to attempt authorization.
 @constant	AVContentAuthorizationNotPossible	The last call to request content authorization could not be completed in a non-recoverable way (i.e. a newer version of iTunes is required).
 @discussion
 Even if authorization is completed by the user, there is no guarantee that the content will then be authorized.  The caller should re-check
 whether the content is authorized before proceeding.
 */
enum AVContentAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Completed
  case Cancelled
  case TimedOut
  case Busy
  case NotAvailable
  case NotPossible
}
extension AVPlayerItem {

  /*!
   @property		authorizationRequiredForPlayback
   @abstract		Indicates whether or not authorization is required to play the content.
   @discussion
   This property reports whether or not authorization is required for the receiver's content to be played.  If it does not require authorization, then none of the other
   methods or properties in the AVPlayerItemProtectedContent category apply (though they will return sensible values where possible). This value is NOT key-value observable.
   */
  @available(OSX 10.7, *)
  var isAuthorizationRequiredForPlayback: Bool { get }

  /*!
   @property		applicationAuthorizedForPlayback
   @abstract		Indicates whether the calling application can be used to play the content.
   @discussion		
   This property reports whether or not the calling application is authorized to play the content associated with the receiver.  Note that application authorization
   is independent of content authorization (see contentAuthorizedForPlayback) and that both must be granted in order for an application to be allowed to play protected content.
   Also, unlike content authorization, application authorization is not dependent on user credentials (i.e. if applicationAuthorizedForPlayback is NO, there are no means to obtain authorization).
   This value is NOT key-value observable.
   */
  @available(OSX 10.7, *)
  var isApplicationAuthorizedForPlayback: Bool { get }

  /*!
   @property		contentAuthorizedForPlayback
   @abstract		Indicates whether the content has been authorized by the user (e.g. by authorizing the content's associated account in iTunes).
   @discussion
   This property reports whether or not the user has provided the necessary credentials to the system in order for the content to be decrypted for playback.
   Note that content authorization is independent of application authorization (see applicationAuthorizedForPlayback) and that both must be 
   granted in order for an application to be allowed to play protected content. This value is NOT key-value observable.
   */
  @available(OSX 10.7, *)
  var isContentAuthorizedForPlayback: Bool { get }

  /*!
   @method		requestContentAuthorizationAsynchronouslyWithTimeoutInterval:completionHandler:
   @abstract		Causes appropriate action to be taken to allow the user to authorize the content for playback.
   @discussion
   Calling this method will present the user with the opportunity to authorize the content (e.g. by launching iTunes and prompting the user to enter their Apple ID and password).
   When the user has taken action (or the timeout has elapsted), the completion handler will be invoked.  The status of the authorization attempt can be determined by checking
   the value of the contentAuthorizationRequestStatus property.  Note that even if the status indicates a completed authorization, the content may still not be authorized
   (e.g. if the user authorizes an Apple ID other than that associated with the content).  The contentAuthorizedForPlayback property should be re-checked to verify whether
   the content has actually been authorized before continuing.  It is not necessary to call this method if the value of contentAuthorizedForPlayback is already true.
   
   @param			timoutInterval	The maximum amount of time to wait for the user to authorize the content in seconds before calling the handler block with a timeout result.
   @param			handler			Block to be called upon completion.
   */
  @available(OSX 10.7, *)
  func requestContentAuthorizationAsynchronouslyWithTimeoutInterval(timeoutInterval: NSTimeInterval, completionHandler handler: () -> Void)

  /*!
   @method		cancelContentAuthorizationRequest
   @abstract		Causes the currently outstanding content authorization request to be cancelled.
   @discussion
   Calling this method while a content authorization request is pending will cause that request to be cancelled and its completion handler to be invoked
   with a status of AVContentAuthorizationCancelled.  This call does not block.
   */
  @available(OSX 10.7, *)
  func cancelContentAuthorizationRequest()

  /*!
   @property		contentAuthorizationRequestStatus
   @abstract		Indicates the status of the most recent call to requestContentAuthorizationAsynchronouslyWithTimeoutInterval:CompletionHandler:
   @discussion
   This property reports the authorization status as determined by the most recent call to requestContentAuthorizationAsynchronouslyWithTimeoutInterval:CompletionHandler:.
   The value will be AVContentAuthorizationUnknown before the first call and between the time a request call is made and just prior to the completion handler being executed
   (i.e. it is safe to query this property from the completion handler). This value is NOT key-value observable.
   */
  @available(OSX 10.7, *)
  var contentAuthorizationRequestStatus: AVContentAuthorizationStatus { get }
}

/*!
	@class			AVPlayerItemTrack

	@abstract
		An AVPlayerItemTrack carries a reference to an AVAssetTrack as well as presentation settings for that track.

	@discussion
		Note that inspection of assets tracks is provided by AVAssetTrack.
		This class is intended to represent presentation state for a track of an asset that's played by an AVPlayer and AVPlayerItem.

		To ensure safe access to AVPlayerItemTrack's nonatomic properties while dynamic changes in playback state may be reported,
		clients must serialize their access with the associated AVPlayer's notification queue. In the common case, such serialization
		is naturally achieved by invoking AVPlayerItemTrack's various methods on the main thread or queue.
*/
@available(OSX 10.7, *)
class AVPlayerItemTrack : NSObject {

  /*!
   @property		assetTrack
   @abstract		Indicates the AVAssetTrack for which the AVPlayerItemTrack represents presentation state.
   @discussion	This property is not observable.
  	Clients must serialize their access to the resulting AVAssetTrack and related objects on the associated AVPlayer's
  	notification queue.  By default, this queue is the main queue.
  */
  var assetTrack: AVAssetTrack { get }

  /*!
   @property		enabled
   @abstract		Indicates whether the track is enabled for presentation during playback.
  */
  var isEnabled: Bool

  /*!
   @property		currentVideoFrameRate
   @abstract		If the media type of the assetTrack is AVMediaTypeVideo, indicates the current frame rate of the track as it plays, in units of frames per second. If the item is not playing, or if the media type of the track is not video, the value of this property is 0.
   @discussion	This property is not observable.
  */
  @available(OSX 10.9, *)
  var currentVideoFrameRate: Float { get }

  /*!
   @property		videoFieldMode
   @abstract		If the media type of the assetTrack is AVMediaTypeVideo, specifies the handling of video frames that contain multiple fields.
   @discussion	A value of nil indicates default processing of video frames. If you want video fields to be deinterlaced, set videoFieldMode to AVPlayerItemTrackVideoFieldModeDeinterlaceFields.
   				You can test whether video being played has multiple fields by examining the underlying AVAssetTrack's format descriptions. See -[AVAssetTrack formatDescriptions] and, for video format descriptions, kCMFormatDescriptionExtension_FieldCount.
  */
  @available(OSX 10.10, *)
  var videoFieldMode: String?
  init()
}

/*!
 @constant		AVPlayerItemTrackVideoFieldModeDeinterlaceFields
 @abstract		Use with videoFieldMode property to request deinterlacing of video fields.
*/
@available(OSX 10.10, *)
let AVPlayerItemTrackVideoFieldModeDeinterlaceFields: String
@available(OSX 10.7, *)
class AVPlayerLayer : CALayer {

  /*!
  	@method		layerWithPlayer:
  	@abstract		Returns an instance of AVPlayerLayer to display the visual output of the specified AVPlayer.
  	@result		An instance of AVPlayerLayer.
  */
  /*not inherited*/ init(player: AVPlayer?)

  /*! 
  	@property		player
  	@abstract		Indicates the instance of AVPlayer for which the AVPlayerLayer displays visual output
  */
  var player: AVPlayer?

  /*!
  	@property		videoGravity
  	@abstract		A string defining how the video is displayed within an AVPlayerLayer bounds rect.
  	@discusssion	Options are AVLayerVideoGravityResizeAspect, AVLayerVideoGravityResizeAspectFill 
   					and AVLayerVideoGravityResize. AVLayerVideoGravityResizeAspect is default. 
  					See <AVFoundation/AVAnimation.h> for a description of these options.
   */
  var videoGravity: String

  /*!
  	 @property		readyForDisplay
  	 @abstract		Boolean indicating that the first video frame has been made ready for display for the current item of the associated AVPlayer.
  	 @discusssion	Use this property as an indicator of when best to show or animate-in an AVPlayerLayer into view. 
  					An AVPlayerLayer may be displayed, or made visible, while this propoerty is NO, however the layer will not have any 
  					user-visible content until the value becomes YES. 
  					This property remains NO for an AVPlayer currentItem whose AVAsset contains no enabled video tracks.
   */
  var isReadyForDisplay: Bool { get }

  /*!
  	@property		videoRect
  	@abstract		The current size and position of the video image as displayed within the receiver's bounds.
   */
  @available(OSX 10.9, *)
  var videoRect: CGRect { get }

  /*!
  	@property		pixelBufferAttributes
  	@abstract		The client requirements for the visual output displayed in AVPlayerLayer during playback.  	
  	@discussion		Pixel buffer attribute keys are defined in <CoreVideo/CVPixelBuffer.h>
   */
  @available(OSX 10.11, *)
  var pixelBufferAttributes: [String : AnyObject]?
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.9, *)
class AVPlayerMediaSelectionCriteria : NSObject {
  var preferredLanguages: [String]? { get }
  var preferredMediaCharacteristics: [String]? { get }

  /*!
    @method		initWithPreferredLanguages:preferredMediaCharacteristics:
    @abstract		Creates an instance of AVPlayerMediaSelectionCriteria.
    @param		preferredLanguages
  				An NSArray of NSStrings containing language identifiers, in order of desirability, that are preferred for selection. Can be nil.
    @param		preferredMediaCharacteristics
  				An NSArray of NSStrings indicating additional media characteristics, in order of desirability, that are preferred when selecting media with the characteristic for which the receiver is set on the AVPlayer as the selection criteria. Can be nil.
    @result		An instance of AVPlayerMediaSelectionCriteria.
  */
  init(preferredLanguages: [String]?, preferredMediaCharacteristics: [String]?)
  init()
}

/*!
	@enum		 AVQueuedSampleBufferRenderingStatus
	@abstract	 These constants are the possible values of the AVSampleBufferDisplayLayer status property.
	@constant	 AVQueuedSampleBufferRenderingStatusUnknown
	Indicates that the receiver is in a fresh state without any sample buffers enqueued on it.
	@constant	 AVQueuedSampleBufferRenderingStatusRendering
	Indicates at least one sample buffer has been enqueued on the receiver.
	@constant	 AVQueuedSampleBufferRenderingStatusFailed
	Terminal state indicating that the receiver can no longer render sample buffers because of an error. The error is described by
	the value of AVSampleBufferDisplayLayer's error property.
 */
@available(OSX 10.10, *)
enum AVQueuedSampleBufferRenderingStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Rendering
  case Failed
}
@available(OSX 10.10, *)
let AVSampleBufferDisplayLayerFailedToDecodeNotification: String
@available(OSX 10.10, *)
let AVSampleBufferDisplayLayerFailedToDecodeNotificationErrorKey: String
@available(OSX 10.8, *)
class AVSampleBufferDisplayLayer : CALayer {

  /*!
  	@property		controlTimebase
  	@abstract		The layer's control timebase, which governs how time stamps are interpreted.
  	@discussion		By default, this property is NULL, in which case time stamps will be interpreted
  					according to the host time clock (mach_absolute_time with the appropriate timescale
  					conversion; this is the same as Core Animation's CACurrentMediaTime).  With no 
  					control timebase, once frames are enqueued, it is not possible to adjust exactly 
  					when they are displayed.
  					
  					If a non-NULL control timebase is set, it will be used to interpret time stamps.
  					You can control the timing of frame display by setting the rate and time of the
  					control timebase.  
  					If you are synchronizing video to audio, you can use a timebase whose master clock
  					is a CMAudioDeviceClock for the appropriate audio device to prevent drift.
  					
  					Note that prior to OSX 10.10 and iOS 8.0, the control timebase could not be changed after enqueueSampleBuffer: was called.  As of OSX 10.10 and iOS 8.0, the control timebase may be changed at any time.
  */
  var controlTimebase: CMTimebase?

  /*!
  	@property		videoGravity
  	@abstract		A string defining how the video is displayed within an AVSampleBufferDisplayLayer bounds rect.
  	@discusssion	Options are AVLayerVideoGravityResizeAspect, AVLayerVideoGravityResizeAspectFill 
   					and AVLayerVideoGravityResize. AVLayerVideoGravityResizeAspect is default. 
  					See <AVFoundation/AVAnimation.h> for a description of these options.
   */
  var videoGravity: String

  /*!
  	@property		status
  	@abstract		The ability of the display layer to be used for enqueuing sample buffers.
  	@discussion		The value of this property is an AVQueuedSampleBufferRenderingStatus that indicates whether the receiver can be used for enqueuing sample buffers. When the value of this property is AVQueuedSampleBufferRenderingStatusFailed, the receiver can no longer be used and a new instance needs to be created in its place. When this happens, clients can check the value of the error property to determine the failure. This property is key value observable.
   */
  @available(OSX 10.10, *)
  var status: AVQueuedSampleBufferRenderingStatus { get }

  /*!
  	@property		error
  	@abstract		If the display layer's status is AVQueuedSampleBufferRenderingStatusFailed, this describes the error that caused the failure.
  	@discussion		The value of this property is an NSError that describes what caused the display layer to no longer be able to enqueue sample buffers. If the status is not AVQueuedSampleBufferRenderingStatusFailed, the value of this property is nil.
   */
  @available(OSX 10.10, *)
  var error: NSError? { get }
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
extension AVSampleBufferDisplayLayer {

  /*!
  	@method			enqueueSampleBuffer:
  	@abstract		Sends a sample buffer for display.
  	@discussion		If sampleBuffer has the kCMSampleAttachmentKey_DoNotDisplay attachment set to
  					kCFBooleanTrue, the frame will be decoded but not displayed.
  					Otherwise, if sampleBuffer has the kCMSampleAttachmentKey_DisplayImmediately
  					attachment set to kCFBooleanTrue, the decoded image will be displayed as soon 
  					as possible, replacing all previously enqueued images regardless of their timestamps.
  					Otherwise, the decoded image will be displayed at sampleBuffer's output presentation
  					timestamp, as interpreted by the control timebase (or the mach_absolute_time timeline
  					if there is no control timebase).
  					
  					To schedule the removal of previous images at a specific timestamp, enqueue 
  					a marker sample buffer containing no samples, with the
  					kCMSampleBufferAttachmentKey_EmptyMedia attachment set to kCFBooleanTrue.
  					
  					IMPORTANT NOTE: attachments with the kCMSampleAttachmentKey_ prefix must be set via
  					CMSampleBufferGetSampleAttachmentsArray and CFDictionarySetValue. 
  					Attachments with the kCMSampleBufferAttachmentKey_ prefix must be set via
  					CMSetAttachment.
  */
  func enqueueSampleBuffer(sampleBuffer: CMSampleBuffer)

  /*!
  	@method			flush
  	@abstract		Instructs the layer to discard pending enqueued sample buffers.
  	@discussion		It is not possible to determine which sample buffers have been decoded, 
  					so the next frame passed to enqueueSampleBuffer: should be an IDR frame
  					(also known as a key frame or sync sample).
  */
  func flush()

  /*!
  	@method			flushAndRemoveImage
  	@abstract		Instructs the layer to discard pending enqueued sample buffers and remove any
  					currently displayed image.
  	@discussion		It is not possible to determine which sample buffers have been decoded, 
  					so the next frame passed to enqueueSampleBuffer: should be an IDR frame
  					(also known as a key frame or sync sample).
  */
  func flushAndRemoveImage()

  /*!
  	@property		readyForMoreMediaData
  	@abstract		Indicates the readiness of the layer to accept more sample buffers.
  	@discussion		AVSampleBufferDisplayLayer keeps track of the occupancy levels of its internal queues
  					for the benefit of clients that enqueue sample buffers from non-real-time sources --
  					i.e., clients that can supply sample buffers faster than they are consumed, and so
  					need to decide when to hold back.
  					
  					Clients enqueueing sample buffers from non-real-time sources may hold off from
  					generating or obtaining more sample buffers to enqueue when the value of
  					readyForMoreMediaData is NO.  
  					
  					It is safe to call enqueueSampleBuffer: when readyForMoreMediaData is NO, but 
  					it is a bad idea to enqueue sample buffers without bound.
  					
  					To help with control of the non-real-time supply of sample buffers, such clients can use
  					-requestMediaDataWhenReadyOnQueue:usingBlock
  					in order to specify a block that the layer should invoke whenever it's ready for 
  					sample buffers to be appended.
   
  					The value of readyForMoreMediaData will often change from NO to YES asynchronously, 
  					as previously supplied sample buffers are decoded and displayed.
  	
  					This property is not key value observable.
  */
  var isReadyForMoreMediaData: Bool { get }

  /*!
  	@method			requestMediaDataWhenReadyOnQueue:usingBlock:
  	@abstract		Instructs the target to invoke a client-supplied block repeatedly, 
  					at its convenience, in order to gather sample buffers for display.
  	@discussion		The block should enqueue sample buffers to the layer either until the layer's
  					readyForMoreMediaData property becomes NO or until there is no more data 
  					to supply. When the layer has decoded enough of the media data it has received 
  					that it becomes ready for more media data again, it will invoke the block again 
  					in order to obtain more.
  					If this function is called multiple times, only the last call is effective.
  					Call stopRequestingMediaData to cancel this request.
  					Each call to requestMediaDataWhenReadyOnQueue:usingBlock: should be paired
  					with a corresponding call to stopRequestingMediaData:. Releasing the
  					AVSampleBufferDisplayLayer without a call to stopRequestingMediaData will result
  					in undefined behavior.
  */
  func requestMediaDataWhenReadyOn(queue: dispatch_queue_t, usingBlock block: () -> Void)

  /*!
  	@method			stopRequestingMediaData
  	@abstract		Cancels any current requestMediaDataWhenReadyOnQueue:usingBlock: call.
  	@discussion		This method may be called from outside the block or from within the block.
  */
  func stopRequestingMediaData()
}
@available(OSX 10.10, *)
class AVSampleBufferGenerator : NSObject {
  init(asset: AVAsset, timebase: CMTimebase?)
  func createSampleBufferFor(request: AVSampleBufferRequest) -> CMSampleBuffer
  class func notifyOfDataReadyFor(sbuf: CMSampleBuffer, completionHandler: (Bool, NSError) -> Void)
}

/*!
	@class		AVSampleBufferRequest

	@abstract	An AVSampleBufferRequest describes a CMSampleBuffer creation request.
*/
enum AVSampleBufferRequestDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Forward
  case None
  case Reverse
}
enum AVSampleBufferRequestMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Immediate
  case Scheduled
}

/*!
	@class		AVSampleBufferGenerator

	@abstract	An AVSampleBufferGenerator creates CMSampleBuffers.
	@discussion
		Each request for CMSampleBuffer creation is described in an AVSampleBufferRequest object.
		CMSampleBuffers are returned synchronously.
		If requested, sample data may be loaded asynchronously (depending on file format support).
*/
@available(OSX 10.10, *)
class AVSampleBufferRequest : NSObject {
  init(start startCursor: AVSampleCursor)
  var startCursor: AVSampleCursor { get }
  var direction: AVSampleBufferRequestDirection
  var limitCursor: AVSampleCursor?
  var preferredMinSampleCount: Int
  var maxSampleCount: Int
  var mode: AVSampleBufferRequestMode
  var overrideTime: CMTime
}
@available(OSX 10.10, *)
class AVSampleCursor : NSObject, NSCopying {

  /*!
  	@method			stepInDecodeOrderByCount:
  	@abstract		Moves the cursor a given number of samples in decode order.
  	@param			stepCount
  					The number of samples to move across. If positive, step forward this many samples. If negative, step backward (-stepCount) samples.
  	@result			The number of samples the cursor traversed. If the beginning or the end of the sample sequence was reached before the requested number of samples was traversed, the absolute value of the result will be less than the absolute value of stepCount.
  */
  func stepInDecodeOrderByCount(stepCount: Int64) -> Int64

  /*!
  	@method			stepInPresentationOrderByCount:
  	@abstract		Moves the cursor a given number of samples in presentation order.
  	@param			stepCount
  					The number of samples to move across. If positive, step forward this many samples. If negative, step backward (-stepCount) samples.
  	@result			The number of samples the cursor traversed. If the beginning or the end of the sample sequence was reached before the requested number of samples was traversed, the absolute value of the result will be less than the absolute value of stepCount.
  */
  func stepInPresentationOrderByCount(stepCount: Int64) -> Int64

  /*!
  	@method			stepByDecodeTime:wasPinned:
  	@abstract		Moves the cursor by a given deltaTime on the decode timeline.
  	@param			deltaDecodeTime
  					The amount of time to move in the decode timeline.
  	@param			outWasPinned
  					If the beginning or the end of the sample sequence was reached before the requested deltaDecodeTime was traversed, the BOOL value at the address specified by outWasPinned will be set to YES. May be NULL if this information isn't desired.
  	@result			The amount of time the cursor was moved along the decode timeline. Because sample cursors snap to sample boundaries when stepped, this value may not be equal to deltaDecodeTime even if the cursor was not pinned.
  */
  func stepByDecode(deltaDecodeTime: CMTime, wasPinned outWasPinned: UnsafeMutablePointer<ObjCBool>) -> CMTime

  /*!
  	@method			stepByPresentationTime:wasPinned:
  	@abstract		Moves the cursor by a given deltaTime on the presentation timeline.
  	@param			deltaPresentationTime
  					The amount of time to move in the presentation timeline.
  	@param			outWasPinned
  					If the beginning or the end of the sample sequence was reached before the requested deltaPresentationTime was traversed, the BOOL value at the address specified by outWasPinned will be set to YES. May be NULL if this information isn't desired.
  	@result			The amount of time the cursor was moved along the presentation timeline. Because sample cursors snap to sample boundaries when stepped, this value may not be equal to deltaPresentationTime even if the cursor was not pinned.
  */
  func stepByPresentationTime(deltaPresentationTime: CMTime, wasPinned outWasPinned: UnsafeMutablePointer<ObjCBool>) -> CMTime
  @available(OSX 10.10, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
extension AVSampleCursor {

  /*!
  	@property		presentationTimeStamp
  	@abstract		The presentation timestamp (PTS) of the sample at the current position of the cursor.
  */
  var presentationTimeStamp: CMTime { get }

  /*!
  	@property		decodeTimeStamp
  	@abstract		The decode timestamp (DTS) of the sample at the current position of the cursor.
  */
  var decodeTimeStamp: CMTime { get }

  /*!
  	@method			comparePositionInDecodeOrderWithPositionOfCursor:
  	@abstract		Compares the relative positions of two AVSampleCursors.
  	@param			cursor
  					An instance of AVSampleCursor with which to compare positions.
  	@result			kCFCompareLessThan, kCFCompareEqualTo or kCFCompareGreaterThan, depending on whether the receiver points at a sample before, the same as, or after the sample pointed to by the specified AVSampleCursor.
  	@discussion		If the receiver and cursor reference different sequences of samples, as when they're created by different instances of AVAssetTrack, results are undefined.
  */
  func comparePositionInDecodeOrderWithPositionOf(cursor: AVSampleCursor) -> NSComparisonResult

  /*!
  	@method			samplesWithEarlierDecodeTimeStampsMayHaveLaterPresentationTimeStampsThanCursor:
  	@abstract		This method tests a boundary in the reordering from decode order to presentation order, determining whether it's possible for any sample earlier in decode order than the sample at the position of the receiver can have a presentation timestamp later than that of the specified sample cursor.
  	@param			cursor
  					An instance of AVSampleCursor with which to test the sample reordering boundary.
  	@result			YES if it's possible for any sample earlier in decode order than the sample at the position of the receiver can have a presentation timestamp later than that of the specified sample cursor.
  	@discussion		If the receiver and cursor reference different sequences of samples, as when they're created by different instances of AVAssetTrack, results are undefined.
  */
  func samplesWithEarlierDecodeTimeStampsMayHaveLaterPresentationTimeStampsThanCursor(cursor: AVSampleCursor) -> Bool

  /*!
  	@method			samplesWithLaterDecodeTimeStampsMayHaveEarlierPresentationTimeStampsThanCursor:
  	@abstract		This method tests a boundary in the reordering from decode order to presentation order, determining whether it's possible for any sample later in decode order than the sample at the position of the receiver can have a presentation timestamp earlier than that of the specified sample cursor.
  	@param			cursor
  					An instance of AVSampleCursor with which to test the sample reordering boundary.
  	@result			YES if it's possible for any sample later in decode order than the sample at the position of the receiver can have a presentation timestamp earlier than that of the specified sample cursor.
  	@discussion		If the receiver and cursor reference different sequences of samples, as when they're created by different instances of AVAssetTrack, results are undefined.
  */
  func samplesWithLaterDecodeTimeStampsMayHaveEarlierPresentationTimeStampsThanCursor(cursor: AVSampleCursor) -> Bool
}
extension AVSampleCursor {

  /*!
  	@property		currentSampleDuration
  	@abstract		Indicates the presentation duration of the sample at the receiver's current position.
  	@discussion		If the receiver must be advanced past its current position in order to determine the presentation duration of the current sample, the value of currentSampleDuration is equal to kCMTimeIndefinite. This can occur with streaming formats such as MPEG-2 transport streams.
  */
  var currentSampleDuration: CMTime { get }

  /*!
  	@method			copyCurrentSampleFormatDescription:
  	@abstract		Provides the format description of the sample at the receiver's current position.
  */
  func copyCurrentSampleFormatDescription() -> CMFormatDescription

  /*!
  	@property		currentSampleSyncInfo
  	@abstract		Provides information about the current sample for consideration when resynchronizing a decoder, as when scrubbing.
  */
  var currentSampleSyncInfo: AVSampleCursorSyncInfo { get }

  /*!
  	@property		currentSampleDependencyInfo
  	@abstract		Provides information about dependencies between a media sample and other media samples in the same sample sequence, if known.
  */
  var currentSampleDependencyInfo: AVSampleCursorDependencyInfo { get }

  /*!
  	@property		samplesRequiredForDecoderRefresh
  	@abstract		Count of samples prior to the current sample, in decode order, that the decoder requires in order to achieve fully coherent output at the current decode time, as after a seek. Zero will be returned if no samples are required for decoder refresh or if the track does not contain this information.
  	@discussion		Some sample sequences that do not indicate sample dependencies may instead indicate that in order for a specific sample to be decoded with all available accuracy, samples prior to that sample in decode order must be decoded before the specific sample is decoded.
  
  	In order to position a sample cursor at the first sample that the decoder requires for a full refresh, you can use code like the following:
  	
  	
  			NSInteger samplesPriorToCurrentSampleToFeedToDecoder = [mySampleCursor samplesRequiredForDecoderRefresh];
  			AVSampleCursor *cursorForObtainingRefreshSamples = [mySampleCursor copy];
  			[cursorForObtainingRefreshSamples stepInDecodeOrderByCount: -samplesPriorToCurrentSampleToFeedToDecoder ];
  			
  			// cursorForObtainingRefreshSamples is now positioned at the first sample that must be provided to the decoder
  			// in order to decode the sample at the position of mySampleCursor in full
  			
  */
  @available(OSX 10.11, *)
  var samplesRequiredForDecoderRefresh: Int { get }
}

/*!
    @struct		AVSampleCursorSyncInfo
    @abstract   A struct for describing attributes of a media sample for consideration when resynchronizing a decoder.
    @field      sampleIsFullSync
    			Indicates whether the sample is a full sync sample, also known as an Instantaneous Decoder Refresh sample, and is sufficient in itself to completely resynchronize a decoder.
    @field      sampleIsPartialSync
    			Indicates whether the sample is a partial sync sample.
    @field      sampleIsDroppable
    			Indicates whether the sample is droppable.
*/
struct AVSampleCursorSyncInfo {
  var sampleIsFullSync: ObjCBool
  var sampleIsPartialSync: ObjCBool
  var sampleIsDroppable: ObjCBool
  init()
  init(sampleIsFullSync: ObjCBool, sampleIsPartialSync: ObjCBool, sampleIsDroppable: ObjCBool)
}

/*!
    @struct		AVSampleCursorDependencyInfo
    @abstract   A struct for describing dependencies between a media sample and other media samples in the same sample sequence.
    @field      sampleIndicatesWhetherItHasDependentSamples
    			Indicates whether the presence or absence of other samples that are dependent on the sample is known.
    @field      sampleHasDependentSamples
    			If sampleIndicatesWhetherItHasDependentSamples is YES, indicates whether the sample has dependent samples.
    @field      sampleIndicatesWhetherItDependsOnOthers
    			Indicates whether the sample's independency from other samples or dependency on other samples is known.
    @field      sampleDependsOnOthers
    			If sampleIndicatesWhetherItDependsOnOthers is YES, indicates whether the sample depends on other media samples.
    @field      sampleIndicatesWhetherItHasRedundantCoding
    			Indicates whether the presence of redundant coding of the sample is known.
    @field      sampleHasRedundantCoding
    			If sampleIndicatesWhetherItHasRedundantCoding is YES, indicates whether the sample has redundant coding.
*/
struct AVSampleCursorDependencyInfo {
  var sampleIndicatesWhetherItHasDependentSamples: ObjCBool
  var sampleHasDependentSamples: ObjCBool
  var sampleIndicatesWhetherItDependsOnOthers: ObjCBool
  var sampleDependsOnOthers: ObjCBool
  var sampleIndicatesWhetherItHasRedundantCoding: ObjCBool
  var sampleHasRedundantCoding: ObjCBool
  init()
  init(sampleIndicatesWhetherItHasDependentSamples: ObjCBool, sampleHasDependentSamples: ObjCBool, sampleIndicatesWhetherItDependsOnOthers: ObjCBool, sampleDependsOnOthers: ObjCBool, sampleIndicatesWhetherItHasRedundantCoding: ObjCBool, sampleHasRedundantCoding: ObjCBool)
}
extension AVSampleCursor {

  /*!
  	@property		currentChunkStorageURL
  	@abstract		The URL of the storage container of the current sample, as well as other samples that are intended to be loaded in the same operation as a "chunk".
  	@discussion		May be nil; if nil, the storage location of the chunk is the URL of the sample cursor's track's asset, if it has one.
  */
  var currentChunkStorageURL: NSURL { get }

  /*!
  	@property		currentChunkStorageRange
  	@abstract		The offset and length of samples in currentChunkStorageURL that are intended to be loaded together with the current sample as a "chunk".
  	@discussion		If the current chunk isn't stored contiguously in its storage container, currentChunkStorageRange.offset will be -1. In such cases you can use AVSampleBufferGenerator to obtain the sample data.
  */
  var currentChunkStorageRange: AVSampleCursorStorageRange { get }

  /*!
  	@property		currentChunkInfo
  	@abstract		Provides information about the "chunk" of samples to which the current sample belongs. If the media format that defines the sequence of samples does not signal "chunking" of samples in any way, each sample will be considered by the receiver as belonging to a chunk of one sample only.
  */
  var currentChunkInfo: AVSampleCursorChunkInfo { get }

  /*!
  	@property		currentSampleIndexInChunk
  	@abstract		The index of the current sample within the chunk to which it belongs.
  */
  var currentSampleIndexInChunk: Int64 { get }

  /*!
  	@property		currentSampleStorageRange
  	@abstract		The offset and length of the current sample in currentChunkStorageURL.
  	@discussion		If the current sample isn't stored contiguously in its storage container, currentSampleStorageRange.offset will be -1. In such cases you can use AVSampleBufferGenerator to obtain the sample data.
  */
  var currentSampleStorageRange: AVSampleCursorStorageRange { get }
}

/*!
    @struct		AVSampleCursorStorageRange
    @abstract   A struct for indicating the offset and length of storage occupied by a media sample or its chunk.
    @field      offset
    			The offset of the first byte of storage occupied by a media sample or its chunk.
    @field      length
    			The count of bytes of storage occupied by a media sample or its chunk.
    @discussion Like NSRange, but rangier.
*/
struct AVSampleCursorStorageRange {
  var offset: Int64
  var length: Int64
  init()
  init(offset: Int64, length: Int64)
}

/*!
    @struct		AVSampleCursorChunkInfo
    @abstract   Provides information about a chunk of media samples.
    @field      chunkSampleCount
    			The count of media samples in the chunk.
    @field      chunkHasUniformSampleSizes
    			YES if all of the samples in the chunk occupy the same number of bytes in storage.
    @field      currentChunkHasUniformSampleDurations
    			YES if all of the samples in the chunk have the same duration.
    @field      currentChunkHasUniformFormatDescriptions
    			YES if all of the samples in the chunk have the same format description.
*/
struct AVSampleCursorChunkInfo {
  var chunkSampleCount: Int64
  var chunkHasUniformSampleSizes: ObjCBool
  var chunkHasUniformSampleDurations: ObjCBool
  var chunkHasUniformFormatDescriptions: ObjCBool
  init()
  init(chunkSampleCount: Int64, chunkHasUniformSampleSizes: ObjCBool, chunkHasUniformSampleDurations: ObjCBool, chunkHasUniformFormatDescriptions: ObjCBool)
}
@available(OSX 10.7, *)
class AVSynchronizedLayer : CALayer {

  /*!
  	@method			synchronizedLayerWithPlayerItem:
  	@abstract		Returns an instance of AVSynchronizedLayer with timing synchronized with the specified AVPlayerItem.
  	@result			An instance of AVSynchronizedLayer.
  */
  /*not inherited*/ init(playerItem: AVPlayerItem)
  var playerItem: AVPlayerItem?
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.9, *)
class AVTextStyleRule : NSObject, NSCopying {

  /*!
   @method		propertyListForTextStyleRules:
   @abstract		Converts an NSArray of AVTextStyleRules into a serializable property list that can be used for persistent storage.
   @param			textStyleRules
   				An array of AVTextStyleRules.
   @result		A serializable property list.
   @discussion	For serialization utilities, see NSPropertyList.h.
  */
  class func propertyListFor(textStyleRules: [AVTextStyleRule]) -> AnyObject

  /*!
   @method		textStyleRulesFromPropertyList:
   @abstract		Converts a property list into an NSArray of AVTextStyleRules.
   @param			plist
   				A property list, normally obtained previously via an invocation of +propertyListForTextStyleRules:.
   @result		An NSArray of AVTextStyleRules
  */
  class func textStyleRulesFromPropertyList(plist: AnyObject) -> [AVTextStyleRule]?

  /*!
   @method		initWithTextMarkupAttributes:
   @abstract		Creates an instance of AVTextStyleRule with the specified text markup attributes.
   @param			textMarkupAttributes
   				An NSDictionary with keys representing text style attributes that are specifiable in text markup. Eligible keys are defined in <CoreMedia/CMTextMarkup.h>.
   @result		An instance of AVTextStyleRule
   @discussion	Equivalent to invoking -initWithTextMarkupAttributes:textSelector: with a value of nil for textSelector.
  */
  convenience init?(textMarkupAttributes: [String : AnyObject])

  /*!
   @method		initWithTextMarkupAttributes:textSelector:
   @abstract		Creates an instance of AVTextStyleRule with the specified text markup attributes and an identifier for the range or ranges of text to which the attributes should be applied.
   @param			textMarkupAttributes
   				An NSDictionary with keys representing text style attributes that are specifiable in text markup. Eligible keys are defined in <CoreMedia/CMTextMarkup.h>.
   @param			textSelector
  				An identifier for the range or ranges of text to which the attributes should be applied. Eligible identifiers are determined by the format and content of the legible media. A value of nil indicates that the textMarkupAttributes should be applied as default styles for all text unless overridden by content markup or other applicable text selectors.
   @result		An instance of AVTextStyleRule
  */
  init?(textMarkupAttributes: [String : AnyObject], textSelector: String?)

  /*!
   @property		textMarkupAttributes
   @abstract		An NSDictionary with keys representing text style attributes that are specifiable in text markup. Eligible keys and the expected types of their corresponding values are defined in <CoreMedia/CMTextMarkup.h>.
  */
  var textMarkupAttributes: [String : AnyObject] { get }

  /*!
   @property		textSelector
   @abstract		A string that identifies the range or ranges of text to which the attributes should be applied. A value of nil indicates that the textMarkupAttributes should be applied as default styles for all text unless overridden by content markup or other applicable text selectors.
   @dicussion		The syntax of text selectors is determined by the format of the legible media. Eligible selectors may be determined by the content of the legible media (e.g. CSS selectors that are valid for a specific WebVTT document).
  */
  var textSelector: String? { get }
  @available(OSX 10.9, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
extension NSValue {
  @available(OSX 10.7, *)
  /*not inherited*/ init(cmTime time: CMTime)
  @available(OSX 10.7, *)
  var cmTimeValue: CMTime { get }
  @available(OSX 10.7, *)
  /*not inherited*/ init(cmTimeRange timeRange: CMTimeRange)
  @available(OSX 10.7, *)
  var cmTimeRangeValue: CMTimeRange { get }
  @available(OSX 10.7, *)
  /*not inherited*/ init(cmTimeMapping timeMapping: CMTimeMapping)
  @available(OSX 10.7, *)
  var cmTimeMappingValue: CMTimeMapping { get }
}
extension NSValue {
  @available(OSX 10.7, *)
  /*not inherited*/ init(cmTime time: CMTime)
  @available(OSX 10.7, *)
  var cmTimeValue: CMTime { get }
  @available(OSX 10.7, *)
  /*not inherited*/ init(cmTimeRange timeRange: CMTimeRange)
  @available(OSX 10.7, *)
  var cmTimeRangeValue: CMTimeRange { get }
  @available(OSX 10.7, *)
  /*not inherited*/ init(cmTimeMapping timeMapping: CMTimeMapping)
  @available(OSX 10.7, *)
  var cmTimeMappingValue: CMTimeMapping { get }
}
extension NSCoder {
  @available(OSX 10.7, *)
  func encode(time: CMTime, forKey key: String)
  @available(OSX 10.7, *)
  func decodeCMTimeForKey(key: String) -> CMTime
  @available(OSX 10.7, *)
  func encode(timeRange: CMTimeRange, forKey key: String)
  @available(OSX 10.7, *)
  func decodeCMTimeRangeForKey(key: String) -> CMTimeRange
  @available(OSX 10.7, *)
  func encode(timeMapping: CMTimeMapping, forKey key: String)
  @available(OSX 10.7, *)
  func decodeCMTimeMappingForKey(key: String) -> CMTimeMapping
}

/*!
	@class		AVMetadataGroup
 
	@abstract	AVMetadataGroup is the common superclass for AVTimedMetadataGroup and AVDateRangeMetadataGroup; each represents a collection of metadata items associated with a segment of a timeline. AVTimedMetadataGroup is typically used with content that defines an independent timeline, while AVDateRangeMetadataGroup is typically used with content that's associated with a specific range of dates.
*/
@available(OSX 10.11, *)
class AVMetadataGroup : NSObject {
  var items: [AVMetadataItem] { get }
  init()
}

/*!
	@class		AVTimedMetadataGroup
 
	@abstract	AVTimedMetadataGroup is used to represent a collection of metadata items that are valid for use during a specific range of time. For example, AVTimedMetadataGroups are used to represent chapters, optionally containing metadata items for chapter titles and chapter images.
*/
@available(OSX 10.7, *)
class AVTimedMetadataGroup : AVMetadataGroup, NSCopying, NSMutableCopying {

  /*!
  	@method		initWithItems:timeRange:
  	@abstract	Initializes an instance of AVTimedMetadataGroup with a collection of metadata items.
  	@param		items
  				An NSArray of AVMetadataItems.
  	@param		timeRange
  				The timeRange of the collection of AVMetadataItems.
  	@result		An instance of AVTimedMetadataGroup.
  */
  init(items: [AVMetadataItem], timeRange: CMTimeRange)

  /*!
  	@method		initWithSampleBuffer:
  	@abstract	Initializes an instance of AVTimedMetadataGroup with a sample buffer.
  	@param		sampleBuffer
  				A CMSampleBuffer with media type kCMMediaType_Metadata.
  	@result		An instance of AVTimedMetadataGroup.
  */
  @available(OSX 10.10, *)
  init?(sampleBuffer: CMSampleBuffer)
  var timeRange: CMTimeRange { get }
  var items: [AVMetadataItem] { get }
  init()
  @available(OSX 10.7, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
}
extension AVTimedMetadataGroup {

  /*!
  	@method		copyFormatDescription
  	@abstract	Creates a format description based on the receiver's items.
  	@result		An instance of CMMetadataFormatDescription sufficient to describe the contents of all the items referenced by the receiver.
  	@discussion
  		The returned format description is suitable for use as the format hint parameter when creating an instance of AVAssetWriterInput.
   
  		Each item referenced by the receiver must carry a non-nil value for its dataType property.  An exception will be thrown if any item does not have a data type.
  */
  @available(OSX 10.10, *)
  func copyFormatDescription() -> CMMetadataFormatDescription?
}

/*!
	@class		AVMutableTimedMetadataGroup
 
	@abstract	AVMutableTimedMetadataGroup is used to represent a mutable collection of metadata items that are valid for use during a specific range of time.
*/
@available(OSX 10.7, *)
class AVMutableTimedMetadataGroup : AVTimedMetadataGroup {
  var timeRange: CMTimeRange
  var items: [AVMetadataItem]

  /*!
  	@method		initWithItems:timeRange:
  	@abstract	Initializes an instance of AVTimedMetadataGroup with a collection of metadata items.
  	@param		items
  				An NSArray of AVMetadataItems.
  	@param		timeRange
  				The timeRange of the collection of AVMetadataItems.
  	@result		An instance of AVTimedMetadataGroup.
  */
  init(items: [AVMetadataItem], timeRange: CMTimeRange)

  /*!
  	@method		initWithSampleBuffer:
  	@abstract	Initializes an instance of AVTimedMetadataGroup with a sample buffer.
  	@param		sampleBuffer
  				A CMSampleBuffer with media type kCMMediaType_Metadata.
  	@result		An instance of AVTimedMetadataGroup.
  */
  @available(OSX 10.10, *)
  init?(sampleBuffer: CMSampleBuffer)
  init()
}

/*!
	@class		AVDateRangeMetadataGroup
 
	@abstract	AVDateRangeMetadataGroup is used to represent a collection of metadata items that are valid for use within a specific range of dates.
*/
@available(OSX 10.11, *)
class AVDateRangeMetadataGroup : AVMetadataGroup, NSCopying, NSMutableCopying {

  /*!
  	@method		initWithItems:startDate:endDate:
  	@abstract	Initializes an instance of AVDateRangeMetadataGroup with a collection of metadata items.
  	@param		items
  				An NSArray of AVMetadataItems.
  	@param		startDate
  				The start date of the collection of AVMetadataItems.
  	@param		endDate
  				The end date of the collection of AVMetadataItems. If the receiver is intended to represent information about an instantaneous event, the value of endDate should be equal to the value of startDate. A value of nil for endDate indicates that the endDate is indefinite.
  	@result		An instance of AVDateRangeMetadataGroup.
  */
  init(items: [AVMetadataItem], start startDate: NSDate, end endDate: NSDate?)
  @NSCopying var startDate: NSDate { get }
  @NSCopying var endDate: NSDate? { get }
  var items: [AVMetadataItem] { get }
  init()
  @available(OSX 10.11, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.11, *)
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
}

/*!
	@class		AVMutableDateRangeMetadataGroup
 
	@abstract	AVMutableDateRangeMetadataGroup is used to represent a mutable collection of metadata items that are valid for use within a specific range of dates.
*/
@available(OSX 10.11, *)
class AVMutableDateRangeMetadataGroup : AVDateRangeMetadataGroup {
  @NSCopying var startDate: NSDate
  @NSCopying var endDate: NSDate?
  var items: [AVMetadataItem]

  /*!
  	@method		initWithItems:startDate:endDate:
  	@abstract	Initializes an instance of AVDateRangeMetadataGroup with a collection of metadata items.
  	@param		items
  				An NSArray of AVMetadataItems.
  	@param		startDate
  				The start date of the collection of AVMetadataItems.
  	@param		endDate
  				The end date of the collection of AVMetadataItems. If the receiver is intended to represent information about an instantaneous event, the value of endDate should be equal to the value of startDate. A value of nil for endDate indicates that the endDate is indefinite.
  	@result		An instance of AVDateRangeMetadataGroup.
  */
  init(items: [AVMetadataItem], start startDate: NSDate, end endDate: NSDate?)
  init()
}

/*!
 @function					AVMakeRectWithAspectRatioInsideRect
 @abstract					Returns a scaled CGRect that maintains the aspect ratio specified by a CGSize within a bounding CGRect.
 @discussion				This is useful when attempting to fit the presentationSize property of an AVPlayerItem within the bounds of another CALayer. 
							You would typically use the return value of this function as an AVPlayerLayer frame property value. For example:
							myPlayerLayer.frame = AVMakeRectWithAspectRatioInsideRect(myPlayerItem.presentationSize, mySuperLayer.bounds);
 @param aspectRatio			The width & height ratio, or aspect, you wish to maintain.
 @param	boundingRect		The bounding CGRect you wish to fit into. 
 */
@available(OSX 10.7, *)
func AVMakeRectWithAspectRatioInsideRect(aspectRatio: CGSize, _ boundingRect: CGRect) -> CGRect
struct AVPixelAspectRatio {
  var horizontalSpacing: Int
  var verticalSpacing: Int
  init()
  init(horizontalSpacing: Int, verticalSpacing: Int)
}
struct AVEdgeWidths {
  var left: CGFloat
  var top: CGFloat
  var right: CGFloat
  var bottom: CGFloat
  init()
  init(left: CGFloat, top: CGFloat, right: CGFloat, bottom: CGFloat)
}
@available(OSX 10.9, *)
class AVVideoCompositionRenderContext : NSObject {
  var size: CGSize { get }
  var renderTransform: CGAffineTransform { get }
  var renderScale: Float { get }
  var pixelAspectRatio: AVPixelAspectRatio { get }
  var edgeWidths: AVEdgeWidths { get }
  var isHighQualityRendering: Bool { get }
  var videoComposition: AVVideoComposition { get }

  /*!
  	@method			newPixelBuffer
  	@abstract		Vends a CVPixelBuffer to use for rendering
  	@discussion
  					The buffer will have its kCVImageBufferCleanApertureKey and kCVImageBufferPixelAspectRatioKey attachments set to match the current composition processor properties.
  					 
  */
  func newPixelBuffer() -> CVPixelBuffer?
  init()
}

/*!
	@protocol		AVVideoCompositing
	@abstract		Defines properties and methods for custom video compositors
	@discussion
		For each AVFoundation object of class AVPlayerItem, AVAssetExportSession, AVAssetImageGenerator, or AVAssetReaderVideoCompositionOutput that has a non-nil value for its videoComposition property, when the value of the customVideoCompositorClass property of the AVVideoComposition is not Nil, AVFoundation creates and uses an instance of that custom video compositor class to process the instructions contained in the AVVideoComposition. The custom video compositor instance will be created when you invoke -setVideoComposition: with an instance of AVVideoComposition that's associated with a different custom video compositor class than the object was previously using.

		When creating instances of custom video compositors, AVFoundation initializes them by calling -init and then makes them available to you for further set-up or communication, if any is needed, as the value of the customVideoCompositor property of the object on which -setVideoComposition: was invoked.

		Custom video compositor instances will then be retained by the AVFoundation object for as long as the value of its videoComposition property indicates that an instance of the same custom video compositor class should be used, even if the value is changed from one instance of AVVideoComposition to another instance that's associated with the same custom video compositor class.
*/
@available(OSX 10.9, *)
protocol AVVideoCompositing : NSObjectProtocol {
  var sourcePixelBufferAttributes: [String : AnyObject]? { get }
  var requiredPixelBufferAttributesForRenderContext: [String : AnyObject] { get }

  /*!
      @method			renderContextChanged:
  	@abstract       Called to notify the custom compositor that a composition will switch to a different render context
  	@param			newRenderContext
  					The render context that will be handling the video composition from this point
      @discussion
  					Instances of classes implementing the AVVideoComposting protocol can implement this method to be notified when
  					the AVVideoCompositionRenderContext instance handing a video composition changes. AVVideoCompositionRenderContext instances
  					being immutable, such a change will occur every time there is a change in the video composition parameters.
  */
  func renderContextChanged(newRenderContext: AVVideoCompositionRenderContext)

  /*!
  	@method			startVideoCompositionRequest:
  	@abstract		Directs a custom video compositor object to create a new pixel buffer composed asynchronously from a collection of sources.
  	@param			asyncVideoCompositionRequest
      				An instance of AVAsynchronousVideoCompositionRequest that provides context for the requested composition.
  	@discussion
  		The custom compositor is expected to invoke, either subsequently or immediately, either:
  		-[AVAsynchronousVideoCompositionRequest finishWithComposedVideoFrame:] or
  		-[AVAsynchronousVideoCompositionRequest finishWithError:]. If you intend to finish rendering the frame after your
  		handling of this message returns, you must retain the instance of AVAsynchronousVideoCompositionRequest until after composition is finished.
  		Note that if the custom compositor's implementation of -startVideoCompositionRequest: returns without finishing the composition immediately,
  		it may be invoked again with another composition request before the prior request is finished; therefore in such cases the custom compositor should
  		be prepared to manage multiple composition requests.
  
  		If the rendered frame is exactly the same as one of the source frames, with no letterboxing, pillboxing or cropping needed,
  		then the appropriate source pixel buffer may be returned (after CFRetain has been called on it).
  */
  func start(asyncVideoCompositionRequest: AVAsynchronousVideoCompositionRequest)

  /*!
  	@method			cancelAllPendingVideoCompositionRequests	
  	@abstract		Directs a custom video compositor object to cancel or finish all pending video composition requests
  	@discussion
  		When receiving this message, a custom video compositor must block until it has either cancelled all pending frame requests,
  		and called the finishCancelledRequest callback for each of them, or, if cancellation is not possible, finished processing of all the frames
  		and called the finishWithComposedVideoFrame: callback for each of them.
  */
  optional func cancelAllPendingVideoCompositionRequests()
}
@available(OSX 10.9, *)
class AVAsynchronousVideoCompositionRequest : NSObject, NSCopying {
  var renderContext: AVVideoCompositionRenderContext { get }
  var compositionTime: CMTime { get }
  var sourceTrackIDs: [NSNumber] { get }
  var videoCompositionInstruction: AVVideoCompositionInstructionProtocol { get }

  /*!
      @method			sourceFrameByTrackID:
  	@abstract       Returns the source CVPixelBufferRef for the given track ID
  	@param			trackID
  					The track ID for the requested source frame
  */
  func sourceFrameByTrackID(trackID: CMPersistentTrackID) -> CVPixelBuffer?
  func finishWithComposedVideoFrame(composedVideoFrame: CVPixelBuffer)
  func finishWith(error: NSError)
  func finishCancelledRequest()
  init()
  @available(OSX 10.9, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.11, *)
class AVAsynchronousCIImageFilteringRequest : NSObject, NSCopying {
  var renderSize: CGSize { get }
  var compositionTime: CMTime { get }
  var sourceImage: CIImage { get }
  func finishWith(filteredImage: CIImage, context: CIContext?)
  func finishWith(error: NSError)
  init()
  @available(OSX 10.11, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
	@protocol	AVVideoCompositionInstruction
 
	@abstract	The AVVideoCompositionInstruction protocol is implemented by objects to represent operations to be performed by a compositor.
*/
@available(OSX 10.9, *)
protocol AVVideoCompositionInstructionProtocol : NSObjectProtocol {
  var timeRange: CMTimeRange { get }
  var enablePostProcessing: Bool { get }
  var containsTweening: Bool { get }
  var requiredSourceTrackIDs: [NSValue]? { get }
  var passthroughTrackID: CMPersistentTrackID { get }
}

/*!
	@class		AVVideoCompositionRenderContext
 
	@abstract	The AVVideoCompositionRenderContext class defines the context within which custom compositors render new output pixels buffers.
 
	@discussion
		An instance of AVVideoCompositionRenderContext provides size and scaling information and offers a service for efficiently providing pixel buffers from a managed pool of buffers.
*/
@available(OSX 10.7, *)
class AVVideoComposition : NSObject, NSCopying, NSMutableCopying {
  @available(OSX 10.9, *)
  /*not inherited*/ init(propertiesOf asset: AVAsset)
  @available(OSX 10.9, *)
  var customVideoCompositorClass: AnyObject.Type? { get }
  var frameDuration: CMTime { get }
  var renderSize: CGSize { get }
  var instructions: [AVVideoCompositionInstructionProtocol] { get }
  var animationTool: AVVideoCompositionCoreAnimationTool? { get }
  init()
  @available(OSX 10.7, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
}
extension AVVideoComposition {
  @available(OSX 10.11, *)
  /*not inherited*/ init(asset: AVAsset, applyingCIFiltersWithHandler applier: (AVAsynchronousCIImageFilteringRequest) -> Void)
}
@available(OSX 10.7, *)
class AVMutableVideoComposition : AVVideoComposition {
  @available(OSX 10.9, *)
  /*not inherited*/ init(propertiesOf asset: AVAsset)
  @available(OSX 10.9, *)
  var customVideoCompositorClass: AnyObject.Type?
  var frameDuration: CMTime
  var renderSize: CGSize
  var instructions: [AVVideoCompositionInstructionProtocol]
  var animationTool: AVVideoCompositionCoreAnimationTool?
  init()
}
extension AVMutableVideoComposition {
  @available(OSX 10.11, *)
  /*not inherited*/ init(asset: AVAsset, applyingCIFiltersWithHandler applier: (AVAsynchronousCIImageFilteringRequest) -> Void)
}
@available(OSX 10.7, *)
class AVVideoCompositionInstruction : NSObject, NSSecureCoding, NSCopying, NSMutableCopying, AVVideoCompositionInstructionProtocol {
  var timeRange: CMTimeRange { get }
  var backgroundColor: CGColor? { get }
  var layerInstructions: [AVVideoCompositionLayerInstruction] { get }
  var isEnablePostProcessing: Bool { get }
  @available(OSX 10.9, *)
  var requiredSourceTrackIDs: [NSValue] { get }
  @available(OSX 10.9, *)
  var passthroughTrackID: CMPersistentTrackID { get }
  init()
  @available(OSX 10.7, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.7, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.7, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.9, *)
  var containsTweening: Bool { get }
}
@available(OSX 10.7, *)
class AVMutableVideoCompositionInstruction : AVVideoCompositionInstruction {
  var timeRange: CMTimeRange
  var backgroundColor: CGColor?
  var layerInstructions: [AVVideoCompositionLayerInstruction]
  var isEnablePostProcessing: Bool
  init()
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.7, *)
class AVVideoCompositionLayerInstruction : NSObject, NSSecureCoding, NSCopying, NSMutableCopying {
  var trackID: CMPersistentTrackID { get }
  func getTransformRampFor(time: CMTime, start startTransform: UnsafeMutablePointer<CGAffineTransform>, end endTransform: UnsafeMutablePointer<CGAffineTransform>, timeRange: UnsafeMutablePointer<CMTimeRange>) -> Bool
  func getOpacityRampFor(time: CMTime, startOpacity: UnsafeMutablePointer<Float>, endOpacity: UnsafeMutablePointer<Float>, timeRange: UnsafeMutablePointer<CMTimeRange>) -> Bool
  @available(OSX 10.9, *)
  func getCropRectangleRampFor(time: CMTime, startCropRectangle: UnsafeMutablePointer<CGRect>, endCropRectangle: UnsafeMutablePointer<CGRect>, timeRange: UnsafeMutablePointer<CMTimeRange>) -> Bool
  init()
  @available(OSX 10.7, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.7, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.7, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.7, *)
class AVMutableVideoCompositionLayerInstruction : AVVideoCompositionLayerInstruction {
  convenience init(assetTrack track: AVAssetTrack)
  var trackID: CMPersistentTrackID
  func setTransformRampFromStart(startTransform: CGAffineTransform, toEnd endTransform: CGAffineTransform, timeRange: CMTimeRange)
  func setTransform(transform: CGAffineTransform, at time: CMTime)
  func setOpacityRampFromStartOpacity(startOpacity: Float, toEndOpacity endOpacity: Float, timeRange: CMTimeRange)
  func setOpacity(opacity: Float, at time: CMTime)
  @available(OSX 10.9, *)
  func setCropRectangleRampFromStartCropRectangle(startCropRectangle: CGRect, toEndCropRectangle endCropRectangle: CGRect, timeRange: CMTimeRange)
  @available(OSX 10.9, *)
  func setCropRectangle(cropRectangle: CGRect, at time: CMTime)
  init()
  init?(coder aDecoder: NSCoder)
}

/*!
	@class		AVVideoComposition
 
	@abstract	An AVVideoComposition object represents an immutable video composition.
 
	@discussion	
		A video composition describes, for any time in the aggregate time range of its instructions, the number and IDs of video tracks that are to be used in order to produce a composed video frame corresponding to that time. When AVFoundation's built-in video compositor is used, the instructions an AVVideoComposition contain can specify a spatial transformation, an opacity value, and a cropping rectangle for each video source, and these can vary over time via simple linear ramping functions.
 
		A client can implement their own custom video compositor by implementing the AVVideoCompositing protocol; a custom video compositor is provided with pixel buffers for each of its video sources during playback and other operations and can perform arbitrary graphical operations on them in order to produce visual output.
*/
@available(OSX 10.7, *)
class AVVideoCompositionCoreAnimationTool : NSObject {

  /*!
   	@method						videoCompositionCoreAnimationToolWithAdditionalLayer:asTrackID:
  	@abstract					Add a Core Animation layer to the video composition
  	@discussion					Include a Core Animation layer as an individual track input in video composition.
  								This layer should not come from, or be added to, another layer tree.
  								trackID should not match any real trackID in the source. Use -[AVAsset unusedTrackID] 
  								to obtain a trackID that's guaranteed not to coincide with the trackID of any track of the asset.
  								AVVideoCompositionInstructions should reference trackID where the rendered animation should be included.
  								For best performance, no transform should be set in the AVVideoCompositionLayerInstruction for this trackID.
  								Be aware that on iOS, CALayers backing a UIView usually have their content flipped (as defined by the
  								-contentsAreFlipped method). It may be required to insert a CALayer with its geometryFlipped property set
  								to YES in the layer hierarchy to get the same result when attaching a CALayer to a AVVideoCompositionCoreAnimationTool
  								as when using it to back a UIView.
  */
  convenience init(additionalLayer layer: CALayer, asTrackID trackID: CMPersistentTrackID)

  /*!
  	@method						videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayer:inLayer:
  	@abstract					Compose the composited video frames with the Core Animation layer
  	@discussion					Place composited video frames in videoLayer and render animationLayer 
  								to produce the final frame. Normally videoLayer should be in animationLayer's sublayer tree.
  								The animationLayer should not come from, or be added to, another layer tree.
  								Be aware that on iOS, CALayers backing a UIView usually have their content flipped (as defined by the
  								-contentsAreFlipped method). It may be required to insert a CALayer with its geometryFlipped property set
  								to YES in the layer hierarchy to get the same result when attaching a CALayer to a AVVideoCompositionCoreAnimationTool
  								as when using it to back a UIView.
  */
  convenience init(postProcessingAsVideoLayer videoLayer: CALayer, `in` animationLayer: CALayer)

  /*!
  	@method						videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayers:inLayer:
  	@abstract					Compose the composited video frames with the Core Animation layer
  	@discussion					Duplicate the composited video frames in each videoLayer and render animationLayer 
  								to produce the final frame. Normally videoLayers should be in animationLayer's sublayer tree.
  								The animationLayer should not come from, or be added to, another layer tree.
  								Be aware that on iOS, CALayers backing a UIView usually have their content flipped (as defined by the
  								-contentsAreFlipped method). It may be required to insert a CALayer with its geometryFlipped property set
  								to YES in the layer hierarchy to get the same result when attaching a CALayer to a AVVideoCompositionCoreAnimationTool
  								as when using it to back a UIView.
  */
  @available(OSX 10.9, *)
  convenience init(postProcessingAsVideoLayers videoLayers: [CALayer], `in` animationLayer: CALayer)
  init()
}
extension AVAsset {
  func unusedTrackID() -> CMPersistentTrackID
}
extension AVVideoComposition {

  /*!
   @method		isValidForAsset:timeRange:validationDelegate:
   @abstract
     Indicates whether the timeRanges of the receiver's instructions conform to the requirements described for them immediately above (in connection with the instructions property) and also whether all of the layer instructions have a value for trackID that corresponds either to a track of the specified asset or to the receiver's animationTool. 
   @param			asset
      Pass a reference to an AVAsset if you wish to validate the timeRanges of the instructions against the duration of the asset and the trackIDs of the layer instructions against the asset's tracks. Pass nil to skip that validation. Clients should ensure that the keys @"tracks" and @"duration" are already loaded on the AVAsset before validation is attempted.
   @param			timeRange
     A CMTimeRange.  Only those instuctions with timeRanges that overlap with the specified timeRange will be validated. To validate all instructions that may be used for playback or other processing, regardless of timeRange, pass CMTimeRangeMake(kCMTimeZero, kCMTimePositiveInfinity).
   @param			validationDelegate
     Indicates an object implementing the AVVideoCompositionValidationHandling protocol to receive information about troublesome portions of a video composition during processing of -isValidForAsset:. May be nil.
  @discussion
     In the course of validation, the receiver will invoke its validationDelegate with reference to any trouble spots in the video composition.
     An exception will be raised if the delegate modifies the receiver's array of instructions or the array of layerInstructions of any AVVideoCompositionInstruction contained therein during validation.
  */
  @available(OSX 10.8, *)
  func isValidFor(asset: AVAsset?, timeRange: CMTimeRange, validationDelegate: AVVideoCompositionValidationHandling?) -> Bool
}
protocol AVVideoCompositionValidationHandling : NSObjectProtocol {

  /*!
   @method		videoComposition:shouldContinueValidatingAfterFindingInvalidValueForKey:
   @abstract
     Invoked by an instance of AVVideoComposition when validating an instance of AVVideoComposition, to report a key that has an invalid value.
   @result
     An indication of whether the AVVideoComposition should continue validation in order to report additional problems that may exist.
  */
  @available(OSX 10.8, *)
  optional func videoComposition(videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingInvalidValueForKey key: String) -> Bool

  /*!
   @method		videoComposition:shouldContinueValidatingAfterFindingEmptyTimeRange:
   @abstract
     Invoked by an instance of AVVideoComposition when validating an instance of AVVideoComposition, to report a timeRange that has no corresponding video composition instruction.
   @result
     An indication of whether the AVVideoComposition should continue validation in order to report additional problems that may exist.
  */
  @available(OSX 10.8, *)
  optional func videoComposition(videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingEmpty timeRange: CMTimeRange) -> Bool

  /*!
   @method		videoComposition:shouldContinueValidatingAfterFindingInvalidTimeRangeInInstruction:
   @abstract
     Invoked by an instance of AVVideoComposition when validating an instance of AVVideoComposition, to report a video composition instruction with a timeRange that's invalid, that overlaps with the timeRange of a prior instruction, or that contains times earlier than the timeRange of a prior instruction.
   @discussion
     Use CMTIMERANGE_IS_INVALID, defined in CMTimeRange.h, to test whether the timeRange itself is invalid. Refer to headerdoc for AVVideoComposition.instructions for a discussion of how timeRanges for instructions must be formulated.
   @result
     An indication of whether the AVVideoComposition should continue validation in order to report additional problems that may exist.
  */
  @available(OSX 10.8, *)
  optional func videoComposition(videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingInvalidTimeRangeIn videoCompositionInstruction: AVVideoCompositionInstructionProtocol) -> Bool

  /*!
   @method		videoComposition:shouldContinueValidatingAfterFindingInvalidTrackIDInInstruction:layerInstruction:asset:
   @abstract
     Invoked by an instance of AVVideoComposition when validating an instance of AVVideoComposition, to report a video composition layer instruction with a trackID that does not correspond either to the trackID used for the composition's animationTool or to a track of the asset specified in -[AVVideoComposition isValidForAsset:timeRange:delegate:].
   @result
     An indication of whether the AVVideoComposition should continue validation in order to report additional problems that may exist.
  */
  @available(OSX 10.8, *)
  optional func videoComposition(videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingInvalidTrackIDIn videoCompositionInstruction: AVVideoCompositionInstructionProtocol, layerInstruction: AVVideoCompositionLayerInstruction, asset: AVAsset) -> Bool
}

/*!
 @header AVVideoSettings
 @abstract
	NSDictionary keys for configuring output video format
	
 @discussion
	A video settings dictionary may take one of two forms:
	
	1. For compressed video output, use only the keys in this header, AVVideoSettings.h.
	2. For uncompressed video output, start with kCVPixelBuffer* keys in <CoreVideo/CVPixelBuffer.h>.
	
	In addition to the keys in CVPixelBuffer.h, uncompressed video settings dictionaries may also contain the following keys:
 
		AVVideoPixelAspectRatioKey
		AVVideoCleanApertureKey
		AVVideoScalingModeKey
		AVVideoColorPropertiesKey
 
	It is an error to add any other AVVideoSettings.h keys to an uncompressed video settings dictionary.
*/
@available(OSX 10.7, *)
let AVVideoCodecKey: String
@available(OSX 10.7, *)
let AVVideoCodecH264: String
@available(OSX 10.7, *)
let AVVideoCodecJPEG: String
@available(OSX 10.7, *)
let AVVideoCodecAppleProRes4444: String
@available(OSX 10.7, *)
let AVVideoCodecAppleProRes422: String
@available(OSX 10.7, *)
let AVVideoWidthKey: String
@available(OSX 10.7, *)
let AVVideoHeightKey: String

/*!
 @constant	AVVideoPixelAspectRatioKey
 @abstract	The aspect ratio of the pixels in the video frame
 @discussion
	The value for this key is an NSDictionary containing AVVideoPixelAspectRatio*Key keys.  If no value is specified for this key, the default value for the codec is used.  Usually this is 1:1, meaning square pixels.
 
	Note that prior to OS X 10.9 and iOS 7.0, this key could only be specified as part of the dictionary given for AVVideoCompressionPropertiesKey.  As of OS X 10.9 and iOS 7.0, the top level of an AVVideoSettings dictionary is the preferred place to specify this key.
*/
@available(OSX 10.7, *)
let AVVideoPixelAspectRatioKey: String
@available(OSX 10.7, *)
let AVVideoPixelAspectRatioHorizontalSpacingKey: String
@available(OSX 10.7, *)
let AVVideoPixelAspectRatioVerticalSpacingKey: String

/*!
 @constant	AVVideoCleanApertureKey
 @abstract	Defines the region within the video dimensions that will be displayed during playback
 @discussion
	The value for this key is an NSDictionary containing AVVideoCleanAperture*Key keys.  AVVideoCleanApertureWidthKey and AVVideoCleanApertureHeightKey define a clean rectangle which is centered on the video frame.  To offset this rectangle from center, use AVVideoCleanApertureHorizontalOffsetKey and AVVideoCleanApertureVerticalOffsetKey.  A positive value for AVVideoCleanApertureHorizontalOffsetKey moves the clean aperture region to the right, and a positive value for AVVideoCleanApertureVerticalOffsetKey moves the clean aperture region down.
 
	If no clean aperture region is specified, the entire frame will be displayed during playback.
 
	Note that prior to OS X 10.9 and iOS 7.0, this key could only be specified as part of the dictionary given for AVVideoCompressionPropertiesKey.  As of OS X 10.9 and iOS 7.0, the top level of an AVVideoSettings dictionary is the preferred place to specify this key.
*/
@available(OSX 10.7, *)
let AVVideoCleanApertureKey: String
@available(OSX 10.7, *)
let AVVideoCleanApertureWidthKey: String
@available(OSX 10.7, *)
let AVVideoCleanApertureHeightKey: String
@available(OSX 10.7, *)
let AVVideoCleanApertureHorizontalOffsetKey: String
@available(OSX 10.7, *)
let AVVideoCleanApertureVerticalOffsetKey: String
@available(OSX 10.7, *)
let AVVideoScalingModeKey: String
@available(OSX 10.7, *)
let AVVideoScalingModeFit: String
@available(OSX 10.7, *)
let AVVideoScalingModeResize: String
@available(OSX 10.7, *)
let AVVideoScalingModeResizeAspect: String
@available(OSX 10.7, *)
let AVVideoScalingModeResizeAspectFill: String
@available(OSX 10.7, *)
let AVVideoColorPropertiesKey: String
@available(OSX 10.7, *)
let AVVideoColorPrimariesKey: String
@available(OSX 10.7, *)
let AVVideoColorPrimaries_ITU_R_709_2: String
@available(OSX 10.7, *)
let AVVideoColorPrimaries_EBU_3213: String
@available(OSX 10.7, *)
let AVVideoColorPrimaries_SMPTE_C: String
@available(OSX 10.7, *)
let AVVideoTransferFunctionKey: String
@available(OSX 10.7, *)
let AVVideoTransferFunction_ITU_R_709_2: String
@available(OSX 10.7, *)
let AVVideoTransferFunction_SMPTE_240M_1995: String
@available(OSX 10.7, *)
let AVVideoYCbCrMatrixKey: String
@available(OSX 10.7, *)
let AVVideoYCbCrMatrix_ITU_R_709_2: String
@available(OSX 10.7, *)
let AVVideoYCbCrMatrix_ITU_R_601_4: String
@available(OSX 10.7, *)
let AVVideoYCbCrMatrix_SMPTE_240M_1995: String

/*!
 @constant	AVVideoCompressionPropertiesKey
 @abstract
	The value for this key is an instance of NSDictionary, containing properties to be passed down to the video encoder.
 @discussion
	Package the below keys in an instance of NSDictionary and use it as the value for AVVideoCompressionPropertiesKey in the top-level AVVideoSettings dictionary.  In addition to the keys listed below, you can also include keys from VideoToolbox/VTCompressionProperties.h.
 
	Most keys can only be used for certain encoders.  Look at individual keys for details.
 */
@available(OSX 10.7, *)
let AVVideoCompressionPropertiesKey: String
@available(OSX 10.7, *)
let AVVideoAverageBitRateKey: String
@available(OSX 10.7, *)
let AVVideoQualityKey: String
@available(OSX 10.7, *)
let AVVideoMaxKeyFrameIntervalKey: String
@available(OSX 10.9, *)
let AVVideoMaxKeyFrameIntervalDurationKey: String

/*!
	 @constant	AVVideoAllowFrameReorderingKey
	 @abstract
		 Enables or disables frame reordering.
	 @discussion
		 In order to achieve the best compression while maintaining image quality, some video encoders can reorder frames.  This means that the order in which the frames will be emitted and stored (the decode order) will be different from the order in which they are presented to the video encoder (the display order).
		
		Encoding using frame reordering requires more system resources than encoding without frame reordering, so encoding performance should be taken into account when deciding whether to enable frame reordering.  This is especially important when encoding video data from a real-time source, such as AVCaptureVideoDataOutput.  In this situation, using a value of @NO for AVVideoAllowFrameReorderingKey may yield the best results.
	 
		The default is @YES, which means that the encoder decides whether to enable frame reordering.
	 */
@available(OSX 10.10, *)
let AVVideoAllowFrameReorderingKey: String
@available(OSX 10.8, *)
let AVVideoProfileLevelKey: String
@available(OSX 10.8, *)
let AVVideoProfileLevelH264Baseline30: String
@available(OSX 10.8, *)
let AVVideoProfileLevelH264Baseline31: String
@available(OSX 10.8, *)
let AVVideoProfileLevelH264Baseline41: String
@available(OSX 10.9, *)
let AVVideoProfileLevelH264BaselineAutoLevel: String
@available(OSX 10.8, *)
let AVVideoProfileLevelH264Main30: String
@available(OSX 10.8, *)
let AVVideoProfileLevelH264Main31: String
@available(OSX 10.8, *)
let AVVideoProfileLevelH264Main32: String
@available(OSX 10.8, *)
let AVVideoProfileLevelH264Main41: String
@available(OSX 10.9, *)
let AVVideoProfileLevelH264MainAutoLevel: String
@available(OSX 10.9, *)
let AVVideoProfileLevelH264High40: String
@available(OSX 10.9, *)
let AVVideoProfileLevelH264High41: String
@available(OSX 10.9, *)
let AVVideoProfileLevelH264HighAutoLevel: String

/*!
	 @constant	AVVideoH264EntropyModeKey
	 @abstract
		The entropy encoding mode for H.264 compression.
	 @discussion
		If supported by an H.264 encoder, this property controls whether the encoder should use Context-based Adaptive Variable Length Coding (CAVLC) or Context-based Adaptive Binary Arithmetic Coding (CABAC).  CABAC generally gives better compression at the expense of higher computational overhead.  The default value is encoder-specific and may change depending on other encoder settings.  Care should be taken when using this property -- changes may result in a configuration which is not compatible with a requested Profile and Level.  Results in this case are undefined, and could include encode errors or a non-compliant output stream.
	*/
@available(OSX 10.10, *)
let AVVideoH264EntropyModeKey: String
@available(OSX 10.10, *)
let AVVideoH264EntropyModeCAVLC: String
@available(OSX 10.10, *)
let AVVideoH264EntropyModeCABAC: String

/*!
	 @constant	AVVideoExpectedSourceFrameRateKey
	 @abstract
		Indicates the expected source frame rate, if known.
	 @discussion
		The frame rate is measured in frames per second. This is not used to control the frame rate; it is provided as a hint to the video encoder so that it can set up internal configuration before compression begins. The actual frame rate will depend on frame durations and may vary. This should be set if an AutoLevel AVVideoProfileLevelKey is used, or if the source content has a high frame rate (higher than 30 fps). The encoder might have to drop frames to satisfy bit stream requirements if this key is not specified.
	 */
@available(OSX 10.10, *)
let AVVideoExpectedSourceFrameRateKey: String

/*!
	 @constant	AVVideoAverageNonDroppableFrameRateKey
	 @abstract
		The desired average number of non-droppable frames to be encoded for each second of video.
	 @discussion
		Some video encoders can produce a flexible mixture of non-droppable frames and droppable frames.  The difference between these types is that it is necessary for a video decoder to decode a non-droppable frame in order to successfully decode subsequent frames, whereas droppable frames are optional and can be skipped without impact on decode of subsequent frames.  Having a proportion of droppable frames in a sequence has advantages for temporal scalability: at playback time more or fewer frames may be decoded depending on the play rate.  This property requests that the encoder emit an overall proportion of non-droppable and droppable frames so that there are the specified number of non-droppable frames per second.
 
		For example, to specify that the encoder should include an average of 30 non-droppable frames for each second of video:
 
		[myVideoSettings setObject:@30 forKey:AVVideoAverageNonDroppableFrameRateKey];
	 */
@available(OSX 10.10, *)
let AVVideoAverageNonDroppableFrameRateKey: String

/*!
	@constant AVVideoEncoderSpecificationKey
	@abstract
		The video encoder specification includes options for choosing a specific video encoder.
		
	@discussion
		The value for this key is a dictionary containing kVTVideoEncoderSpecification_* keys specified in the VideoToolbox framework.  This key should be specified at the top level of an AVVideoSettings dictionary.
 */
@available(OSX 10.10, *)
let AVVideoEncoderSpecificationKey: String
