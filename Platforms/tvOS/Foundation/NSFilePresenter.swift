
protocol FilePresenter : ObjectProtocol {
  @NSCopying var presentedItemURL: URL? { get }
  @available(tvOS 2.0, *)
  var presentedItemOperationQueue: OperationQueue { get }
  optional func relinquishPresentedItem(toReader reader: ((() -> Void)?) -> Void)
  optional func relinquishPresentedItem(toWriter writer: ((() -> Void)?) -> Void)
  optional func savePresentedItemChanges(completionHandler completionHandler: (Error?) -> Void)
  optional func accommodatePresentedItemDeletion(withCompletionHandler completionHandler: (Error?) -> Void)
  optional func presentedItemDidMove(to newURL: URL)
  optional func presentedItemDidChange()
  @available(tvOS 5.0, *)
  optional func presentedItemDidGainVersion(version: FileVersion)
  @available(tvOS 5.0, *)
  optional func presentedItemDidLose(version: FileVersion)
  @available(tvOS 5.0, *)
  optional func presentedItemDidResolveConflictVersion(version: FileVersion)
  optional func accommodatePresentedSubitemDeletion(at url: URL, completionHandler: (Error?) -> Void)
  optional func presentedSubitemDidAppear(at url: URL)
  optional func presentedSubitem(at oldURL: URL, didMoveTo newURL: URL)
  optional func presentedSubitemDidChange(at url: URL)
  @available(tvOS 5.0, *)
  optional func presentedSubitem(at url: URL, didGainVersion version: FileVersion)
  @available(tvOS 5.0, *)
  optional func presentedSubitem(at url: URL, didLose version: FileVersion)
  @available(tvOS 5.0, *)
  optional func presentedSubitem(at url: URL, didResolveConflictVersion version: FileVersion)
}
