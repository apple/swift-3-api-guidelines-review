

/*!
	@class		AVInterstitialTimeRange
	@abstract	AVInterstitialTimeRange represents the time range of an interstitial.
	@discussion	An AVInterstitialTimeRange identifies a portion of an asset as an interstitial. When the asset is presented, the time range of this interstitial content will be collapsed in the user interface timeline to a single dot, scrubbing will skip over this range, and the duration will be subtracted from the time remaining in the video as displayed to the user.
 */
@available(tvOS 9.0, *)
class AVInterstitialTimeRange : Object, Copying, SecureCoding {

  /*!
  	@method		initWithTimeRange:
  	@param		timeRange
  				The time range of the interstitial.
  	@abstract	Designated initializer.
  */
  init(timeRange: CMTimeRange)

  /*!
  	@property	timeRange
  	@abstract	The time range of the interstitial.
  */
  var timeRange: CMTimeRange { get }
  convenience init()
  @available(tvOS 9.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(tvOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 9.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}

/*!
	@class		AVNavigationMarkersGroup
	@abstract	AVNavigationMarkersGroup represents a group of navigation markers.
 */
@available(tvOS 9.0, *)
class AVNavigationMarkersGroup : Object {

  /*!
  	@method		initWithTitle:timedNavigationMarkers:
  	@param		title
  				The title of the group that will be displayed in the user interface.
  	@param		navigationMarkers
  				An array of instances of AVTimedMetadataGroup. Each element represents one marker.
  	@abstract	Designated initializer.
   */
  init(title: String?, timedNavigationMarkers navigationMarkers: [AVTimedMetadataGroup])

  /*!
  	@method		initWithTitle:dateRangeNavigationMarkers:
  	@param		title
  				The title of the group that will be displayed in the user interface.
  	@param		navigationMarkers
  				An array of instances of AVDateRangeMetadataGroup. Each element represents one marker.
  	@abstract	Designated initializer. To be used with assets that have associated dates.
   */
  init(title: String?, dateRangeNavigationMarkers navigationMarkers: [AVDateRangeMetadataGroup])

  /*!
  	@property	title
  	@abstract	The title of the navigation group (optional but recommended).
   */
  var title: String? { get }

  /*!
  	@property	timedNavigationMarkers
  	@abstract	An array of AVTimedMetadataGroup, each representing one navigation marker.
  	@discussion	The range of each marker represents the time range of an event (if the duration is 0, it extends to the beginning of the next item, or to the end of the asset). Supported marker metadata items include AVMetadataCommonIdentifierTitle and AVMetadataCommonIdentifierDescription. This property is only valid (non-null) if the object has been initialized with timed navigation markers.
   */
  var timedNavigationMarkers: [AVTimedMetadataGroup]? { get }

  /*!
  	@property	dateRangeNavigationMarkers
  	@abstract	An array of AVDateRangeMetadataGroup, each representing one navigation marker.
  	@discussion	Date-range markers can only be used with content that has associated dates. This property is only valid (non-null) if the object has been initialized with date-range navigation markers.
   */
  var dateRangeNavigationMarkers: [AVDateRangeMetadataGroup]? { get }
  convenience init()
}
extension AVPlayerItem {

  /*!
  	@property	navigationMarkersGroups
  	@abstract	An array of navigation marker groups; each group represents one means of navigating the media content.
  	@discussion	This property allows users to navigate by various criteria (for example, "Goals Scored" in a sport video; such a group would include a marker identifying when each goal is scored). When supplying chapter information, the chapters should always be the first group, and this group should have no title. A chapter navigation marker group will override the chapter information contained in the asset.
   */
  var navigationMarkerGroups: [AVNavigationMarkersGroup]

  /*!
  	@property	externalMetadata
  	@abstract	Supplements metadata contained in the asset.
  	@discussion This property is for display purposes only. All keys defined in AVMetadataIdentifiers.h are valid. The full set of presentable metadata varies by release and platform. The following are displayed on TVOS:
  		 AVMetadataCommonIdentifierTitle
  		 AVMetadataCommonIdentifierDescription
  		 AVMetadataIdentifieriTunesMetadataContentRating
  		 AVMetadataIdentifierQuickTimeMetadataGenre
  	 Values are normally strings. Poster artwork can be provided with AVMetadataCommonIdentifierArtwork.
   */
  var externalMetadata: [AVMetadataItem]

  /*!
  	@property	interstitialTimeRanges
  	@abstract	An array of time ranges that identifies interstitial content. Each element must specify the time range of the media occupied by the interstitials.
  	@discussion	An interstitial time range identifies a range of an asset that is collapsed into a single dot on the timeline in the user interface. Interstitial content is typically not related to the video being played (e.g., advertisements).
   */
  var interstitialTimeRanges: [AVInterstitialTimeRange]
}
extension AVPlayerItem {
}

/*!
	@class		AVPlayerViewController
	@abstract	AVPlayerViewController is a subclass of UIViewController that can be used to display the visual content of an AVPlayer object and the standard playback controls.
 */
@available(tvOS 9.0, *)
class AVPlayerViewController : UIViewController {

  /*!
  	@property	player
  	@abstract	The player from which to source the media content for the view controller.
   */
  var player: AVPlayer?

  /*!
  	@property	showsPlaybackControls
  	@abstract	Whether or not the receiver shows playback controls. Default is YES.
  	@discussion	Clients can set this property to NO when they don't want to have any playback controls on top of the visual content (e.g. for a game splash screen).
  				This property should not be used to temporarily change the visibility of the playback controls since it will create or destroy UI elements.
   */
  var showsPlaybackControls: Bool

  /*!
  	@property	requiresLinearPlayback
  	@abstract	Disables certain user operations (fast forward, forward skip, and scrubbing).
  	@discussion	This can be used to enforce playback of mandatory content (such as legalese or advertisements).
   */
  var requiresLinearPlayback: Bool

  /*!
  	@property	videoGravity
  	@abstract	A string defining how the video is displayed within an AVPlayerLayer bounds rect.
  	@discussion	Options are AVLayerVideoGravityResizeAspect, AVLayerVideoGravityResizeAspectFill and AVLayerVideoGravityResize. AVLayerVideoGravityResizeAspect is default.
  				See <AVFoundation/AVAnimation.h> for a description of these options.
   */
  var videoGravity: String

  /*!
  	@property	readyForDisplay
  	@abstract	Boolean indicating that the first video frame has been made ready for display for the current item of the associated AVPlayer.
   */
  var isReadyForDisplay: Bool { get }

  /*!
  	@property	contentOverlayView
  	@abstract	Use the content overlay view to add additional custom views between the video content and the controls.
   */
  var contentOverlayView: UIView? { get }

  /*!
  	@property	delegate
  	@abstract	The object that acts as the delegate of the AVPlayerViewController.
   */
  weak var delegate: @sil_weak AVPlayerViewControllerDelegate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
extension AVPlayerViewController {

  /*!
  	@property	allowedSubtitleOptionLanguages
  	@abstract	An optional array of BCP 47 language codes to filter the subtitle options presented to the user.
  	@discussion	When this property to nil (the default), all available subtitle options are presented. The "Auto" subtitle option is only available when this property is nil, and full subtitles are not required (see requiresFullSubtitles).
   */
  var allowedSubtitleOptionLanguages: [String]?

  /*!
  	@property	requiresFullSubtitles
  	@abstract	Determines whether the user is given the option to turn off subtitles.
  	@discussion	When set to YES, the subtitle options will not present "Off" or "Auto" as options, and subtitles will always be displayed (if they are available). The default is NO.
   */
  var requiresFullSubtitles: Bool
}

/*!
	@protocol	AVPlayerViewControllerDelegate
	@abstract	A protocol for delegates of AVPlayerViewController.
 */
protocol AVPlayerViewControllerDelegate : ObjectProtocol {

  /*!
  	@method		playerViewController:willPresentInterstitialTimeRange:
  	@param		playerViewController
  				The player view controller.
  	@param		interstitial
  				The interstitial time range.
  	@abstract	The delegate can implement this method to be notified when the player view controller is about to present interstitial content to the user.
   */
  @available(tvOS 9.0, *)
  optional func playerViewController(playerViewController: AVPlayerViewController, willPresent interstitial: AVInterstitialTimeRange)

  /*!
  	@method		playerViewController:didPresentInterstitialTimeRange:
  	@param		playerViewController
  				The player view controller.
  	@param		interstitial
  				The interstitial time range.
  	@abstract	The delegate can implement this method to be notified when the player view controller has finished presenting interstitial content.
   */
  @available(tvOS 9.0, *)
  optional func playerViewController(playerViewController: AVPlayerViewController, didPresent interstitial: AVInterstitialTimeRange)

  /*!
  	@method		playerViewController:willResumePlaybackAfterUserNavigatedFromTime:toTime:
  	@param		playerViewController
  				The player view controller.
  	@param		oldTime
  				The playback time before the user began navigating.
  	@param		targetTime
  				The target playback time selected by the user.
  	@abstract	The delegate can implement this method to be notified when the user has skipped, scrubbed, or otherwise navigated to a new time, and playback is about to start at the new time.
  	@discussion	Compare with AVPlayerItemTimeJumpedNotification; this delegate method is delivered for (and only for) user-initiated changes to the playback time. If the user skips/scrubs several times before resuming playback, this method is only called once.
   */
  @available(tvOS 9.0, *)
  optional func playerViewController(playerViewController: AVPlayerViewController, willResumePlaybackAfterUserNavigatedFrom oldTime: CMTime, to targetTime: CMTime)

  /*!
  	@method		playerViewController:didSelectMediaSelectionOption:inMediaSelectionGroup:
  	@param		playerViewController
  				The player view controller.
  	@param		mediaSelectionOption
  				The selected media option.
  	@param		mediaSelectionGroup
  				The media selection group of the selected media option.
  	@abstract	The delegate can implement this method to be notified when the user has selected a option from a media selection group or deselected all of the options in the group.
  	@discussion	The media selection option will be nil when subtitles are turned off.
   */
  @available(tvOS 9.0, *)
  optional func playerViewController(playerViewController: AVPlayerViewController, didSelect mediaSelectionOption: AVMediaSelectionOption?, in mediaSelectionGroup: AVMediaSelectionGroup)
}
