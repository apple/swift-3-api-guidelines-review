
class CTFont {
}
@available(iOS 3.2, *)
func CTFontGetTypeID() -> CFTypeID
@available(iOS 3.2, *)
let kCTFontCopyrightNameKey: CFString
@available(iOS 3.2, *)
let kCTFontFamilyNameKey: CFString
@available(iOS 3.2, *)
let kCTFontSubFamilyNameKey: CFString
@available(iOS 3.2, *)
let kCTFontStyleNameKey: CFString
@available(iOS 3.2, *)
let kCTFontUniqueNameKey: CFString
@available(iOS 3.2, *)
let kCTFontFullNameKey: CFString
@available(iOS 3.2, *)
let kCTFontVersionNameKey: CFString
@available(iOS 3.2, *)
let kCTFontPostScriptNameKey: CFString
@available(iOS 3.2, *)
let kCTFontTrademarkNameKey: CFString
@available(iOS 3.2, *)
let kCTFontManufacturerNameKey: CFString
@available(iOS 3.2, *)
let kCTFontDesignerNameKey: CFString
@available(iOS 3.2, *)
let kCTFontDescriptionNameKey: CFString
@available(iOS 3.2, *)
let kCTFontVendorURLNameKey: CFString
@available(iOS 3.2, *)
let kCTFontDesignerURLNameKey: CFString
@available(iOS 3.2, *)
let kCTFontLicenseNameKey: CFString
@available(iOS 3.2, *)
let kCTFontLicenseURLNameKey: CFString
@available(iOS 3.2, *)
let kCTFontSampleTextNameKey: CFString
@available(iOS 3.2, *)
let kCTFontPostScriptCIDNameKey: CFString
@available(iOS 3.2, *)
func CTFontCreateWithName(name: CFString?, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>) -> CTFont
@available(iOS 3.2, *)
func CTFontCreateWithFontDescriptor(descriptor: CTFontDescriptor, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>) -> CTFont
struct CTFontOptions : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var Default: CTFontOptions { get }
  static var PreventAutoActivation: CTFontOptions { get }
  static var PreferSystemFont: CTFontOptions { get }
}
@available(iOS 3.2, *)
func CTFontCreateWithNameAndOptions(name: CFString, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>, _ options: CTFontOptions) -> CTFont
@available(iOS 3.2, *)
func CTFontCreateWithFontDescriptorAndOptions(descriptor: CTFontDescriptor, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>, _ options: CTFontOptions) -> CTFont
enum CTFontUIFontType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  @available(iOS 6.0, *)
  case None
  @available(iOS 6.0, *)
  case User
  @available(iOS 6.0, *)
  case UserFixedPitch
  @available(iOS 6.0, *)
  case System
  @available(iOS 6.0, *)
  case EmphasizedSystem
  @available(iOS 6.0, *)
  case SmallSystem
  @available(iOS 6.0, *)
  case SmallEmphasizedSystem
  @available(iOS 6.0, *)
  case MiniSystem
  @available(iOS 6.0, *)
  case MiniEmphasizedSystem
  @available(iOS 6.0, *)
  case Views
  @available(iOS 6.0, *)
  case Application
  @available(iOS 6.0, *)
  case Label
  @available(iOS 6.0, *)
  case MenuTitle
  @available(iOS 6.0, *)
  case MenuItem
  @available(iOS 6.0, *)
  case MenuItemMark
  @available(iOS 6.0, *)
  case MenuItemCmdKey
  @available(iOS 6.0, *)
  case WindowTitle
  @available(iOS 6.0, *)
  case PushButton
  @available(iOS 6.0, *)
  case UtilityWindowTitle
  @available(iOS 6.0, *)
  case AlertHeader
  @available(iOS 6.0, *)
  case SystemDetail
  @available(iOS 6.0, *)
  case EmphasizedSystemDetail
  @available(iOS 6.0, *)
  case Toolbar
  @available(iOS 6.0, *)
  case SmallToolbar
  @available(iOS 6.0, *)
  case Message
  @available(iOS 6.0, *)
  case Palette
  @available(iOS 6.0, *)
  case ToolTip
  @available(iOS 6.0, *)
  case ControlContent
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTFontNoFontType: CTFontUIFontType { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTFontUserFontType: CTFontUIFontType { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTFontUserFixedPitchFontType: CTFontUIFontType { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTFontSystemFontType: CTFontUIFontType { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTFontEmphasizedSystemFontType: CTFontUIFontType { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTFontSmallSystemFontType: CTFontUIFontType { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTFontSmallEmphasizedSystemFontType: CTFontUIFontType { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTFontMiniSystemFontType: CTFontUIFontType { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTFontMiniEmphasizedSystemFontType: CTFontUIFontType { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTFontViewsFontType: CTFontUIFontType { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTFontApplicationFontType: CTFontUIFontType { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTFontLabelFontType: CTFontUIFontType { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTFontMenuTitleFontType: CTFontUIFontType { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTFontMenuItemFontType: CTFontUIFontType { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTFontMenuItemMarkFontType: CTFontUIFontType { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTFontMenuItemCmdKeyFontType: CTFontUIFontType { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTFontWindowTitleFontType: CTFontUIFontType { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTFontPushButtonFontType: CTFontUIFontType { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTFontUtilityWindowTitleFontType: CTFontUIFontType { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTFontAlertHeaderFontType: CTFontUIFontType { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTFontSystemDetailFontType: CTFontUIFontType { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTFontEmphasizedSystemDetailFontType: CTFontUIFontType { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTFontToolbarFontType: CTFontUIFontType { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTFontSmallToolbarFontType: CTFontUIFontType { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTFontMessageFontType: CTFontUIFontType { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTFontPaletteFontType: CTFontUIFontType { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTFontToolTipFontType: CTFontUIFontType { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTFontControlContentFontType: CTFontUIFontType { get }
}
@available(iOS 3.2, *)
func CTFontCreateUIFontForLanguage(uiType: CTFontUIFontType, _ size: CGFloat, _ language: CFString?) -> CTFont?
@available(iOS 3.2, *)
func CTFontCreateCopyWithAttributes(font: CTFont, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>, _ attributes: CTFontDescriptor?) -> CTFont
@available(iOS 3.2, *)
func CTFontCreateCopyWithSymbolicTraits(font: CTFont, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>, _ symTraitValue: CTFontSymbolicTraits, _ symTraitMask: CTFontSymbolicTraits) -> CTFont?
@available(iOS 3.2, *)
func CTFontCreateCopyWithFamily(font: CTFont, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>, _ family: CFString) -> CTFont?
@available(iOS 3.2, *)
func CTFontCreateForString(currentFont: CTFont, _ string: CFString, _ range: CFRange) -> CTFont
@available(iOS 3.2, *)
func CTFontCopyFontDescriptor(font: CTFont) -> CTFontDescriptor
@available(iOS 3.2, *)
func CTFontCopyAttribute(font: CTFont, _ attribute: CFString) -> CFTypeRef?
@available(iOS 3.2, *)
func CTFontGetSize(font: CTFont) -> CGFloat
@available(iOS 3.2, *)
func CTFontGetMatrix(font: CTFont) -> CGAffineTransform
@available(iOS 3.2, *)
func CTFontGetSymbolicTraits(font: CTFont) -> CTFontSymbolicTraits
@available(iOS 3.2, *)
func CTFontCopyTraits(font: CTFont) -> CFDictionary
@available(iOS 3.2, *)
func CTFontCopyPostScriptName(font: CTFont) -> CFString
@available(iOS 3.2, *)
func CTFontCopyFamilyName(font: CTFont) -> CFString
@available(iOS 3.2, *)
func CTFontCopyFullName(font: CTFont) -> CFString
@available(iOS 3.2, *)
func CTFontCopyDisplayName(font: CTFont) -> CFString
@available(iOS 3.2, *)
func CTFontCopyName(font: CTFont, _ nameKey: CFString) -> CFString?
@available(iOS 3.2, *)
func CTFontCopyLocalizedName(font: CTFont, _ nameKey: CFString, _ actualLanguage: UnsafeMutablePointer<Unmanaged<CFString>?>) -> CFString?
@available(iOS 3.2, *)
func CTFontCopyCharacterSet(font: CTFont) -> CFCharacterSet
@available(iOS 3.2, *)
func CTFontGetStringEncoding(font: CTFont) -> CFStringEncoding
@available(iOS 3.2, *)
func CTFontCopySupportedLanguages(font: CTFont) -> CFArray
@available(iOS 3.2, *)
func CTFontGetGlyphsForCharacters(font: CTFont, _ characters: UnsafePointer<UniChar>, _ glyphs: UnsafeMutablePointer<CGGlyph>, _ count: CFIndex) -> Bool
@available(iOS 3.2, *)
func CTFontGetAscent(font: CTFont) -> CGFloat
@available(iOS 3.2, *)
func CTFontGetDescent(font: CTFont) -> CGFloat
@available(iOS 3.2, *)
func CTFontGetLeading(font: CTFont) -> CGFloat
@available(iOS 3.2, *)
func CTFontGetUnitsPerEm(font: CTFont) -> UInt32
@available(iOS 3.2, *)
func CTFontGetGlyphCount(font: CTFont) -> CFIndex
@available(iOS 3.2, *)
func CTFontGetBoundingBox(font: CTFont) -> CGRect
@available(iOS 3.2, *)
func CTFontGetUnderlinePosition(font: CTFont) -> CGFloat
@available(iOS 3.2, *)
func CTFontGetUnderlineThickness(font: CTFont) -> CGFloat
@available(iOS 3.2, *)
func CTFontGetSlantAngle(font: CTFont) -> CGFloat
@available(iOS 3.2, *)
func CTFontGetCapHeight(font: CTFont) -> CGFloat
@available(iOS 3.2, *)
func CTFontGetXHeight(font: CTFont) -> CGFloat
@available(iOS 3.2, *)
func CTFontGetGlyphWithName(font: CTFont, _ glyphName: CFString) -> CGGlyph
@available(iOS 3.2, *)
func CTFontGetBoundingRectsForGlyphs(font: CTFont, _ orientation: CTFontOrientation, _ glyphs: UnsafePointer<CGGlyph>, _ boundingRects: UnsafeMutablePointer<CGRect>, _ count: CFIndex) -> CGRect
@available(iOS 6.0, *)
func CTFontGetOpticalBoundsForGlyphs(font: CTFont, _ glyphs: UnsafePointer<CGGlyph>, _ boundingRects: UnsafeMutablePointer<CGRect>, _ count: CFIndex, _ options: CFOptionFlags) -> CGRect
@available(iOS 3.2, *)
func CTFontGetAdvancesForGlyphs(font: CTFont, _ orientation: CTFontOrientation, _ glyphs: UnsafePointer<CGGlyph>, _ advances: UnsafeMutablePointer<CGSize>, _ count: CFIndex) -> Double
@available(iOS 3.2, *)
func CTFontGetVerticalTranslationsForGlyphs(font: CTFont, _ glyphs: UnsafePointer<CGGlyph>, _ translations: UnsafeMutablePointer<CGSize>, _ count: CFIndex)
@available(iOS 3.2, *)
func CTFontCreatePathForGlyph(font: CTFont, _ glyph: CGGlyph, _ matrix: UnsafePointer<CGAffineTransform>) -> CGPath?
@available(iOS 3.2, *)
let kCTFontVariationAxisIdentifierKey: CFString
@available(iOS 3.2, *)
let kCTFontVariationAxisMinimumValueKey: CFString
@available(iOS 3.2, *)
let kCTFontVariationAxisMaximumValueKey: CFString
@available(iOS 3.2, *)
let kCTFontVariationAxisDefaultValueKey: CFString
@available(iOS 3.2, *)
let kCTFontVariationAxisNameKey: CFString
@available(iOS 3.2, *)
func CTFontCopyVariationAxes(font: CTFont) -> CFArray?
@available(iOS 3.2, *)
func CTFontCopyVariation(font: CTFont) -> CFDictionary?
@available(iOS 8.0, *)
let kCTFontOpenTypeFeatureTag: CFString
@available(iOS 8.0, *)
let kCTFontOpenTypeFeatureValue: CFString
@available(iOS 3.2, *)
let kCTFontFeatureTypeIdentifierKey: CFString
@available(iOS 3.2, *)
let kCTFontFeatureTypeNameKey: CFString
@available(iOS 3.2, *)
let kCTFontFeatureTypeExclusiveKey: CFString
@available(iOS 3.2, *)
let kCTFontFeatureTypeSelectorsKey: CFString
@available(iOS 3.2, *)
let kCTFontFeatureSelectorIdentifierKey: CFString
@available(iOS 3.2, *)
let kCTFontFeatureSelectorNameKey: CFString
@available(iOS 3.2, *)
let kCTFontFeatureSelectorDefaultKey: CFString
@available(iOS 3.2, *)
let kCTFontFeatureSelectorSettingKey: CFString
@available(iOS 3.2, *)
func CTFontCopyFeatures(font: CTFont) -> CFArray?
@available(iOS 3.2, *)
func CTFontCopyFeatureSettings(font: CTFont) -> CFArray?
@available(iOS 3.2, *)
func CTFontCopyGraphicsFont(font: CTFont, _ attributes: UnsafeMutablePointer<Unmanaged<CTFontDescriptor>?>) -> CGFont
@available(iOS 3.2, *)
func CTFontCreateWithGraphicsFont(graphicsFont: CGFont, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>, _ attributes: CTFontDescriptor?) -> CTFont
typealias ATSFontRef = UInt32
var ATSFONTREF_DEFINED: Int32 { get }
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
  @available(iOS 3.2, *)
  static var NoOptions: CTFontTableOptions { get }
}
@available(iOS 3.2, *)
func CTFontCopyAvailableTables(font: CTFont, _ options: CTFontTableOptions) -> CFArray?
@available(iOS 3.2, *)
func CTFontCopyTable(font: CTFont, _ table: CTFontTableTag, _ options: CTFontTableOptions) -> CFData?
@available(iOS 4.2, *)
func CTFontDrawGlyphs(font: CTFont, _ glyphs: UnsafePointer<CGGlyph>, _ positions: UnsafePointer<CGPoint>, _ count: Int, _ context: CGContext)
@available(iOS 3.2, *)
func CTFontGetLigatureCaretPositions(font: CTFont, _ glyph: CGGlyph, _ positions: UnsafeMutablePointer<CGFloat>, _ maxPositions: CFIndex) -> CFIndex
@available(iOS 6.0, *)
let kCTBaselineClassRoman: CFString
@available(iOS 6.0, *)
let kCTBaselineClassIdeographicCentered: CFString
@available(iOS 6.0, *)
let kCTBaselineClassIdeographicLow: CFString
@available(iOS 6.0, *)
let kCTBaselineClassIdeographicHigh: CFString
@available(iOS 6.0, *)
let kCTBaselineClassHanging: CFString
@available(iOS 6.0, *)
let kCTBaselineClassMath: CFString
@available(iOS 6.0, *)
let kCTBaselineReferenceFont: CFString
@available(iOS 6.0, *)
let kCTBaselineOriginalFont: CFString
@available(iOS 6.0, *)
func CTFontCopyDefaultCascadeListForLanguages(font: CTFont, _ languagePrefList: CFArray?) -> CFArray?
