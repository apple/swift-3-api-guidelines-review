
struct NSFontTraitMask : OptionSetType {
  init(rawValue rawValue: UInt)
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
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var ApplicationOnlyMask: NSFontCollectionOptions { get }
}
enum NSFontAction : UInt {
  init?(rawValue rawValue: UInt)
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
  class func setFontPanelFactory(_ factoryId: AnyClass?)
  class func setFontManagerFactory(_ factoryId: AnyClass?)
  class func sharedFontManager() -> NSFontManager
  var multiple: Bool { get }
  var selectedFont: NSFont? { get }
  func setSelectedFont(_ fontObj: NSFont, isMultiple flag: Bool)
  func setFontMenu(_ newMenu: NSMenu)
  func fontMenu(_ create: Bool) -> NSMenu?
  func fontPanel(_ create: Bool) -> NSFontPanel?
  func fontWithFamily(_ family: String, traits traits: NSFontTraitMask, weight weight: Int, size size: CGFloat) -> NSFont?
  func traitsOfFont(_ fontObj: NSFont) -> NSFontTraitMask
  func weightOfFont(_ fontObj: NSFont) -> Int
  var availableFonts: [String] { get }
  var availableFontFamilies: [String] { get }
  func availableMembersOfFontFamily(_ fam: String) -> [[AnyObject]]?
  func convertFont(_ fontObj: NSFont) -> NSFont
  func convertFont(_ fontObj: NSFont, toSize size: CGFloat) -> NSFont
  func convertFont(_ fontObj: NSFont, toFace typeface: String) -> NSFont?
  func convertFont(_ fontObj: NSFont, toFamily family: String) -> NSFont
  func convertFont(_ fontObj: NSFont, toHaveTrait trait: NSFontTraitMask) -> NSFont
  func convertFont(_ fontObj: NSFont, toNotHaveTrait trait: NSFontTraitMask) -> NSFont
  func convertWeight(_ upFlag: Bool, ofFont fontObj: NSFont) -> NSFont
  var enabled: Bool
  var action: Selector
  @available(OSX, introduced=10.0, deprecated=10.11, message="NSFontManager doesn't have any delegate method. This property should not be used.")
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject?
  func sendAction() -> Bool
  func localizedNameForFamily(_ family: String, face faceKey: String?) -> String
  func setSelectedAttributes(_ attributes: [String : AnyObject], isMultiple flag: Bool)
  func convertAttributes(_ attributes: [String : AnyObject]) -> [String : AnyObject]
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSFontDescriptor matchingFontDescriptorsWithMandatoryKeys:] instead")
  func availableFontNamesMatchingFontDescriptor(_ descriptor: NSFontDescriptor) -> [AnyObject]?
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use +[NSFontCollection allFontCollectionNames] instead")
  var collectionNames: [AnyObject] { get }
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSFontCollection matchingDescriptors] instead")
  func fontDescriptorsInCollection(_ collectionNames: String) -> [AnyObject]?
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use +[NSFontCollection showFontCollection:withName:visibility:name:] instead")
  func addCollection(_ collectionName: String, options collectionOptions: NSFontCollectionOptions) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use +[NSFontCollection hideFontCollectionWithName:visibility:error:] instead")
  func removeCollection(_ collectionName: String) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSMutableFontCollection addQueryForDescriptors:] instead")
  func addFontDescriptors(_ descriptors: [AnyObject], toCollection collectionName: String)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSMutableFontCollection removeQueryForDescriptors:] instead")
  func removeFontDescriptor(_ descriptor: NSFontDescriptor, fromCollection collection: String)
  @available(OSX 10.5, *)
  var currentFontAction: NSFontAction { get }
  @available(OSX 10.5, *)
  func convertFontTraits(_ traits: NSFontTraitMask) -> NSFontTraitMask
  @available(OSX 10.5, *)
  weak var target: @sil_weak AnyObject?
}
struct _fmFlags {
  var multipleFont: UInt32
  var disabled: UInt32
  var senderTagMode: UInt32
  var _RESERVED: UInt32
  init()
  init(multipleFont multipleFont: UInt32, disabled disabled: UInt32, senderTagMode senderTagMode: UInt32, _RESERVED _RESERVED: UInt32)
}
extension NSFontManager {
  func fontNamed(_ fName: String, hasTraits someTraits: NSFontTraitMask) -> Bool
  func availableFontNamesWithTraits(_ someTraits: NSFontTraitMask) -> [String]?
  func addFontTrait(_ sender: AnyObject?)
  func removeFontTrait(_ sender: AnyObject?)
  func modifyFontViaPanel(_ sender: AnyObject?)
  func modifyFont(_ sender: AnyObject?)
  func orderFrontFontPanel(_ sender: AnyObject?)
  func orderFrontStylesPanel(_ sender: AnyObject?)
}
extension NSObject {
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use NSFontCollection for providing filtered font lists")
  class func fontManager(_ sender: AnyObject, willIncludeFont fontName: String) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use NSFontCollection for providing filtered font lists")
  func fontManager(_ sender: AnyObject, willIncludeFont fontName: String) -> Bool
}
extension NSObject {
  class func changeFont(_ sender: AnyObject?)
  func changeFont(_ sender: AnyObject?)
}
