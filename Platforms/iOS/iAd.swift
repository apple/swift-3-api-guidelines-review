

/*!
 * @const ADErrorDomain
 *
 * @discussion
 * Error domain for NSErrors passed to the following delegate methods:
 *
 *   • -[ADBannerViewDelegate bannerView:didFailToReceiveAdWithError:]
 *   • -[ADInterstitialAdDelegate interstitialAd:didFailWithError:]
 *
 */
let ADErrorDomain: String

/*!
 * @enum ADError
 *
 * @const ADErrorUnknown
 * General errors that aren't covered by one of the more specific error reasons.
 *
 * @const ADErrorServerFailure
 * Unable to request ads and their resources from the iAd service.
 *
 * @const ADErrorInventoryUnavailable
 * No ads are available at the moment. Note that this error is *always* returned
 * to iPhone apps running in compatibility mode on iPad, since ads are not
 * supported in that configuration.
 *
 * @const ADErrorConfigurationError
 * There are iAd configuration issues that need to be resolved before ads can be
 * served. Generally, this means visiting ADC <http://developer.apple.com/>.
 *
 * @const ADErrorBannerVisibleWithoutContent
 * The banner is visible but had no ad. Generally, this means a banner was made
 * visible before the -bannerViewDidLoadAd: delegate method was called, or
 * remained visible after the -bannerView:didFailToReceiveAdWithError: delegate
 * method was called.
 *
 * @const ADErrorAdUnloaded
 * The ad being displayed in the banner was unloaded. Some examples of when this
 * might happen is when an ad expires, or when an ad is moved from a non-visible
 * banner to a visible banner.
 *
 * @const ADErrorLoadingThrottled
 * Unused.
 *
 * @const ADErrorApplicationInactive
 * Unused.
 *
 * @discussion
 * Error codes for NSErrors passed to the delegate via the
 * bannerView:didFailToReceiveAdWithError: delegate method.
 */
@available(iOS 4.0, *)
enum ADError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case ServerFailure
  case LoadingThrottled
  case InventoryUnavailable
  case ConfigurationError
  case BannerVisibleWithoutContent
  case ApplicationInactive
  case AdUnloaded
}

/*!
 * @enum ADAdType
 *
 * @const ADAdTypeBanner A device-width banner ad. The banner height varies with
 * device type and orientation:
 *
 *   • On iPhone; portrait = DEVICE_WIDTH × 50px, landscape = DEVICE_WIDTH × 32px
 *   • On iPad; both portrait & landscape = DEVICE_WIDTH × 66px
 *
 * @const ADAdTypeMediumRectangle An 320 × 250px ad, based on the International
 * Advertising Bureau's "Medium Rectangle" Interactive Marketing Unit.
 *
 * @discussion
 * Ad types that can be passed to -[ADBannerView -initWithAdType:].
 */
@available(iOS 6.0, *)
enum ADAdType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Banner
  case MediumRectangle
}

/*!
 * @class ADBannerView
 *
 * @discussion
 * Provides a view for displaying iAds in an application. iAds are automatically
 * loaded, presented, and refreshed. When a banner view is tapped, the iAd will
 * begin its action. In most cases, the action displays a fullscreen interactive
 * iAd.
 *
 * Note: ADBannerViews must be added to a view hierarchy managed by a
 * UIViewController. If view controller containment is being used, the controller
 * managing the banner view must be correctly configured to ensure banner action
 * presentation works correctly.
 */
@available(iOS 4.0, *)
class ADBannerView : UIView {

  /*!
   * @method initWithAdType:
   *
   * @discussion
   * Initialize the view with a specific ad type. The ad type cannot be changed
   * after initialization.
   */
  @available(iOS 6.0, *)
  init!(adType type: ADAdType)

  /*!
   * @property adType
   *
   * @return
   * The banner view's ad type.
   */
  @available(iOS 6.0, *)
  var adType: ADAdType { get }

  /*!
   * @property delegate
   *
   * @discussion
   * The banner view delegate is notified when events related to the banner view
   * and current ad occur, such as when a new ad is loaded, when errors occur
   * while fetching ads, or when banner actions begin and end.
   *
   * On iOS 5 and later, this property is a weak reference and cannot be used with
   * objects that modify the behavior of release or retain.
   */
  weak var delegate: @sil_weak ADBannerViewDelegate!

  /*!
   * @property bannerLoaded
   *
   * @return
   * YES if an ad is currently loaded, NO otherwise.
   */
  var isBannerLoaded: Bool { get }

  /*!
   * @property bannerViewActionInProgress
   *
   * @return
   * YES if the user is currently engaged with a fullscreen interactive ad.
   */
  var isBannerViewActionInProgress: Bool { get }

  /*!
   * @method cancelBannerViewAction
   *
   * @discussion
   * Cancels the current in-progress banner view action. This should only be used
   * in cases where the user's attention is required immediately.
   */
  func cancelAction()

  /*!
   * @property advertisingSection
   *
   * @discussion
   * Reserved for future use.
   */
  var advertisingSection: String!
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}

/*!
 * @protocol ADBannerViewDelegate
 */
protocol ADBannerViewDelegate : NSObjectProtocol {

  /*!
   * @method bannerViewWillLoadAd:
   *
   * @discussion
   * Called when a banner has confirmation that an ad will be presented, but
   * before the resources necessary for presentation have loaded.
   */
  @available(iOS 5.0, *)
  optional func bannerViewWillLoadAd(banner: ADBannerView!)

  /*!
   * @method bannerViewDidLoadAd:
   *
   * @discussion
   * Called each time a banner loads a new ad. Once a banner has loaded an ad, it
   * will display it until another ad is available.
   *
   * It's generally recommended to show the banner view when this method is called,
   * and hide it again when bannerView:didFailToReceiveAdWithError: is called.
   */
  @available(iOS 4.0, *)
  optional func bannerViewDidLoadAd(banner: ADBannerView!)

  /*!
   * @method bannerView:didFailToReceiveAdWithError:
   *
   * @discussion
   * Called when an error has occurred while attempting to get ad content. If the
   * banner is being displayed when an error occurs, it should be hidden
   * to prevent display of a banner view with no ad content.
   *
   * @see ADError for a list of possible error codes.
   */
  @available(iOS 4.0, *)
  optional func bannerView(banner: ADBannerView!, didFailToReceiveAdWithError error: NSError!)

  /*!
   * @method bannerViewActionShouldBegin:willLeaveApplication:
   *
   * Called when the user taps on the banner and some action is to be taken.
   * Actions either display full screen content modally, or take the user to a
   * different application.
   *
   * The delegate may return NO to block the action from taking place, but this
   * should be avoided if possible because most ads pay significantly more when
   * the action takes place and, over the longer term, repeatedly blocking actions
   * will decrease the ad inventory available to the application.
   *
   * Applications should reduce their own activity while the advertisement's action
   * executes.
   */
  @available(iOS 4.0, *)
  optional func bannerViewActionShouldBegin(banner: ADBannerView!, willLeaveApplication willLeave: Bool) -> Bool

  /*!
   * @method bannerViewActionDidFinish:
   *
   * Called when a modal action has completed and control is returned to the
   * application. Games, media playback, and other activities that were paused in
   * bannerViewActionShouldBegin:willLeaveApplication: should resume at this point.
   */
  @available(iOS 4.0, *)
  optional func bannerViewActionDidFinish(banner: ADBannerView!)
}

/*!
 * @category ADBannerView (Deprecated)
 *
 * @discussion
 * These banner view resizing APIs have been deprecated and should no longer be
 * used when targeting iOS 6.0 or later.
 *
 * To resize a banner view on iOS 6.0 or later, call -sizeThatFits: on the banner
 * view, specifying the bounds of the view that contains your banner, and use the
 * returned size to resize the banner view. Based on the size you provide, the
 * banner will be sized to the correct width and height for the current device
 * type and orientation, as per the ADAdTypeBanner documentation.
 *
 * A full example of this - including how to handle resizing on devices running
 * older versions of iOS - can be found in the 'iAdSuite' sample project on the
 * ADC website <http://developer.apple.com>.
 */
extension ADBannerView {
}
@available(iOS 7.1, *)
class ADClient : NSObject {

  /*!
   * @method sharedClient
   *
   * @return
   * The shared singleton instance of ADClient.
   *
   * @discussion
   * ADClient is a singleton object.
   */
  @available(iOS 7.1, *)
  class func shared() -> ADClient!

  /*!
   * @method determineAppInstallationAttributionWithCompletionHandler:
   *
   * @param completionHandler
   * A block accepting one BOOL argument that will be called when app installation
   * attribution status has been determined. If this installation of the app is
   * attributed to an iAd impression, the completion handler will be called with
   * YES. Otherwise, or if the user has enabled Limit Ad Tracking, the completion
   * handler will be called with NO.
   *
   * The handler will be called on an arbitrary queue.
   *
   * @discussion
   * Provides a way for an app to determine if it was installed by the user in
   * response to seeing an iAd for the app.
   */
  @available(iOS, introduced=7.1, deprecated=9.0, message="Use requestAttributionDetailsWithBlock instead.")
  func determineAppInstallationAttributionWithCompletionHandler(completionHandler: ((Bool) -> Void)!)

  /*!
   * @method lookupAdConversionDetails:
   *
   * @param completionHandler
   * A block which will be called with the app purchase date and the date at which
   * the user saw an iAd for the app. If no conversion has been tracked, or if
   * Limit Ad Tracking is enabled on the device, both dates will be nil.
   *
   * The handler will be called on an arbitrary queue.
   *
   * @discussion
   * Provides a way for an app to determine when an iAd was shown to the user
   * which resulted in the user's purchase of the app.
   */
  @available(iOS, introduced=8.0, deprecated=9.0, message="Use requestAttributionDetailsWithBlock instead.")
  func lookupAdConversionDetails(completionHandler: ((NSDate!, NSDate!) -> Void)!)

  /*!
   * @method requestAttributionDetailsWithBlock:
   *
   * @param completionHandler
   * A block which will be called with details related to the attribution status of the app.
   * The attributionDetails dictionary will contain purchase and impression dates
   * as well as other specific campaign related information provided by iAd. If the attributionDetails
   * dictionary is nil, an NSError is passed with an ADClientError enum.
   *
   * The handler will be called on an arbitrary queue.
   *
   * @discussion
   * Provides a way for an app to determine when an iAd was shown to the user
   * which resulted in the user's purchase of the app.
   */
  @available(iOS 9.0, *)
  func requestAttributionDetailsWith(completionHandler: (([NSObject : AnyObject]!, NSError!) -> Void)!)

  /*!
   * @method addClientToSegments:replaceExisting:
   *
   * @param segmentIdentifiers
   * Array of NSString objects identifying which segments to add the client to.
   * May be nil.
   *
   * @param replaceExisting
   * If YES, the client will be removed from all existing segments prior to
   * being added to the specified segments.
   *
   * @discussion
   * Enables apps to add users to custom segments owned and defined by the calling
   * application.  If Limit Ad Tracking is enabled on the device, this method will
   * have no effect.
   */
  @available(iOS 8.0, *)
  func addToSegments(segmentIdentifiers: [AnyObject]!, replaceExisting: Bool)
  init()
}

/*!
 * @const ADClientErrorDomain
 *
 * @discussion
 * Error domain for NSErrors passed to the completionHandler as a 
 * result of calling:
 *
 *   • -[[ADClient SharedClient] requestAttributionDetailsWithBlock]
 *
 */
let ADClientErrorDomain: String

/*!
 * @enum ADClientError
 *
 * @const ADClientErrorUnknown
 * General errors that aren't covered by one of the more specific error reasons.
 * This is generally related to connectivity issues.
 *
 * @const ADClientErrorLimitAdTracking
 * The device has Limit Ad Tracking enabled. It will not be possible to recieve
 * attribution details for app purchases made on this device.
 *
 * @discussion
 * Error codes for NSErrors passed to the completionHandler block
 * when calling the requestAttributionDetailsWithBlock method.
 */
enum ADClientError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case LimitAdTracking
}

/*!
 * ADInterstitialAd is a full screen advertisement, available on iPad since
 * iOS 4.3, and on iPhone since iOS 7.0.
 *
 * There are three ways to display an ADInterstitialAd:
 *
 *   • By providing a container view and calling -presentInView:
 *   • By providing a view controller and calling -presentFromViewController:
 *   • Indirectly, by setting the interstitial presentation policy on a view
 *     controller to Automatic or Manual (via -[UIViewController setInterstitialPresentationPolicy:]),
 *     and letting the framework manage presentation.
 *
 * An ADInterstitialAd should not be presented until it has loaded content. This
 * is indicated via the -interstitialAdDidLoad: delegate method, and can also be
 * queried via the loaded property. If the interstitial ad is presented when
 * loaded=NO, an exception will be thrown.
 *
 * Note that using interstitial ads on iPhones running iOS < 7.0 will cause an
 * exception to be thrown.
 */
@available(iOS 4.3, *)
class ADInterstitialAd : NSObject {

  /*!
   * @property delegate
   *
   * @discussion
   * The interstitial ad delegate is notified when it has loaded, when errors
   * occur in getting ads, when actions begin and end, and when it has unloaded.
   *
   * On iOS 5 and later, this property is a weak reference and cannot be used with
   * objects that modify the behavior of release or retain.
   */
  weak var delegate: @sil_weak ADInterstitialAdDelegate!

  /*!
   * @property loaded
   *
   * @return
   * YES if an ad is loaded, NO otherwise. This property should always be checked
   * before the interstitial ad is presented.
   */
  var isLoaded: Bool { get }

  /*!
   * @property actionInProgress
   *
   * @discussion
   * Actions display full screen content in a modal session. Use this property to
   * determine if such an action is currently in progress.
   */
  var isActionInProgress: Bool { get }

  /*!
   * @property cancelAction
   *
   * @discussion
   * Cancels the current in-progress action. This should only be used in cases
   * where the user's attention is required immediately. If this method is called,
   * -interstitialAdActionDidFinish: will not be called.
   */
  func cancelAction()
  func presentIn(containerView: UIView!) -> Bool
  init()
}

/*!
 * @protocol ADInterstitialAdDelegate
 */
protocol ADInterstitialAdDelegate : NSObjectProtocol {

  /*!
   * @method interstitialAdDidUnload:
   *
   * @discussion
   * When this method is invoked, if the application is using -presentInView:, the
   * content will be unloaded from the container shortly after this method is
   * called and no new content will be loaded. This may occur either as a result
   * of user actions or if the ad content has expired.
   *
   * In the case of an interstitial presented via -presentInView:, the layout of
   * the app should be updated to reflect that an ad is no longer visible. e.g.
   * by removing the view used for presentation and replacing it with another view.
   */
  @available(iOS 4.3, *)
  func interstitialAdDidUnload(interstitialAd: ADInterstitialAd!)

  /*!
   * @method interstitialAd:didFailWithError:
   *
   * @discussion
   * Called when an error has occurred attempting to get ad content.
   *
   * @see ADError for a list of possible error codes.
   */
  @available(iOS 4.3, *)
  func interstitialAd(interstitialAd: ADInterstitialAd!, didFailWithError error: NSError!)

  /*!
   * @method interstitialAdWillLoad:
   *
   * @discussion
   * Called when the interstitial has confirmation that an ad will be presented,
   * but before the ad has loaded resources necessary for presentation.
   */
  @available(iOS 5.0, *)
  optional func interstitialAdWillLoad(interstitialAd: ADInterstitialAd!)

  /*!
   * @method interstitialAdDidLoad:
   *
   * @discussion
   * Called when the interstitial ad has finished loading ad content. The delegate
   * should implement this method so it knows when the interstitial ad is ready to
   * be presented.
   */
  @available(iOS 4.3, *)
  optional func interstitialAdDidLoad(interstitialAd: ADInterstitialAd!)

  /*!
   * @method interstitialAdActionShouldBegin:willLeaveApplication:
   *
   * @discussion
   * Called when the user chooses to interact with the interstitial ad.
   *
   * The delegate may return NO to block the action from taking place, but this
   * should be avoided if possible because most ads pay significantly more when
   * the action takes place and, over the longer term, repeatedly blocking actions
   * will decrease the ad inventory available to the application.
   *
   * Applications should reduce their own activity while the advertisement's action
   * executes.
   */
  @available(iOS 4.3, *)
  optional func interstitialAdActionShouldBegin(interstitialAd: ADInterstitialAd!, willLeaveApplication willLeave: Bool) -> Bool

  /*!
   * @method interstitialAdActionDidFinish:
   * This message is sent when the action has completed and control is returned to
   * the application. Games, media playback, and other activities that were paused
   * in response to the beginning of the action should resume at this point.
   */
  @available(iOS 4.3, *)
  optional func interstitialAdActionDidFinish(interstitialAd: ADInterstitialAd!)
}
extension AVPlayerViewController {

  /*!
   * @method +preparePrerollAds
   *
   * @discussion
   * Inform iAd that the application intends to use AVPlayerViewController's
   * -playPrerollAdWithCompletionHandler: API. Ad metadata will be fetched eagerly,
   * increasing the likelihood of an ad being available when first requested.
   */
  @available(iOS 8.0, *)
  class func preparePrerollAds()

  /*!
   * @method -playPrerollAdWithCompletionHandler:
   *
   * @discussion
   * Request playback of a pre-roll video iAd.
   *
   * If -[AVPlayerViewController player] begins playing during a pre-roll ad, the
   * video ad will stop immediately.
   *
   * The completion handler's error argument will be non-nil if the pre-roll ad
   * could not be played. Errors can occur for a number of reasons, such as lack
   * of ad inventory, exceeding the maximum pre-roll ad playback frequency, iAd
   * account configuration issues, and media playback issues. See ADError for an
   * exhaustive list of possible errors.
   *
   * Passing nil as the completion handler is an error and will throw an exception.
   */
  @available(iOS 8.0, *)
  func playPrerollAdWithCompletionHandler(completionHandler: ((NSError!) -> Void)!)

  /*!
   * @method -cancelPreroll
   *
   * @discussion
   * Cancel pre-roll video ad playback.
   */
  @available(iOS 8.0, *)
  func cancelPreroll()
}

/*!
 * @category MPMoviePlayerController (iAdPreroll)
 *
 * @dependency MediaPlayer.framework
 * 
 * @discussion
 * Adds optional pre-roll advertising support to MPMoviePlayerController.
 */
extension MPMoviePlayerController {

  /*!
   * @method +preparePrerollAds
   *
   * @discussion
   * Inform iAd that the application intends to use MPMoviePlayerController's
   * -playPrerollAdWithCompletionHandler: API. Ad metadata will be fetched eagerly,
   * increasing the likelihood of an ad being available when first requested.
   */
  @available(iOS 7.0, *)
  class func preparePrerollAds()

  /*!
   * @method -playPrerollAdWithCompletionHandler:
   *
   * @discussion
   * Request playback of a pre-roll video iAd.
   *
   * When the completion handler is called, the MPMoviePlayerController's -play
   * API can be called if a contentURL or asset is configured, or the controller's
   * view can be dismissed.
   *
   * The completion handler's error argument will be non-nil if the pre-roll ad
   * could not be played. Errors can occur for a number of reasons, such as lack
   * of ad inventory, exceeding the maximum pre-roll ad playback frequency, iAd
   * account configuration issues, and media playback issues. See ADError for an
   * exhaustive list of possible errors.
   *
   * Passing nil as the completion handler is an error and will throw an exception.
   *
   * NOTE: The MPMoviePlayerController must not be playing (or configured to
   * autoplay) when -playPrerollAdWithCompletionHandler: is called. If the
   * MPMoviePlayerController starts regular playback during pre-roll playback, the
   * ad will be skipped immediately.
   */
  @available(iOS 7.0, *)
  func playPrerollAdWithCompletionHandler(completionHandler: ((NSError!) -> Void)!)

  /*!
   * @method -cancelPreroll
   *
   * @discussion
   * Cancel pre-roll video ad playback.
   */
  @available(iOS 8.0, *)
  func cancelPreroll()
}

/*!
 * @enum ADInterstitialPresentationPolicy
 *
 * @constant ADInterstitialPresentationPolicyNone Default policy - this is effectively
 * the same as the Manual policy except that setting the Manual policy will trigger
 * the +prepareInterstitialAds logic if needed.
 *
 * @constant ADInterstitialPresentationPolicyAutomatic Automatic policy - the framework
 * determines when an interstitial will be presented.
 *
 * @constant ADInterstitialPresentationPolicyManual Manual policy - the application
 * determines when an interstitial should be presented and calls an API from the
 * iAdAdditions category.
 *
 * @discussion
 * Policy options governing how and when interstitial ads may be presented from
 * a given view controller.
 */
@available(iOS 7.0, *)
enum ADInterstitialPresentationPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Automatic
  case Manual
}

/*!
 * @category UIViewController (iAdAdditions)
 *
 * @discussion
 * This category on UIViewController provides an interface for configuring the kind
 * of ads that should be shown with the view controller's content. Two types of
 * ads may be shown - banners and interstitials. Banner ads will be displayed below
 * the content which will be resized appropriately based on the size of the banner.
 * Interstitials can be displayed automatically or upon request. Automatic display
 * of interstitials will be tied to the appearance of the view, with the frequency
 * of presentation managed by the framework. On-request display of interstitials
 * is subject to similar internal constraints.
*/
extension UIViewController {

  /*!
   * @method prepareInterstitials
   *
   * @discussion
   * Ads involve network requests, so if an application needs to use interstitial
   * ads and wants to ensure early availability, this method can be called to trigger
   * a prefetch. If this method is not called, the first fetch will occur when a
   * view controller's interstitialPresentationPolicy is set to something other
   * than ADInterstitialPresentationPolicyNone.
   */
  @available(iOS 7.0, *)
  class func prepareInterstitialAds()

  /*!
   * @property interstitialPresentationPolicy
   *
   * @discussion
   * The presentation policy determines whether the timing of presentation is entirely
   * managed by the framework or should only take place when the application calls
   * -requestInterstitialAdPresentation. By default the policy is "None", so to be
   * able to present an interstitial it must be changed to either "Automatic" or "Manual".
   */
  @available(iOS 7.0, *)
  var interstitialPresentationPolicy: ADInterstitialPresentationPolicy

  /*!
   * @property canDisplayBannerAds
   *
   * @discussion
   * Set this to enable automatic management of banner ad display with the view controller.
   * It's important to note that this will modify the view hierarchy of the view controller
   * by inserting a new container view above the view controller's view. The impact
   * is that the view controller's view property will no longer return the originally
   * provided view, it will return the new container. To access the original view,
   * use the originalContentView property.
   *
   * @seealso originalContentView
   */
  @available(iOS 7.0, *)
  var canDisplayBannerAds: Bool

  /*!
   * @property originalContentView
   *
   * @discussion
   * If banner ads have not been enabled, originalContentView will return the view
   * controller's view. If banner ads are enabled, originalContentView returns the
   * view that was previously the view controller's view. If banner ads are then subsequently
   * disabled, the view controller's content view will remain embedded - that operation
   * will not be reversed.
   */
  @available(iOS 7.0, *)
  var originalContentView: UIView! { get }

  /*!
   * @property presentingFullScreenAd
   *
   * @discussion
   * Can be used to query the controller to determine if it is presenting a full screen
   * ad, which may be an interstitial or the iAd shown when the user taps a banner.
   */
  @available(iOS 7.0, *)
  var isPresentingFullScreenAd: Bool { get }

  /*!
   * @property displayingBannerAd
   *
   * @discussion
   * Can be used to query the controller to determine if it is displaying a banner ad.
   */
  @available(iOS 7.0, *)
  var isDisplayingBannerAd: Bool { get }

  /*!
   * @method requestInterstitialAdPresentation
   *
   * @return
   * Returns YES if an interstitial can be displayed, NO if not.
   *
   * @discussion
   * Call at any time to request that an interstitial ad be presented. This is appropriate
   * for view controllers that are on screen for long periods of time and internally
   * manage significant state changes, such as game levels. Returns YES if an interstitial
   * will be presented.
   */
  @available(iOS 7.0, *)
  func requestInterstitialAdPresentation() -> Bool

  /*!
   * @method shouldPresentInterstitialAd
   *
   * @return
   * Should return YES to allow presentation to proceed, NO to prevent it. The default
   * implementation always returns YES.
   *
   * @discussion
   * Subclasses should override this method if they use ADInterstitialPresentationPolicyAutomatic
   * and require the ability to selectively prevent presentation based on application
   * state. The method will be invoked when the framework is about to present an interstitial
   * ad in the ADInterstitialPresentationPolicyAutomatic configuration.
   */
  @available(iOS 7.0, *)
  var shouldPresentInterstitialAd: Bool { get }
}
