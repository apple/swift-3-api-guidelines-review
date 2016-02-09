
struct FileVersionAddingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var byMoving: FileVersionAddingOptions { get }
}
struct FileVersionReplacingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var byMoving: FileVersionReplacingOptions { get }
}
@available(OSX 10.7, *)
class FileVersion : Object {
  class func currentVersionOfItem(at url: URL) -> FileVersion?
  class func otherVersionsOfItem(at url: URL) -> [FileVersion]?
  class func unresolvedConflictVersionsOfItem(at url: URL) -> [FileVersion]?
  @available(OSX 10.10, *)
  class func getNonlocalVersionsOfItem(at url: URL, completionHandler: ([FileVersion]?, Error?) -> Void)
  /*not inherited*/ init?(ofItemAt url: URL, forPersistentIdentifier persistentIdentifier: AnyObject)
  @available(OSX 10.7, *)
  class func addOfItem(at url: URL, withContentsOf contentsURL: URL, options: FileVersionAddingOptions = []) throws -> FileVersion
  @available(OSX 10.7, *)
  class func temporaryDirectoryURLForNewVersionOfItem(at url: URL) -> URL
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
  func replaceItem(at url: URL, options: FileVersionReplacingOptions = []) throws -> URL
  func remove() throws
  class func removeOtherVersionsOfItem(at url: URL) throws
  init()
}
