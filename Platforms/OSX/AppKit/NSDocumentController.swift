
class NSDocumentController : NSObject, NSCoding, NSUserInterfaceValidations {
  class func sharedDocumentController() -> NSDocumentController
  init()
  init?(coder: NSCoder)
  var documents: [NSDocument] { get }
  var currentDocument: NSDocument? { get }
  var currentDirectory: String? { get }
  func documentForURL(url: NSURL) -> NSDocument?
  func documentForWindow(window: NSWindow) -> NSDocument?
  func addDocument(document: NSDocument)
  func removeDocument(document: NSDocument)
  @IBAction func newDocument(sender: AnyObject?)
  func openUntitledDocumentAndDisplay(displayDocument: Bool) throws -> NSDocument
  func makeUntitledDocumentOfType(typeName: String) throws -> NSDocument
  @IBAction func openDocument(sender: AnyObject?)
  func URLsFromRunningOpenPanel() -> [NSURL]?
  func runModalOpenPanel(openPanel: NSOpenPanel, forTypes types: [String]?) -> Int
  @available(OSX 10.8, *)
  func beginOpenPanelWithCompletionHandler(completionHandler: ([NSURL]?) -> Void)
  @available(OSX 10.8, *)
  func beginOpenPanel(openPanel: NSOpenPanel, forTypes inTypes: [String]?, completionHandler: (Int) -> Void)
  @available(OSX 10.7, *)
  func openDocumentWithContentsOfURL(url: NSURL, display displayDocument: Bool, completionHandler: (NSDocument?, Bool, NSError?) -> Void)
  func makeDocumentWithContentsOfURL(url: NSURL, ofType typeName: String) throws -> NSDocument
  @available(OSX 10.7, *)
  func reopenDocumentForURL(urlOrNil: NSURL?, withContentsOfURL contentsURL: NSURL, display displayDocument: Bool, completionHandler: (NSDocument?, Bool, NSError?) -> Void)
  func makeDocumentForURL(urlOrNil: NSURL?, withContentsOfURL contentsURL: NSURL, ofType typeName: String) throws -> NSDocument
  var autosavingDelay: NSTimeInterval
  @IBAction func saveAllDocuments(sender: AnyObject?)
  var hasEditedDocuments: Bool { get }
  func reviewUnsavedDocumentsWithAlertTitle(title: String?, cancellable: Bool, delegate: AnyObject?, didReviewAllSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func closeAllDocumentsWithDelegate(delegate: AnyObject?, didCloseAllSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func duplicateDocumentWithContentsOfURL(url: NSURL, copying duplicateByCopying: Bool, displayName displayNameOrNil: String?) throws -> NSDocument
  func presentError(error: NSError, modalForWindow window: NSWindow, delegate: AnyObject?, didPresentSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func presentError(error: NSError) -> Bool
  func willPresentError(error: NSError) -> NSError
  var maximumRecentDocumentCount: Int { get }
  @IBAction func clearRecentDocuments(sender: AnyObject?)
  func noteNewRecentDocument(document: NSDocument)
  func noteNewRecentDocumentURL(url: NSURL)
  var recentDocumentURLs: [NSURL] { get }
  var defaultType: String? { get }
  func typeForContentsOfURL(url: NSURL) throws -> String
  var documentClassNames: [String] { get }
  func documentClassForType(typeName: String) -> AnyClass?
  func displayNameForType(typeName: String) -> String?
  func validateUserInterfaceItem(anItem: NSValidatedUserInterfaceItem) -> Bool
  func encodeWithCoder(aCoder: NSCoder)
}
extension NSDocumentController {
}
