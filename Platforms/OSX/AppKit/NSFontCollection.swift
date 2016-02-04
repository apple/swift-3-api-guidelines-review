
struct NSFontCollectionVisibility : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Process: NSFontCollectionVisibility { get }
  static var User: NSFontCollectionVisibility { get }
  static var Computer: NSFontCollectionVisibility { get }
}
@available(OSX 10.7, *)
class NSFontCollection : NSObject, NSCopying, NSMutableCopying, NSCoding {
  /*not inherited*/ init(descriptors queryDescriptors: [NSFontDescriptor])
  class func fontCollectionWithAllAvailableDescriptors() -> NSFontCollection
  /*not inherited*/ init?(locale: NSLocale)
  class func showFontCollection(collection: NSFontCollection, withName name: String, visibility: NSFontCollectionVisibility) throws
  class func hideFontCollectionWithName(name: String, visibility: NSFontCollectionVisibility) throws
  class func renameFontCollectionWithName(name: String, visibility: NSFontCollectionVisibility, toName name: String) throws
  class func allFontCollectionNames() -> [String]
  /*not inherited*/ init?(name: String)
  /*not inherited*/ init?(name: String, visibility: NSFontCollectionVisibility)
  var queryDescriptors: [NSFontDescriptor]? { get }
  var exclusionDescriptors: [NSFontDescriptor]? { get }
  var matchingDescriptors: [NSFontDescriptor]? { get }
  func matchingDescriptorsWithOptions(options: [String : NSNumber]?) -> [NSFontDescriptor]?
  func matchingDescriptorsForFamily(family: String) -> [NSFontDescriptor]?
  func matchingDescriptorsForFamily(family: String, options: [String : NSNumber]?) -> [NSFontDescriptor]?
  init()
  @available(OSX 10.7, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.7, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.7, *)
class NSMutableFontCollection : NSFontCollection {
  /*not inherited*/ init(descriptors queryDescriptors: [NSFontDescriptor])
  class func fontCollectionWithAllAvailableDescriptors() -> NSMutableFontCollection
  /*not inherited*/ init(locale: NSLocale)
  /*not inherited*/ init?(name: String)
  /*not inherited*/ init?(name: String, visibility: NSFontCollectionVisibility)
  var queryDescriptors: [NSFontDescriptor]?
  var exclusionDescriptors: [NSFontDescriptor]?
  func addQueryForDescriptors(descriptors: [NSFontDescriptor])
  func removeQueryForDescriptors(descriptors: [NSFontDescriptor])
  init()
  init?(coder aDecoder: NSCoder)
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
