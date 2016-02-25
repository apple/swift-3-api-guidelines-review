
struct NSFileVersionAddingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var ByMoving: NSFileVersionAddingOptions { get }
}
struct NSFileVersionReplacingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var ByMoving: NSFileVersionReplacingOptions { get }
}
@available(tvOS 5.0, *)
class NSFileVersion : NSObject {
  class func currentVersionOfItemAtURL(_ url: NSURL) -> NSFileVersion?
  class func otherVersionsOfItemAtURL(_ url: NSURL) -> [NSFileVersion]?
  class func unresolvedConflictVersionsOfItemAtURL(_ url: NSURL) -> [NSFileVersion]?
  @available(tvOS 8.0, *)
  class func getNonlocalVersionsOfItemAtURL(_ url: NSURL, completionHandler completionHandler: ([NSFileVersion]?, NSError?) -> Void)
  /*not inherited*/ init?(ofItemAtURL url: NSURL, forPersistentIdentifier persistentIdentifier: AnyObject)
  @NSCopying var URL: NSURL { get }
  var localizedName: String? { get }
  var localizedNameOfSavingComputer: String? { get }
  @NSCopying var modificationDate: NSDate? { get }
  var persistentIdentifier: NSCoding { get }
  var conflict: Bool { get }
  var resolved: Bool
  @available(tvOS 8.0, *)
  var hasLocalContents: Bool { get }
  @available(tvOS 8.0, *)
  var hasThumbnail: Bool { get }
  func replaceItemAtURL(_ url: NSURL, options options: NSFileVersionReplacingOptions) throws -> NSURL
  func remove() throws
  class func removeOtherVersionsOfItemAtURL(_ url: NSURL) throws
}
