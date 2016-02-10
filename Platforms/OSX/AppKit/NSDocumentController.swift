
class NSDocumentController : Object, Coding, NSUserInterfaceValidations {
  class func shared() -> NSDocumentController
  init()
  init?(coder: Coder)
  var documents: [NSDocument] { get }
  var currentDocument: NSDocument? { get }
  var currentDirectory: String? { get }
  func documentFor(url: URL) -> NSDocument?
  func documentFor(window: NSWindow) -> NSDocument?
  func addDocument(document: NSDocument)
  func removeDocument(document: NSDocument)
  @IBAction func newDocument(sender: AnyObject?)
  func openUntitledDocumentAndDisplay(displayDocument: Bool) throws -> NSDocument
  func makeUntitledDocumentOf(type typeName: String) throws -> NSDocument
  @IBAction func openDocument(sender: AnyObject?)
  func urlsFromRunningOpenPanel() -> [URL]?
  func runModalOpenPanel(openPanel: NSOpenPanel, forTypes types: [String]?) -> Int
  @available(OSX 10.8, *)
  func beginOpenPanel(completionHandler completionHandler: ([URL]?) -> Void)
  @available(OSX 10.8, *)
  func begin(openPanel: NSOpenPanel, forTypes inTypes: [String]?, completionHandler: (Int) -> Void)
  @available(OSX 10.7, *)
  func openDocumentWithContentsOf(url: URL, display displayDocument: Bool, completionHandler: (NSDocument?, Bool, Error?) -> Void)
  func makeDocumentWithContentsOf(url: URL, ofType typeName: String) throws -> NSDocument
  @available(OSX 10.7, *)
  func reopenDocumentFor(urlOrNil: URL?, withContentsOf contentsURL: URL, display displayDocument: Bool, completionHandler: (NSDocument?, Bool, Error?) -> Void)
  func makeDocumentFor(urlOrNil: URL?, withContentsOf contentsURL: URL, ofType typeName: String) throws -> NSDocument
  var autosavingDelay: TimeInterval
  @IBAction func saveAllDocuments(sender: AnyObject?)
  var hasEditedDocuments: Bool { get }
  func reviewUnsavedDocumentsWithAlertTitle(title: String?, cancellable: Bool, delegate: AnyObject?, didReviewAllSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func closeAllDocuments(delegate delegate: AnyObject?, didCloseAllSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func duplicateDocumentWithContentsOf(url: URL, copying duplicateByCopying: Bool, displayName displayNameOrNil: String?) throws -> NSDocument
  func presentError(error: Error, modalFor window: NSWindow, delegate: AnyObject?, didPresent didPresentSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func presentError(error: Error) -> Bool
  func willPresentError(error: Error) -> Error
  var maximumRecentDocumentCount: Int { get }
  @IBAction func clearRecentDocuments(sender: AnyObject?)
  func noteNewRecentDocument(document: NSDocument)
  func noteNewRecentDocumentURL(url: URL)
  var recentDocumentURLs: [URL] { get }
  var defaultType: String? { get }
  func typeForContentsOf(url: URL) throws -> String
  var documentClassNames: [String] { get }
  func documentClassFor(type typeName: String) -> AnyClass?
  func displayNameFor(type typeName: String) -> String?
  func validate(anItem: NSValidatedUserInterfaceItem) -> Bool
  func encodeWith(aCoder: Coder)
}
extension NSDocumentController {
}
