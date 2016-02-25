
struct NSFileCoordinatorReadingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var WithoutChanges: NSFileCoordinatorReadingOptions { get }
  static var ResolvesSymbolicLink: NSFileCoordinatorReadingOptions { get }
  @available(watchOS 2.0, *)
  static var ImmediatelyAvailableMetadataOnly: NSFileCoordinatorReadingOptions { get }
  @available(watchOS 2.0, *)
  static var ForUploading: NSFileCoordinatorReadingOptions { get }
}
struct NSFileCoordinatorWritingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var ForDeleting: NSFileCoordinatorWritingOptions { get }
  static var ForMoving: NSFileCoordinatorWritingOptions { get }
  static var ForMerging: NSFileCoordinatorWritingOptions { get }
  static var ForReplacing: NSFileCoordinatorWritingOptions { get }
  @available(watchOS 2.0, *)
  static var ContentIndependentMetadataOnly: NSFileCoordinatorWritingOptions { get }
}
@available(watchOS 2.0, *)
class NSFileAccessIntent : NSObject {
  class func readingIntentWithURL(_ url: NSURL, options options: NSFileCoordinatorReadingOptions) -> Self
  class func writingIntentWithURL(_ url: NSURL, options options: NSFileCoordinatorWritingOptions) -> Self
  @NSCopying var URL: NSURL { get }
}
@available(watchOS 2.0, *)
class NSFileCoordinator : NSObject {
  class func addFilePresenter(_ filePresenter: NSFilePresenter)
  class func removeFilePresenter(_ filePresenter: NSFilePresenter)
  class func filePresenters() -> [NSFilePresenter]
  init(filePresenter filePresenterOrNil: NSFilePresenter?)
  @available(watchOS 2.0, *)
  var purposeIdentifier: String
  @available(watchOS 2.0, *)
  func coordinateAccessWithIntents(_ intents: [NSFileAccessIntent], queue queue: NSOperationQueue, byAccessor accessor: (NSError?) -> Void)
  func coordinateReadingItemAtURL(_ url: NSURL, options options: NSFileCoordinatorReadingOptions, error outError: NSErrorPointer, byAccessor reader: (NSURL) -> Void)
  func coordinateWritingItemAtURL(_ url: NSURL, options options: NSFileCoordinatorWritingOptions, error outError: NSErrorPointer, byAccessor writer: (NSURL) -> Void)
  func coordinateReadingItemAtURL(_ readingURL: NSURL, options readingOptions: NSFileCoordinatorReadingOptions, writingItemAtURL writingURL: NSURL, options writingOptions: NSFileCoordinatorWritingOptions, error outError: NSErrorPointer, byAccessor readerWriter: (NSURL, NSURL) -> Void)
  func coordinateWritingItemAtURL(_ url1: NSURL, options options1: NSFileCoordinatorWritingOptions, writingItemAtURL url2: NSURL, options options2: NSFileCoordinatorWritingOptions, error outError: NSErrorPointer, byAccessor writer: (NSURL, NSURL) -> Void)
  func prepareForReadingItemsAtURLs(_ readingURLs: [NSURL], options readingOptions: NSFileCoordinatorReadingOptions, writingItemsAtURLs writingURLs: [NSURL], options writingOptions: NSFileCoordinatorWritingOptions, error outError: NSErrorPointer, byAccessor batchAccessor: (() -> Void) -> Void)
  @available(watchOS 2.0, *)
  func itemAtURL(_ oldURL: NSURL, willMoveToURL newURL: NSURL)
  func itemAtURL(_ oldURL: NSURL, didMoveToURL newURL: NSURL)
  func cancel()
}
