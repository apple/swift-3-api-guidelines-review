
protocol NSFilePresenter : NSObjectProtocol {
  @NSCopying var presentedItemURL: NSURL? { get }
  @available(OSX 10.5, *)
  var presentedItemOperationQueue: NSOperationQueue { get }
  @available(OSX 10.8, *)
  @NSCopying optional var primaryPresentedItemURL: NSURL? { get }
  optional func relinquishPresentedItemToReader(_ reader: ((() -> Void)?) -> Void)
  optional func relinquishPresentedItemToWriter(_ writer: ((() -> Void)?) -> Void)
  optional func savePresentedItemChangesWithCompletionHandler(_ completionHandler: (NSError?) -> Void)
  optional func accommodatePresentedItemDeletionWithCompletionHandler(_ completionHandler: (NSError?) -> Void)
  optional func presentedItemDidMoveToURL(_ newURL: NSURL)
  optional func presentedItemDidChange()
  @available(OSX 10.7, *)
  optional func presentedItemDidGainVersion(_ version: NSFileVersion)
  @available(OSX 10.7, *)
  optional func presentedItemDidLoseVersion(_ version: NSFileVersion)
  @available(OSX 10.7, *)
  optional func presentedItemDidResolveConflictVersion(_ version: NSFileVersion)
  optional func accommodatePresentedSubitemDeletionAtURL(_ url: NSURL, completionHandler completionHandler: (NSError?) -> Void)
  optional func presentedSubitemDidAppearAtURL(_ url: NSURL)
  optional func presentedSubitemAtURL(_ oldURL: NSURL, didMoveToURL newURL: NSURL)
  optional func presentedSubitemDidChangeAtURL(_ url: NSURL)
  @available(OSX 10.7, *)
  optional func presentedSubitemAtURL(_ url: NSURL, didGainVersion version: NSFileVersion)
  @available(OSX 10.7, *)
  optional func presentedSubitemAtURL(_ url: NSURL, didLoseVersion version: NSFileVersion)
  @available(OSX 10.7, *)
  optional func presentedSubitemAtURL(_ url: NSURL, didResolveConflictVersion version: NSFileVersion)
}
