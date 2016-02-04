
protocol NSFilePresenter : NSObjectProtocol {
  @NSCopying var presentedItemURL: NSURL? { get }
  @available(OSX 10.5, *)
  var presentedItemOperationQueue: NSOperationQueue { get }
  @available(OSX 10.8, *)
  @NSCopying optional var primaryPresentedItemURL: NSURL? { get }
  optional func relinquishPresentedItemToReader(reader: ((() -> Void)?) -> Void)
  optional func relinquishPresentedItemToWriter(writer: ((() -> Void)?) -> Void)
  optional func savePresentedItemChangesWithCompletionHandler(completionHandler: (NSError?) -> Void)
  optional func accommodatePresentedItemDeletionWithCompletionHandler(completionHandler: (NSError?) -> Void)
  optional func presentedItemDidMoveToURL(newURL: NSURL)
  optional func presentedItemDidChange()
  @available(OSX 10.7, *)
  optional func presentedItemDidGainVersion(version: NSFileVersion)
  @available(OSX 10.7, *)
  optional func presentedItemDidLoseVersion(version: NSFileVersion)
  @available(OSX 10.7, *)
  optional func presentedItemDidResolveConflictVersion(version: NSFileVersion)
  optional func accommodatePresentedSubitemDeletionAtURL(url: NSURL, completionHandler: (NSError?) -> Void)
  optional func presentedSubitemDidAppearAtURL(url: NSURL)
  optional func presentedSubitemAtURL(oldURL: NSURL, didMoveToURL newURL: NSURL)
  optional func presentedSubitemDidChangeAtURL(url: NSURL)
  @available(OSX 10.7, *)
  optional func presentedSubitemAtURL(url: NSURL, didGainVersion version: NSFileVersion)
  @available(OSX 10.7, *)
  optional func presentedSubitemAtURL(url: NSURL, didLoseVersion version: NSFileVersion)
  @available(OSX 10.7, *)
  optional func presentedSubitemAtURL(url: NSURL, didResolveConflictVersion version: NSFileVersion)
}
