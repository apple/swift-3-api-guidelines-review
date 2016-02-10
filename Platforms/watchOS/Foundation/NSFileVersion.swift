
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
@available(watchOS 2.0, *)
class FileVersion : Object {
  class func currentVersionOfItem(at url: URL) -> FileVersion?
  class func otherVersionsOfItem(at url: URL) -> [FileVersion]?
  class func unresolvedConflictVersionsOfItem(at url: URL) -> [FileVersion]?
  @available(watchOS 2.0, *)
  class func getNonlocalVersionsOfItem(at url: URL, completionHandler: ([FileVersion]?, Error?) -> Void)
  /*not inherited*/ init?(ofItemAt url: URL, forPersistentIdentifier persistentIdentifier: AnyObject)
  @NSCopying var url: URL { get }
  var localizedName: String? { get }
  var localizedNameOfSavingComputer: String? { get }
  @NSCopying var modificationDate: Date? { get }
  var persistentIdentifier: Coding { get }
  var isConflict: Bool { get }
  var isResolved: Bool
  @available(watchOS 2.0, *)
  var hasLocalContents: Bool { get }
  @available(watchOS 2.0, *)
  var hasThumbnail: Bool { get }
  func replaceItem(at url: URL, options: FileVersionReplacingOptions = []) throws -> URL
  func remove() throws
  class func removeOtherVersionsOfItem(at url: URL) throws
  init()
}
