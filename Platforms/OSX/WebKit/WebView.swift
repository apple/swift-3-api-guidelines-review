
let WebElementDOMNodeKey: String
let WebElementFrameKey: String
let WebElementImageAltStringKey: String
let WebElementImageKey: String
let WebElementImageRectKey: String
let WebElementImageURLKey: String
let WebElementIsSelectedKey: String
let WebElementLinkURLKey: String
let WebElementLinkTargetFrameKey: String
let WebElementLinkTitleKey: String
let WebElementLinkLabelKey: String
let WebViewProgressStartedNotification: String
let WebViewProgressEstimateChangedNotification: String
let WebViewProgressFinishedNotification: String
class WebView : NSView {
  class func canShowMIMEType(_ MIMEType: String!) -> Bool
  class func canShowMIMETypeAsHTML(_ MIMEType: String!) -> Bool
  class func MIMETypesShownAsHTML() -> [AnyObject]!
  class func setMIMETypesShownAsHTML(_ MIMETypes: [AnyObject]!)
  class func URLFromPasteboard(_ pasteboard: NSPasteboard!) -> NSURL!
  class func URLTitleFromPasteboard(_ pasteboard: NSPasteboard!) -> String!
  class func registerURLSchemeAsLocal(_ scheme: String!)
  init!(frame frame: NSRect, frameName frameName: String!, groupName groupName: String!)
  func close()
  var shouldCloseWithWindow: Bool
  unowned(unsafe) var UIDelegate: @sil_unmanaged WebUIDelegate!
  unowned(unsafe) var resourceLoadDelegate: @sil_unmanaged WebResourceLoadDelegate!
  unowned(unsafe) var downloadDelegate: @sil_unmanaged WebDownloadDelegate!
  unowned(unsafe) var frameLoadDelegate: @sil_unmanaged WebFrameLoadDelegate!
  unowned(unsafe) var policyDelegate: @sil_unmanaged WebPolicyDelegate!
  var mainFrame: WebFrame! { get }
  var selectedFrame: WebFrame! { get }
  var backForwardList: WebBackForwardList! { get }
  func setMaintainsBackForwardList(_ flag: Bool)
  func goBack() -> Bool
  func goForward() -> Bool
  func goToBackForwardItem(_ item: WebHistoryItem!) -> Bool
  var textSizeMultiplier: Float
  var applicationNameForUserAgent: String!
  var customUserAgent: String!
  func userAgentForURL(_ URL: NSURL!) -> String!
  var supportsTextEncoding: Bool { get }
  var customTextEncodingName: String!
  var mediaStyle: String!
  func stringByEvaluatingJavaScriptFromString(_ script: String!) -> String!
  var windowScriptObject: WebScriptObject! { get }
  var preferences: WebPreferences!
  var preferencesIdentifier: String!
  var hostWindow: NSWindow!
  func searchFor(_ string: String!, direction forward: Bool, caseSensitive caseFlag: Bool, wrap wrapFlag: Bool) -> Bool
  class func registerViewClass(_ viewClass: AnyClass!, representationClass representationClass: AnyClass!, forMIMEType MIMEType: String!)
  var groupName: String!
  var estimatedProgress: Double { get }
  var loading: Bool { get }
  func elementAtPoint(_ point: NSPoint) -> [NSObject : AnyObject]!
  var pasteboardTypesForSelection: [AnyObject]! { get }
  func writeSelectionWithPasteboardTypes(_ types: [AnyObject]!, toPasteboard pasteboard: NSPasteboard!)
  func pasteboardTypesForElement(_ element: [NSObject : AnyObject]!) -> [AnyObject]!
  func writeElement(_ element: [NSObject : AnyObject]!, withPasteboardTypes types: [AnyObject]!, toPasteboard pasteboard: NSPasteboard!)
  func moveDragCaretToPoint(_ point: NSPoint)
  func removeDragCaret()
  var drawsBackground: Bool
  var shouldUpdateWhileOffscreen: Bool
  var mainFrameURL: String!
  var mainFrameDocument: DOMDocument! { get }
  var mainFrameTitle: String! { get }
  var mainFrameIcon: NSImage! { get }
}
extension WebView : NSUserInterfaceValidations {
  @IBAction func takeStringURLFrom(_ sender: AnyObject?)
  @IBAction func stopLoading(_ sender: AnyObject?)
  @IBAction func reload(_ sender: AnyObject?)
  @IBAction func reloadFromOrigin(_ sender: AnyObject?)
  var canGoBack: Bool { get }
  @IBAction func goBack(_ sender: AnyObject?)
  var canGoForward: Bool { get }
  @IBAction func goForward(_ sender: AnyObject?)
  var canMakeTextLarger: Bool { get }
  @IBAction func makeTextLarger(_ sender: AnyObject?)
  var canMakeTextSmaller: Bool { get }
  @IBAction func makeTextSmaller(_ sender: AnyObject?)
  var canMakeTextStandardSize: Bool { get }
  @IBAction func makeTextStandardSize(_ sender: AnyObject?)
  @IBAction func toggleContinuousSpellChecking(_ sender: AnyObject?)
  @IBAction func toggleSmartInsertDelete(_ sender: AnyObject?)
  func validateUserInterfaceItem(_ anItem: NSValidatedUserInterfaceItem) -> Bool
}
let WebViewDidBeginEditingNotification: String
let WebViewDidChangeNotification: String
let WebViewDidEndEditingNotification: String
let WebViewDidChangeTypingStyleNotification: String
let WebViewDidChangeSelectionNotification: String
extension WebView {
  func computedStyleForElement(_ element: DOMElement!, pseudoElement pseudoElement: String!) -> DOMCSSStyleDeclaration!
}
extension WebView {
  func editableDOMRangeForPoint(_ point: NSPoint) -> DOMRange!
  func setSelectedDOMRange(_ range: DOMRange!, affinity selectionAffinity: NSSelectionAffinity)
  var selectedDOMRange: DOMRange! { get }
  var selectionAffinity: NSSelectionAffinity { get }
  var maintainsInactiveSelection: Bool { get }
  var editable: Bool
  var typingStyle: DOMCSSStyleDeclaration!
  var smartInsertDeleteEnabled: Bool
  var continuousSpellCheckingEnabled: Bool
  var spellCheckerDocumentTag: Int { get }
  var editingDelegate: AnyObject!
  func styleDeclarationWithText(_ text: String!) -> DOMCSSStyleDeclaration!
}
extension WebView {
  func replaceSelectionWithNode(_ node: DOMNode!)
  func replaceSelectionWithText(_ text: String!)
  func replaceSelectionWithMarkupString(_ markupString: String!)
  func replaceSelectionWithArchive(_ archive: WebArchive!)
  func deleteSelection()
  func applyStyle(_ style: DOMCSSStyleDeclaration!)
}
extension WebView {
  func copy(_ sender: AnyObject?)
  func cut(_ sender: AnyObject?)
  func paste(_ sender: AnyObject?)
  func copyFont(_ sender: AnyObject?)
  func pasteFont(_ sender: AnyObject?)
  func delete(_ sender: AnyObject?)
  func pasteAsPlainText(_ sender: AnyObject?)
  func pasteAsRichText(_ sender: AnyObject?)
  func changeAttributes(_ sender: AnyObject?)
  func changeDocumentBackgroundColor(_ sender: AnyObject?)
  func alignCenter(_ sender: AnyObject?)
  func alignJustified(_ sender: AnyObject?)
  func alignLeft(_ sender: AnyObject?)
  func alignRight(_ sender: AnyObject?)
  func checkSpelling(_ sender: AnyObject?)
  func showGuessPanel(_ sender: AnyObject?)
  func performFindPanelAction(_ sender: AnyObject?)
  func startSpeaking(_ sender: AnyObject?)
  func stopSpeaking(_ sender: AnyObject?)
  func moveToBeginningOfSentence(_ sender: AnyObject?)
  func moveToBeginningOfSentenceAndModifySelection(_ sender: AnyObject?)
  func moveToEndOfSentence(_ sender: AnyObject?)
  func moveToEndOfSentenceAndModifySelection(_ sender: AnyObject?)
  func selectSentence(_ sender: AnyObject?)
  func overWrite(_ sender: AnyObject?)
}
