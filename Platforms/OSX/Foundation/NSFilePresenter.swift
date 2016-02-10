
protocol FilePresenter : ObjectProtocol {
  @NSCopying var presentedItemURL: URL? { get }
  @available(OSX 10.5, *)
  var presentedItemOperationQueue: OperationQueue { get }
  @available(OSX 10.8, *)
  @NSCopying optional var primaryPresentedItemURL: URL? { get }
  optional func relinquishPresentedItem(toReader reader: ((() -> Void)?) -> Void)
  optional func relinquishPresentedItem(toWriter writer: ((() -> Void)?) -> Void)
  optional func savePresentedItemChanges(completionHandler completionHandler: (Error?) -> Void)
  optional func accommodatePresentedItemDeletion(completionHandler completionHandler: (Error?) -> Void)
  optional func presentedItemDidMove(to newURL: URL)
  optional func presentedItemDidChange()
  @available(OSX 10.7, *)
  optional func presentedItemDidGainVersion(version: FileVersion)
  @available(OSX 10.7, *)
  optional func presentedItemDidLose(version: FileVersion)
  @available(OSX 10.7, *)
  optional func presentedItemDidResolveConflictVersion(version: FileVersion)
  optional func accommodatePresentedSubitemDeletion(at url: URL, completionHandler: (Error?) -> Void)
  optional func presentedSubitemDidAppear(at url: URL)
  optional func presentedSubitem(at oldURL: URL, didMoveTo newURL: URL)
  optional func presentedSubitemDidChange(at url: URL)
  @available(OSX 10.7, *)
  optional func presentedSubitem(at url: URL, didGainVersion version: FileVersion)
  @available(OSX 10.7, *)
  optional func presentedSubitem(at url: URL, didLose version: FileVersion)
  @available(OSX 10.7, *)
  optional func presentedSubitem(at url: URL, didResolveConflictVersion version: FileVersion)
}
