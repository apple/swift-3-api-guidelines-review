
protocol FilePresenter : ObjectProtocol {
  @NSCopying var presentedItemURL: URL? { get }
  @available(iOS 2.0, *)
  var presentedItemOperationQueue: OperationQueue { get }
  optional func relinquishPresentedItemToReader(reader: ((() -> Void)?) -> Void)
  optional func relinquishPresentedItemToWriter(writer: ((() -> Void)?) -> Void)
  optional func savePresentedItemChangesWithCompletionHandler(completionHandler: (Error?) -> Void)
  optional func accommodatePresentedItemDeletionWithCompletionHandler(completionHandler: (Error?) -> Void)
  optional func presentedItemDidMoveTo(newURL: URL)
  optional func presentedItemDidChange()
  @available(iOS 5.0, *)
  optional func presentedItemDidGainVersion(version: FileVersion)
  @available(iOS 5.0, *)
  optional func presentedItemDidLose(version: FileVersion)
  @available(iOS 5.0, *)
  optional func presentedItemDidResolveConflictVersion(version: FileVersion)
  optional func accommodatePresentedSubitemDeletionAt(url: URL, completionHandler: (Error?) -> Void)
  optional func presentedSubitemDidAppearAt(url: URL)
  optional func presentedSubitemAt(oldURL: URL, didMoveTo newURL: URL)
  optional func presentedSubitemDidChangeAt(url: URL)
  @available(iOS 5.0, *)
  optional func presentedSubitemAt(url: URL, didGainVersion version: FileVersion)
  @available(iOS 5.0, *)
  optional func presentedSubitemAt(url: URL, didLose version: FileVersion)
  @available(iOS 5.0, *)
  optional func presentedSubitemAt(url: URL, didResolveConflictVersion version: FileVersion)
}
