
@available(*, deprecated, renamed="CTFont")
typealias CTFontRef = CTFont
class CTFont {
}
@available(OSX 10.5, *)
func CTFontGetTypeID() -> CFTypeID
@available(OSX 10.5, *)
let kCTFontCopyrightNameKey: CFString
@available(OSX 10.5, *)
let kCTFontFamilyNameKey: CFString
@available(OSX 10.5, *)
let kCTFontSubFamilyNameKey: CFString
@available(OSX 10.5, *)
let kCTFontStyleNameKey: CFString
@available(OSX 10.5, *)
let kCTFontUniqueNameKey: CFString
@available(OSX 10.5, *)
let kCTFontFullNameKey: CFString
@available(OSX 10.5, *)
let kCTFontVersionNameKey: CFString
@available(OSX 10.5, *)
let kCTFontPostScriptNameKey: CFString
@available(OSX 10.5, *)
let kCTFontTrademarkNameKey: CFString
@available(OSX 10.5, *)
let kCTFontManufacturerNameKey: CFString
@available(OSX 10.5, *)
let kCTFontDesignerNameKey: CFString
@available(OSX 10.5, *)
let kCTFontDescriptionNameKey: CFString
@available(OSX 10.5, *)
let kCTFontVendorURLNameKey: CFString
@available(OSX 10.5, *)
let kCTFontDesignerURLNameKey: CFString
@available(OSX 10.5, *)
let kCTFontLicenseNameKey: CFString
@available(OSX 10.5, *)
let kCTFontLicenseURLNameKey: CFString
@available(OSX 10.5, *)
let kCTFontSampleTextNameKey: CFString
@available(OSX 10.5, *)
let kCTFontPostScriptCIDNameKey: CFString
@available(OSX 10.5, *)
func CTFontCreateWithName(name: CFString?, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>) -> CTFont
@available(OSX 10.5, *)
func CTFontCreateWithFontDescriptor(descriptor: CTFontDescriptor, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>) -> CTFont
struct CTFontOptions : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var Default: CTFontOptions { get }
  static var PreventAutoActivation: CTFontOptions { get }
  static var PreferSystemFont: CTFontOptions { get }
}
@available(OSX 10.6, *)
func CTFontCreateWithNameAndOptions(name: CFString, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>, _ options: CTFontOptions) -> CTFont
@available(OSX 10.6, *)
func CTFontCreateWithFontDescriptorAndOptions(descriptor: CTFontDescriptor, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>, _ options: CTFontOptions) -> CTFont
enum CTFontUIFontType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  @available(OSX 10.8, *)
  case None
  @available(OSX 10.8, *)
  case User
  @available(OSX 10.8, *)
  case UserFixedPitch
  @available(OSX 10.8, *)
  case System
  @available(OSX 10.8, *)
  case EmphasizedSystem
  @available(OSX 10.8, *)
  case SmallSystem
  @available(OSX 10.8, *)
  case SmallEmphasizedSystem
  @available(OSX 10.8, *)
  case MiniSystem
  @available(OSX 10.8, *)
  case MiniEmphasizedSystem
  @available(OSX 10.8, *)
  case Views
  @available(OSX 10.8, *)
  case Application
  @available(OSX 10.8, *)
  case Label
  @available(OSX 10.8, *)
  case MenuTitle
  @available(OSX 10.8, *)
  case MenuItem
  @available(OSX 10.8, *)
  case MenuItemMark
  @available(OSX 10.8, *)
  case MenuItemCmdKey
  @available(OSX 10.8, *)
  case WindowTitle
  @available(OSX 10.8, *)
  case PushButton
  @available(OSX 10.8, *)
  case UtilityWindowTitle
  @available(OSX 10.8, *)
  case AlertHeader
  @available(OSX 10.8, *)
  case SystemDetail
  @available(OSX 10.8, *)
  case EmphasizedSystemDetail
  @available(OSX 10.8, *)
  case Toolbar
  @available(OSX 10.8, *)
  case SmallToolbar
  @available(OSX 10.8, *)
  case Message
  @available(OSX 10.8, *)
  case Palette
  @available(OSX 10.8, *)
  case ToolTip
  @available(OSX 10.8, *)
  case ControlContent
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTFontNoFontType: CTFontUIFontType { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTFontUserFontType: CTFontUIFontType { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTFontUserFixedPitchFontType: CTFontUIFontType { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTFontSystemFontType: CTFontUIFontType { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTFontEmphasizedSystemFontType: CTFontUIFontType { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTFontSmallSystemFontType: CTFontUIFontType { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTFontSmallEmphasizedSystemFontType: CTFontUIFontType { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTFontMiniSystemFontType: CTFontUIFontType { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTFontMiniEmphasizedSystemFontType: CTFontUIFontType { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTFontViewsFontType: CTFontUIFontType { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTFontApplicationFontType: CTFontUIFontType { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTFontLabelFontType: CTFontUIFontType { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTFontMenuTitleFontType: CTFontUIFontType { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTFontMenuItemFontType: CTFontUIFontType { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTFontMenuItemMarkFontType: CTFontUIFontType { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTFontMenuItemCmdKeyFontType: CTFontUIFontType { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTFontWindowTitleFontType: CTFontUIFontType { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTFontPushButtonFontType: CTFontUIFontType { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTFontUtilityWindowTitleFontType: CTFontUIFontType { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTFontAlertHeaderFontType: CTFontUIFontType { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTFontSystemDetailFontType: CTFontUIFontType { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTFontEmphasizedSystemDetailFontType: CTFontUIFontType { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTFontToolbarFontType: CTFontUIFontType { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTFontSmallToolbarFontType: CTFontUIFontType { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTFontMessageFontType: CTFontUIFontType { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTFontPaletteFontType: CTFontUIFontType { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTFontToolTipFontType: CTFontUIFontType { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTFontControlContentFontType: CTFontUIFontType { get }
}
@available(OSX 10.5, *)
func CTFontCreateUIFontForLanguage(uiType: CTFontUIFontType, _ size: CGFloat, _ language: CFString?) -> CTFont?
@available(OSX 10.5, *)
func CTFontCreateCopyWithAttributes(font: CTFont, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>, _ attributes: CTFontDescriptor?) -> CTFont
@available(OSX 10.5, *)
func CTFontCreateCopyWithSymbolicTraits(font: CTFont, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>, _ symTraitValue: CTFontSymbolicTraits, _ symTraitMask: CTFontSymbolicTraits) -> CTFont?
@available(OSX 10.5, *)
func CTFontCreateCopyWithFamily(font: CTFont, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>, _ family: CFString) -> CTFont?
@available(OSX 10.5, *)
func CTFontCreateForString(currentFont: CTFont, _ string: CFString, _ range: CFRange) -> CTFont
@available(OSX 10.5, *)
func CTFontCopyFontDescriptor(font: CTFont) -> CTFontDescriptor
@available(OSX 10.5, *)
func CTFontCopyAttribute(font: CTFont, _ attribute: CFString) -> CFTypeRef?
@available(OSX 10.5, *)
func CTFontGetSize(font: CTFont) -> CGFloat
@available(OSX 10.5, *)
func CTFontGetMatrix(font: CTFont) -> CGAffineTransform
@available(OSX 10.5, *)
func CTFontGetSymbolicTraits(font: CTFont) -> CTFontSymbolicTraits
@available(OSX 10.5, *)
func CTFontCopyTraits(font: CTFont) -> CFDictionary
@available(OSX 10.5, *)
func CTFontCopyPostScriptName(font: CTFont) -> CFString
@available(OSX 10.5, *)
func CTFontCopyFamilyName(font: CTFont) -> CFString
@available(OSX 10.5, *)
func CTFontCopyFullName(font: CTFont) -> CFString
@available(OSX 10.5, *)
func CTFontCopyDisplayName(font: CTFont) -> CFString
@available(OSX 10.5, *)
func CTFontCopyName(font: CTFont, _ nameKey: CFString) -> CFString?
@available(OSX 10.5, *)
func CTFontCopyLocalizedName(font: CTFont, _ nameKey: CFString, _ actualLanguage: UnsafeMutablePointer<Unmanaged<CFString>?>) -> CFString?
@available(OSX 10.5, *)
func CTFontCopyCharacterSet(font: CTFont) -> CFCharacterSet
@available(OSX 10.5, *)
func CTFontGetStringEncoding(font: CTFont) -> CFStringEncoding
@available(OSX 10.5, *)
func CTFontCopySupportedLanguages(font: CTFont) -> CFArray
@available(OSX 10.5, *)
func CTFontGetGlyphsForCharacters(font: CTFont, _ characters: UnsafePointer<UniChar>, _ glyphs: UnsafeMutablePointer<CGGlyph>, _ count: CFIndex) -> Bool
@available(OSX 10.5, *)
func CTFontGetAscent(font: CTFont) -> CGFloat
@available(OSX 10.5, *)
func CTFontGetDescent(font: CTFont) -> CGFloat
@available(OSX 10.5, *)
func CTFontGetLeading(font: CTFont) -> CGFloat
@available(OSX 10.5, *)
func CTFontGetUnitsPerEm(font: CTFont) -> UInt32
@available(OSX 10.5, *)
func CTFontGetGlyphCount(font: CTFont) -> CFIndex
@available(OSX 10.5, *)
func CTFontGetBoundingBox(font: CTFont) -> CGRect
@available(OSX 10.5, *)
func CTFontGetUnderlinePosition(font: CTFont) -> CGFloat
@available(OSX 10.5, *)
func CTFontGetUnderlineThickness(font: CTFont) -> CGFloat
@available(OSX 10.5, *)
func CTFontGetSlantAngle(font: CTFont) -> CGFloat
@available(OSX 10.5, *)
func CTFontGetCapHeight(font: CTFont) -> CGFloat
@available(OSX 10.5, *)
func CTFontGetXHeight(font: CTFont) -> CGFloat
@available(OSX 10.5, *)
func CTFontGetGlyphWithName(font: CTFont, _ glyphName: CFString) -> CGGlyph
@available(OSX 10.5, *)
func CTFontGetBoundingRectsForGlyphs(font: CTFont, _ orientation: CTFontOrientation, _ glyphs: UnsafePointer<CGGlyph>, _ boundingRects: UnsafeMutablePointer<CGRect>, _ count: CFIndex) -> CGRect
@available(OSX 10.8, *)
func CTFontGetOpticalBoundsForGlyphs(font: CTFont, _ glyphs: UnsafePointer<CGGlyph>, _ boundingRects: UnsafeMutablePointer<CGRect>, _ count: CFIndex, _ options: CFOptionFlags) -> CGRect
@available(OSX 10.5, *)
func CTFontGetAdvancesForGlyphs(font: CTFont, _ orientation: CTFontOrientation, _ glyphs: UnsafePointer<CGGlyph>, _ advances: UnsafeMutablePointer<CGSize>, _ count: CFIndex) -> Double
@available(OSX 10.5, *)
func CTFontGetVerticalTranslationsForGlyphs(font: CTFont, _ glyphs: UnsafePointer<CGGlyph>, _ translations: UnsafeMutablePointer<CGSize>, _ count: CFIndex)
@available(OSX 10.5, *)
func CTFontCreatePathForGlyph(font: CTFont, _ glyph: CGGlyph, _ matrix: UnsafePointer<CGAffineTransform>) -> CGPath?
@available(OSX 10.5, *)
let kCTFontVariationAxisIdentifierKey: CFString
@available(OSX 10.5, *)
let kCTFontVariationAxisMinimumValueKey: CFString
@available(OSX 10.5, *)
let kCTFontVariationAxisMaximumValueKey: CFString
@available(OSX 10.5, *)
let kCTFontVariationAxisDefaultValueKey: CFString
@available(OSX 10.5, *)
let kCTFontVariationAxisNameKey: CFString
@available(OSX 10.5, *)
func CTFontCopyVariationAxes(font: CTFont) -> CFArray?
@available(OSX 10.5, *)
func CTFontCopyVariation(font: CTFont) -> CFDictionary?
@available(OSX 10.10, *)
let kCTFontOpenTypeFeatureTag: CFString
@available(OSX 10.10, *)
let kCTFontOpenTypeFeatureValue: CFString
@available(OSX 10.5, *)
let kCTFontFeatureTypeIdentifierKey: CFString
@available(OSX 10.5, *)
let kCTFontFeatureTypeNameKey: CFString
@available(OSX 10.5, *)
let kCTFontFeatureTypeExclusiveKey: CFString
@available(OSX 10.5, *)
let kCTFontFeatureTypeSelectorsKey: CFString
@available(OSX 10.5, *)
let kCTFontFeatureSelectorIdentifierKey: CFString
@available(OSX 10.5, *)
let kCTFontFeatureSelectorNameKey: CFString
@available(OSX 10.5, *)
let kCTFontFeatureSelectorDefaultKey: CFString
@available(OSX 10.5, *)
let kCTFontFeatureSelectorSettingKey: CFString
@available(OSX 10.5, *)
func CTFontCopyFeatures(font: CTFont) -> CFArray?
@available(OSX 10.5, *)
func CTFontCopyFeatureSettings(font: CTFont) -> CFArray?
@available(OSX 10.5, *)
func CTFontCopyGraphicsFont(font: CTFont, _ attributes: UnsafeMutablePointer<Unmanaged<CTFontDescriptor>?>) -> CGFont
@available(OSX 10.5, *)
func CTFontCreateWithGraphicsFont(graphicsFont: CGFont, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>, _ attributes: CTFontDescriptor?) -> CTFont
typealias ATSFontRef = UInt32
var ATSFONTREF_DEFINED: Int32 { get }
@available(OSX 10.5, *)
func CTFontGetPlatformFont(font: CTFont, _ attributes: UnsafeMutablePointer<Unmanaged<CTFontDescriptor>?>) -> ATSFontRef
@available(OSX 10.5, *)
func CTFontCreateWithPlatformFont(platformFont: ATSFontRef, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>, _ attributes: CTFontDescriptor?) -> CTFont?
@available(OSX 10.5, *)
func CTFontCreateWithQuickdrawInstance(name: ConstStr255Param, _ identifier: Int16, _ style: UInt8, _ size: CGFloat) -> CTFont
var kCTFontTableBASE: Int { get }
var kCTFontTableCFF: Int { get }
var kCTFontTableDSIG: Int { get }
var kCTFontTableEBDT: Int { get }
var kCTFontTableEBLC: Int { get }
var kCTFontTableEBSC: Int { get }
var kCTFontTableGDEF: Int { get }
var kCTFontTableGPOS: Int { get }
var kCTFontTableGSUB: Int { get }
var kCTFontTableJSTF: Int { get }
var kCTFontTableLTSH: Int { get }
var kCTFontTableMATH: Int { get }
var kCTFontTableOS2: Int { get }
var kCTFontTablePCLT: Int { get }
var kCTFontTableVDMX: Int { get }
var kCTFontTableVORG: Int { get }
var kCTFontTableZapf: Int { get }
var kCTFontTableAcnt: Int { get }
var kCTFontTableAnkr: Int { get }
var kCTFontTableAvar: Int { get }
var kCTFontTableBdat: Int { get }
var kCTFontTableBhed: Int { get }
var kCTFontTableBloc: Int { get }
var kCTFontTableBsln: Int { get }
var kCTFontTableCmap: Int { get }
var kCTFontTableCvar: Int { get }
var kCTFontTableCvt: Int { get }
var kCTFontTableFdsc: Int { get }
var kCTFontTableFeat: Int { get }
var kCTFontTableFmtx: Int { get }
var kCTFontTableFpgm: Int { get }
var kCTFontTableFvar: Int { get }
var kCTFontTableGasp: Int { get }
var kCTFontTableGlyf: Int { get }
var kCTFontTableGvar: Int { get }
var kCTFontTableHdmx: Int { get }
var kCTFontTableHead: Int { get }
var kCTFontTableHhea: Int { get }
var kCTFontTableHmtx: Int { get }
var kCTFontTableHsty: Int { get }
var kCTFontTableJust: Int { get }
var kCTFontTableKern: Int { get }
var kCTFontTableKerx: Int { get }
var kCTFontTableLcar: Int { get }
var kCTFontTableLtag: Int { get }
var kCTFontTableLoca: Int { get }
var kCTFontTableMaxp: Int { get }
var kCTFontTableMort: Int { get }
var kCTFontTableMorx: Int { get }
var kCTFontTableName: Int { get }
var kCTFontTableOpbd: Int { get }
var kCTFontTablePost: Int { get }
var kCTFontTablePrep: Int { get }
var kCTFontTableProp: Int { get }
var kCTFontTableSbit: Int { get }
var kCTFontTableSbix: Int { get }
var kCTFontTableTrak: Int { get }
var kCTFontTableVhea: Int { get }
var kCTFontTableVmtx: Int { get }
typealias CTFontTableTag = FourCharCode
struct CTFontTableOptions : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  @available(OSX 10.5, *)
  static var NoOptions: CTFontTableOptions { get }
}
@available(OSX 10.5, *)
func CTFontCopyAvailableTables(font: CTFont, _ options: CTFontTableOptions) -> CFArray?
@available(OSX 10.5, *)
func CTFontCopyTable(font: CTFont, _ table: CTFontTableTag, _ options: CTFontTableOptions) -> CFData?
@available(OSX 10.7, *)
func CTFontDrawGlyphs(font: CTFont, _ glyphs: UnsafePointer<CGGlyph>, _ positions: UnsafePointer<CGPoint>, _ count: Int, _ context: CGContext)
@available(OSX 10.5, *)
func CTFontGetLigatureCaretPositions(font: CTFont, _ glyph: CGGlyph, _ positions: UnsafeMutablePointer<CGFloat>, _ maxPositions: CFIndex) -> CFIndex
@available(OSX 10.8, *)
let kCTBaselineClassRoman: CFString
@available(OSX 10.8, *)
let kCTBaselineClassIdeographicCentered: CFString
@available(OSX 10.8, *)
let kCTBaselineClassIdeographicLow: CFString
@available(OSX 10.8, *)
let kCTBaselineClassIdeographicHigh: CFString
@available(OSX 10.8, *)
let kCTBaselineClassHanging: CFString
@available(OSX 10.8, *)
let kCTBaselineClassMath: CFString
@available(OSX 10.8, *)
let kCTBaselineReferenceFont: CFString
@available(OSX 10.8, *)
let kCTBaselineOriginalFont: CFString
@available(OSX 10.8, *)
func CTFontCopyDefaultCascadeListForLanguages(font: CTFont, _ languagePrefList: CFArray?) -> CFArray?
