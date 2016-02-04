
protocol NSFilePresenter : NSObjectProtocol {
  @NSCopying var presentedItemURL: NSURL? { get }
  @available(iOS 2.0, *)
  var presentedItemOperationQueue: NSOperationQueue { get }
  optional func relinquishPresentedItemToReader(reader: ((() -> Void)?) -> Void)
  optional func relinquishPresentedItemToWriter(writer: ((() -> Void)?) -> Void)
  optional func savePresentedItemChangesWithCompletionHandler(completionHandler: (NSError?) -> Void)
  optional func accommodatePresentedItemDeletionWithCompletionHandler(completionHandler: (NSError?) -> Void)
  optional func presentedItemDidMoveToURL(newURL: NSURL)
  optional func presentedItemDidChange()
  @available(iOS 5.0, *)
  optional func presentedItemDidGainVersion(version: NSFileVersion)
  @available(iOS 5.0, *)
  optional func presentedItemDidLoseVersion(version: NSFileVersion)
  @available(iOS 5.0, *)
  optional func presentedItemDidResolveConflictVersion(version: NSFileVersion)
  optional func accommodatePresentedSubitemDeletionAtURL(url: NSURL, completionHandler: (NSError?) -> Void)
  optional func presentedSubitemDidAppearAtURL(url: NSURL)
  optional func presentedSubitemAtURL(oldURL: NSURL, didMoveToURL newURL: NSURL)
  optional func presentedSubitemDidChangeAtURL(url: NSURL)
  @available(iOS 5.0, *)
  optional func presentedSubitemAtURL(url: NSURL, didGainVersion version: NSFileVersion)
  @available(iOS 5.0, *)
  optional func presentedSubitemAtURL(url: NSURL, didLoseVersion version: NSFileVersion)
  @available(iOS 5.0, *)
  optional func presentedSubitemAtURL(url: NSURL, didResolveConflictVersion version: NSFileVersion)
}
