
class NSDocumentController : NSObject, NSCoding, NSUserInterfaceValidations {
  class func shared() -> NSDocumentController
  init()
  init?(coder: NSCoder)
  var documents: [NSDocument] { get }
  var currentDocument: NSDocument? { get }
  var currentDirectory: String? { get }
  func document(for url: NSURL) -> NSDocument?
  func document(for window: NSWindow) -> NSDocument?
  func addDocument(document: NSDocument)
  func removeDocument(document: NSDocument)
  @IBAction func newDocument(sender: AnyObject?)
  func openUntitledDocumentAndDisplay(displayDocument: Bool) throws -> NSDocument
  func makeUntitledDocument(ofType typeName: String) throws -> NSDocument
  @IBAction func openDocument(sender: AnyObject?)
  func urlsFromRunningOpenPanel() -> [NSURL]?
  func runModalOpenPanel(openPanel: NSOpenPanel, forTypes types: [String]?) -> Int
  @available(OSX 10.8, *)
  func beginOpenPanel(completionHandler completionHandler: ([NSURL]?) -> Void)
  @available(OSX 10.8, *)
  func begin(openPanel: NSOpenPanel, forTypes inTypes: [String]?, completionHandler: (Int) -> Void)
  @available(OSX 10.7, *)
  func openDocument(contentsOf url: NSURL, display displayDocument: Bool, completionHandler: (NSDocument?, Bool, NSError?) -> Void)
  func makeDocument(contentsOf url: NSURL, ofType typeName: String) throws -> NSDocument
  @available(OSX 10.7, *)
  func reopenDocument(for urlOrNil: NSURL?, withContentsOf contentsURL: NSURL, display displayDocument: Bool, completionHandler: (NSDocument?, Bool, NSError?) -> Void)
  func makeDocument(for urlOrNil: NSURL?, withContentsOf contentsURL: NSURL, ofType typeName: String) throws -> NSDocument
  var autosavingDelay: NSTimeInterval
  @IBAction func saveAllDocuments(sender: AnyObject?)
  var hasEditedDocuments: Bool { get }
  func reviewUnsavedDocuments(alertTitle title: String?, cancellable: Bool, delegate: AnyObject?, didReviewAllSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func closeAllDocuments(delegate delegate: AnyObject?, didCloseAllSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func duplicateDocument(contentsOf url: NSURL, copying duplicateByCopying: Bool, displayName displayNameOrNil: String?) throws -> NSDocument
  func presentError(error: NSError, modalFor window: NSWindow, delegate: AnyObject?, didPresent didPresentSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func presentError(error: NSError) -> Bool
  func willPresentError(error: NSError) -> NSError
  var maximumRecentDocumentCount: Int { get }
  @IBAction func clearRecentDocuments(sender: AnyObject?)
  func noteNewRecentDocument(document: NSDocument)
  func noteNewRecentDocumentURL(url: NSURL)
  var recentDocumentURLs: [NSURL] { get }
  var defaultType: String? { get }
  func typeForContentsOf(url: NSURL) throws -> String
  var documentClassNames: [String] { get }
  func documentClass(forType typeName: String) -> AnyClass?
  func displayName(forType typeName: String) -> String?
  func validate(anItem: NSValidatedUserInterfaceItem) -> Bool
  func encode(with aCoder: NSCoder)
}
extension NSDocumentController {
}
