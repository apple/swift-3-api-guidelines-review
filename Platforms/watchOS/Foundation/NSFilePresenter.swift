
protocol FilePresenter : ObjectProtocol {
  @NSCopying var presentedItemURL: URL? { get }
  @available(watchOS 2.0, *)
  var presentedItemOperationQueue: OperationQueue { get }
  optional func relinquishPresentedItemTo(reader reader: ((() -> Void)?) -> Void)
  optional func relinquishPresentedItemTo(writer writer: ((() -> Void)?) -> Void)
  optional func savePresentedItemChanges(completionHandler completionHandler: (Error?) -> Void)
  optional func accommodatePresentedItemDeletionWith(completionHandler completionHandler: (Error?) -> Void)
  optional func presentedItemDidMoveTo(newURL: URL)
  optional func presentedItemDidChange()
  @available(watchOS 2.0, *)
  optional func presentedItemDidGainVersion(version: FileVersion)
  @available(watchOS 2.0, *)
  optional func presentedItemDidLose(version: FileVersion)
  @available(watchOS 2.0, *)
  optional func presentedItemDidResolveConflictVersion(version: FileVersion)
  optional func accommodatePresentedSubitemDeletionAt(url: URL, completionHandler: (Error?) -> Void)
  optional func presentedSubitemDidAppearAt(url: URL)
  optional func presentedSubitemAt(oldURL: URL, didMoveTo newURL: URL)
  optional func presentedSubitemDidChangeAt(url: URL)
  @available(watchOS 2.0, *)
  optional func presentedSubitemAt(url: URL, didGainVersion version: FileVersion)
  @available(watchOS 2.0, *)
  optional func presentedSubitemAt(url: URL, didLose version: FileVersion)
  @available(watchOS 2.0, *)
  optional func presentedSubitemAt(url: URL, didResolveConflictVersion version: FileVersion)
}
