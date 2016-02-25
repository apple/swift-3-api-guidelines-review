
protocol NSFilePresenter : NSObjectProtocol {
  @NSCopying var presentedItemURL: NSURL? { get }
  @available(iOS 2.0, *)
  var presentedItemOperationQueue: NSOperationQueue { get }
  optional func relinquishPresentedItemToReader(_ reader: ((() -> Void)?) -> Void)
  optional func relinquishPresentedItemToWriter(_ writer: ((() -> Void)?) -> Void)
  optional func savePresentedItemChangesWithCompletionHandler(_ completionHandler: (NSError?) -> Void)
  optional func accommodatePresentedItemDeletionWithCompletionHandler(_ completionHandler: (NSError?) -> Void)
  optional func presentedItemDidMoveToURL(_ newURL: NSURL)
  optional func presentedItemDidChange()
  @available(iOS 5.0, *)
  optional func presentedItemDidGainVersion(_ version: NSFileVersion)
  @available(iOS 5.0, *)
  optional func presentedItemDidLoseVersion(_ version: NSFileVersion)
  @available(iOS 5.0, *)
  optional func presentedItemDidResolveConflictVersion(_ version: NSFileVersion)
  optional func accommodatePresentedSubitemDeletionAtURL(_ url: NSURL, completionHandler completionHandler: (NSError?) -> Void)
  optional func presentedSubitemDidAppearAtURL(_ url: NSURL)
  optional func presentedSubitemAtURL(_ oldURL: NSURL, didMoveToURL newURL: NSURL)
  optional func presentedSubitemDidChangeAtURL(_ url: NSURL)
  @available(iOS 5.0, *)
  optional func presentedSubitemAtURL(_ url: NSURL, didGainVersion version: NSFileVersion)
  @available(iOS 5.0, *)
  optional func presentedSubitemAtURL(_ url: NSURL, didLoseVersion version: NSFileVersion)
  @available(iOS 5.0, *)
  optional func presentedSubitemAtURL(_ url: NSURL, didResolveConflictVersion version: NSFileVersion)
}
