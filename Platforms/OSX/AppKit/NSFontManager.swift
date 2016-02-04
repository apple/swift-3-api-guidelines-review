
struct NSFontTraitMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ItalicFontMask: NSFontTraitMask { get }
  static var BoldFontMask: NSFontTraitMask { get }
  static var UnboldFontMask: NSFontTraitMask { get }
  static var NonStandardCharacterSetFontMask: NSFontTraitMask { get }
  static var NarrowFontMask: NSFontTraitMask { get }
  static var ExpandedFontMask: NSFontTraitMask { get }
  static var CondensedFontMask: NSFontTraitMask { get }
  static var SmallCapsFontMask: NSFontTraitMask { get }
  static var PosterFontMask: NSFontTraitMask { get }
  static var CompressedFontMask: NSFontTraitMask { get }
  static var FixedPitchFontMask: NSFontTraitMask { get }
  static var UnitalicFontMask: NSFontTraitMask { get }
}
struct NSFontCollectionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ApplicationOnlyMask: NSFontCollectionOptions { get }
}
enum NSFontAction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoFontChangeAction
  case ViaPanelFontAction
  case AddTraitFontAction
  case SizeUpFontAction
  case SizeDownFontAction
  case HeavierFontAction
  case LighterFontAction
  case RemoveTraitFontAction
}
class NSFontManager : NSObject {
  class func setFontPanelFactory(factoryId: AnyClass?)
  class func setFontManagerFactory(factoryId: AnyClass?)
  class func sharedFontManager() -> NSFontManager
  var multiple: Bool { get }
  var selectedFont: NSFont? { get }
  func setSelectedFont(fontObj: NSFont, isMultiple flag: Bool)
  func setFontMenu(newMenu: NSMenu)
  func fontMenu(create: Bool) -> NSMenu?
  func fontPanel(create: Bool) -> NSFontPanel?
  func fontWithFamily(family: String, traits: NSFontTraitMask, weight: Int, size: CGFloat) -> NSFont?
  func traitsOfFont(fontObj: NSFont) -> NSFontTraitMask
  func weightOfFont(fontObj: NSFont) -> Int
  var availableFonts: [String] { get }
  var availableFontFamilies: [String] { get }
  func availableMembersOfFontFamily(fam: String) -> [[AnyObject]]?
  func convertFont(fontObj: NSFont) -> NSFont
  func convertFont(fontObj: NSFont, toSize size: CGFloat) -> NSFont
  func convertFont(fontObj: NSFont, toFace typeface: String) -> NSFont?
  func convertFont(fontObj: NSFont, toFamily family: String) -> NSFont
  func convertFont(fontObj: NSFont, toHaveTrait trait: NSFontTraitMask) -> NSFont
  func convertFont(fontObj: NSFont, toNotHaveTrait trait: NSFontTraitMask) -> NSFont
  func convertWeight(upFlag: Bool, ofFont fontObj: NSFont) -> NSFont
  var enabled: Bool
  var action: Selector
  @available(OSX, introduced=10.0, deprecated=10.11, message="NSFontManager doesn't have any delegate method. This property should not be used.")
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject?
  func sendAction() -> Bool
  func localizedNameForFamily(family: String, face faceKey: String?) -> String
  func setSelectedAttributes(attributes: [String : AnyObject], isMultiple flag: Bool)
  func convertAttributes(attributes: [String : AnyObject]) -> [String : AnyObject]
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSFontDescriptor matchingFontDescriptorsWithMandatoryKeys:] instead")
  func availableFontNamesMatchingFontDescriptor(descriptor: NSFontDescriptor) -> [AnyObject]?
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use +[NSFontCollection allFontCollectionNames] instead")
  var collectionNames: [AnyObject] { get }
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSFontCollection matchingDescriptors] instead")
  func fontDescriptorsInCollection(collectionNames: String) -> [AnyObject]?
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use +[NSFontCollection showFontCollection:withName:visibility:name:] instead")
  func addCollection(collectionName: String, options collectionOptions: NSFontCollectionOptions) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use +[NSFontCollection hideFontCollectionWithName:visibility:error:] instead")
  func removeCollection(collectionName: String) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSMutableFontCollection addQueryForDescriptors:] instead")
  func addFontDescriptors(descriptors: [AnyObject], toCollection collectionName: String)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSMutableFontCollection removeQueryForDescriptors:] instead")
  func removeFontDescriptor(descriptor: NSFontDescriptor, fromCollection collection: String)
  @available(OSX 10.5, *)
  var currentFontAction: NSFontAction { get }
  @available(OSX 10.5, *)
  func convertFontTraits(traits: NSFontTraitMask) -> NSFontTraitMask
  @available(OSX 10.5, *)
  weak var target: @sil_weak AnyObject?
  init()
}
struct _fmFlags {
  var multipleFont: UInt32
  var disabled: UInt32
  var senderTagMode: UInt32
  var _RESERVED: UInt32
  init()
  init(multipleFont: UInt32, disabled: UInt32, senderTagMode: UInt32, _RESERVED: UInt32)
}
extension NSFontManager {
  func fontNamed(fName: String, hasTraits someTraits: NSFontTraitMask) -> Bool
  func availableFontNamesWithTraits(someTraits: NSFontTraitMask) -> [String]?
  func addFontTrait(sender: AnyObject?)
  func removeFontTrait(sender: AnyObject?)
  func modifyFontViaPanel(sender: AnyObject?)
  func modifyFont(sender: AnyObject?)
  func orderFrontFontPanel(sender: AnyObject?)
  func orderFrontStylesPanel(sender: AnyObject?)
}
extension NSObject {
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use NSFontCollection for providing filtered font lists")
  class func fontManager(sender: AnyObject, willIncludeFont fontName: String) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use NSFontCollection for providing filtered font lists")
  func fontManager(sender: AnyObject, willIncludeFont fontName: String) -> Bool
}
extension NSObject {
  class func changeFont(sender: AnyObject?)
  func changeFont(sender: AnyObject?)
}
