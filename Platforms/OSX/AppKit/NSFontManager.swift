
struct NSFontTraitMask : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var italicFontMask: NSFontTraitMask { get }
  static var boldFontMask: NSFontTraitMask { get }
  static var unboldFontMask: NSFontTraitMask { get }
  static var nonStandardCharacterSetFontMask: NSFontTraitMask { get }
  static var narrowFontMask: NSFontTraitMask { get }
  static var expandedFontMask: NSFontTraitMask { get }
  static var condensedFontMask: NSFontTraitMask { get }
  static var smallCapsFontMask: NSFontTraitMask { get }
  static var posterFontMask: NSFontTraitMask { get }
  static var compressedFontMask: NSFontTraitMask { get }
  static var fixedPitchFontMask: NSFontTraitMask { get }
  static var unitalicFontMask: NSFontTraitMask { get }
}
struct NSFontCollectionOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var applicationOnlyMask: NSFontCollectionOptions { get }
}
enum NSFontAction : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case noFontChangeAction
  case viaPanelFontAction
  case addTraitFontAction
  case sizeUpFontAction
  case sizeDownFontAction
  case heavierFontAction
  case lighterFontAction
  case removeTraitFontAction
}
class NSFontManager : NSObject {
  class func setFontPanelFactory(_ factoryId: AnyClass?)
  class func setFontManagerFactory(_ factoryId: AnyClass?)
  class func shared() -> NSFontManager
  var isMultiple: Bool { get }
  var selectedFont: NSFont? { get }
  func setSelectedFont(_ fontObj: NSFont, isMultiple flag: Bool)
  func setFontMenu(_ newMenu: NSMenu)
  func fontMenu(_ create: Bool) -> NSMenu?
  func fontPanel(_ create: Bool) -> NSFontPanel?
  func font(withFamily family: String, traits traits: NSFontTraitMask, weight weight: Int, size size: CGFloat) -> NSFont?
  func traits(of fontObj: NSFont) -> NSFontTraitMask
  func weight(of fontObj: NSFont) -> Int
  var availableFonts: [String] { get }
  var availableFontFamilies: [String] { get }
  func availableMembers(ofFontFamily fam: String) -> [[AnyObject]]?
  func convert(_ fontObj: NSFont) -> NSFont
  func convert(_ fontObj: NSFont, toSize size: CGFloat) -> NSFont
  func convert(_ fontObj: NSFont, toFace typeface: String) -> NSFont?
  func convert(_ fontObj: NSFont, toFamily family: String) -> NSFont
  func convert(_ fontObj: NSFont, toHaveTrait trait: NSFontTraitMask) -> NSFont
  func convert(_ fontObj: NSFont, toNotHaveTrait trait: NSFontTraitMask) -> NSFont
  func convertWeight(_ upFlag: Bool, of fontObj: NSFont) -> NSFont
  var isEnabled: Bool
  var action: Selector
  @available(OSX, introduced=10.0, deprecated=10.11, message="NSFontManager doesn't have any delegate method. This property should not be used.")
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject?
  func sendAction() -> Bool
  func localizedName(forFamily family: String, face faceKey: String?) -> String
  func setSelectedAttributes(_ attributes: [String : AnyObject], isMultiple flag: Bool)
  func convertAttributes(_ attributes: [String : AnyObject] = [:]) -> [String : AnyObject]
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSFontDescriptor matchingFontDescriptorsWithMandatoryKeys:] instead")
  func availableFontNames(matching descriptor: NSFontDescriptor) -> [AnyObject]?
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use +[NSFontCollection allFontCollectionNames] instead")
  var collectionNames: [AnyObject] { get }
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSFontCollection matchingDescriptors] instead")
  func fontDescriptors(inCollection collectionNames: String) -> [AnyObject]?
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use +[NSFontCollection showFontCollection:withName:visibility:name:] instead")
  func addCollection(_ collectionName: String, options collectionOptions: NSFontCollectionOptions = []) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use +[NSFontCollection hideFontCollectionWithName:visibility:error:] instead")
  func removeCollection(_ collectionName: String) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSMutableFontCollection addQueryForDescriptors:] instead")
  func addFontDescriptors(_ descriptors: [AnyObject], toCollection collectionName: String)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSMutableFontCollection removeQueryForDescriptors:] instead")
  func remove(_ descriptor: NSFontDescriptor, fromCollection collection: String)
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
  func availableFontNames(withTraits someTraits: NSFontTraitMask) -> [String]?
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
