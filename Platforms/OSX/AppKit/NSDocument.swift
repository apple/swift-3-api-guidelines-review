
enum NSDocumentChangeType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case changeDone
  case changeUndone
  @available(OSX 10.5, *)
  case changeRedone
  case changeCleared
  case changeReadOtherContents
  case changeAutosaved
  @available(OSX 10.7, *)
  case changeDiscardable
}
enum NSSaveOperationType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case saveOperation
  case saveAsOperation
  case saveToOperation
  @available(OSX 10.7, *)
  case autosaveInPlaceOperation
  @available(OSX 10.7, *)
  case autosaveElsewhereOperation
  @available(OSX 10.8, *)
  case autosaveAsOperation
}
class NSDocument : NSObject, NSFilePresenter, NSUserInterfaceValidations {
  init()
  convenience init(type typeName: String) throws
  @available(OSX 10.6, *)
  class func canConcurrentlyReadDocuments(ofType typeName: String) -> Bool
  convenience init(contentsOf url: NSURL, ofType typeName: String) throws
  convenience init(for urlOrNil: NSURL?, withContentsOf contentsURL: NSURL, ofType typeName: String) throws
  var fileType: String?
  @NSCopying var fileURL: NSURL?
  @NSCopying var fileModificationDate: NSDate?
  @available(OSX 10.8, *)
  var isDraft: Bool
  @available(OSX 10.7, *)
  func performActivity(synchronousWaiting waitSynchronously: Bool, using block: (() -> Void) -> Void)
  @available(OSX 10.7, *)
  func continueActivity(block: () -> Void)
  @available(OSX 10.7, *)
  func continueAsynchronousWorkOnMainThread(block: () -> Void)
  @available(OSX 10.7, *)
  func performSynchronousFileAccess(block: () -> Void)
  @available(OSX 10.7, *)
  func performAsynchronousFileAccess(block: (() -> Void) -> Void)
  @IBAction func revertDocumentToSaved(sender: AnyObject?)
  func revert(toContentsOf url: NSURL, ofType typeName: String) throws
  func read(from url: NSURL, ofType typeName: String) throws
  func read(from fileWrapper: NSFileWrapper, ofType typeName: String) throws
  func read(from data: NSData, ofType typeName: String) throws
  @available(OSX 10.7, *)
  var isEntireFileLoaded: Bool { get }
  func write(to url: NSURL, ofType typeName: String) throws
  func fileWrapper(ofType typeName: String) throws -> NSFileWrapper
  func data(ofType typeName: String) throws -> NSData
  @available(OSX 10.7, *)
  func unblockUserInteraction()
  @available(OSX 10.7, *)
  var autosavingIsImplicitlyCancellable: Bool { get }
  func writeSafely(to url: NSURL, ofType typeName: String, for saveOperation: NSSaveOperationType) throws
  func write(to url: NSURL, ofType typeName: String, for saveOperation: NSSaveOperationType, originalContentsURL absoluteOriginalContentsURL: NSURL?) throws
  func fileAttributesToWrite(to url: NSURL, ofType typeName: String, for saveOperation: NSSaveOperationType, originalContentsURL absoluteOriginalContentsURL: NSURL?) throws -> [String : AnyObject]
  var keepBackupFile: Bool { get }
  @available(OSX 10.8, *)
  @NSCopying var backupFileURL: NSURL? { get }
  @IBAction func save(sender: AnyObject?)
  @IBAction func saveAs(sender: AnyObject?)
  @IBAction func saveTo(sender: AnyObject?)
  func save(delegate delegate: AnyObject?, didSave didSaveSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func runModalSavePanel(for saveOperation: NSSaveOperationType, delegate: AnyObject?, didSave didSaveSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  var shouldRunSavePanelWithAccessoryView: Bool { get }
  func prepare(savePanel: NSSavePanel) -> Bool
  var fileNameExtensionWasHiddenInLastRunSavePanel: Bool { get }
  var fileTypeFromLastRunSavePanel: String? { get }
  func save(to url: NSURL, ofType typeName: String, for saveOperation: NSSaveOperationType, delegate: AnyObject?, didSave didSaveSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func save(to url: NSURL, ofType typeName: String, for saveOperation: NSSaveOperationType, completionHandler: (NSError?) -> Void)
  @available(OSX 10.7, *)
  func canAsynchronouslyWrite(to url: NSURL, ofType typeName: String, for saveOperation: NSSaveOperationType) -> Bool
  @available(OSX 10.7, *)
  func checkAutosavingSafety() throws
  @available(OSX 10.7, *)
  func scheduleAutosaving()
  var hasUnautosavedChanges: Bool { get }
  func autosave(delegate delegate: AnyObject?, didAutosave didAutosaveSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func autosave(implicitCancellability autosavingIsImplicitlyCancellable: Bool, completionHandler: (NSError?) -> Void)
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
  func canClose(delegate delegate: AnyObject, shouldClose shouldCloseSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func close()
  @available(OSX 10.7, *)
  @IBAction func duplicate(sender: AnyObject?)
  @available(OSX 10.7, *)
  func duplicate(delegate delegate: AnyObject?, didDuplicate didDuplicateSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func duplicate() throws -> NSDocument
  @available(OSX 10.8, *)
  @IBAction func renameDocument(sender: AnyObject?)
  @available(OSX 10.8, *)
  @IBAction func moveToUbiquityContainer(sender: AnyObject?)
  @available(OSX 10.8, *)
  @IBAction func move(sender: AnyObject?)
  @available(OSX 10.8, *)
  func move(completionHandler completionHandler: ((Bool) -> Void)? = nil)
  @available(OSX 10.8, *)
  func move(to url: NSURL, completionHandler: ((NSError?) -> Void)? = nil)
  @available(OSX 10.8, *)
  @IBAction func lock(sender: AnyObject?)
  @available(OSX 10.8, *)
  @IBAction func unlock(sender: AnyObject?)
  @available(OSX 10.8, *)
  func lock(completionHandler completionHandler: ((Bool) -> Void)? = nil)
  @available(OSX 10.8, *)
  func lock(completionHandler completionHandler: ((NSError?) -> Void)? = nil)
  @available(OSX 10.8, *)
  func unlock(completionHandler completionHandler: ((Bool) -> Void)? = nil)
  @available(OSX 10.8, *)
  func unlock(completionHandler completionHandler: ((NSError?) -> Void)? = nil)
  @available(OSX 10.8, *)
  var isLocked: Bool { get }
  @IBAction func runPageLayout(sender: AnyObject?)
  func runModalPageLayout(printInfo: NSPrintInfo, delegate: AnyObject?, didRun didRunSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func prepare(pageLayout: NSPageLayout) -> Bool
  func shouldChangePrintInfo(newPrintInfo: NSPrintInfo) -> Bool
  @NSCopying var printInfo: NSPrintInfo
  @warn_unqualified_access
  @IBAction func print(sender: AnyObject?)
  func print(settings printSettings: [String : AnyObject], showPrintPanel: Bool, delegate: AnyObject?, didPrint didPrintSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func printOperation(settings printSettings: [String : AnyObject]) throws -> NSPrintOperation
  func runModalPrintOperation(printOperation: NSPrintOperation, delegate: AnyObject?, didRun didRunSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.9, *)
  @IBAction func saveToPDF(sender: AnyObject?)
  @available(OSX 10.9, *)
  var pdfPrintOperation: NSPrintOperation { get }
  var isDocumentEdited: Bool { get }
  @available(OSX 10.7, *)
  var isInViewingMode: Bool { get }
  func updateChangeCount(change: NSDocumentChangeType)
  @available(OSX 10.7, *)
  func changeCountToken(for saveOperation: NSSaveOperationType) -> AnyObject
  @available(OSX 10.7, *)
  func updateChangeCount(token changeCountToken: AnyObject, for saveOperation: NSSaveOperationType)
  var undoManager: NSUndoManager?
  var hasUndoManager: Bool
  func presentError(error: NSError, modalFor window: NSWindow, delegate: AnyObject?, didPresent didPresentSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
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
  func shouldCloseWindowController(windowController: NSWindowController, delegate: AnyObject?, shouldClose shouldCloseSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func setDisplayName(displayNameOrNil: String?)
  var displayName: String { get }
  @available(OSX 10.8, *)
  func defaultDraftName() -> String
  var windowForSheet: NSWindow? { get }
  class func readableTypes() -> [String]
  class func writableTypes() -> [String]
  class func isNativeType(type: String) -> Bool
  func writableTypes(for saveOperation: NSSaveOperationType) -> [String]
  @available(OSX 10.5, *)
  func fileNameExtension(forType typeName: String, saveOperation: NSSaveOperationType) -> String?
  func validate(anItem: NSValidatedUserInterfaceItem) -> Bool
  @available(OSX 10.8, *)
  class func usesUbiquitousStorage() -> Bool
  @NSCopying var presentedItemURL: NSURL? { get }
  @available(OSX 10.5, *)
  var presentedItemOperationQueue: NSOperationQueue { get }
  @available(OSX 10.8, *)
  @NSCopying var primaryPresentedItemURL: NSURL? { get }
  func relinquishPresentedItem(toReader reader: ((() -> Void)?) -> Void)
  func relinquishPresentedItem(toWriter writer: ((() -> Void)?) -> Void)
  func savePresentedItemChanges(completionHandler completionHandler: (NSError?) -> Void)
  func accommodatePresentedItemDeletion(completionHandler completionHandler: (NSError?) -> Void)
  func presentedItemDidMove(to newURL: NSURL)
  func presentedItemDidChange()
  @available(OSX 10.7, *)
  func presentedItemDidGainVersion(version: NSFileVersion)
  @available(OSX 10.7, *)
  func presentedItemDidLose(version: NSFileVersion)
  @available(OSX 10.7, *)
  func presentedItemDidResolveConflictVersion(version: NSFileVersion)
  func accommodatePresentedSubitemDeletion(at url: NSURL, completionHandler: (NSError?) -> Void)
  func presentedSubitemDidAppear(at url: NSURL)
  func presentedSubitem(at oldURL: NSURL, didMoveTo newURL: NSURL)
  func presentedSubitemDidChange(at url: NSURL)
  @available(OSX 10.7, *)
  func presentedSubitem(at url: NSURL, didGainVersion version: NSFileVersion)
  @available(OSX 10.7, *)
  func presentedSubitem(at url: NSURL, didLose version: NSFileVersion)
  @available(OSX 10.7, *)
  func presentedSubitem(at url: NSURL, didResolveConflictVersion version: NSFileVersion)
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
