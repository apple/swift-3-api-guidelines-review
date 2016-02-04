
struct NSFileCoordinatorReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var WithoutChanges: NSFileCoordinatorReadingOptions { get }
  static var ResolvesSymbolicLink: NSFileCoordinatorReadingOptions { get }
  @available(OSX 10.10, *)
  static var ImmediatelyAvailableMetadataOnly: NSFileCoordinatorReadingOptions { get }
  @available(OSX 10.10, *)
  static var ForUploading: NSFileCoordinatorReadingOptions { get }
}
struct NSFileCoordinatorWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ForDeleting: NSFileCoordinatorWritingOptions { get }
  static var ForMoving: NSFileCoordinatorWritingOptions { get }
  static var ForMerging: NSFileCoordinatorWritingOptions { get }
  static var ForReplacing: NSFileCoordinatorWritingOptions { get }
  @available(OSX 10.10, *)
  static var ContentIndependentMetadataOnly: NSFileCoordinatorWritingOptions { get }
}
@available(OSX 10.10, *)
class NSFileAccessIntent : NSObject {
  class func readingIntentWithURL(url: NSURL, options: NSFileCoordinatorReadingOptions) -> Self
  class func writingIntentWithURL(url: NSURL, options: NSFileCoordinatorWritingOptions) -> Self
  @NSCopying var URL: NSURL { get }
  init()
}
@available(OSX 10.7, *)
class NSFileCoordinator : NSObject {
  class func addFilePresenter(filePresenter: NSFilePresenter)
  class func removeFilePresenter(filePresenter: NSFilePresenter)
  class func filePresenters() -> [NSFilePresenter]
  init(filePresenter filePresenterOrNil: NSFilePresenter?)
  @available(OSX 10.7, *)
  var purposeIdentifier: String
  @available(OSX 10.10, *)
  func coordinateAccessWithIntents(intents: [NSFileAccessIntent], queue: NSOperationQueue, byAccessor accessor: (NSError?) -> Void)
  func coordinateReadingItemAtURL(url: NSURL, options: NSFileCoordinatorReadingOptions, error outError: NSErrorPointer, byAccessor reader: (NSURL) -> Void)
  func coordinateWritingItemAtURL(url: NSURL, options: NSFileCoordinatorWritingOptions, error outError: NSErrorPointer, byAccessor writer: (NSURL) -> Void)
  func coordinateReadingItemAtURL(readingURL: NSURL, options readingOptions: NSFileCoordinatorReadingOptions, writingItemAtURL writingURL: NSURL, options writingOptions: NSFileCoordinatorWritingOptions, error outError: NSErrorPointer, byAccessor readerWriter: (NSURL, NSURL) -> Void)
  func coordinateWritingItemAtURL(url1: NSURL, options options1: NSFileCoordinatorWritingOptions, writingItemAtURL url2: NSURL, options options2: NSFileCoordinatorWritingOptions, error outError: NSErrorPointer, byAccessor writer: (NSURL, NSURL) -> Void)
  func prepareForReadingItemsAtURLs(readingURLs: [NSURL], options readingOptions: NSFileCoordinatorReadingOptions, writingItemsAtURLs writingURLs: [NSURL], options writingOptions: NSFileCoordinatorWritingOptions, error outError: NSErrorPointer, byAccessor batchAccessor: (() -> Void) -> Void)
  @available(OSX 10.8, *)
  func itemAtURL(oldURL: NSURL, willMoveToURL newURL: NSURL)
  func itemAtURL(oldURL: NSURL, didMoveToURL newURL: NSURL)
  func cancel()
  convenience init()
}
