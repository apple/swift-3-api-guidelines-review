

/*! @abstract A WKBackForwardList object is a list of webpages previously
 visited in a web view that can be reached by going back or forward.
 */
@available(iOS 8.0, *)
class WKBackForwardList : Object {

  /*! @abstract The current item.
   */
  var currentItem: WKBackForwardListItem? { get }

  /*! @abstract The item immediately preceding the current item, or nil
  if there isn't one.
   */
  var backItem: WKBackForwardListItem? { get }

  /*! @abstract The item immediately following the current item, or nil
  if there isn't one.
   */
  var forwardItem: WKBackForwardListItem? { get }

  /*! @abstract Returns the item at a specified distance from the current
   item.
   @param index Index of the desired list item relative to the current item:
   0 for the current item, -1 for the immediately preceding item, 1 for the
   immediately following item, and so on.
   @result The item at the specified distance from the current item, or nil
   if the index parameter exceeds the limits of the list.
   */
  func itemAt(index: Int) -> WKBackForwardListItem?

  /*! @abstract The portion of the list preceding the current item.
   @discussion The items are in the order in which they were originally
   visited.
   */
  var backList: [WKBackForwardListItem] { get }

  /*! @abstract The portion of the list following the current item.
   @discussion The items are in the order in which they were originally
   visited.
   */
  var forwardList: [WKBackForwardListItem] { get }
  init()
}

/*! A WKBackForwardListItem object represents a webpage in the back-forward list of a web view.
 */
@available(iOS 8.0, *)
class WKBackForwardListItem : Object {

  /*! @abstract The URL of the webpage represented by this item.
   */
  @NSCopying var url: URL { get }

  /*! @abstract The title of the webpage represented by this item.
   */
  var title: String? { get }

  /*! @abstract The URL of the initial request that created this item.
   */
  @NSCopying var initialURL: URL { get }
  init()
}

/*! @constant WKErrorDomain Indicates a WebKit error. */
@available(iOS 8.0, *)
let WKErrorDomain: String

/*! @enum WKErrorCode
 @abstract Constants used by NSError to indicate errors in the WebKit domain.
 @constant WKErrorUnknown                           Indicates that an unknown error occurred.
 @constant WKErrorWebContentProcessTerminated       Indicates that the Web Content process was terminated.
 @constant WKErrorWebViewInvalidated                Indicates that the WKWebView was invalidated.
 @constant WKErrorJavaScriptExceptionOccurred       Indicates that a JavaScript exception occurred.
 @constant WKErrorJavaScriptResultTypeIsUnsupported Indicates that the result of JavaScript execution could not be returned.
 */
@available(iOS 8.0, *)
enum WKErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case WebContentProcessTerminated
  case WebViewInvalidated
  case JavaScriptExceptionOccurred
  @available(iOS 9.0, *)
  case JavaScriptResultTypeIsUnsupported
}

@available(OSX 10.10, iOS 8.0, *)
extension WKErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
var WK_API_ENABLED: Int32 { get }

/*! A WKFrameInfo object contains information about a frame on a webpage.
 @discussion An instance of this class is a transient, data-only object;
 it does not uniquely identify a frame across multiple delegate method
 calls.
 */
@available(iOS 8.0, *)
class WKFrameInfo : Object, Copying {

  /*! @abstract A Boolean value indicating whether the frame is the main frame
   or a subframe.
   */
  var isMainFrame: Bool { get }

  /*! @abstract The frame's current request.
   */
  @NSCopying var request: URLRequest { get }

  /*! @abstract The frame's current security origin.
   */
  @available(iOS 9.0, *)
  var securityOrigin: WKSecurityOrigin { get }
  init()
  @available(iOS 8.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}

/*! A WKNavigation object can be used for tracking the loading progress of a webpage.
 @discussion A navigation is returned from the web view load methods, and is
 also passed to the navigation delegate methods, to uniquely identify a webpage
 load from start to finish.
 */
@available(iOS 8.0, *)
class WKNavigation : Object {
  init()
}

/*! @enum WKNavigationType
 @abstract The type of action triggering a navigation.
 @constant WKNavigationTypeLinkActivated    A link with an href attribute was activated by the user.
 @constant WKNavigationTypeFormSubmitted    A form was submitted.
 @constant WKNavigationTypeBackForward      An item from the back-forward list was requested.
 @constant WKNavigationTypeReload           The webpage was reloaded.
 @constant WKNavigationTypeFormResubmitted  A form was resubmitted (for example by going back, going forward, or reloading).
 @constant WKNavigationTypeOther            Navigation is taking place for some other reason.
 */
@available(iOS 8.0, *)
enum WKNavigationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LinkActivated
  case FormSubmitted
  case BackForward
  case Reload
  case FormResubmitted
  case Other
}

/*! 
A WKNavigationAction object contains information about an action that may cause a navigation, used for making policy decisions.
 */
@available(iOS 8.0, *)
class WKNavigationAction : Object {

  /*! @abstract The frame requesting the navigation.
   */
  @NSCopying var sourceFrame: WKFrameInfo { get }

  /*! @abstract The target frame, or nil if this is a new window navigation.
   */
  @NSCopying var targetFrame: WKFrameInfo? { get }

  /*! @abstract The type of action that triggered the navigation.
   @discussion The value is one of the constants of the enumerated type WKNavigationType.
   */
  var navigationType: WKNavigationType { get }

  /*! @abstract The navigation's request.
   */
  @NSCopying var request: URLRequest { get }
  init()
}

/*! @enum WKNavigationActionPolicy
 @abstract The policy to pass back to the decision handler from the
 webView:decidePolicyForNavigationAction:decisionHandler: method.
 @constant WKNavigationActionPolicyCancel   Cancel the navigation.
 @constant WKNavigationActionPolicyAllow    Allow the navigation to continue.
 */
@available(iOS 8.0, *)
enum WKNavigationActionPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Cancel
  case Allow
}

/*! @enum WKNavigationResponsePolicy
 @abstract The policy to pass back to the decision handler from the webView:decidePolicyForNavigationResponse:decisionHandler: method.
 @constant WKNavigationResponsePolicyCancel   Cancel the navigation.
 @constant WKNavigationResponsePolicyAllow    Allow the navigation to continue.
 */
@available(iOS 8.0, *)
enum WKNavigationResponsePolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Cancel
  case Allow
}

/*! A class conforming to the WKNavigationDelegate protocol can provide
 methods for tracking progress for main frame navigations and for deciding
 policy for main frame and subframe navigations.
 */
protocol WKNavigationDelegate : ObjectProtocol {

  /*! @abstract Decides whether to allow or cancel a navigation.
   @param webView The web view invoking the delegate method.
   @param navigationAction Descriptive information about the action
   triggering the navigation request.
   @param decisionHandler The decision handler to call to allow or cancel the
   navigation. The argument is one of the constants of the enumerated type WKNavigationActionPolicy.
   @discussion If you do not implement this method, the web view will load the request or, if appropriate, forward it to another application.
   */
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: (WKNavigationActionPolicy) -> Void)

  /*! @abstract Decides whether to allow or cancel a navigation after its
   response is known.
   @param webView The web view invoking the delegate method.
   @param navigationResponse Descriptive information about the navigation
   response.
   @param decisionHandler The decision handler to call to allow or cancel the
   navigation. The argument is one of the constants of the enumerated type WKNavigationResponsePolicy.
   @discussion If you do not implement this method, the web view will allow the response, if the web view can show it.
   */
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: (WKNavigationResponsePolicy) -> Void)

  /*! @abstract Invoked when a main frame navigation starts.
   @param webView The web view invoking the delegate method.
   @param navigation The navigation.
   */
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!)

  /*! @abstract Invoked when a server redirect is received for the main
   frame.
   @param webView The web view invoking the delegate method.
   @param navigation The navigation.
   */
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, didReceiveServerRedirectForProvisionalNavigation navigation: WKNavigation!)

  /*! @abstract Invoked when an error occurs while starting to load data for
   the main frame.
   @param webView The web view invoking the delegate method.
   @param navigation The navigation.
   @param error The error that occurred.
   */
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error)

  /*! @abstract Invoked when content starts arriving for the main frame.
   @param webView The web view invoking the delegate method.
   @param navigation The navigation.
   */
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, didCommit navigation: WKNavigation!)

  /*! @abstract Invoked when a main frame navigation completes.
   @param webView The web view invoking the delegate method.
   @param navigation The navigation.
   */
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, didFinishNavigation navigation: WKNavigation!)

  /*! @abstract Invoked when an error occurs during a committed main frame
   navigation.
   @param webView The web view invoking the delegate method.
   @param navigation The navigation.
   @param error The error that occurred.
   */
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error)

  /*! @abstract Invoked when the web view needs to respond to an authentication challenge.
   @param webView The web view that received the authentication challenge.
   @param challenge The authentication challenge.
   @param completionHandler The completion handler you must invoke to respond to the challenge. The
   disposition argument is one of the constants of the enumerated type
   NSURLSessionAuthChallengeDisposition. When disposition is NSURLSessionAuthChallengeUseCredential,
   the credential argument is the credential to use, or nil to indicate continuing without a
   credential.
   @discussion If you do not implement this method, the web view will respond to the authentication challenge with the NSURLSessionAuthChallengeRejectProtectionSpace disposition.
   */
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, didReceive challenge: URLAuthenticationChallenge, completionHandler: (URLSessionAuthChallengeDisposition, URLCredential?) -> Void)

  /*! @abstract Invoked when the web view's web content process is terminated.
   @param webView The web view whose underlying web content process was terminated.
   */
  @available(iOS 9.0, *)
  optional func webViewWebContentProcessDidTerminate(webView: WKWebView)
}

/*! Contains information about a navigation response, used for making policy decisions.
 */
@available(iOS 8.0, *)
class WKNavigationResponse : Object {

  /*! @abstract A Boolean value indicating whether the frame being navigated is the main frame.
   */
  var isForMainFrame: Bool { get }

  /*! @abstract The frame's response.
   */
  @NSCopying var response: URLResponse { get }

  /*! @abstract A Boolean value indicating whether WebKit can display the response's MIME type natively.
   @discussion Allowing a navigation response with a MIME type that can't be shown will cause the navigation to fail.
   */
  var canShowMIMEType: Bool { get }
  init()
}

/*! A WKPreferences object encapsulates the preference settings for a web
 view. The preferences object associated with a web view is specified by
 its web view configuration.
 */
@available(iOS 8.0, *)
class WKPreferences : Object {

  /*! @abstract The minimum font size in points.
   @discussion The default value is 0.
   */
  var minimumFontSize: CGFloat

  /*! @abstract A Boolean value indicating whether JavaScript is enabled.
   @discussion The default value is YES.
   */
  var javaScriptEnabled: Bool

  /*! @abstract A Boolean value indicating whether JavaScript can open
   windows without user interaction.
   @discussion The default value is NO in iOS and YES in OS X.
   */
  var javaScriptCanOpenWindowsAutomatically: Bool
  init()
}

/*! A WKProcessPool object represents a pool of web content processes.
 The process pool associated with a web view is specified by its web view
 configuration. Each web view is given its own web content process until an
 implementation-defined process limit is reached; after that, web views
 with the same process pool end up sharing web content processes.
 */
@available(iOS 8.0, *)
class WKProcessPool : Object {
  init()
}

/*! A WKScriptMessage object contains information about a message sent from
 a webpage.
 */
@available(iOS 8.0, *)
class WKScriptMessage : Object {

  /*! @abstract The body of the message.
   @discussion Allowed types are NSNumber, NSString, NSDate, NSArray,
   NSDictionary, and NSNull.
   */
  @NSCopying var body: AnyObject { get }

  /*! @abstract The web view sending the message. */
  weak var webView: @sil_weak WKWebView? { get }

  /*! @abstract The frame sending the message. */
  @NSCopying var frameInfo: WKFrameInfo { get }

  /*! @abstract The name of the message handler to which the message is sent.
   */
  var name: String { get }
  init()
}

/*! A class conforming to the WKScriptMessageHandler protocol provides a
 method for receiving messages from JavaScript running in a webpage.
 */
protocol WKScriptMessageHandler : ObjectProtocol {

  /*! @abstract Invoked when a script message is received from a webpage.
   @param userContentController The user content controller invoking the
   delegate method.
   @param message The script message received.
   */
  @available(iOS 8.0, *)
  func userContentController(userContentController: WKUserContentController, didReceive message: WKScriptMessage)
}

/*! A WKSecurityOrigin object contains information about a security origin.
 @discussion An instance of this class is a transient, data-only object;
 it does not uniquely identify a security origin across multiple delegate method
 calls.
 */
@available(iOS 9.0, *)
class WKSecurityOrigin : Object {

  /*! @abstract The security origin's protocol.
   */
  var `protocol`: String { get }

  /*! @abstract The security origin's host.
   */
  var host: String { get }

  /*! @abstract The security origin's port.
   */
  var port: Int { get }
}

/*! A class conforming to the WKUIDelegate protocol provides methods for
 presenting native UI on behalf of a webpage.
 */
protocol WKUIDelegate : ObjectProtocol {

  /*! @abstract Creates a new web view.
   @param webView The web view invoking the delegate method.
   @param configuration The configuration to use when creating the new web
   view.
   @param navigationAction The navigation action causing the new web view to
   be created.
   @param windowFeatures Window features requested by the webpage.
   @result A new web view or nil.
   @discussion The web view returned must be created with the specified configuration. WebKit will load the request in the returned web view.
  
   If you do not implement this method, the web view will cancel the navigation.
   */
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, forNavigationAction navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView?

  /*! @abstract Notifies your app that the DOM window object's close() method completed successfully.
    @param webView The web view invoking the delegate method.
    @discussion Your app should remove the web view from the view hierarchy and update
    the UI as needed, such as by closing the containing browser tab or window.
    */
  @available(iOS 9.0, *)
  optional func webViewDidClose(webView: WKWebView)

  /*! @abstract Displays a JavaScript alert panel.
   @param webView The web view invoking the delegate method.
   @param message The message to display.
   @param frame Information about the frame whose JavaScript initiated this
   call.
   @param completionHandler The completion handler to call after the alert
   panel has been dismissed.
   @discussion For user security, your app should call attention to the fact
   that a specific website controls the content in this panel. A simple forumla
   for identifying the controlling website is frame.request.URL.host.
   The panel should have a single OK button.
  
   If you do not implement this method, the web view will behave as if the user selected the OK button.
   */
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, runJavaScriptAlertPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: () -> Void)

  /*! @abstract Displays a JavaScript confirm panel.
   @param webView The web view invoking the delegate method.
   @param message The message to display.
   @param frame Information about the frame whose JavaScript initiated this call.
   @param completionHandler The completion handler to call after the confirm
   panel has been dismissed. Pass YES if the user chose OK, NO if the user
   chose Cancel.
   @discussion For user security, your app should call attention to the fact
   that a specific website controls the content in this panel. A simple forumla
   for identifying the controlling website is frame.request.URL.host.
   The panel should have two buttons, such as OK and Cancel.
  
   If you do not implement this method, the web view will behave as if the user selected the Cancel button.
   */
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, runJavaScriptConfirmPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: (Bool) -> Void)

  /*! @abstract Displays a JavaScript text input panel.
   @param webView The web view invoking the delegate method.
   @param message The message to display.
   @param defaultText The initial text to display in the text entry field.
   @param frame Information about the frame whose JavaScript initiated this call.
   @param completionHandler The completion handler to call after the text
   input panel has been dismissed. Pass the entered text if the user chose
   OK, otherwise nil.
   @discussion For user security, your app should call attention to the fact
   that a specific website controls the content in this panel. A simple forumla
   for identifying the controlling website is frame.request.URL.host.
   The panel should have two buttons, such as OK and Cancel, and a field in
   which to enter text.
  
   If you do not implement this method, the web view will behave as if the user selected the Cancel button.
   */
  @available(iOS 8.0, *)
  optional func webView(webView: WKWebView, runJavaScriptTextInputPanelWithPrompt prompt: String, defaultText: String?, initiatedByFrame frame: WKFrameInfo, completionHandler: (String?) -> Void)
}

/*! A WKUserContentController object provides a way for JavaScript to post
 messages to a web view.
 The user content controller associated with a web view is specified by its
 web view configuration.
 */
@available(iOS 8.0, *)
class WKUserContentController : Object {

  /*! @abstract The user scripts associated with this user content
   controller.
  */
  var userScripts: [WKUserScript] { get }

  /*! @abstract Adds a user script.
   @param userScript The user script to add.
  */
  func addUserScript(userScript: WKUserScript)

  /*! @abstract Removes all associated user scripts.
  */
  func removeAllUserScripts()

  /*! @abstract Adds a script message handler.
   @param scriptMessageHandler The message handler to add.
   @param name The name of the message handler.
   @discussion Adding a scriptMessageHandler adds a function
   window.webkit.messageHandlers.<name>.postMessage(<messageBody>) for all
   frames.
   */
  func add(scriptMessageHandler: WKScriptMessageHandler, name: String)

  /*! @abstract Removes a script message handler.
   @param name The name of the message handler to remove.
   */
  func removeScriptMessageHandlerForName(name: String)
  init()
}

/*! @enum WKUserScriptInjectionTime
 @abstract when a user script should be injected into a webpage.
 @constant WKUserScriptInjectionTimeAtDocumentStart    Inject the script after the document element has been created, but before any other content has been loaded.
 @constant WKUserScriptInjectionTimeAtDocumentEnd      Inject the script after the document has finished loading, but before any subresources may have finished loading.
 */
@available(iOS 8.0, *)
enum WKUserScriptInjectionTime : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AtDocumentStart
  case AtDocumentEnd
}

/*! A @link WKUserScript @/link object represents a script that can be injected into webpages.
 */
@available(iOS 8.0, *)
class WKUserScript : Object, Copying {
  var source: String { get }
  var injectionTime: WKUserScriptInjectionTime { get }
  var isForMainFrameOnly: Bool { get }

  /*! @abstract Returns an initialized user script that can be added to a @link WKUserContentController @/link.
   @param source The script source.
   @param injectionTime When the script should be injected.
   @param forMainFrameOnly Whether the script should be injected into all frames or just the main frame.
   */
  init(source: String, injectionTime: WKUserScriptInjectionTime, forMainFrameOnly: Bool)
  init()
  @available(iOS 8.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(iOS 8.0, *)
class WKWebView : UIView {

  /*! @abstract A copy of the configuration with which the web view was
   initialized. */
  @NSCopying var configuration: WKWebViewConfiguration { get }

  /*! @abstract The web view's navigation delegate. */
  weak var navigationDelegate: @sil_weak WKNavigationDelegate?

  /*! @abstract The web view's user interface delegate. */
  weak var uiDelegate: @sil_weak WKUIDelegate?

  /*! @abstract The web view's back-forward list. */
  var backForwardList: WKBackForwardList { get }

  /*! @abstract Returns a web view initialized with a specified frame and
   configuration.
   @param frame The frame for the new web view.
   @param configuration The configuration for the new web view.
   @result An initialized web view, or nil if the object could not be
   initialized.
   @discussion This is a designated initializer. You can use
   @link -initWithFrame: @/link to initialize an instance with the default
   configuration. The initializer copies the specified configuration, so
   mutating the configuration after invoking the initializer has no effect
   on the web view.
   */
  init(frame: CGRect, configuration: WKWebViewConfiguration)

  /*! @abstract Navigates to a requested URL.
   @param request The request specifying the URL to which to navigate.
   @result A new navigation for the given request.
   */
  func load(request: URLRequest) -> WKNavigation?

  /*! @abstract Navigates to the requested file URL on the filesystem.
   @param URL The file URL to which to navigate.
   @param readAccessURL The URL to allow read access to.
   @discussion If readAccessURL references a single file, only that file may be loaded by WebKit.
   If readAccessURL references a directory, files inside that file may be loaded by WebKit.
   @result A new navigation for the given file URL.
   */
  @available(iOS 9.0, *)
  func loadFileURL(URL: URL, allowingReadAccessTo readAccessURL: URL) -> WKNavigation?

  /*! @abstract Sets the webpage contents and base URL.
   @param string The string to use as the contents of the webpage.
   @param baseURL A URL that is used to resolve relative URLs within the document.
   @result A new navigation.
   */
  func loadHTMLString(string: String, baseURL: URL?) -> WKNavigation?

  /*! @abstract Sets the webpage contents and base URL.
   @param data The data to use as the contents of the webpage.
   @param MIMEType The MIME type of the data.
   @param encodingName The data's character encoding name.
   @param baseURL A URL that is used to resolve relative URLs within the document.
   @result A new navigation.
   */
  @available(iOS 9.0, *)
  func load(data: Data, mimeType MIMEType: String, characterEncodingName: String, baseURL: URL) -> WKNavigation?

  /*! @abstract Navigates to an item from the back-forward list and sets it
   as the current item.
   @param item The item to which to navigate. Must be one of the items in the
   web view's back-forward list.
   @result A new navigation to the requested item, or nil if it is already
   the current item or is not part of the web view's back-forward list.
   @seealso backForwardList
   */
  func goTo(item: WKBackForwardListItem) -> WKNavigation?

  /*! @abstract The page title.
   @discussion @link WKWebView @/link is key-value observing (KVO) compliant
   for this property.
   */
  var title: String? { get }

  /*! @abstract The active URL.
   @discussion This is the URL that should be reflected in the user
   interface.
   @link WKWebView @/link is key-value observing (KVO) compliant for this
   property.
   */
  @NSCopying var url: URL? { get }

  /*! @abstract A Boolean value indicating whether the view is currently
   loading content.
   @discussion @link WKWebView @/link is key-value observing (KVO) compliant
   for this property.
   */
  var isLoading: Bool { get }

  /*! @abstract An estimate of what fraction of the current navigation has been completed.
   @discussion This value ranges from 0.0 to 1.0 based on the total number of
   bytes expected to be received, including the main document and all of its
   potential subresources. After a navigation completes, the value remains at 1.0
   until a new navigation starts, at which point it is reset to 0.0.
   @link WKWebView @/link is key-value observing (KVO) compliant for this
   property.
   */
  var estimatedProgress: Double { get }

  /*! @abstract A Boolean value indicating whether all resources on the page
   have been loaded over securely encrypted connections.
   @discussion @link WKWebView @/link is key-value observing (KVO) compliant
   for this property.
   */
  var hasOnlySecureContent: Bool { get }

  /*! @abstract An array of SecCertificateRef objects forming the certificate
   chain for the currently committed navigation.
   @discussion The certificates are ordered from leaf (at index 0) to anchor.
   @link WKWebView @/link is key-value observing (KVO) compliant for this property.
   */
  @available(iOS 9.0, *)
  var certificateChain: [AnyObject] { get }

  /*! @abstract A Boolean value indicating whether there is a back item in
   the back-forward list that can be navigated to.
   @discussion @link WKWebView @/link is key-value observing (KVO) compliant
   for this property.
   @seealso backForwardList.
   */
  var canGoBack: Bool { get }

  /*! @abstract A Boolean value indicating whether there is a forward item in
   the back-forward list that can be navigated to.
   @discussion @link WKWebView @/link is key-value observing (KVO) compliant
   for this property.
   @seealso backForwardList.
   */
  var canGoForward: Bool { get }

  /*! @abstract Navigates to the back item in the back-forward list.
   @result A new navigation to the requested item, or nil if there is no back
   item in the back-forward list.
   */
  func goBack() -> WKNavigation?

  /*! @abstract Navigates to the forward item in the back-forward list.
   @result A new navigation to the requested item, or nil if there is no
   forward item in the back-forward list.
   */
  func goForward() -> WKNavigation?

  /*! @abstract Reloads the current page.
   @result A new navigation representing the reload.
   */
  func reload() -> WKNavigation?

  /*! @abstract Reloads the current page, performing end-to-end revalidation
   using cache-validating conditionals if possible.
   @result A new navigation representing the reload.
   */
  func reloadFromOrigin() -> WKNavigation?

  /*! @abstract Stops loading all resources on the current page.
   */
  func stopLoading()
  func evaluateJavaScript(javaScriptString: String, completionHandler: ((AnyObject?, Error?) -> Void)? = nil)

  /*! @abstract A Boolean value indicating whether horizontal swipe gestures
   will trigger back-forward list navigations.
   @discussion The default value is NO.
   */
  var allowsBackForwardNavigationGestures: Bool

  /*! @abstract The custom user agent string or nil if no custom user agent string has been set.
  */
  @available(iOS 9.0, *)
  var customUserAgent: String?

  /*! @abstract A Boolean value indicating whether link preview is allowed for any
   links inside this WKWebView.
   @discussion The default value is NO on iOS and YES on Mac.
   */
  @available(iOS 9.0, *)
  var allowsLinkPreview: Bool

  /*! @abstract The scroll view associated with the web view.
   */
  var scrollView: UIScrollView { get }
  convenience init(frame: CGRect)
  convenience init()
}

/*! @enum WKSelectionGranularity
 @abstract The granularity with which a selection can be created and modified interactively.
 @constant WKSelectionGranularityDynamic    Selection granularity varies automatically based on the selection.
 @constant WKSelectionGranularityCharacter  Selection endpoints can be placed at any character boundary.
 @discussion An example of how granularity may vary when WKSelectionGranularityDynamic is used is
 that when the selection is within a single block, the granularity may be single character, and when
 the selection is not confined to a single block, the selection granularity may be single block.
 */
@available(iOS 8.0, *)
enum WKSelectionGranularity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Dynamic
  case Character
}

/*! A WKWebViewConfiguration object is a collection of properties with
 which to initialize a web view.
 @helps Contains properties used to configure a @link WKWebView @/link.
 */
@available(iOS 8.0, *)
class WKWebViewConfiguration : Object, Copying {

  /*! @abstract The process pool from which to obtain the view's web content
   process.
   @discussion When a web view is initialized, a new web content process
   will be created for it from the specified pool, or an existing process in
   that pool will be used.
  */
  var processPool: WKProcessPool

  /*! @abstract The preference settings to be used by the web view.
  */
  var preferences: WKPreferences

  /*! @abstract The user content controller to associate with the web view.
  */
  var userContentController: WKUserContentController

  /*! @abstract The website data store to be used by the web view.
   */
  @available(iOS 9.0, *)
  var websiteDataStore: WKWebsiteDataStore

  /*! @abstract A Boolean value indicating whether the web view suppresses
   content rendering until it is fully loaded into memory.
   @discussion The default value is NO.
   */
  var suppressesIncrementalRendering: Bool

  /*! @abstract The name of the application as used in the user agent string.
  */
  @available(iOS 9.0, *)
  var applicationNameForUserAgent: String?

  /*! @abstract A Boolean value indicating whether AirPlay is allowed.
   @discussion The default value is YES.
   */
  @available(iOS 9.0, *)
  var allowsAirPlayForMediaPlayback: Bool

  /*! @abstract A Boolean value indicating whether HTML5 videos play inline
   (YES) or use the native full-screen controller (NO).
   @discussion The default value is NO.
   */
  var allowsInlineMediaPlayback: Bool

  /*! @abstract A Boolean value indicating whether HTML5 videos require the
   user to start playing them (YES) or can play automatically (NO).
   @discussion The default value is YES.
   */
  @available(iOS 9.0, *)
  var requiresUserActionForMediaPlayback: Bool

  /*! @abstract The level of granularity with which the user can interactively
   select content in the web view.
   @discussion Possible values are described in WKSelectionGranularity.
   The default value is WKSelectionGranularityDynamic.
   */
  var selectionGranularity: WKSelectionGranularity

  /*! @abstract A Boolean value indicating whether HTML5 videos may play
   picture-in-picture.
   @discussion The default value is YES.
   */
  @available(iOS 9.0, *)
  var allowsPictureInPictureMediaPlayback: Bool
  init()
  @available(iOS 8.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
extension WKWebViewConfiguration {
  @available(iOS, introduced=8.0, deprecated=9.0, message="Please use requiresUserActionForMediaPlayback")
  var mediaPlaybackRequiresUserAction: Bool
  @available(iOS, introduced=8.0, deprecated=9.0, message="Please use allowsAirPlayForMediaPlayback")
  var mediaPlaybackAllowsAirPlay: Bool
}

/*! @constant WKWebsiteDataTypeDiskCache On-disk caches. */
@available(iOS 9.0, *)
let WKWebsiteDataTypeDiskCache: String

/*! @constant WKWebsiteDataTypeMemoryCache In-memory caches. */
@available(iOS 9.0, *)
let WKWebsiteDataTypeMemoryCache: String

/*! @constant WKWebsiteDataTypeOfflineWebApplicationCache HTML offline web application caches. */
@available(iOS 9.0, *)
let WKWebsiteDataTypeOfflineWebApplicationCache: String

/*! @constant WKWebsiteDataTypeCookies Cookies. */
@available(iOS 9.0, *)
let WKWebsiteDataTypeCookies: String

/*! @constant WKWebsiteDataTypeSessionStorage HTML session storage. */
@available(iOS 9.0, *)
let WKWebsiteDataTypeSessionStorage: String

/*! @constant WKWebsiteDataTypeLocalStorage HTML local storage. */
@available(iOS 9.0, *)
let WKWebsiteDataTypeLocalStorage: String

/*! @constant WKWebsiteDataTypeWebSQLDatabases WebSQL databases. */
@available(iOS 9.0, *)
let WKWebsiteDataTypeWebSQLDatabases: String

/*! @constant WKWebsiteDataTypeIndexedDBDatabases IndexedDB databases. */
@available(iOS 9.0, *)
let WKWebsiteDataTypeIndexedDBDatabases: String

/*! A WKWebsiteDataRecord represents website data, grouped by domain name using the public suffix list. */
@available(iOS 9.0, *)
class WKWebsiteDataRecord : Object {

  /*! @abstract The display name for the data record. This is usually the domain name. */
  var displayName: String { get }

  /*! @abstract The various types of website data that exist for this data record. */
  var dataTypes: Set<String> { get }
  init()
}

/*! A WKWebsiteDataStore represents various types of data that a website might
 make use of. This includes cookies, disk and memory caches, and persistent data such as WebSQL,
 IndexedDB databases, and local storage.
 */
@available(iOS 9.0, *)
class WKWebsiteDataStore : Object {
  class func defaultDataStore() -> WKWebsiteDataStore

  /** @abstract Returns a new non-persistent data store.
   @discussion If a WKWebView is associated with a non-persistent data store, no data will
   be written to the file system. This is useful for implementing "private browsing" in a web view.
  */
  class func nonPersistent() -> WKWebsiteDataStore

  /*! @abstract Whether the data store is persistent or not. */
  var isPersistent: Bool { get }

  /*! @abstract Returns a set of all available website data types. */
  class func allWebsiteDataTypes() -> Set<String>

  /*! @abstract Fetches data records containing the given website data types.
    @param dataTypes The website data types to fetch records for.
    @param completionHandler A block to invoke when the data records have been fetched.
  */
  func fetchDataRecordsOfTypes(dataTypes: Set<String>, completionHandler: ([WKWebsiteDataRecord]) -> Void)

  /*! @abstract Removes website data of the given types for the given data records.
   @param dataTypes The website data types that should be removed.
   @param dataRecords The website data records to delete website data for.
   @param completionHandler A block to invoke when the website data for the records has been removed.
  */
  func removeDataOfTypes(dataTypes: Set<String>, forDataRecords dataRecords: [WKWebsiteDataRecord], completionHandler: () -> Void)

  /*! @abstract Removes all website data of the given types that has been modified since the given date.
   @param dataTypes The website data types that should be removed.
   @param date A date. All website data modified after this date will be removed.
   @param completionHandler A block to invoke when the website data has been removed.
  */
  func removeDataOfTypes(websiteDataTypes: Set<String>, modifiedSince date: Date, completionHandler: () -> Void)
}

/*! WKWindowFeatures specifies optional attributes for the containing window when a new WKWebView is requested.
 */
@available(iOS 8.0, *)
class WKWindowFeatures : Object {

  /*! @abstract BOOL. Whether the menu bar should be visible. nil if menu bar visibility was not specified.
   */
  var menuBarVisibility: Number? { get }

  /*! @abstract BOOL. Whether the status bar should be visible. nil if status bar visibility was not specified.
   */
  var statusBarVisibility: Number? { get }

  /*! @abstract BOOL. Whether toolbars should be visible. nil if toolbar visibility was not specified.
   */
  var toolbarsVisibility: Number? { get }

  /*! @abstract BOOL. Whether the containing window should be resizable. nil if resizability was not specified.
   */
  var allowsResizing: Number? { get }

  /*! @abstract CGFloat. The x coordinate of the containing window. nil if the x coordinate was not specified.
   */
  var x: Number? { get }

  /*! @abstract CGFloat. The y coordinate of the containing window. nil if the y coordinate was not specified.
   */
  var y: Number? { get }

  /*! @abstract CGFloat. The width coordinate of the containing window. nil if the width was not specified.
   */
  var width: Number? { get }

  /*! @abstract CGFloat. The height coordinate of the containing window. nil if the height was not specified.
   */
  var height: Number? { get }
  init()
}
