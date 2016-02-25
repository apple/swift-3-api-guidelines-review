
struct NSFontCollectionVisibility : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var Process: NSFontCollectionVisibility { get }
  static var User: NSFontCollectionVisibility { get }
  static var Computer: NSFontCollectionVisibility { get }
}
@available(OSX 10.7, *)
class NSFontCollection : NSObject, NSCopying, NSMutableCopying, NSCoding {
  /*not inherited*/ init(descriptors queryDescriptors: [NSFontDescriptor])
  class func fontCollectionWithAllAvailableDescriptors() -> NSFontCollection
  /*not inherited*/ init?(locale locale: NSLocale)
  class func showFontCollection(_ collection: NSFontCollection, withName name: String, visibility visibility: NSFontCollectionVisibility) throws
  class func hideFontCollectionWithName(_ name: String, visibility visibility: NSFontCollectionVisibility) throws
  class func renameFontCollectionWithName(_ name: String, visibility visibility: NSFontCollectionVisibility, toName name: String) throws
  class func allFontCollectionNames() -> [String]
  /*not inherited*/ init?(name name: String)
  /*not inherited*/ init?(name name: String, visibility visibility: NSFontCollectionVisibility)
  var queryDescriptors: [NSFontDescriptor]? { get }
  var exclusionDescriptors: [NSFontDescriptor]? { get }
  var matchingDescriptors: [NSFontDescriptor]? { get }
  func matchingDescriptorsWithOptions(_ options: [String : NSNumber]?) -> [NSFontDescriptor]?
  func matchingDescriptorsForFamily(_ family: String) -> [NSFontDescriptor]?
  func matchingDescriptorsForFamily(_ family: String, options options: [String : NSNumber]?) -> [NSFontDescriptor]?
  @available(OSX 10.7, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.7, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.7, *)
class NSMutableFontCollection : NSFontCollection {
  func addQueryForDescriptors(_ descriptors: [NSFontDescriptor])
  func removeQueryForDescriptors(_ descriptors: [NSFontDescriptor])
}
@available(OSX 10.7, *)
let NSFontCollectionIncludeDisabledFontsOption: String
@available(OSX 10.7, *)
let NSFontCollectionRemoveDuplicatesOption: String
@available(OSX 10.7, *)
let NSFontCollectionDisallowAutoActivationOption: String
@available(OSX 10.7, *)
let NSFontCollectionDidChangeNotification: String
@available(OSX 10.7, *)
let NSFontCollectionActionKey: String
@available(OSX 10.7, *)
let NSFontCollectionNameKey: String
@available(OSX 10.7, *)
let NSFontCollectionOldNameKey: String
@available(OSX 10.7, *)
let NSFontCollectionVisibilityKey: String
@available(OSX 10.7, *)
let NSFontCollectionWasShown: String
@available(OSX 10.7, *)
let NSFontCollectionWasHidden: String
@available(OSX 10.7, *)
let NSFontCollectionWasRenamed: String
@available(OSX 10.7, *)
let NSFontCollectionAllFonts: String
@available(OSX 10.7, *)
let NSFontCollectionUser: String
@available(OSX 10.7, *)
let NSFontCollectionFavorites: String
@available(OSX 10.7, *)
let NSFontCollectionRecentlyUsed: String
