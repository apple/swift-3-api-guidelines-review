
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
  class func canShowMIMEType(ashtml MIMEType: String!) -> Bool
  class func mimeTypesShownAsHTML() -> [AnyObject]!
  class func setMIMETypesShownAsHTML(MIMETypes: [AnyObject]!)
  class func url(from pasteboard: NSPasteboard!) -> URL!
  class func urlTitle(from pasteboard: NSPasteboard!) -> String!
  class func registerURLScheme(asLocal scheme: String!)
  init!(frame: Rect, frameName: String!, groupName: String!)
  func close()
  var shouldCloseWithWindow: Bool
  unowned(unsafe) var uiDelegate: @sil_unmanaged WebUIDelegate!
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
  func userAgent(forURL URL: URL!) -> String!
  var supportsTextEncoding: Bool { get }
  var customTextEncodingName: String!
  var mediaStyle: String!
  func stringByEvaluatingJavaScript(from script: String!) -> String!
  var windowScriptObject: WebScriptObject! { get }
  var preferences: WebPreferences!
  var preferencesIdentifier: String!
  var hostWindow: NSWindow!
  func search(for string: String!, direction forward: Bool, caseSensitive caseFlag: Bool, wrap wrapFlag: Bool) -> Bool
  class func registerClass(viewClass: AnyClass!, representationClass: AnyClass!, forMIMEType MIMEType: String!)
  var groupName: String!
  var estimatedProgress: Double { get }
  var isLoading: Bool { get }
  func element(at point: Point) -> [Object : AnyObject]!
  var pasteboardTypesForSelection: [AnyObject]! { get }
  func writeSelection(withPasteboardTypes types: [AnyObject]!, to pasteboard: NSPasteboard!)
  func pasteboardTypes(forElement element: [Object : AnyObject]!) -> [AnyObject]!
  func writeElement(element: [Object : AnyObject]!, withPasteboardTypes types: [AnyObject]!, to pasteboard: NSPasteboard!)
  func moveDragCaret(to point: Point)
  func removeDragCaret()
  var drawsBackground: Bool
  var shouldUpdateWhileOffscreen: Bool
  var mainFrameURL: String!
  var mainFrameDocument: DOMDocument! { get }
  var mainFrameTitle: String! { get }
  var mainFrameIcon: NSImage! { get }
  init(frame frameRect: Rect)
  init?(coder: Coder)
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
  func validate(anItem: NSValidatedUserInterfaceItem) -> Bool
}
let WebViewDidBeginEditingNotification: String
let WebViewDidChangeNotification: String
let WebViewDidEndEditingNotification: String
let WebViewDidChangeTypingStyleNotification: String
let WebViewDidChangeSelectionNotification: String
extension WebView {
  func computedStyle(forElement element: DOMElement!, pseudoElement: String!) -> DOMCSSStyleDeclaration!
}
extension WebView {
  func editableDOMRange(forPoint point: Point) -> DOMRange!
  func setSelectedDOMRange(range: DOMRange!, affinity selectionAffinity: NSSelectionAffinity)
  var selectedDOMRange: DOMRange! { get }
  var selectionAffinity: NSSelectionAffinity { get }
  var maintainsInactiveSelection: Bool { get }
  var isEditable: Bool
  var typingStyle: DOMCSSStyleDeclaration!
  var smartInsertDeleteEnabled: Bool
  var isContinuousSpellCheckingEnabled: Bool
  var spellCheckerDocumentTag: Int { get }
  var undoManager: UndoManager! { get }
  var editingDelegate: AnyObject!
  func styleDeclaration(withText text: String!) -> DOMCSSStyleDeclaration!
}
extension WebView {
  func replaceSelection(withNode node: DOMNode!)
  func replaceSelection(withText text: String!)
  func replaceSelection(withMarkupString markupString: String!)
  func replaceSelection(withArchive archive: WebArchive!)
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
