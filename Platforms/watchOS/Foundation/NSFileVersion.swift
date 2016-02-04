
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
@available(watchOS 2.0, *)
class NSFileVersion : NSObject {
  class func currentVersionOfItemAtURL(url: NSURL) -> NSFileVersion?
  class func otherVersionsOfItemAtURL(url: NSURL) -> [NSFileVersion]?
  class func unresolvedConflictVersionsOfItemAtURL(url: NSURL) -> [NSFileVersion]?
  @available(watchOS 2.0, *)
  class func getNonlocalVersionsOfItemAtURL(url: NSURL, completionHandler: ([NSFileVersion]?, NSError?) -> Void)
  /*not inherited*/ init?(ofItemAtURL url: NSURL, forPersistentIdentifier persistentIdentifier: AnyObject)
  @NSCopying var URL: NSURL { get }
  var localizedName: String? { get }
  var localizedNameOfSavingComputer: String? { get }
  @NSCopying var modificationDate: NSDate? { get }
  var persistentIdentifier: NSCoding { get }
  var conflict: Bool { get }
  var resolved: Bool
  @available(watchOS 2.0, *)
  var hasLocalContents: Bool { get }
  @available(watchOS 2.0, *)
  var hasThumbnail: Bool { get }
  func replaceItemAtURL(url: NSURL, options: NSFileVersionReplacingOptions) throws -> NSURL
  func remove() throws
  class func removeOtherVersionsOfItemAtURL(url: NSURL) throws
  init()
}
