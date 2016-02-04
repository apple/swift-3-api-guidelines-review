
struct NSFileVersionAddingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ByMoving: NSFileVersionAddingOptions { get }
}
struct NSFileVersionReplacingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ByMoving: NSFileVersionReplacingOptions { get }
}
@available(OSX 10.7, *)
class NSFileVersion : NSObject {
  class func currentVersionOfItemAtURL(url: NSURL) -> NSFileVersion?
  class func otherVersionsOfItemAtURL(url: NSURL) -> [NSFileVersion]?
  class func unresolvedConflictVersionsOfItemAtURL(url: NSURL) -> [NSFileVersion]?
  @available(OSX 10.10, *)
  class func getNonlocalVersionsOfItemAtURL(url: NSURL, completionHandler: ([NSFileVersion]?, NSError?) -> Void)
  /*not inherited*/ init?(ofItemAtURL url: NSURL, forPersistentIdentifier persistentIdentifier: AnyObject)
  @available(OSX 10.7, *)
  class func addVersionOfItemAtURL(url: NSURL, withContentsOfURL contentsURL: NSURL, options: NSFileVersionAddingOptions) throws -> NSFileVersion
  @available(OSX 10.7, *)
  class func temporaryDirectoryURLForNewVersionOfItemAtURL(url: NSURL) -> NSURL
  @NSCopying var URL: NSURL { get }
  var localizedName: String? { get }
  var localizedNameOfSavingComputer: String? { get }
  @NSCopying var modificationDate: NSDate? { get }
  var persistentIdentifier: NSCoding { get }
  var conflict: Bool { get }
  var resolved: Bool
  @available(OSX 10.7, *)
  var discardable: Bool
  @available(OSX 10.10, *)
  var hasLocalContents: Bool { get }
  @available(OSX 10.10, *)
  var hasThumbnail: Bool { get }
  func replaceItemAtURL(url: NSURL, options: NSFileVersionReplacingOptions) throws -> NSURL
  func remove() throws
  class func removeOtherVersionsOfItemAtURL(url: NSURL) throws
  init()
}
