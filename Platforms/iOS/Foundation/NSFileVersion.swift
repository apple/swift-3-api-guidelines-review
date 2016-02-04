
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
@available(iOS 5.0, *)
class FileVersion : Object {
  class func currentVersionOfItemAt(url: URL) -> FileVersion?
  class func otherVersionsOfItemAt(url: URL) -> [FileVersion]?
  class func unresolvedConflictVersionsOfItemAt(url: URL) -> [FileVersion]?
  @available(iOS 8.0, *)
  class func getNonlocalVersionsOfItemAt(url: URL, completionHandler: ([FileVersion]?, Error?) -> Void)
  /*not inherited*/ init?(ofItemAt url: URL, forPersistentIdentifier persistentIdentifier: AnyObject)
  @NSCopying var url: URL { get }
  var localizedName: String? { get }
  var localizedNameOfSavingComputer: String? { get }
  @NSCopying var modificationDate: Date? { get }
  var persistentIdentifier: Coding { get }
  var isConflict: Bool { get }
  var isResolved: Bool
  @available(iOS 8.0, *)
  var hasLocalContents: Bool { get }
  @available(iOS 8.0, *)
  var hasThumbnail: Bool { get }
  func replaceItemAt(url: URL, options: FileVersionReplacingOptions = []) throws -> URL
  func remove() throws
  class func removeOtherVersionsOfItemAt(url: URL) throws
  init()
}
