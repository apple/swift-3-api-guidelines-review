
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
class NSDocument : Object, FilePresenter, NSUserInterfaceValidations {
  init()
  convenience init(type typeName: String) throws
  @available(OSX 10.6, *)
  class func canConcurrentlyReadDocumentsOf(type typeName: String) -> Bool
  convenience init(contentsOf url: URL, ofType typeName: String) throws
  convenience init(forURL urlOrNil: URL?, withContentsOf contentsURL: URL, ofType typeName: String) throws
  var fileType: String?
  @NSCopying var fileURL: URL?
  @NSCopying var fileModificationDate: Date?
  @available(OSX 10.8, *)
  var isDraft: Bool
  @available(OSX 10.7, *)
  func performActivityWithSynchronousWaiting(waitSynchronously: Bool, usingBlock block: (() -> Void) -> Void)
  @available(OSX 10.7, *)
  func continueActivity(block: () -> Void)
  @available(OSX 10.7, *)
  func continueAsynchronousWorkOnMainThread(block: () -> Void)
  @available(OSX 10.7, *)
  func performSynchronousFileAccess(block: () -> Void)
  @available(OSX 10.7, *)
  func performAsynchronousFileAccess(block: (() -> Void) -> Void)
  @IBAction func revertDocumentToSaved(sender: AnyObject?)
  func revertToContentsOf(url: URL, ofType typeName: String) throws
  func readFrom(url: URL, ofType typeName: String) throws
  func readFrom(fileWrapper: FileWrapper, ofType typeName: String) throws
  func readFrom(data: Data, ofType typeName: String) throws
  @available(OSX 10.7, *)
  var isEntireFileLoaded: Bool { get }
  func writeTo(url: URL, ofType typeName: String) throws
  func fileWrapperOf(type typeName: String) throws -> FileWrapper
  func dataOf(type typeName: String) throws -> Data
  @available(OSX 10.7, *)
  func unblockUserInteraction()
  @available(OSX 10.7, *)
  var autosavingIsImplicitlyCancellable: Bool { get }
  func writeSafelyTo(url: URL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType) throws
  func writeTo(url: URL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType, originalContentsURL absoluteOriginalContentsURL: URL?) throws
  func fileAttributesToWriteTo(url: URL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType, originalContentsURL absoluteOriginalContentsURL: URL?) throws -> [String : AnyObject]
  var keepBackupFile: Bool { get }
  @available(OSX 10.8, *)
  @NSCopying var backupFileURL: URL? { get }
  @IBAction func save(sender: AnyObject?)
  @IBAction func saveAs(sender: AnyObject?)
  @IBAction func saveTo(sender: AnyObject?)
  func save(delegate delegate: AnyObject?, didSave didSaveSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func runModalSavePanelFor(saveOperation: NSSaveOperationType, delegate: AnyObject?, didSave didSaveSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  var shouldRunSavePanelWithAccessoryView: Bool { get }
  func prepare(savePanel: NSSavePanel) -> Bool
  var fileNameExtensionWasHiddenInLastRunSavePanel: Bool { get }
  var fileTypeFromLastRunSavePanel: String? { get }
  func saveTo(url: URL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType, delegate: AnyObject?, didSave didSaveSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func saveTo(url: URL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType, completionHandler: (Error?) -> Void)
  @available(OSX 10.7, *)
  func canAsynchronouslyWriteTo(url: URL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType) -> Bool
  @available(OSX 10.7, *)
  func checkAutosavingSafety() throws
  @available(OSX 10.7, *)
  func scheduleAutosaving()
  var hasUnautosavedChanges: Bool { get }
  func autosave(delegate delegate: AnyObject?, didAutosaveSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func autosave(implicitCancellability autosavingIsImplicitlyCancellable: Bool, completionHandler: (Error?) -> Void)
  @available(OSX 10.7, *)
  class func autosavesInPlace() -> Bool
  @available(OSX 10.7, *)
  class func preservesVersions() -> Bool
  @available(OSX 10.8, *)
  @IBAction func browseDocumentVersions(sender: AnyObject?)
  @available(OSX 10.8, *)
  class func autosavesDrafts() -> Bool
  var autosavingFileType: String? { get }
  @NSCopying var autosavedContentsFileURL: URL?
  func canCloseWith(delegate delegate: AnyObject, shouldClose shouldCloseSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
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
  func moveTo(url: URL, completionHandler: ((Error?) -> Void)? = nil)
  @available(OSX 10.8, *)
  @IBAction func lock(sender: AnyObject?)
  @available(OSX 10.8, *)
  @IBAction func unlock(sender: AnyObject?)
  @available(OSX 10.8, *)
  func lock(completionHandler completionHandler: ((Bool) -> Void)? = nil)
  @available(OSX 10.8, *)
  func lock(completionHandler completionHandler: ((Error?) -> Void)? = nil)
  @available(OSX 10.8, *)
  func unlock(completionHandler completionHandler: ((Bool) -> Void)? = nil)
  @available(OSX 10.8, *)
  func unlock(completionHandler completionHandler: ((Error?) -> Void)? = nil)
  @available(OSX 10.8, *)
  var isLocked: Bool { get }
  @IBAction func runPageLayout(sender: AnyObject?)
  func runModalPageLayoutWith(printInfo: NSPrintInfo, delegate: AnyObject?, didRun didRunSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
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
  func changeCountTokenFor(saveOperation: NSSaveOperationType) -> AnyObject
  @available(OSX 10.7, *)
  func updateChangeCountWith(token changeCountToken: AnyObject, forSaveOperation saveOperation: NSSaveOperationType)
  var undoManager: UndoManager?
  var hasUndoManager: Bool
  func presentError(error: Error, modalFor window: NSWindow, delegate: AnyObject?, didPresent didPresentSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func presentError(error: Error) -> Bool
  func willPresentError(error: Error) -> Error
  @available(OSX 10.7, *)
  func willNotPresentError(error: Error)
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
  func writableTypesFor(saveOperation: NSSaveOperationType) -> [String]
  @available(OSX 10.5, *)
  func fileNameExtensionFor(type typeName: String, saveOperation: NSSaveOperationType) -> String?
  func validate(anItem: NSValidatedUserInterfaceItem) -> Bool
  @available(OSX 10.8, *)
  class func usesUbiquitousStorage() -> Bool
  @NSCopying var presentedItemURL: URL? { get }
  @available(OSX 10.5, *)
  var presentedItemOperationQueue: OperationQueue { get }
  @available(OSX 10.8, *)
  @NSCopying var primaryPresentedItemURL: URL? { get }
  func relinquishPresentedItemTo(reader reader: ((() -> Void)?) -> Void)
  func relinquishPresentedItemTo(writer writer: ((() -> Void)?) -> Void)
  func savePresentedItemChanges(completionHandler completionHandler: (Error?) -> Void)
  func accommodatePresentedItemDeletionWith(completionHandler completionHandler: (Error?) -> Void)
  func presentedItemDidMoveTo(newURL: URL)
  func presentedItemDidChange()
  @available(OSX 10.7, *)
  func presentedItemDidGainVersion(version: FileVersion)
  @available(OSX 10.7, *)
  func presentedItemDidLose(version: FileVersion)
  @available(OSX 10.7, *)
  func presentedItemDidResolveConflictVersion(version: FileVersion)
  func accommodatePresentedSubitemDeletionAt(url: URL, completionHandler: (Error?) -> Void)
  func presentedSubitemDidAppearAt(url: URL)
  func presentedSubitemAt(oldURL: URL, didMoveTo newURL: URL)
  func presentedSubitemDidChangeAt(url: URL)
  @available(OSX 10.7, *)
  func presentedSubitemAt(url: URL, didGainVersion version: FileVersion)
  @available(OSX 10.7, *)
  func presentedSubitemAt(url: URL, didLose version: FileVersion)
  @available(OSX 10.7, *)
  func presentedSubitemAt(url: URL, didResolveConflictVersion version: FileVersion)
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
