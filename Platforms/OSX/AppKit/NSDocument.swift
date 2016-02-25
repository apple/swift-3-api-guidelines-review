
enum NSDocumentChangeType : UInt {
  init?(rawValue rawValue: UInt)
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
  init?(rawValue rawValue: UInt)
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
  convenience init(type typeName: String) throws
  @available(OSX 10.6, *)
  class func canConcurrentlyReadDocumentsOfType(_ typeName: String) -> Bool
  convenience init(contentsOfURL url: NSURL, ofType typeName: String) throws
  convenience init(forURL urlOrNil: NSURL?, withContentsOfURL contentsURL: NSURL, ofType typeName: String) throws
  var fileType: String?
  @NSCopying var fileURL: NSURL?
  @NSCopying var fileModificationDate: NSDate?
  @available(OSX 10.8, *)
  var draft: Bool
  @available(OSX 10.7, *)
  func performActivityWithSynchronousWaiting(_ waitSynchronously: Bool, usingBlock block: (() -> Void) -> Void)
  @available(OSX 10.7, *)
  func continueActivityUsingBlock(_ block: () -> Void)
  @available(OSX 10.7, *)
  func continueAsynchronousWorkOnMainThreadUsingBlock(_ block: () -> Void)
  @available(OSX 10.7, *)
  func performSynchronousFileAccessUsingBlock(_ block: () -> Void)
  @available(OSX 10.7, *)
  func performAsynchronousFileAccessUsingBlock(_ block: (() -> Void) -> Void)
  @IBAction func revertDocumentToSaved(_ sender: AnyObject?)
  func revertToContentsOfURL(_ url: NSURL, ofType typeName: String) throws
  func readFromURL(_ url: NSURL, ofType typeName: String) throws
  func readFromFileWrapper(_ fileWrapper: NSFileWrapper, ofType typeName: String) throws
  func readFromData(_ data: NSData, ofType typeName: String) throws
  @available(OSX 10.7, *)
  var entireFileLoaded: Bool { get }
  func writeToURL(_ url: NSURL, ofType typeName: String) throws
  func fileWrapperOfType(_ typeName: String) throws -> NSFileWrapper
  func dataOfType(_ typeName: String) throws -> NSData
  @available(OSX 10.7, *)
  func unblockUserInteraction()
  @available(OSX 10.7, *)
  var autosavingIsImplicitlyCancellable: Bool { get }
  func writeSafelyToURL(_ url: NSURL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType) throws
  func writeToURL(_ url: NSURL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType, originalContentsURL absoluteOriginalContentsURL: NSURL?) throws
  func fileAttributesToWriteToURL(_ url: NSURL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType, originalContentsURL absoluteOriginalContentsURL: NSURL?) throws -> [String : AnyObject]
  var keepBackupFile: Bool { get }
  @available(OSX 10.8, *)
  @NSCopying var backupFileURL: NSURL? { get }
  @IBAction func saveDocument(_ sender: AnyObject?)
  @IBAction func saveDocumentAs(_ sender: AnyObject?)
  @IBAction func saveDocumentTo(_ sender: AnyObject?)
  func saveDocumentWithDelegate(_ delegate: AnyObject?, didSaveSelector didSaveSelector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>)
  func runModalSavePanelForSaveOperation(_ saveOperation: NSSaveOperationType, delegate delegate: AnyObject?, didSaveSelector didSaveSelector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>)
  var shouldRunSavePanelWithAccessoryView: Bool { get }
  func prepareSavePanel(_ savePanel: NSSavePanel) -> Bool
  var fileNameExtensionWasHiddenInLastRunSavePanel: Bool { get }
  var fileTypeFromLastRunSavePanel: String? { get }
  func saveToURL(_ url: NSURL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType, delegate delegate: AnyObject?, didSaveSelector didSaveSelector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func saveToURL(_ url: NSURL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType, completionHandler completionHandler: (NSError?) -> Void)
  @available(OSX 10.7, *)
  func canAsynchronouslyWriteToURL(_ url: NSURL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType) -> Bool
  @available(OSX 10.7, *)
  func checkAutosavingSafety() throws
  @available(OSX 10.7, *)
  func scheduleAutosaving()
  var hasUnautosavedChanges: Bool { get }
  func autosaveDocumentWithDelegate(_ delegate: AnyObject?, didAutosaveSelector didAutosaveSelector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func autosaveWithImplicitCancellability(_ autosavingIsImplicitlyCancellable: Bool, completionHandler completionHandler: (NSError?) -> Void)
  @available(OSX 10.7, *)
  class func autosavesInPlace() -> Bool
  @available(OSX 10.7, *)
  class func preservesVersions() -> Bool
  @available(OSX 10.8, *)
  @IBAction func browseDocumentVersions(_ sender: AnyObject?)
  @available(OSX 10.8, *)
  class func autosavesDrafts() -> Bool
  var autosavingFileType: String? { get }
  @NSCopying var autosavedContentsFileURL: NSURL?
  func canCloseDocumentWithDelegate(_ delegate: AnyObject, shouldCloseSelector shouldCloseSelector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>)
  func close()
  @available(OSX 10.7, *)
  @IBAction func duplicateDocument(_ sender: AnyObject?)
  @available(OSX 10.7, *)
  func duplicateDocumentWithDelegate(_ delegate: AnyObject?, didDuplicateSelector didDuplicateSelector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func duplicate() throws -> NSDocument
  @available(OSX 10.8, *)
  @IBAction func renameDocument(_ sender: AnyObject?)
  @available(OSX 10.8, *)
  @IBAction func moveDocumentToUbiquityContainer(_ sender: AnyObject?)
  @available(OSX 10.8, *)
  @IBAction func moveDocument(_ sender: AnyObject?)
  @available(OSX 10.8, *)
  func moveDocumentWithCompletionHandler(_ completionHandler: ((Bool) -> Void)?)
  @available(OSX 10.8, *)
  func moveToURL(_ url: NSURL, completionHandler completionHandler: ((NSError?) -> Void)?)
  @available(OSX 10.8, *)
  @IBAction func lockDocument(_ sender: AnyObject?)
  @available(OSX 10.8, *)
  @IBAction func unlockDocument(_ sender: AnyObject?)
  @available(OSX 10.8, *)
  func lockDocumentWithCompletionHandler(_ completionHandler: ((Bool) -> Void)?)
  @available(OSX 10.8, *)
  func lockWithCompletionHandler(_ completionHandler: ((NSError?) -> Void)?)
  @available(OSX 10.8, *)
  func unlockDocumentWithCompletionHandler(_ completionHandler: ((Bool) -> Void)?)
  @available(OSX 10.8, *)
  func unlockWithCompletionHandler(_ completionHandler: ((NSError?) -> Void)?)
  @available(OSX 10.8, *)
  var locked: Bool { get }
  @IBAction func runPageLayout(_ sender: AnyObject?)
  func runModalPageLayoutWithPrintInfo(_ printInfo: NSPrintInfo, delegate delegate: AnyObject?, didRunSelector didRunSelector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>)
  func preparePageLayout(_ pageLayout: NSPageLayout) -> Bool
  func shouldChangePrintInfo(_ newPrintInfo: NSPrintInfo) -> Bool
  @NSCopying var printInfo: NSPrintInfo
  @IBAction func printDocument(_ sender: AnyObject?)
  func printDocumentWithSettings(_ printSettings: [String : AnyObject], showPrintPanel showPrintPanel: Bool, delegate delegate: AnyObject?, didPrintSelector didPrintSelector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>)
  func printOperationWithSettings(_ printSettings: [String : AnyObject]) throws -> NSPrintOperation
  func runModalPrintOperation(_ printOperation: NSPrintOperation, delegate delegate: AnyObject?, didRunSelector didRunSelector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.9, *)
  @IBAction func saveDocumentToPDF(_ sender: AnyObject?)
  @available(OSX 10.9, *)
  var PDFPrintOperation: NSPrintOperation { get }
  var documentEdited: Bool { get }
  @available(OSX 10.7, *)
  var inViewingMode: Bool { get }
  func updateChangeCount(_ change: NSDocumentChangeType)
  @available(OSX 10.7, *)
  func changeCountTokenForSaveOperation(_ saveOperation: NSSaveOperationType) -> AnyObject
  @available(OSX 10.7, *)
  func updateChangeCountWithToken(_ changeCountToken: AnyObject, forSaveOperation saveOperation: NSSaveOperationType)
  var undoManager: NSUndoManager?
  var hasUndoManager: Bool
  func presentError(_ error: NSError, modalForWindow window: NSWindow, delegate delegate: AnyObject?, didPresentSelector didPresentSelector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>)
  func presentError(_ error: NSError) -> Bool
  func willPresentError(_ error: NSError) -> NSError
  @available(OSX 10.7, *)
  func willNotPresentError(_ error: NSError)
  func makeWindowControllers()
  var windowNibName: String? { get }
  func windowControllerWillLoadNib(_ windowController: NSWindowController)
  func windowControllerDidLoadNib(_ windowController: NSWindowController)
  func setWindow(_ window: NSWindow?)
  func addWindowController(_ windowController: NSWindowController)
  func removeWindowController(_ windowController: NSWindowController)
  func showWindows()
  var windowControllers: [NSWindowController] { get }
  func shouldCloseWindowController(_ windowController: NSWindowController, delegate delegate: AnyObject?, shouldCloseSelector shouldCloseSelector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func setDisplayName(_ displayNameOrNil: String?)
  var displayName: String { get }
  @available(OSX 10.8, *)
  func defaultDraftName() -> String
  var windowForSheet: NSWindow? { get }
  class func readableTypes() -> [String]
  class func writableTypes() -> [String]
  class func isNativeType(_ type: String) -> Bool
  func writableTypesForSaveOperation(_ saveOperation: NSSaveOperationType) -> [String]
  @available(OSX 10.5, *)
  func fileNameExtensionForType(_ typeName: String, saveOperation saveOperation: NSSaveOperationType) -> String?
  func validateUserInterfaceItem(_ anItem: NSValidatedUserInterfaceItem) -> Bool
  @available(OSX 10.8, *)
  class func usesUbiquitousStorage() -> Bool
  @NSCopying var presentedItemURL: NSURL? { get }
  @available(OSX 10.5, *)
  var presentedItemOperationQueue: NSOperationQueue { get }
  @available(OSX 10.8, *)
  @NSCopying var primaryPresentedItemURL: NSURL? { get }
  func relinquishPresentedItemToReader(_ reader: ((() -> Void)?) -> Void)
  func relinquishPresentedItemToWriter(_ writer: ((() -> Void)?) -> Void)
  func savePresentedItemChangesWithCompletionHandler(_ completionHandler: (NSError?) -> Void)
  func accommodatePresentedItemDeletionWithCompletionHandler(_ completionHandler: (NSError?) -> Void)
  func presentedItemDidMoveToURL(_ newURL: NSURL)
  func presentedItemDidChange()
  @available(OSX 10.7, *)
  func presentedItemDidGainVersion(_ version: NSFileVersion)
  @available(OSX 10.7, *)
  func presentedItemDidLoseVersion(_ version: NSFileVersion)
  @available(OSX 10.7, *)
  func presentedItemDidResolveConflictVersion(_ version: NSFileVersion)
  func accommodatePresentedSubitemDeletionAtURL(_ url: NSURL, completionHandler completionHandler: (NSError?) -> Void)
  func presentedSubitemDidAppearAtURL(_ url: NSURL)
  func presentedSubitemAtURL(_ oldURL: NSURL, didMoveToURL newURL: NSURL)
  func presentedSubitemDidChangeAtURL(_ url: NSURL)
  @available(OSX 10.7, *)
  func presentedSubitemAtURL(_ url: NSURL, didGainVersion version: NSFileVersion)
  @available(OSX 10.7, *)
  func presentedSubitemAtURL(_ url: NSURL, didLoseVersion version: NSFileVersion)
  @available(OSX 10.7, *)
  func presentedSubitemAtURL(_ url: NSURL, didResolveConflictVersion version: NSFileVersion)
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
  init(inClose inClose: UInt32, hasUndoManager hasUndoManager: UInt32, unused unused: UInt32, reconciledToFileName reconciledToFileName: UInt32, checkingDisplayName checkingDisplayName: UInt32, hasInvalidRestorableState hasInvalidRestorableState: UInt32, hasEverHadInvalidRestorableState hasEverHadInvalidRestorableState: UInt32, RESERVED RESERVED: UInt32)
}
extension NSDocument {
}
