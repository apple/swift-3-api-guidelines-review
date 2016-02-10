
struct NSFontCollectionVisibility : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var process: NSFontCollectionVisibility { get }
  static var user: NSFontCollectionVisibility { get }
  static var computer: NSFontCollectionVisibility { get }
}
@available(OSX 10.7, *)
class NSFontCollection : Object, Copying, MutableCopying, Coding {
  /*not inherited*/ init(descriptors queryDescriptors: [NSFontDescriptor])
  class func withAllAvailableDescriptors() -> NSFontCollection
  /*not inherited*/ init?(locale: Locale)
  class func show(collection: NSFontCollection, withName name: String, visibility: NSFontCollectionVisibility) throws
  class func hide(name name: String, visibility: NSFontCollectionVisibility) throws
  class func renameFontCollection(withName name: String, visibility: NSFontCollectionVisibility, toName name: String) throws
  class func allFontCollectionNames() -> [String]
  /*not inherited*/ init?(name: String)
  /*not inherited*/ init?(name: String, visibility: NSFontCollectionVisibility)
  var queryDescriptors: [NSFontDescriptor]? { get }
  var exclusionDescriptors: [NSFontDescriptor]? { get }
  var matchingDescriptors: [NSFontDescriptor]? { get }
  func matchingDescriptors(options options: [String : Number]? = [:]) -> [NSFontDescriptor]?
  func matchingDescriptors(forFamily family: String) -> [NSFontDescriptor]?
  func matchingDescriptors(forFamily family: String, options: [String : Number]? = [:]) -> [NSFontDescriptor]?
  init()
  @available(OSX 10.7, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopy(with zone: Zone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(OSX 10.7, *)
class NSMutableFontCollection : NSFontCollection {
  /*not inherited*/ init(descriptors queryDescriptors: [NSFontDescriptor])
  class func withAllAvailableDescriptors() -> NSMutableFontCollection
  /*not inherited*/ init(locale: Locale)
  /*not inherited*/ init?(name: String)
  /*not inherited*/ init?(name: String, visibility: NSFontCollectionVisibility)
  var queryDescriptors: [NSFontDescriptor]?
  var exclusionDescriptors: [NSFontDescriptor]?
  func addQuery(for descriptors: [NSFontDescriptor])
  func removeQuery(for descriptors: [NSFontDescriptor])
  init()
  init?(coder aDecoder: Coder)
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
