
@available(iOS 9.0, *)
let SFContentBlockerErrorDomain: String
@available(iOS 9.0, *)
enum SFContentBlockerErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NoExtensionFound
  case NoAttachmentFound
  case LoadingInterrupted
}
@available(iOS 9.0, *)
class SFContentBlockerManager : NSObject {
  class func reloadContentBlockerWithIdentifier(identifier: String, completionHandler: ((NSError?) -> Void)?)
  init()
}

/*!
 @class SFSafariViewController
 A view controller for displaying web content in a Safari-like interface with some of Safari’s features. The
 web content in SFSafariViewController shares cookie and website data with web content opened in Safari.
 */
@available(iOS 9.0, *)
class SFSafariViewController : UIViewController {

  /*! @abstract The view controller's delegate */
  weak var delegate: @sil_weak SFSafariViewControllerDelegate?

  /*! @abstract Returns a view controller that loads a URL.
      @param URL, the URL to navigate to.
      @param entersReaderIfAvailable indicates if the Safari Reader version of content should be shown automatically
      when Safari Reader is available on a web page
   */
  init(URL: NSURL, entersReaderIfAvailable: Bool)

  /*! @abstract Returns a view controller that loads a URL.
      @param URL, the URL to navigate to.
   */
  convenience init(URL: NSURL)
}
@available(iOS 9.0, *)
protocol SFSafariViewControllerDelegate : NSObjectProtocol {

  /*! @abstract Called when the view controller is about to show UIActivityViewController after the user taps the action button.
      @param URL, the URL of the web page.
      @param title, the title of the web page.
      @result Returns an array of UIActivity instances that will be appended to UIActivityViewController.
   */
  optional func safariViewController(controller: SFSafariViewController, activityItemsForURL URL: NSURL, title: String?) -> [UIActivity]

  /*! @abstract Delegate callback called when the user taps the Done button. Upon this call, the view controller is dismissed modally. */
  optional func safariViewControllerDidFinish(controller: SFSafariViewController)

  /*! @abstract Invoked when the initial URL load is complete.
      @param success YES if loading completed successfully, NO if loading failed.
      @discussion This method is invoked when SFSafariViewController completes the loading of the URL that you pass
      to its initializer. It is not invoked for any subsequent page loads in the same SFSafariViewController instance.
   */
  optional func safariViewController(controller: SFSafariViewController, didCompleteInitialLoad didLoadSuccessfully: Bool)
}

/*!
    @class SSReadingList
    Provides an interface for adding to a user's Reading List.
*/
@available(iOS 7.0, *)
class SSReadingList : NSObject {

  /*!
      @method defaultReadingList
      @result Returns a pointer to a shared instance of SSReadingList, or nil if access to Reading List is not permitted.
      @discussion This class method to obtain the instance of SSReadingList should used instead of direct alloc and init.  
  */
  class func defaultReadingList() -> SSReadingList?

  /*!
      @method supportsURL:
      @abstract Determines if the provided URL can be added to Reading List.
      @param URL The URL to be tested for Reading List support.
      @result Returns YES if the URL is supported by Reading List, NO if not.
  */
  class func supportsURL(URL: NSURL) -> Bool

  /*!
      @method addReadingListItemWithURL:title:previewText:error:
      @abstract Adds an item to the Reading List.
      @param URL The URL of the item.
      @param title The title string of the item, or nil.
      @param previewText A string shown as detail text for the item, or nil.
      @param error Describes the error that occurred.
      @result Returns YES if the item was added, otherwise returns NO and error param is set.
      @discussion Only URLs with http:// or https:// schemes are supported by Reading List.
  */
  @available(iOS 7.0, *)
  func addReadingListItemWithURL(URL: NSURL, title: String?, previewText: String?) throws
}
@available(iOS 7.0, *)
let SSReadingListErrorDomain: String
@available(iOS 7.0, *)
enum SSReadingListErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case URLSchemeNotAllowed
}
