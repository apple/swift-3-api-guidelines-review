
var WebMenuItemTagOpenLinkInNewWindow: Int { get }
var WebMenuItemTagDownloadLinkToDisk: Int { get }
var WebMenuItemTagCopyLinkToClipboard: Int { get }
var WebMenuItemTagOpenImageInNewWindow: Int { get }
var WebMenuItemTagDownloadImageToDisk: Int { get }
var WebMenuItemTagCopyImageToClipboard: Int { get }
var WebMenuItemTagOpenFrameInNewWindow: Int { get }
var WebMenuItemTagCopy: Int { get }
var WebMenuItemTagGoBack: Int { get }
var WebMenuItemTagGoForward: Int { get }
var WebMenuItemTagStop: Int { get }
var WebMenuItemTagReload: Int { get }
var WebMenuItemTagCut: Int { get }
var WebMenuItemTagPaste: Int { get }
var WebMenuItemTagSpellingGuess: Int { get }
var WebMenuItemTagNoGuessesFound: Int { get }
var WebMenuItemTagIgnoreSpelling: Int { get }
var WebMenuItemTagLearnSpelling: Int { get }
var WebMenuItemTagOther: Int { get }
var WebMenuItemTagSearchInSpotlight: Int { get }
var WebMenuItemTagSearchWeb: Int { get }
var WebMenuItemTagLookUpInDictionary: Int { get }
var WebMenuItemTagOpenWithDefaultApplication: Int { get }
var WebMenuItemPDFActualSize: Int { get }
var WebMenuItemPDFZoomIn: Int { get }
var WebMenuItemPDFZoomOut: Int { get }
var WebMenuItemPDFAutoSize: Int { get }
var WebMenuItemPDFSinglePage: Int { get }
var WebMenuItemPDFFacingPages: Int { get }
var WebMenuItemPDFContinuous: Int { get }
var WebMenuItemPDFNextPage: Int { get }
var WebMenuItemPDFPreviousPage: Int { get }
struct WebDragDestinationAction : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: WebDragDestinationAction { get }
  static var DHTML: WebDragDestinationAction { get }
  static var Edit: WebDragDestinationAction { get }
  static var Load: WebDragDestinationAction { get }
  static var Any: WebDragDestinationAction { get }
}
struct WebDragSourceAction : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: WebDragSourceAction { get }
  static var DHTML: WebDragSourceAction { get }
  static var Image: WebDragSourceAction { get }
  static var Link: WebDragSourceAction { get }
  static var Selection: WebDragSourceAction { get }
  static var Any: WebDragSourceAction { get }
}
protocol WebOpenPanelResultListener : NSObjectProtocol {
  func chooseFilename(fileName: String!)
  @available(OSX 10.6, *)
  func chooseFilenames(fileNames: [AnyObject]!)
  func cancel()
}
protocol WebUIDelegate : NSObjectProtocol {
  optional func webView(sender: WebView!, createWebViewWithRequest request: NSURLRequest!) -> WebView!
  optional func webViewShow(sender: WebView!)
  optional func webView(sender: WebView!, createWebViewModalDialogWithRequest request: NSURLRequest!) -> WebView!
  optional func webViewRunModal(sender: WebView!)
  optional func webViewClose(sender: WebView!)
  optional func webViewFocus(sender: WebView!)
  optional func webViewUnfocus(sender: WebView!)
  optional func webViewFirstResponder(sender: WebView!) -> NSResponder!
  optional func webView(sender: WebView!, makeFirstResponder responder: NSResponder!)
  optional func webView(sender: WebView!, setStatusText text: String!)
  optional func webViewStatusText(sender: WebView!) -> String!
  optional func webViewAreToolbarsVisible(sender: WebView!) -> Bool
  optional func webView(sender: WebView!, setToolbarsVisible visible: Bool)
  optional func webViewIsStatusBarVisible(sender: WebView!) -> Bool
  optional func webView(sender: WebView!, setStatusBarVisible visible: Bool)
  optional func webViewIsResizable(sender: WebView!) -> Bool
  optional func webView(sender: WebView!, setResizable resizable: Bool)
  optional func webView(sender: WebView!, setFrame frame: NSRect)
  optional func webViewFrame(sender: WebView!) -> NSRect
  optional func webView(sender: WebView!, runJavaScriptAlertPanelWithMessage message: String!, initiatedByFrame frame: WebFrame!)
  optional func webView(sender: WebView!, runJavaScriptConfirmPanelWithMessage message: String!, initiatedByFrame frame: WebFrame!) -> Bool
  optional func webView(sender: WebView!, runJavaScriptTextInputPanelWithPrompt prompt: String!, defaultText: String!, initiatedByFrame frame: WebFrame!) -> String!
  optional func webView(sender: WebView!, runBeforeUnloadConfirmPanelWithMessage message: String!, initiatedByFrame frame: WebFrame!) -> Bool
  optional func webView(sender: WebView!, runOpenPanelForFileButtonWithResultListener resultListener: WebOpenPanelResultListener!)
  @available(OSX 10.6, *)
  optional func webView(sender: WebView!, runOpenPanelForFileButtonWithResultListener resultListener: WebOpenPanelResultListener!, allowMultipleFiles: Bool)
  @available(OSX 10.0, *)
  optional func webView(sender: WebView!, mouseDidMoveOverElement elementInformation: [NSObject : AnyObject]!, modifierFlags: Int)
  @available(OSX 10.0, *)
  optional func webView(sender: WebView!, contextMenuItemsForElement element: [NSObject : AnyObject]!, defaultMenuItems: [AnyObject]!) -> [AnyObject]!
  optional func webView(webView: WebView!, validateUserInterfaceItem item: NSValidatedUserInterfaceItem!, defaultValidation: Bool) -> Bool
  optional func webView(webView: WebView!, shouldPerformAction action: Selector, fromSender sender: AnyObject!) -> Bool
  optional func webView(webView: WebView!, dragDestinationActionMaskForDraggingInfo draggingInfo: NSDraggingInfo!) -> Int
  optional func webView(webView: WebView!, willPerformDragDestinationAction action: WebDragDestinationAction, forDraggingInfo draggingInfo: NSDraggingInfo!)
  optional func webView(webView: WebView!, dragSourceActionMaskForPoint point: NSPoint) -> Int
  optional func webView(webView: WebView!, willPerformDragSourceAction action: WebDragSourceAction, fromPoint point: NSPoint, withPasteboard pasteboard: NSPasteboard!)
  optional func webView(sender: WebView!, printFrameView frameView: WebFrameView!)
  optional func webViewHeaderHeight(sender: WebView!) -> Float
  optional func webViewFooterHeight(sender: WebView!) -> Float
  optional func webView(sender: WebView!, drawHeaderInRect rect: NSRect)
  optional func webView(sender: WebView!, drawFooterInRect rect: NSRect)
}
