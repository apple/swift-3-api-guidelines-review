
class NSDocumentController : NSObject, NSCoding, NSUserInterfaceValidations {
  class func shared() -> NSDocumentController
  init?(coder coder: NSCoder)
  var documents: [NSDocument] { get }
  var currentDocument: NSDocument? { get }
  var currentDirectory: String? { get }
  func document(for url: NSURL) -> NSDocument?
  func document(for window: NSWindow) -> NSDocument?
  func addDocument(_ document: NSDocument)
  func removeDocument(_ document: NSDocument)
  @IBAction func newDocument(_ sender: AnyObject?)
  func openUntitledDocumentAndDisplay(_ displayDocument: Bool) throws -> NSDocument
  func makeUntitledDocument(ofType typeName: String) throws -> NSDocument
  @IBAction func openDocument(_ sender: AnyObject?)
  func urlsFromRunningOpenPanel() -> [NSURL]?
  func runModalOpenPanel(_ openPanel: NSOpenPanel, forTypes types: [String]?) -> Int
  @available(OSX 10.8, *)
  func beginOpenPanel(completionHandler completionHandler: ([NSURL]?) -> Void)
  @available(OSX 10.8, *)
  func begin(_ openPanel: NSOpenPanel, forTypes inTypes: [String]?, completionHandler completionHandler: (Int) -> Void)
  @available(OSX 10.7, *)
  func openDocument(withContentsOf url: NSURL, display displayDocument: Bool, completionHandler completionHandler: (NSDocument?, Bool, NSError?) -> Void)
  func makeDocument(withContentsOf url: NSURL, ofType typeName: String) throws -> NSDocument
  @available(OSX 10.7, *)
  func reopenDocument(for urlOrNil: NSURL?, withContentsOf contentsURL: NSURL, display displayDocument: Bool, completionHandler completionHandler: (NSDocument?, Bool, NSError?) -> Void)
  func makeDocument(for urlOrNil: NSURL?, withContentsOf contentsURL: NSURL, ofType typeName: String) throws -> NSDocument
  var autosavingDelay: NSTimeInterval
  @IBAction func saveAllDocuments(_ sender: AnyObject?)
  var hasEditedDocuments: Bool { get }
  func reviewUnsavedDocuments(withAlertTitle title: String?, cancellable cancellable: Bool, delegate delegate: AnyObject?, didReviewAllSelector didReviewAllSelector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>)
  func closeAllDocuments(withDelegate delegate: AnyObject?, didCloseAllSelector didCloseAllSelector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func duplicateDocument(withContentsOf url: NSURL, copying duplicateByCopying: Bool, displayName displayNameOrNil: String?) throws -> NSDocument
  func presentError(_ error: NSError, modalFor window: NSWindow, delegate delegate: AnyObject?, didPresent didPresentSelector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>)
  func presentError(_ error: NSError) -> Bool
  func willPresentError(_ error: NSError) -> NSError
  var maximumRecentDocumentCount: Int { get }
  @IBAction func clearRecentDocuments(_ sender: AnyObject?)
  func noteNewRecentDocument(_ document: NSDocument)
  func noteNewRecentDocumentURL(_ url: NSURL)
  var recentDocumentURLs: [NSURL] { get }
  var defaultType: String? { get }
  func typeForContents(of url: NSURL) throws -> String
  var documentClassNames: [String] { get }
  func documentClass(forType typeName: String) -> AnyClass?
  func displayName(forType typeName: String) -> String?
  func validate(_ anItem: NSValidatedUserInterfaceItem) -> Bool
  func encode(with aCoder: NSCoder)
}
extension NSDocumentController {
}
