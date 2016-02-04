
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
  class func canShowMIMEType(MIMEType: String!) -> Bool
  class func canShowMIMETypeAsHTML(MIMEType: String!) -> Bool
  class func MIMETypesShownAsHTML() -> [AnyObject]!
  class func setMIMETypesShownAsHTML(MIMETypes: [AnyObject]!)
  class func URLFromPasteboard(pasteboard: NSPasteboard!) -> NSURL!
  class func URLTitleFromPasteboard(pasteboard: NSPasteboard!) -> String!
  class func registerURLSchemeAsLocal(scheme: String!)
  init!(frame: NSRect, frameName: String!, groupName: String!)
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
  func setMaintainsBackForwardList(flag: Bool)
  func goBack() -> Bool
  func goForward() -> Bool
  func goToBackForwardItem(item: WebHistoryItem!) -> Bool
  var textSizeMultiplier: Float
  var applicationNameForUserAgent: String!
  var customUserAgent: String!
  func userAgentForURL(URL: NSURL!) -> String!
  var supportsTextEncoding: Bool { get }
  var customTextEncodingName: String!
  var mediaStyle: String!
  func stringByEvaluatingJavaScriptFromString(script: String!) -> String!
  var windowScriptObject: WebScriptObject! { get }
  var preferences: WebPreferences!
  var preferencesIdentifier: String!
  var hostWindow: NSWindow!
  func searchFor(string: String!, direction forward: Bool, caseSensitive caseFlag: Bool, wrap wrapFlag: Bool) -> Bool
  class func registerViewClass(viewClass: AnyClass!, representationClass: AnyClass!, forMIMEType MIMEType: String!)
  var groupName: String!
  var estimatedProgress: Double { get }
  var loading: Bool { get }
  func elementAtPoint(point: NSPoint) -> [NSObject : AnyObject]!
  var pasteboardTypesForSelection: [AnyObject]! { get }
  func writeSelectionWithPasteboardTypes(types: [AnyObject]!, toPasteboard pasteboard: NSPasteboard!)
  func pasteboardTypesForElement(element: [NSObject : AnyObject]!) -> [AnyObject]!
  func writeElement(element: [NSObject : AnyObject]!, withPasteboardTypes types: [AnyObject]!, toPasteboard pasteboard: NSPasteboard!)
  func moveDragCaretToPoint(point: NSPoint)
  func removeDragCaret()
  var drawsBackground: Bool
  var shouldUpdateWhileOffscreen: Bool
  var mainFrameURL: String!
  var mainFrameDocument: DOMDocument! { get }
  var mainFrameTitle: String! { get }
  var mainFrameIcon: NSImage! { get }
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
extension WebView : NSUserInterfaceValidations {
  @IBAction func takeStringURLFrom(sender: AnyObject?)
  @IBAction func stopLoading(sender: AnyObject?)
  @IBAction func reload(sender: AnyObject?)
  @IBAction func reloadFromOrigin(sender: AnyObject?)
  var canGoBack: Bool { get }
  @IBAction func goBack(sender: AnyObject?)
  var canGoForward: Bool { get }
  @IBAction func goForward(sender: AnyObject?)
  var canMakeTextLarger: Bool { get }
  @IBAction func makeTextLarger(sender: AnyObject?)
  var canMakeTextSmaller: Bool { get }
  @IBAction func makeTextSmaller(sender: AnyObject?)
  var canMakeTextStandardSize: Bool { get }
  @IBAction func makeTextStandardSize(sender: AnyObject?)
  @IBAction func toggleContinuousSpellChecking(sender: AnyObject?)
  @IBAction func toggleSmartInsertDelete(sender: AnyObject?)
  func validateUserInterfaceItem(anItem: NSValidatedUserInterfaceItem) -> Bool
}
let WebViewDidBeginEditingNotification: String
let WebViewDidChangeNotification: String
let WebViewDidEndEditingNotification: String
let WebViewDidChangeTypingStyleNotification: String
let WebViewDidChangeSelectionNotification: String
extension WebView {
  func computedStyleForElement(element: DOMElement!, pseudoElement: String!) -> DOMCSSStyleDeclaration!
}
extension WebView {
  func editableDOMRangeForPoint(point: NSPoint) -> DOMRange!
  func setSelectedDOMRange(range: DOMRange!, affinity selectionAffinity: NSSelectionAffinity)
  var selectedDOMRange: DOMRange! { get }
  var selectionAffinity: NSSelectionAffinity { get }
  var maintainsInactiveSelection: Bool { get }
  var editable: Bool
  var typingStyle: DOMCSSStyleDeclaration!
  var smartInsertDeleteEnabled: Bool
  var continuousSpellCheckingEnabled: Bool
  var spellCheckerDocumentTag: Int { get }
  var undoManager: NSUndoManager! { get }
  var editingDelegate: AnyObject!
  func styleDeclarationWithText(text: String!) -> DOMCSSStyleDeclaration!
}
extension WebView {
  func replaceSelectionWithNode(node: DOMNode!)
  func replaceSelectionWithText(text: String!)
  func replaceSelectionWithMarkupString(markupString: String!)
  func replaceSelectionWithArchive(archive: WebArchive!)
  func deleteSelection()
  func applyStyle(style: DOMCSSStyleDeclaration!)
}
extension WebView {
  func copy(sender: AnyObject?)
  func cut(sender: AnyObject?)
  func paste(sender: AnyObject?)
  func copyFont(sender: AnyObject?)
  func pasteFont(sender: AnyObject?)
  func delete(sender: AnyObject?)
  func pasteAsPlainText(sender: AnyObject?)
  func pasteAsRichText(sender: AnyObject?)
  func changeFont(sender: AnyObject?)
  func changeAttributes(sender: AnyObject?)
  func changeDocumentBackgroundColor(sender: AnyObject?)
  func changeColor(sender: AnyObject?)
  func alignCenter(sender: AnyObject?)
  func alignJustified(sender: AnyObject?)
  func alignLeft(sender: AnyObject?)
  func alignRight(sender: AnyObject?)
  func checkSpelling(sender: AnyObject?)
  func showGuessPanel(sender: AnyObject?)
  func performFindPanelAction(sender: AnyObject?)
  func startSpeaking(sender: AnyObject?)
  func stopSpeaking(sender: AnyObject?)
  func moveToBeginningOfSentence(sender: AnyObject?)
  func moveToBeginningOfSentenceAndModifySelection(sender: AnyObject?)
  func moveToEndOfSentence(sender: AnyObject?)
  func moveToEndOfSentenceAndModifySelection(sender: AnyObject?)
  func selectSentence(sender: AnyObject?)
  func overWrite(sender: AnyObject?)
}
