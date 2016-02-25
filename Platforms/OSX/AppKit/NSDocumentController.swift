
class NSDocumentController : NSObject, NSCoding, NSUserInterfaceValidations {
  class func sharedDocumentController() -> NSDocumentController
  init?(coder coder: NSCoder)
  var documents: [NSDocument] { get }
  var currentDocument: NSDocument? { get }
  var currentDirectory: String? { get }
  func documentForURL(_ url: NSURL) -> NSDocument?
  func documentForWindow(_ window: NSWindow) -> NSDocument?
  func addDocument(_ document: NSDocument)
  func removeDocument(_ document: NSDocument)
  @IBAction func newDocument(_ sender: AnyObject?)
  func openUntitledDocumentAndDisplay(_ displayDocument: Bool) throws -> NSDocument
  func makeUntitledDocumentOfType(_ typeName: String) throws -> NSDocument
  @IBAction func openDocument(_ sender: AnyObject?)
  func URLsFromRunningOpenPanel() -> [NSURL]?
  func runModalOpenPanel(_ openPanel: NSOpenPanel, forTypes types: [String]?) -> Int
  @available(OSX 10.8, *)
  func beginOpenPanelWithCompletionHandler(_ completionHandler: ([NSURL]?) -> Void)
  @available(OSX 10.8, *)
  func beginOpenPanel(_ openPanel: NSOpenPanel, forTypes inTypes: [String]?, completionHandler completionHandler: (Int) -> Void)
  @available(OSX 10.7, *)
  func openDocumentWithContentsOfURL(_ url: NSURL, display displayDocument: Bool, completionHandler completionHandler: (NSDocument?, Bool, NSError?) -> Void)
  func makeDocumentWithContentsOfURL(_ url: NSURL, ofType typeName: String) throws -> NSDocument
  @available(OSX 10.7, *)
  func reopenDocumentForURL(_ urlOrNil: NSURL?, withContentsOfURL contentsURL: NSURL, display displayDocument: Bool, completionHandler completionHandler: (NSDocument?, Bool, NSError?) -> Void)
  func makeDocumentForURL(_ urlOrNil: NSURL?, withContentsOfURL contentsURL: NSURL, ofType typeName: String) throws -> NSDocument
  var autosavingDelay: NSTimeInterval
  @IBAction func saveAllDocuments(_ sender: AnyObject?)
  var hasEditedDocuments: Bool { get }
  func reviewUnsavedDocumentsWithAlertTitle(_ title: String?, cancellable cancellable: Bool, delegate delegate: AnyObject?, didReviewAllSelector didReviewAllSelector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>)
  func closeAllDocumentsWithDelegate(_ delegate: AnyObject?, didCloseAllSelector didCloseAllSelector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func duplicateDocumentWithContentsOfURL(_ url: NSURL, copying duplicateByCopying: Bool, displayName displayNameOrNil: String?) throws -> NSDocument
  func presentError(_ error: NSError, modalForWindow window: NSWindow, delegate delegate: AnyObject?, didPresentSelector didPresentSelector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>)
  func presentError(_ error: NSError) -> Bool
  func willPresentError(_ error: NSError) -> NSError
  var maximumRecentDocumentCount: Int { get }
  @IBAction func clearRecentDocuments(_ sender: AnyObject?)
  func noteNewRecentDocument(_ document: NSDocument)
  func noteNewRecentDocumentURL(_ url: NSURL)
  var recentDocumentURLs: [NSURL] { get }
  var defaultType: String? { get }
  func typeForContentsOfURL(_ url: NSURL) throws -> String
  var documentClassNames: [String] { get }
  func documentClassForType(_ typeName: String) -> AnyClass?
  func displayNameForType(_ typeName: String) -> String?
  func validateUserInterfaceItem(_ anItem: NSValidatedUserInterfaceItem) -> Bool
  func encodeWithCoder(_ aCoder: NSCoder)
}
extension NSDocumentController {
}
