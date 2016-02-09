
enum UIDocumentChangeKind : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case done
  case undone
  case redone
  case cleared
}
enum UIDocumentSaveOperation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case forCreating
  case forOverwriting
}
struct UIDocumentState : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var normal: UIDocumentState { get }
  static var closed: UIDocumentState { get }
  static var inConflict: UIDocumentState { get }
  static var savingError: UIDocumentState { get }
  static var editingDisabled: UIDocumentState { get }
  static var progressAvailable: UIDocumentState { get }
}
@available(iOS 5.0, *)
let UIDocumentStateChangedNotification: String
@available(iOS 5.0, *)
class UIDocument : Object, FilePresenter, ProgressReporting {
  init(fileURL url: URL)
  var fileURL: URL { get }
  var localizedName: String { get }
  var fileType: String? { get }
  @NSCopying var fileModificationDate: Date?
  var documentState: UIDocumentState { get }
  func open(completionHandler completionHandler: ((Bool) -> Void)? = nil)
  func close(completionHandler completionHandler: ((Bool) -> Void)? = nil)
  func load(fromContents contents: AnyObject, ofType typeName: String?) throws
  func contents(forType typeName: String) throws -> AnyObject
  func disableEditing()
  func enableEditing()
  var undoManager: UndoManager!
  func hasUnsavedChanges() -> Bool
  func updateChangeCount(change: UIDocumentChangeKind)
  func changeCountTokenFor(saveOperation: UIDocumentSaveOperation) -> AnyObject
  func updateChangeCount(withToken changeCountToken: AnyObject, forSaveOperation saveOperation: UIDocumentSaveOperation)
  func save(to url: URL, forSaveOperation saveOperation: UIDocumentSaveOperation, completionHandler: ((Bool) -> Void)? = nil)
  func autosave(completionHandler completionHandler: ((Bool) -> Void)? = nil)
  func savingFileType() -> String?
  func fileNameExtension(forType typeName: String?, saveOperation: UIDocumentSaveOperation) -> String
  func writeContents(contents: AnyObject, andAttributes additionalFileAttributes: [Object : AnyObject]? = [:], safelyTo url: URL, forSaveOperation saveOperation: UIDocumentSaveOperation) throws
  func writeContents(contents: AnyObject, to url: URL, forSaveOperation saveOperation: UIDocumentSaveOperation, originalContentsURL: URL?) throws
  func fileAttributesToWrite(to url: URL, forSaveOperation saveOperation: UIDocumentSaveOperation) throws -> [Object : AnyObject]
  func read(from url: URL) throws
  func performAsynchronousFileAccess(block: () -> Void)
  func handleError(error: Error, userInteractionPermitted: Bool)
  func finishedHandlingError(error: Error, recovered: Bool)
  func userInteractionNoLongerPermitted(forError error: Error)
  func revertToContents(of url: URL, completionHandler: ((Bool) -> Void)? = nil)
  convenience init()
  @available(iOS 5.0, *)
  @NSCopying var presentedItemURL: URL? { get }
  @available(iOS 5.0, *)
  var presentedItemOperationQueue: OperationQueue { get }
  @available(iOS 5.0, *)
  func relinquishPresentedItem(toReader reader: ((() -> Void)?) -> Void)
  @available(iOS 5.0, *)
  func relinquishPresentedItem(toWriter writer: ((() -> Void)?) -> Void)
  @available(iOS 5.0, *)
  func savePresentedItemChanges(withCompletionHandler completionHandler: (Error?) -> Void)
  @available(iOS 5.0, *)
  func accommodatePresentedItemDeletion(withCompletionHandler completionHandler: (Error?) -> Void)
  @available(iOS 5.0, *)
  func presentedItemDidMove(to newURL: URL)
  @available(iOS 5.0, *)
  func presentedItemDidChange()
  @available(iOS 5.0, *)
  func presentedItemDidGainVersion(version: FileVersion)
  @available(iOS 5.0, *)
  func presentedItemDidLose(version: FileVersion)
  @available(iOS 5.0, *)
  func presentedItemDidResolveConflictVersion(version: FileVersion)
  @available(iOS 5.0, *)
  func accommodatePresentedSubitemDeletion(at url: URL, completionHandler: (Error?) -> Void)
  @available(iOS 5.0, *)
  func presentedSubitemDidAppear(at url: URL)
  @available(iOS 5.0, *)
  func presentedSubitem(at oldURL: URL, didMoveTo newURL: URL)
  @available(iOS 5.0, *)
  func presentedSubitemDidChange(at url: URL)
  @available(iOS 5.0, *)
  func presentedSubitem(at url: URL, didGainVersion version: FileVersion)
  @available(iOS 5.0, *)
  func presentedSubitem(at url: URL, didLose version: FileVersion)
  @available(iOS 5.0, *)
  func presentedSubitem(at url: URL, didResolveConflictVersion version: FileVersion)
  @available(iOS 7.0, *)
  var progress: Progress { get }
}
@available(iOS 8.0, *)
let NSUserActivityDocumentURLKey: String
extension UIDocument {
  @available(iOS 8.0, *)
  var userActivity: UserActivity?
  @available(iOS 8.0, *)
  func updateUserActivityState(userActivity: UserActivity)
  @available(iOS 8.0, *)
  func restoreUserActivityState(userActivity: UserActivity)
}
