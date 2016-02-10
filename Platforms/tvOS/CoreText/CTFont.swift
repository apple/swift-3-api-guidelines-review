
class CTFont {
}
@available(tvOS 3.2, *)
func CTFontGetTypeID() -> CFTypeID
@available(tvOS 3.2, *)
let kCTFontCopyrightNameKey: CFString
@available(tvOS 3.2, *)
let kCTFontFamilyNameKey: CFString
@available(tvOS 3.2, *)
let kCTFontSubFamilyNameKey: CFString
@available(tvOS 3.2, *)
let kCTFontStyleNameKey: CFString
@available(tvOS 3.2, *)
let kCTFontUniqueNameKey: CFString
@available(tvOS 3.2, *)
let kCTFontFullNameKey: CFString
@available(tvOS 3.2, *)
let kCTFontVersionNameKey: CFString
@available(tvOS 3.2, *)
let kCTFontPostScriptNameKey: CFString
@available(tvOS 3.2, *)
let kCTFontTrademarkNameKey: CFString
@available(tvOS 3.2, *)
let kCTFontManufacturerNameKey: CFString
@available(tvOS 3.2, *)
let kCTFontDesignerNameKey: CFString
@available(tvOS 3.2, *)
let kCTFontDescriptionNameKey: CFString
@available(tvOS 3.2, *)
let kCTFontVendorURLNameKey: CFString
@available(tvOS 3.2, *)
let kCTFontDesignerURLNameKey: CFString
@available(tvOS 3.2, *)
let kCTFontLicenseNameKey: CFString
@available(tvOS 3.2, *)
let kCTFontLicenseURLNameKey: CFString
@available(tvOS 3.2, *)
let kCTFontSampleTextNameKey: CFString
@available(tvOS 3.2, *)
let kCTFontPostScriptCIDNameKey: CFString
@available(tvOS 3.2, *)
func CTFontCreateWithName(name: CFString?, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>) -> CTFont
@available(tvOS 3.2, *)
func CTFontCreateWithFontDescriptor(descriptor: CTFontDescriptor, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>) -> CTFont
struct CTFontOptions : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var `default`: CTFontOptions { get }
  static var preventAutoActivation: CTFontOptions { get }
  static var preferSystemFont: CTFontOptions { get }
}
@available(tvOS 3.2, *)
func CTFontCreateWithNameAndOptions(name: CFString, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>, _ options: CTFontOptions) -> CTFont
@available(tvOS 3.2, *)
func CTFontCreateWithFontDescriptorAndOptions(descriptor: CTFontDescriptor, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>, _ options: CTFontOptions) -> CTFont
enum CTFontUIFontType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  @available(tvOS 6.0, *)
  case none
  @available(tvOS 6.0, *)
  case user
  @available(tvOS 6.0, *)
  case userFixedPitch
  @available(tvOS 6.0, *)
  case system
  @available(tvOS 6.0, *)
  case emphasizedSystem
  @available(tvOS 6.0, *)
  case smallSystem
  @available(tvOS 6.0, *)
  case smallEmphasizedSystem
  @available(tvOS 6.0, *)
  case miniSystem
  @available(tvOS 6.0, *)
  case miniEmphasizedSystem
  @available(tvOS 6.0, *)
  case views
  @available(tvOS 6.0, *)
  case application
  @available(tvOS 6.0, *)
  case label
  @available(tvOS 6.0, *)
  case menuTitle
  @available(tvOS 6.0, *)
  case menuItem
  @available(tvOS 6.0, *)
  case menuItemMark
  @available(tvOS 6.0, *)
  case menuItemCmdKey
  @available(tvOS 6.0, *)
  case windowTitle
  @available(tvOS 6.0, *)
  case pushButton
  @available(tvOS 6.0, *)
  case utilityWindowTitle
  @available(tvOS 6.0, *)
  case alertHeader
  @available(tvOS 6.0, *)
  case systemDetail
  @available(tvOS 6.0, *)
  case emphasizedSystemDetail
  @available(tvOS 6.0, *)
  case toolbar
  @available(tvOS 6.0, *)
  case smallToolbar
  @available(tvOS 6.0, *)
  case message
  @available(tvOS 6.0, *)
  case palette
  @available(tvOS 6.0, *)
  case toolTip
  @available(tvOS 6.0, *)
  case controlContent
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontNoFontType: CTFontUIFontType { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontUserFontType: CTFontUIFontType { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontUserFixedPitchFontType: CTFontUIFontType { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontSystemFontType: CTFontUIFontType { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontEmphasizedSystemFontType: CTFontUIFontType { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontSmallSystemFontType: CTFontUIFontType { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontSmallEmphasizedSystemFontType: CTFontUIFontType { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontMiniSystemFontType: CTFontUIFontType { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontMiniEmphasizedSystemFontType: CTFontUIFontType { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontViewsFontType: CTFontUIFontType { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontApplicationFontType: CTFontUIFontType { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontLabelFontType: CTFontUIFontType { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontMenuTitleFontType: CTFontUIFontType { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontMenuItemFontType: CTFontUIFontType { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontMenuItemMarkFontType: CTFontUIFontType { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontMenuItemCmdKeyFontType: CTFontUIFontType { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontWindowTitleFontType: CTFontUIFontType { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontPushButtonFontType: CTFontUIFontType { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontUtilityWindowTitleFontType: CTFontUIFontType { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontAlertHeaderFontType: CTFontUIFontType { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontSystemDetailFontType: CTFontUIFontType { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontEmphasizedSystemDetailFontType: CTFontUIFontType { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontToolbarFontType: CTFontUIFontType { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontSmallToolbarFontType: CTFontUIFontType { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontMessageFontType: CTFontUIFontType { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontPaletteFontType: CTFontUIFontType { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontToolTipFontType: CTFontUIFontType { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontControlContentFontType: CTFontUIFontType { get }
}
@available(tvOS 3.2, *)
func CTFontCreateUIFontForLanguage(uiType: CTFontUIFontType, _ size: CGFloat, _ language: CFString?) -> CTFont?
@available(tvOS 3.2, *)
func CTFontCreateCopyWithAttributes(font: CTFont, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>, _ attributes: CTFontDescriptor?) -> CTFont
@available(tvOS 3.2, *)
func CTFontCreateCopyWithSymbolicTraits(font: CTFont, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>, _ symTraitValue: CTFontSymbolicTraits, _ symTraitMask: CTFontSymbolicTraits) -> CTFont?
@available(tvOS 3.2, *)
func CTFontCreateCopyWithFamily(font: CTFont, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>, _ family: CFString) -> CTFont?
@available(tvOS 3.2, *)
func CTFontCreateForString(currentFont: CTFont, _ string: CFString, _ range: CFRange) -> CTFont
@available(tvOS 3.2, *)
func CTFontCopyFontDescriptor(font: CTFont) -> CTFontDescriptor
@available(tvOS 3.2, *)
func CTFontCopyAttribute(font: CTFont, _ attribute: CFString) -> CFTypeRef?
@available(tvOS 3.2, *)
func CTFontGetSize(font: CTFont) -> CGFloat
@available(tvOS 3.2, *)
func CTFontGetMatrix(font: CTFont) -> CGAffineTransform
@available(tvOS 3.2, *)
func CTFontGetSymbolicTraits(font: CTFont) -> CTFontSymbolicTraits
@available(tvOS 3.2, *)
func CTFontCopyTraits(font: CTFont) -> CFDictionary
@available(tvOS 3.2, *)
func CTFontCopyPostScriptName(font: CTFont) -> CFString
@available(tvOS 3.2, *)
func CTFontCopyFamilyName(font: CTFont) -> CFString
@available(tvOS 3.2, *)
func CTFontCopyFullName(font: CTFont) -> CFString
@available(tvOS 3.2, *)
func CTFontCopyDisplayName(font: CTFont) -> CFString
@available(tvOS 3.2, *)
func CTFontCopyName(font: CTFont, _ nameKey: CFString) -> CFString?
@available(tvOS 3.2, *)
func CTFontCopyLocalizedName(font: CTFont, _ nameKey: CFString, _ actualLanguage: UnsafeMutablePointer<Unmanaged<CFString>?>) -> CFString?
@available(tvOS 3.2, *)
func CTFontCopyCharacterSet(font: CTFont) -> CFCharacterSet
@available(tvOS 3.2, *)
func CTFontGetStringEncoding(font: CTFont) -> CFStringEncoding
@available(tvOS 3.2, *)
func CTFontCopySupportedLanguages(font: CTFont) -> CFArray
@available(tvOS 3.2, *)
func CTFontGetGlyphsForCharacters(font: CTFont, _ characters: UnsafePointer<UniChar>, _ glyphs: UnsafeMutablePointer<CGGlyph>, _ count: CFIndex) -> Bool
@available(tvOS 3.2, *)
func CTFontGetAscent(font: CTFont) -> CGFloat
@available(tvOS 3.2, *)
func CTFontGetDescent(font: CTFont) -> CGFloat
@available(tvOS 3.2, *)
func CTFontGetLeading(font: CTFont) -> CGFloat
@available(tvOS 3.2, *)
func CTFontGetUnitsPerEm(font: CTFont) -> UInt32
@available(tvOS 3.2, *)
func CTFontGetGlyphCount(font: CTFont) -> CFIndex
@available(tvOS 3.2, *)
func CTFontGetBoundingBox(font: CTFont) -> CGRect
@available(tvOS 3.2, *)
func CTFontGetUnderlinePosition(font: CTFont) -> CGFloat
@available(tvOS 3.2, *)
func CTFontGetUnderlineThickness(font: CTFont) -> CGFloat
@available(tvOS 3.2, *)
func CTFontGetSlantAngle(font: CTFont) -> CGFloat
@available(tvOS 3.2, *)
func CTFontGetCapHeight(font: CTFont) -> CGFloat
@available(tvOS 3.2, *)
func CTFontGetXHeight(font: CTFont) -> CGFloat
@available(tvOS 3.2, *)
func CTFontGetGlyphWithName(font: CTFont, _ glyphName: CFString) -> CGGlyph
@available(tvOS 3.2, *)
func CTFontGetBoundingRectsForGlyphs(font: CTFont, _ orientation: CTFontOrientation, _ glyphs: UnsafePointer<CGGlyph>, _ boundingRects: UnsafeMutablePointer<CGRect>, _ count: CFIndex) -> CGRect
@available(tvOS 6.0, *)
func CTFontGetOpticalBoundsForGlyphs(font: CTFont, _ glyphs: UnsafePointer<CGGlyph>, _ boundingRects: UnsafeMutablePointer<CGRect>, _ count: CFIndex, _ options: CFOptionFlags) -> CGRect
@available(tvOS 3.2, *)
func CTFontGetAdvancesForGlyphs(font: CTFont, _ orientation: CTFontOrientation, _ glyphs: UnsafePointer<CGGlyph>, _ advances: UnsafeMutablePointer<CGSize>, _ count: CFIndex) -> Double
@available(tvOS 3.2, *)
func CTFontGetVerticalTranslationsForGlyphs(font: CTFont, _ glyphs: UnsafePointer<CGGlyph>, _ translations: UnsafeMutablePointer<CGSize>, _ count: CFIndex)
@available(tvOS 3.2, *)
func CTFontCreatePathForGlyph(font: CTFont, _ glyph: CGGlyph, _ matrix: UnsafePointer<CGAffineTransform>) -> CGPath?
@available(tvOS 3.2, *)
let kCTFontVariationAxisIdentifierKey: CFString
@available(tvOS 3.2, *)
let kCTFontVariationAxisMinimumValueKey: CFString
@available(tvOS 3.2, *)
let kCTFontVariationAxisMaximumValueKey: CFString
@available(tvOS 3.2, *)
let kCTFontVariationAxisDefaultValueKey: CFString
@available(tvOS 3.2, *)
let kCTFontVariationAxisNameKey: CFString
@available(tvOS 3.2, *)
func CTFontCopyVariationAxes(font: CTFont) -> CFArray?
@available(tvOS 3.2, *)
func CTFontCopyVariation(font: CTFont) -> CFDictionary?
@available(tvOS 8.0, *)
let kCTFontOpenTypeFeatureTag: CFString
@available(tvOS 8.0, *)
let kCTFontOpenTypeFeatureValue: CFString
@available(tvOS 3.2, *)
let kCTFontFeatureTypeIdentifierKey: CFString
@available(tvOS 3.2, *)
let kCTFontFeatureTypeNameKey: CFString
@available(tvOS 3.2, *)
let kCTFontFeatureTypeExclusiveKey: CFString
@available(tvOS 3.2, *)
let kCTFontFeatureTypeSelectorsKey: CFString
@available(tvOS 3.2, *)
let kCTFontFeatureSelectorIdentifierKey: CFString
@available(tvOS 3.2, *)
let kCTFontFeatureSelectorNameKey: CFString
@available(tvOS 3.2, *)
let kCTFontFeatureSelectorDefaultKey: CFString
@available(tvOS 3.2, *)
let kCTFontFeatureSelectorSettingKey: CFString
@available(tvOS 3.2, *)
func CTFontCopyFeatures(font: CTFont) -> CFArray?
@available(tvOS 3.2, *)
func CTFontCopyFeatureSettings(font: CTFont) -> CFArray?
@available(tvOS 3.2, *)
func CTFontCopyGraphicsFont(font: CTFont, _ attributes: UnsafeMutablePointer<Unmanaged<CTFontDescriptor>?>) -> CGFont
@available(tvOS 3.2, *)
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
  @available(tvOS 3.2, *)
  static var noOptions: CTFontTableOptions { get }
}
@available(tvOS 3.2, *)
func CTFontCopyAvailableTables(font: CTFont, _ options: CTFontTableOptions) -> CFArray?
@available(tvOS 3.2, *)
func CTFontCopyTable(font: CTFont, _ table: CTFontTableTag, _ options: CTFontTableOptions) -> CFData?
@available(tvOS 4.2, *)
func CTFontDrawGlyphs(font: CTFont, _ glyphs: UnsafePointer<CGGlyph>, _ positions: UnsafePointer<CGPoint>, _ count: Int, _ context: CGContext)
@available(tvOS 3.2, *)
func CTFontGetLigatureCaretPositions(font: CTFont, _ glyph: CGGlyph, _ positions: UnsafeMutablePointer<CGFloat>, _ maxPositions: CFIndex) -> CFIndex
@available(tvOS 6.0, *)
let kCTBaselineClassRoman: CFString
@available(tvOS 6.0, *)
let kCTBaselineClassIdeographicCentered: CFString
@available(tvOS 6.0, *)
let kCTBaselineClassIdeographicLow: CFString
@available(tvOS 6.0, *)
let kCTBaselineClassIdeographicHigh: CFString
@available(tvOS 6.0, *)
let kCTBaselineClassHanging: CFString
@available(tvOS 6.0, *)
let kCTBaselineClassMath: CFString
@available(tvOS 6.0, *)
let kCTBaselineReferenceFont: CFString
@available(tvOS 6.0, *)
let kCTBaselineOriginalFont: CFString
@available(tvOS 6.0, *)
func CTFontCopyDefaultCascadeListForLanguages(font: CTFont, _ languagePrefList: CFArray?) -> CFArray?
