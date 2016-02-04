
struct FileVersionAddingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ByMoving: FileVersionAddingOptions { get }
}
struct FileVersionReplacingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ByMoving: FileVersionReplacingOptions { get }
}
@available(OSX 10.7, *)
class FileVersion : Object {
  class func currentVersionOfItemAt(url: URL) -> FileVersion?
  class func otherVersionsOfItemAt(url: URL) -> [FileVersion]?
  class func unresolvedConflictVersionsOfItemAt(url: URL) -> [FileVersion]?
  @available(OSX 10.10, *)
  class func getNonlocalVersionsOfItemAt(url: URL, completionHandler: ([FileVersion]?, Error?) -> Void)
  /*not inherited*/ init?(ofItemAt url: URL, forPersistentIdentifier persistentIdentifier: AnyObject)
  @available(OSX 10.7, *)
  class func addOfItemAt(url: URL, withContentsOf contentsURL: URL, options: FileVersionAddingOptions = []) throws -> FileVersion
  @available(OSX 10.7, *)
  class func temporaryDirectoryURLForNewVersionOfItemAt(url: URL) -> URL
  @NSCopying var url: URL { get }
  var localizedName: String? { get }
  var localizedNameOfSavingComputer: String? { get }
  @NSCopying var modificationDate: Date? { get }
  var persistentIdentifier: Coding { get }
  var isConflict: Bool { get }
  var isResolved: Bool
  @available(OSX 10.7, *)
  var isDiscardable: Bool
  @available(OSX 10.10, *)
  var hasLocalContents: Bool { get }
  @available(OSX 10.10, *)
  var hasThumbnail: Bool { get }
  func replaceItemAt(url: URL, options: FileVersionReplacingOptions = []) throws -> URL
  func remove() throws
  class func removeOtherVersionsOfItemAt(url: URL) throws
  init()
}
