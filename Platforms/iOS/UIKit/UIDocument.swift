
enum UIDocumentChangeKind : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Done
  case Undone
  case Redone
  case Cleared
}
enum UIDocumentSaveOperation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ForCreating
  case ForOverwriting
}
struct UIDocumentState : OptionSetType {
  init(rawValue: UInt)
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
  func openWithCompletionHandler(completionHandler: ((Bool) -> Void)?)
  func closeWithCompletionHandler(completionHandler: ((Bool) -> Void)?)
  func loadFromContents(contents: AnyObject, ofType typeName: String?) throws
  func contentsForType(typeName: String) throws -> AnyObject
  func disableEditing()
  func enableEditing()
  var undoManager: NSUndoManager!
  func hasUnsavedChanges() -> Bool
  func updateChangeCount(change: UIDocumentChangeKind)
  func changeCountTokenForSaveOperation(saveOperation: UIDocumentSaveOperation) -> AnyObject
  func updateChangeCountWithToken(changeCountToken: AnyObject, forSaveOperation saveOperation: UIDocumentSaveOperation)
  func saveToURL(url: NSURL, forSaveOperation saveOperation: UIDocumentSaveOperation, completionHandler: ((Bool) -> Void)?)
  func autosaveWithCompletionHandler(completionHandler: ((Bool) -> Void)?)
  func savingFileType() -> String?
  func fileNameExtensionForType(typeName: String?, saveOperation: UIDocumentSaveOperation) -> String
  func writeContents(contents: AnyObject, andAttributes additionalFileAttributes: [NSObject : AnyObject]?, safelyToURL url: NSURL, forSaveOperation saveOperation: UIDocumentSaveOperation) throws
  func writeContents(contents: AnyObject, toURL url: NSURL, forSaveOperation saveOperation: UIDocumentSaveOperation, originalContentsURL: NSURL?) throws
  func fileAttributesToWriteToURL(url: NSURL, forSaveOperation saveOperation: UIDocumentSaveOperation) throws -> [NSObject : AnyObject]
  func readFromURL(url: NSURL) throws
  func performAsynchronousFileAccessUsingBlock(block: () -> Void)
  func handleError(error: NSError, userInteractionPermitted: Bool)
  func finishedHandlingError(error: NSError, recovered: Bool)
  func userInteractionNoLongerPermittedForError(error: NSError)
  func revertToContentsOfURL(url: NSURL, completionHandler: ((Bool) -> Void)?)
  convenience init()
  @available(iOS 5.0, *)
  @NSCopying var presentedItemURL: NSURL? { get }
  @available(iOS 5.0, *)
  var presentedItemOperationQueue: NSOperationQueue { get }
  @available(iOS 5.0, *)
  func relinquishPresentedItemToReader(reader: ((() -> Void)?) -> Void)
  @available(iOS 5.0, *)
  func relinquishPresentedItemToWriter(writer: ((() -> Void)?) -> Void)
  @available(iOS 5.0, *)
  func savePresentedItemChangesWithCompletionHandler(completionHandler: (NSError?) -> Void)
  @available(iOS 5.0, *)
  func accommodatePresentedItemDeletionWithCompletionHandler(completionHandler: (NSError?) -> Void)
  @available(iOS 5.0, *)
  func presentedItemDidMoveToURL(newURL: NSURL)
  @available(iOS 5.0, *)
  func presentedItemDidChange()
  @available(iOS 5.0, *)
  func presentedItemDidGainVersion(version: NSFileVersion)
  @available(iOS 5.0, *)
  func presentedItemDidLoseVersion(version: NSFileVersion)
  @available(iOS 5.0, *)
  func presentedItemDidResolveConflictVersion(version: NSFileVersion)
  @available(iOS 5.0, *)
  func accommodatePresentedSubitemDeletionAtURL(url: NSURL, completionHandler: (NSError?) -> Void)
  @available(iOS 5.0, *)
  func presentedSubitemDidAppearAtURL(url: NSURL)
  @available(iOS 5.0, *)
  func presentedSubitemAtURL(oldURL: NSURL, didMoveToURL newURL: NSURL)
  @available(iOS 5.0, *)
  func presentedSubitemDidChangeAtURL(url: NSURL)
  @available(iOS 5.0, *)
  func presentedSubitemAtURL(url: NSURL, didGainVersion version: NSFileVersion)
  @available(iOS 5.0, *)
  func presentedSubitemAtURL(url: NSURL, didLoseVersion version: NSFileVersion)
  @available(iOS 5.0, *)
  func presentedSubitemAtURL(url: NSURL, didResolveConflictVersion version: NSFileVersion)
  @available(iOS 7.0, *)
  var progress: NSProgress { get }
}
@available(iOS 8.0, *)
let NSUserActivityDocumentURLKey: String
extension UIDocument {
  @available(iOS 8.0, *)
  var userActivity: NSUserActivity?
  @available(iOS 8.0, *)
  func updateUserActivityState(userActivity: NSUserActivity)
  @available(iOS 8.0, *)
  func restoreUserActivityState(userActivity: NSUserActivity)
}
