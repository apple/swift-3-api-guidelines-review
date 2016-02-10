
protocol FilePresenter : ObjectProtocol {
  @NSCopying var presentedItemURL: URL? { get }
  @available(OSX 10.5, *)
  var presentedItemOperationQueue: OperationQueue { get }
  @available(OSX 10.8, *)
  @NSCopying optional var primaryPresentedItemURL: URL? { get }
  optional func relinquishPresentedItemTo(reader reader: ((() -> Void)?) -> Void)
  optional func relinquishPresentedItemTo(writer writer: ((() -> Void)?) -> Void)
  optional func savePresentedItemChanges(completionHandler completionHandler: (Error?) -> Void)
  optional func accommodatePresentedItemDeletionWith(completionHandler completionHandler: (Error?) -> Void)
  optional func presentedItemDidMoveTo(newURL: URL)
  optional func presentedItemDidChange()
  @available(OSX 10.7, *)
  optional func presentedItemDidGainVersion(version: FileVersion)
  @available(OSX 10.7, *)
  optional func presentedItemDidLose(version: FileVersion)
  @available(OSX 10.7, *)
  optional func presentedItemDidResolveConflictVersion(version: FileVersion)
  optional func accommodatePresentedSubitemDeletionAt(url: URL, completionHandler: (Error?) -> Void)
  optional func presentedSubitemDidAppearAt(url: URL)
  optional func presentedSubitemAt(oldURL: URL, didMoveTo newURL: URL)
  optional func presentedSubitemDidChangeAt(url: URL)
  @available(OSX 10.7, *)
  optional func presentedSubitemAt(url: URL, didGainVersion version: FileVersion)
  @available(OSX 10.7, *)
  optional func presentedSubitemAt(url: URL, didLose version: FileVersion)
  @available(OSX 10.7, *)
  optional func presentedSubitemAt(url: URL, didResolveConflictVersion version: FileVersion)
}
