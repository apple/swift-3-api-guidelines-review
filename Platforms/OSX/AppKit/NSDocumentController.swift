
class NSDocumentController : Object, Coding, NSUserInterfaceValidations {
  class func shared() -> NSDocumentController
  init()
  init?(coder: Coder)
  var documents: [NSDocument] { get }
  var currentDocument: NSDocument? { get }
  var currentDirectory: String? { get }
  func document(for url: URL) -> NSDocument?
  func document(for window: NSWindow) -> NSDocument?
  func addDocument(document: NSDocument)
  func removeDocument(document: NSDocument)
  @IBAction func newDocument(sender: AnyObject?)
  func openUntitledDocumentAndDisplay(displayDocument: Bool) throws -> NSDocument
  func makeUntitledDocument(ofType typeName: String) throws -> NSDocument
  @IBAction func openDocument(sender: AnyObject?)
  func urlsFromRunningOpenPanel() -> [URL]?
  func runModalOpenPanel(openPanel: NSOpenPanel, forTypes types: [String]?) -> Int
  @available(OSX 10.8, *)
  func beginOpenPanel(completionHandler completionHandler: ([URL]?) -> Void)
  @available(OSX 10.8, *)
  func begin(openPanel: NSOpenPanel, forTypes inTypes: [String]?, completionHandler: (Int) -> Void)
  @available(OSX 10.7, *)
  func openDocument(contentsOf url: URL, display displayDocument: Bool, completionHandler: (NSDocument?, Bool, Error?) -> Void)
  func makeDocument(contentsOf url: URL, ofType typeName: String) throws -> NSDocument
  @available(OSX 10.7, *)
  func reopenDocument(for urlOrNil: URL?, withContentsOf contentsURL: URL, display displayDocument: Bool, completionHandler: (NSDocument?, Bool, Error?) -> Void)
  func makeDocument(for urlOrNil: URL?, withContentsOf contentsURL: URL, ofType typeName: String) throws -> NSDocument
  var autosavingDelay: TimeInterval
  @IBAction func saveAllDocuments(sender: AnyObject?)
  var hasEditedDocuments: Bool { get }
  func reviewUnsavedDocuments(alertTitle title: String?, cancellable: Bool, delegate: AnyObject?, didReviewAllSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func closeAllDocuments(delegate delegate: AnyObject?, didCloseAllSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func duplicateDocument(contentsOf url: URL, copying duplicateByCopying: Bool, displayName displayNameOrNil: String?) throws -> NSDocument
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
  func documentClass(forType typeName: String) -> AnyClass?
  func displayName(forType typeName: String) -> String?
  func validate(anItem: NSValidatedUserInterfaceItem) -> Bool
  func encode(with aCoder: Coder)
}
extension NSDocumentController {
}
