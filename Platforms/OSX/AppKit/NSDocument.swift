
enum NSDocumentChangeType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ChangeDone
  case ChangeUndone
  @available(OSX 10.5, *)
  case ChangeRedone
  case ChangeCleared
  case ChangeReadOtherContents
  case ChangeAutosaved
  @available(OSX 10.7, *)
  case ChangeDiscardable
}
enum NSSaveOperationType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case SaveOperation
  case SaveAsOperation
  case SaveToOperation
  @available(OSX 10.7, *)
  case AutosaveInPlaceOperation
  @available(OSX 10.7, *)
  case AutosaveElsewhereOperation
  @available(OSX 10.8, *)
  case AutosaveAsOperation
}
class NSDocument : NSObject, NSFilePresenter, NSUserInterfaceValidations {
  init()
  convenience init(type typeName: String) throws
  @available(OSX 10.6, *)
  class func canConcurrentlyReadDocumentsOfType(typeName: String) -> Bool
  convenience init(contentsOfURL url: NSURL, ofType typeName: String) throws
  convenience init(forURL urlOrNil: NSURL?, withContentsOfURL contentsURL: NSURL, ofType typeName: String) throws
  var fileType: String?
  @NSCopying var fileURL: NSURL?
  @NSCopying var fileModificationDate: NSDate?
  @available(OSX 10.8, *)
  var draft: Bool
  @available(OSX 10.7, *)
  func performActivityWithSynchronousWaiting(waitSynchronously: Bool, usingBlock block: (() -> Void) -> Void)
  @available(OSX 10.7, *)
  func continueActivityUsingBlock(block: () -> Void)
  @available(OSX 10.7, *)
  func continueAsynchronousWorkOnMainThreadUsingBlock(block: () -> Void)
  @available(OSX 10.7, *)
  func performSynchronousFileAccessUsingBlock(block: () -> Void)
  @available(OSX 10.7, *)
  func performAsynchronousFileAccessUsingBlock(block: (() -> Void) -> Void)
  @IBAction func revertDocumentToSaved(sender: AnyObject?)
  func revertToContentsOfURL(url: NSURL, ofType typeName: String) throws
  func readFromURL(url: NSURL, ofType typeName: String) throws
  func readFromFileWrapper(fileWrapper: NSFileWrapper, ofType typeName: String) throws
  func readFromData(data: NSData, ofType typeName: String) throws
  @available(OSX 10.7, *)
  var entireFileLoaded: Bool { get }
  func writeToURL(url: NSURL, ofType typeName: String) throws
  func fileWrapperOfType(typeName: String) throws -> NSFileWrapper
  func dataOfType(typeName: String) throws -> NSData
  @available(OSX 10.7, *)
  func unblockUserInteraction()
  @available(OSX 10.7, *)
  var autosavingIsImplicitlyCancellable: Bool { get }
  func writeSafelyToURL(url: NSURL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType) throws
  func writeToURL(url: NSURL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType, originalContentsURL absoluteOriginalContentsURL: NSURL?) throws
  func fileAttributesToWriteToURL(url: NSURL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType, originalContentsURL absoluteOriginalContentsURL: NSURL?) throws -> [String : AnyObject]
  var keepBackupFile: Bool { get }
  @available(OSX 10.8, *)
  @NSCopying var backupFileURL: NSURL? { get }
  @IBAction func saveDocument(sender: AnyObject?)
  @IBAction func saveDocumentAs(sender: AnyObject?)
  @IBAction func saveDocumentTo(sender: AnyObject?)
  func saveDocumentWithDelegate(delegate: AnyObject?, didSaveSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func runModalSavePanelForSaveOperation(saveOperation: NSSaveOperationType, delegate: AnyObject?, didSaveSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  var shouldRunSavePanelWithAccessoryView: Bool { get }
  func prepareSavePanel(savePanel: NSSavePanel) -> Bool
  var fileNameExtensionWasHiddenInLastRunSavePanel: Bool { get }
  var fileTypeFromLastRunSavePanel: String? { get }
  func saveToURL(url: NSURL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType, delegate: AnyObject?, didSaveSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func saveToURL(url: NSURL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType, completionHandler: (NSError?) -> Void)
  @available(OSX 10.7, *)
  func canAsynchronouslyWriteToURL(url: NSURL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType) -> Bool
  @available(OSX 10.7, *)
  func checkAutosavingSafety() throws
  @available(OSX 10.7, *)
  func scheduleAutosaving()
  var hasUnautosavedChanges: Bool { get }
  func autosaveDocumentWithDelegate(delegate: AnyObject?, didAutosaveSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func autosaveWithImplicitCancellability(autosavingIsImplicitlyCancellable: Bool, completionHandler: (NSError?) -> Void)
  @available(OSX 10.7, *)
  class func autosavesInPlace() -> Bool
  @available(OSX 10.7, *)
  class func preservesVersions() -> Bool
  @available(OSX 10.8, *)
  @IBAction func browseDocumentVersions(sender: AnyObject?)
  @available(OSX 10.8, *)
  class func autosavesDrafts() -> Bool
  var autosavingFileType: String? { get }
  @NSCopying var autosavedContentsFileURL: NSURL?
  func canCloseDocumentWithDelegate(delegate: AnyObject, shouldCloseSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func close()
  @available(OSX 10.7, *)
  @IBAction func duplicateDocument(sender: AnyObject?)
  @available(OSX 10.7, *)
  func duplicateDocumentWithDelegate(delegate: AnyObject?, didDuplicateSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func duplicate() throws -> NSDocument
  @available(OSX 10.8, *)
  @IBAction func renameDocument(sender: AnyObject?)
  @available(OSX 10.8, *)
  @IBAction func moveDocumentToUbiquityContainer(sender: AnyObject?)
  @available(OSX 10.8, *)
  @IBAction func moveDocument(sender: AnyObject?)
  @available(OSX 10.8, *)
  func moveDocumentWithCompletionHandler(completionHandler: ((Bool) -> Void)?)
  @available(OSX 10.8, *)
  func moveToURL(url: NSURL, completionHandler: ((NSError?) -> Void)?)
  @available(OSX 10.8, *)
  @IBAction func lockDocument(sender: AnyObject?)
  @available(OSX 10.8, *)
  @IBAction func unlockDocument(sender: AnyObject?)
  @available(OSX 10.8, *)
  func lockDocumentWithCompletionHandler(completionHandler: ((Bool) -> Void)?)
  @available(OSX 10.8, *)
  func lockWithCompletionHandler(completionHandler: ((NSError?) -> Void)?)
  @available(OSX 10.8, *)
  func unlockDocumentWithCompletionHandler(completionHandler: ((Bool) -> Void)?)
  @available(OSX 10.8, *)
  func unlockWithCompletionHandler(completionHandler: ((NSError?) -> Void)?)
  @available(OSX 10.8, *)
  var locked: Bool { get }
  @IBAction func runPageLayout(sender: AnyObject?)
  func runModalPageLayoutWithPrintInfo(printInfo: NSPrintInfo, delegate: AnyObject?, didRunSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func preparePageLayout(pageLayout: NSPageLayout) -> Bool
  func shouldChangePrintInfo(newPrintInfo: NSPrintInfo) -> Bool
  @NSCopying var printInfo: NSPrintInfo
  @IBAction func printDocument(sender: AnyObject?)
  func printDocumentWithSettings(printSettings: [String : AnyObject], showPrintPanel: Bool, delegate: AnyObject?, didPrintSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func printOperationWithSettings(printSettings: [String : AnyObject]) throws -> NSPrintOperation
  func runModalPrintOperation(printOperation: NSPrintOperation, delegate: AnyObject?, didRunSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.9, *)
  @IBAction func saveDocumentToPDF(sender: AnyObject?)
  @available(OSX 10.9, *)
  var PDFPrintOperation: NSPrintOperation { get }
  var documentEdited: Bool { get }
  @available(OSX 10.7, *)
  var inViewingMode: Bool { get }
  func updateChangeCount(change: NSDocumentChangeType)
  @available(OSX 10.7, *)
  func changeCountTokenForSaveOperation(saveOperation: NSSaveOperationType) -> AnyObject
  @available(OSX 10.7, *)
  func updateChangeCountWithToken(changeCountToken: AnyObject, forSaveOperation saveOperation: NSSaveOperationType)
  var undoManager: NSUndoManager?
  var hasUndoManager: Bool
  func presentError(error: NSError, modalForWindow window: NSWindow, delegate: AnyObject?, didPresentSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func presentError(error: NSError) -> Bool
  func willPresentError(error: NSError) -> NSError
  @available(OSX 10.7, *)
  func willNotPresentError(error: NSError)
  func makeWindowControllers()
  var windowNibName: String? { get }
  func windowControllerWillLoadNib(windowController: NSWindowController)
  func windowControllerDidLoadNib(windowController: NSWindowController)
  func setWindow(window: NSWindow?)
  func addWindowController(windowController: NSWindowController)
  func removeWindowController(windowController: NSWindowController)
  func showWindows()
  var windowControllers: [NSWindowController] { get }
  func shouldCloseWindowController(windowController: NSWindowController, delegate: AnyObject?, shouldCloseSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func setDisplayName(displayNameOrNil: String?)
  var displayName: String { get }
  @available(OSX 10.8, *)
  func defaultDraftName() -> String
  var windowForSheet: NSWindow? { get }
  class func readableTypes() -> [String]
  class func writableTypes() -> [String]
  class func isNativeType(type: String) -> Bool
  func writableTypesForSaveOperation(saveOperation: NSSaveOperationType) -> [String]
  @available(OSX 10.5, *)
  func fileNameExtensionForType(typeName: String, saveOperation: NSSaveOperationType) -> String?
  func validateUserInterfaceItem(anItem: NSValidatedUserInterfaceItem) -> Bool
  @available(OSX 10.8, *)
  class func usesUbiquitousStorage() -> Bool
  @NSCopying var presentedItemURL: NSURL? { get }
  @available(OSX 10.5, *)
  var presentedItemOperationQueue: NSOperationQueue { get }
  @available(OSX 10.8, *)
  @NSCopying var primaryPresentedItemURL: NSURL? { get }
  func relinquishPresentedItemToReader(reader: ((() -> Void)?) -> Void)
  func relinquishPresentedItemToWriter(writer: ((() -> Void)?) -> Void)
  func savePresentedItemChangesWithCompletionHandler(completionHandler: (NSError?) -> Void)
  func accommodatePresentedItemDeletionWithCompletionHandler(completionHandler: (NSError?) -> Void)
  func presentedItemDidMoveToURL(newURL: NSURL)
  func presentedItemDidChange()
  @available(OSX 10.7, *)
  func presentedItemDidGainVersion(version: NSFileVersion)
  @available(OSX 10.7, *)
  func presentedItemDidLoseVersion(version: NSFileVersion)
  @available(OSX 10.7, *)
  func presentedItemDidResolveConflictVersion(version: NSFileVersion)
  func accommodatePresentedSubitemDeletionAtURL(url: NSURL, completionHandler: (NSError?) -> Void)
  func presentedSubitemDidAppearAtURL(url: NSURL)
  func presentedSubitemAtURL(oldURL: NSURL, didMoveToURL newURL: NSURL)
  func presentedSubitemDidChangeAtURL(url: NSURL)
  @available(OSX 10.7, *)
  func presentedSubitemAtURL(url: NSURL, didGainVersion version: NSFileVersion)
  @available(OSX 10.7, *)
  func presentedSubitemAtURL(url: NSURL, didLoseVersion version: NSFileVersion)
  @available(OSX 10.7, *)
  func presentedSubitemAtURL(url: NSURL, didResolveConflictVersion version: NSFileVersion)
}
struct __docFlags {
  var inClose: UInt32
  var hasUndoManager: UInt32
  var unused: UInt32
  var reconciledToFileName: UInt32
  var checkingDisplayName: UInt32
  var hasInvalidRestorableState: UInt32
  var hasEverHadInvalidRestorableState: UInt32
  var RESERVED: UInt32
  init()
  init(inClose: UInt32, hasUndoManager: UInt32, unused: UInt32, reconciledToFileName: UInt32, checkingDisplayName: UInt32, hasInvalidRestorableState: UInt32, hasEverHadInvalidRestorableState: UInt32, RESERVED: UInt32)
}
extension NSDocument {
}
