
enum UIDocumentChangeKind : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Done
  case Undone
  case Redone
  case Cleared
}
enum UIDocumentSaveOperation : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case ForCreating
  case ForOverwriting
}
struct UIDocumentState : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var Normal: UIDocumentState { get }
  static var Closed: UIDocumentState { get }
  static var InConflict: UIDocumentState { get }
  static var SavingError: UIDocumentState { get }
  static var EditingDisabled: UIDocumentState { get }
  static var ProgressAvailable: UIDocumentState { get }
}
@available(iOS 5.0, *)
let UIDocumentStateChangedNotification: String
@available(iOS 5.0, *)
class UIDocument : NSObject, NSFilePresenter, NSProgressReporting {
  init(fileURL url: NSURL)
  var fileURL: NSURL { get }
  var localizedName: String { get }
  var fileType: String? { get }
  @NSCopying var fileModificationDate: NSDate?
  var documentState: UIDocumentState { get }
  func openWithCompletionHandler(_ completionHandler: ((Bool) -> Void)?)
  func closeWithCompletionHandler(_ completionHandler: ((Bool) -> Void)?)
  func loadFromContents(_ contents: AnyObject, ofType typeName: String?) throws
  func contentsForType(_ typeName: String) throws -> AnyObject
  func disableEditing()
  func enableEditing()
  var undoManager: NSUndoManager!
  func hasUnsavedChanges() -> Bool
  func updateChangeCount(_ change: UIDocumentChangeKind)
  func changeCountTokenForSaveOperation(_ saveOperation: UIDocumentSaveOperation) -> AnyObject
  func updateChangeCountWithToken(_ changeCountToken: AnyObject, forSaveOperation saveOperation: UIDocumentSaveOperation)
  func saveToURL(_ url: NSURL, forSaveOperation saveOperation: UIDocumentSaveOperation, completionHandler completionHandler: ((Bool) -> Void)?)
  func autosaveWithCompletionHandler(_ completionHandler: ((Bool) -> Void)?)
  func savingFileType() -> String?
  func fileNameExtensionForType(_ typeName: String?, saveOperation saveOperation: UIDocumentSaveOperation) -> String
  func writeContents(_ contents: AnyObject, andAttributes additionalFileAttributes: [NSObject : AnyObject]?, safelyToURL url: NSURL, forSaveOperation saveOperation: UIDocumentSaveOperation) throws
  func writeContents(_ contents: AnyObject, toURL url: NSURL, forSaveOperation saveOperation: UIDocumentSaveOperation, originalContentsURL originalContentsURL: NSURL?) throws
  func fileAttributesToWriteToURL(_ url: NSURL, forSaveOperation saveOperation: UIDocumentSaveOperation) throws -> [NSObject : AnyObject]
  func readFromURL(_ url: NSURL) throws
  func performAsynchronousFileAccessUsingBlock(_ block: () -> Void)
  func handleError(_ error: NSError, userInteractionPermitted userInteractionPermitted: Bool)
  func finishedHandlingError(_ error: NSError, recovered recovered: Bool)
  func userInteractionNoLongerPermittedForError(_ error: NSError)
  func revertToContentsOfURL(_ url: NSURL, completionHandler completionHandler: ((Bool) -> Void)?)
  @available(iOS 5.0, *)
  @NSCopying var presentedItemURL: NSURL? { get }
  @available(iOS 5.0, *)
  var presentedItemOperationQueue: NSOperationQueue { get }
  @available(iOS 5.0, *)
  func relinquishPresentedItemToReader(_ reader: ((() -> Void)?) -> Void)
  @available(iOS 5.0, *)
  func relinquishPresentedItemToWriter(_ writer: ((() -> Void)?) -> Void)
  @available(iOS 5.0, *)
  func savePresentedItemChangesWithCompletionHandler(_ completionHandler: (NSError?) -> Void)
  @available(iOS 5.0, *)
  func accommodatePresentedItemDeletionWithCompletionHandler(_ completionHandler: (NSError?) -> Void)
  @available(iOS 5.0, *)
  func presentedItemDidMoveToURL(_ newURL: NSURL)
  @available(iOS 5.0, *)
  func presentedItemDidChange()
  @available(iOS 5.0, *)
  func presentedItemDidGainVersion(_ version: NSFileVersion)
  @available(iOS 5.0, *)
  func presentedItemDidLoseVersion(_ version: NSFileVersion)
  @available(iOS 5.0, *)
  func presentedItemDidResolveConflictVersion(_ version: NSFileVersion)
  @available(iOS 5.0, *)
  func accommodatePresentedSubitemDeletionAtURL(_ url: NSURL, completionHandler completionHandler: (NSError?) -> Void)
  @available(iOS 5.0, *)
  func presentedSubitemDidAppearAtURL(_ url: NSURL)
  @available(iOS 5.0, *)
  func presentedSubitemAtURL(_ oldURL: NSURL, didMoveToURL newURL: NSURL)
  @available(iOS 5.0, *)
  func presentedSubitemDidChangeAtURL(_ url: NSURL)
  @available(iOS 5.0, *)
  func presentedSubitemAtURL(_ url: NSURL, didGainVersion version: NSFileVersion)
  @available(iOS 5.0, *)
  func presentedSubitemAtURL(_ url: NSURL, didLoseVersion version: NSFileVersion)
  @available(iOS 5.0, *)
  func presentedSubitemAtURL(_ url: NSURL, didResolveConflictVersion version: NSFileVersion)
  @available(iOS 7.0, *)
  var progress: NSProgress { get }
}
@available(iOS 8.0, *)
let NSUserActivityDocumentURLKey: String
extension UIDocument {
  @available(iOS 8.0, *)
  var userActivity: NSUserActivity?
  @available(iOS 8.0, *)
  func updateUserActivityState(_ userActivity: NSUserActivity)
  @available(iOS 8.0, *)
  func restoreUserActivityState(_ userActivity: NSUserActivity)
}
