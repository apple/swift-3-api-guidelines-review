

/*!
    @function   CTGetCoreTextVersion
    @abstract   Returns the version of the CoreText framework.

    @discussion This function returns a number indicating the version of the
                CoreText framework. Note that framework version is not always
                an accurate indicator of feature availability. The recommended
                way to use this function is first to check that the function
                pointer is non-NULL, followed by calling it and comparing its
                result to a defined constant (or constants). For example, to
                determine whether the CoreText API is available:
                    if (&CTGetCoreTextVersion != NULL && CTGetCoreTextVersion() >= kCTVersionNumber10_5) {
                        // CoreText API is available
                    }

    @result     The version number. This value is for comparison with the
                constants beginning with kCTVersionNumber.
*/
@available(tvOS 3.2, *)
func CTGetCoreTextVersion() -> UInt32
var kCTVersionNumber10_5: Int32 { get }
var kCTVersionNumber10_5_2: Int32 { get }
var kCTVersionNumber10_5_3: Int32 { get }
var kCTVersionNumber10_5_5: Int32 { get }
var kCTVersionNumber10_6: Int32 { get }
var kCTVersionNumber10_7: Int32 { get }
var kCTVersionNumber10_8: Int32 { get }
var kCTVersionNumber10_9: Int32 { get }
var kCTVersionNumber10_10: Int32 { get }
var kCTVersionNumber10_11: Int32 { get }
typealias CTFontRef = CTFont

/*!
    @function   CTFontGetTypeID
    @abstract   Returns the type identifier for Core Text font references.
    @result     The identifier for the opaque type CTFontRef.
*/
@available(tvOS 3.2, *)
func CTFontGetTypeID() -> CFTypeID

/*!
    @defined    kCTFontCopyrightNameKey
    @abstract   The name specifier for the copyright name.
*/
@available(tvOS 3.2, *)
let kCTFontCopyrightNameKey: CFString

/*!
    @defined    kCTFontFamilyNameKey
    @abstract   The name specifier for the family name.
*/
@available(tvOS 3.2, *)
let kCTFontFamilyNameKey: CFString

/*!
    @defined    kCTFontSubFamilyNameKey
    @abstract   The name specifier for the subfamily name.
*/
@available(tvOS 3.2, *)
let kCTFontSubFamilyNameKey: CFString

/*!
    @defined    kCTFontStyleNameKey
    @abstract   The name specifier for the style name.
*/
@available(tvOS 3.2, *)
let kCTFontStyleNameKey: CFString

/*!
    @defined    kCTFontUniqueNameKey
    @abstract   The name specifier for the unique name.
    @discussion Note that this name is often not unique and should not be
                assumed to be truly unique.
*/
@available(tvOS 3.2, *)
let kCTFontUniqueNameKey: CFString

/*!
    @defined    kCTFontFullNameKey
    @abstract   The name specifier for the full name.
*/
@available(tvOS 3.2, *)
let kCTFontFullNameKey: CFString

/*!
    @defined    kCTFontVersionNameKey
    @abstract   The name specifier for the version name.
*/
@available(tvOS 3.2, *)
let kCTFontVersionNameKey: CFString

/*!
    @defined    kCTFontPostScriptNameKey
    @abstract   The name specifier for the Postscript name.
*/
@available(tvOS 3.2, *)
let kCTFontPostScriptNameKey: CFString

/*!
    @defined    kCTFontTrademarkNameKey
    @abstract   The name specifier for the trademark name.
*/
@available(tvOS 3.2, *)
let kCTFontTrademarkNameKey: CFString

/*!
    @defined    kCTFontManufacturerNameKey
    @abstract   The name specifier for the manufacturer name.
*/
@available(tvOS 3.2, *)
let kCTFontManufacturerNameKey: CFString

/*!
    @defined    kCTFontDesignerNameKey
    @abstract   The name specifier for the designer name.
*/
@available(tvOS 3.2, *)
let kCTFontDesignerNameKey: CFString

/*!
    @defined    kCTFontDescriptionNameKey
    @abstract   The name specifier for the description name.
*/
@available(tvOS 3.2, *)
let kCTFontDescriptionNameKey: CFString

/*!
    @defined    kCTFontVendorURLNameKey
    @abstract   The name specifier for the vendor url name.
*/
@available(tvOS 3.2, *)
let kCTFontVendorURLNameKey: CFString

/*!
    @defined    kCTFontDesignerURLNameKey
    @abstract   The name specifier for the designer url name.
*/
@available(tvOS 3.2, *)
let kCTFontDesignerURLNameKey: CFString

/*!
    @defined    kCTFontLicenseNameKey
    @abstract   The name specifier for the license name.
*/
@available(tvOS 3.2, *)
let kCTFontLicenseNameKey: CFString

/*!
    @defined    kCTFontLicenseURLNameKey
    @abstract   The name specifier for the license url name.
*/
@available(tvOS 3.2, *)
let kCTFontLicenseURLNameKey: CFString

/*!
    @defined    kCTFontSampleTextNameKey
    @abstract   The name specifier for the sample text name string.
*/
@available(tvOS 3.2, *)
let kCTFontSampleTextNameKey: CFString

/*!
    @defined    kCTFontPostScriptCIDNameKey
    @abstract   The name specifier for the Postscript CID name.
*/
@available(tvOS 3.2, *)
let kCTFontPostScriptCIDNameKey: CFString

/*!
    @function   CTFontCreateWithName
    @abstract   Returns a new font reference for the given name.

    @param      name
                The font name for which you wish to create a new font reference. A valid PostScript name is preferred, although other font name types will be matched in a fallback manner.

    @param      size
                The point size for the font reference. If 0.0 is specified, the default font size of 12.0 will be used.

    @param      matrix
                The transformation matrix for the font. If unspecified, the identity matrix will be used. Optional.

    @result     This function will return a CTFontRef that best matches the name provided with size and matrix attributes. The name parameter is the only required parameters, and default values will be used for unspecified parameters. A best match will be found if all parameters cannot be matched identically.
*/
@available(tvOS 3.2, *)
func CTFontCreateWithName(name: CFString?, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>) -> CTFont

/*!
    @function   CTFontCreateWithFontDescriptor
    @abstract   Returns a new font reference that best matches the font descriptor.

    @param      descriptor
                A font descriptor containing attributes that specify the requested font.

    @param      size
                The point size for the font reference. If 0.0 is specified, the default font size of 12.0 will be used.

    @param      matrix
                The transformation matrix for the font. If unspecified, the identity matrix will be used. Optional.

    @result     This function will return a CTFontRef that best matches the attributes provided with the font descriptor. The size and matrix parameters will override any specified in the font descriptor, unless they are unspecified. A best match font will always be returned, and default values will be used for any unspecified.
*/
@available(tvOS 3.2, *)
func CTFontCreateWithFontDescriptor(descriptor: CTFontDescriptor, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>) -> CTFont

/*!
    @enum       CTFontOptions
    @abstract   Options for descriptor match and font creation.
    @constant   kCTFontOptionsPreventAutoActivation
                Prevents automatic font activation from taking place.
    @constant   kCTFontOptionsPreferSystemFont
                Font matching will prefer to match Apple system fonts.
*/
struct CTFontOptions : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var Default: CTFontOptions { get }
  static var PreventAutoActivation: CTFontOptions { get }
  static var PreferSystemFont: CTFontOptions { get }
}

/*!
    @function   CTFontCreateWithNameAndOptions
    @abstract   Returns a new font reference for the given name.

    @param      name
                The font name for which you wish to create a new font reference. A valid PostScript name is preferred, although other font name types will be matched in a fallback manner.

    @param      size
                The point size for the font reference. If 0.0 is specified, the default font size of 12.0 will be used.

    @param      matrix
                The transformation matrix for the font. If unspecified, the identity matrix will be used. Optional.
                
    @param      options
                Options flags.

    @result     This function will return a CTFontRef that best matches the name provided with size and matrix attributes. The name parameter is the only required parameters, and default values will be used for unspecified parameters. A best match will be found if all parameters cannot be matched identically.
*/
@available(tvOS 3.2, *)
func CTFontCreateWithNameAndOptions(name: CFString, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>, _ options: CTFontOptions) -> CTFont

/*!
    @function   CTFontCreateWithFontDescriptorAndOptions
    @abstract   Returns a new font reference that best matches the font descriptor.

    @param      descriptor
                A font descriptor containing attributes that specify the requested font.

    @param      size
                The point size for the font reference. If 0.0 is specified, the default font size of 12.0 will be used.

    @param      matrix
                The transformation matrix for the font. If unspecified, the identity matrix will be used. Optional.

    @param      options
                Options flags.

    @result     This function will return a CTFontRef that best matches the attributes provided with the font descriptor. The size and matrix parameters will override any specified in the font descriptor, unless they are unspecified. A best match font will always be returned, and default values will be used for any unspecified.
*/
@available(tvOS 3.2, *)
func CTFontCreateWithFontDescriptorAndOptions(descriptor: CTFontDescriptor, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>, _ options: CTFontOptions) -> CTFont

/*!
    @enum       UI Type constants
    @abstract   These constants represent the specific user interface purpose to specify for font creation.
    @discussion Use these constants with CTFontCreateUIFontForLanguage to indicate the intended user interface usage of the font reference to be created.
*/
enum CTFontUIFontType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  @available(tvOS 6.0, *)
  case None
  @available(tvOS 6.0, *)
  case User
  @available(tvOS 6.0, *)
  case UserFixedPitch
  @available(tvOS 6.0, *)
  case System
  @available(tvOS 6.0, *)
  case EmphasizedSystem
  @available(tvOS 6.0, *)
  case SmallSystem
  @available(tvOS 6.0, *)
  case SmallEmphasizedSystem
  @available(tvOS 6.0, *)
  case MiniSystem
  @available(tvOS 6.0, *)
  case MiniEmphasizedSystem
  @available(tvOS 6.0, *)
  case Views
  @available(tvOS 6.0, *)
  case Application
  @available(tvOS 6.0, *)
  case Label
  @available(tvOS 6.0, *)
  case MenuTitle
  @available(tvOS 6.0, *)
  case MenuItem
  @available(tvOS 6.0, *)
  case MenuItemMark
  @available(tvOS 6.0, *)
  case MenuItemCmdKey
  @available(tvOS 6.0, *)
  case WindowTitle
  @available(tvOS 6.0, *)
  case PushButton
  @available(tvOS 6.0, *)
  case UtilityWindowTitle
  @available(tvOS 6.0, *)
  case AlertHeader
  @available(tvOS 6.0, *)
  case SystemDetail
  @available(tvOS 6.0, *)
  case EmphasizedSystemDetail
  @available(tvOS 6.0, *)
  case Toolbar
  @available(tvOS 6.0, *)
  case SmallToolbar
  @available(tvOS 6.0, *)
  case Message
  @available(tvOS 6.0, *)
  case Palette
  @available(tvOS 6.0, *)
  case ToolTip
  @available(tvOS 6.0, *)
  case ControlContent
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

/*!
    @function   CTFontCreateUIFontForLanguage
    @abstract   Returns the special UI font for the given language and UI type.

    @param      uiType
                A uiType constant specifying the intended UI use for the requested font reference.

    @param      size
                The point size for the font reference. If 0.0 is specified, the default size for the requested uiType is used.

    @param      language
                Language identifier to select a font for a particular localization. If unspecified, the current system language is used. The format of the language identifier should conform to UTS #35.

    @result     This function returns the correct font for various UI uses. The only required parameter is the uiType selector, unspecified optional parameters will use default values.
*/
@available(tvOS 3.2, *)
func CTFontCreateUIFontForLanguage(uiType: CTFontUIFontType, _ size: CGFloat, _ language: CFString?) -> CTFont?

/*!
    @function   CTFontCreateCopyWithAttributes
    @abstract   Returns a new font with additional attributes based on the original font.

    @discussion This function provides a mechanism to quickly change attributes on a given font reference in response to user actions. For instance, the size can be changed in response to a user manipulating a size slider.

    @param      font
                Original font reference to base new font on.

    @param      size
                The point size for the font reference. If 0.0 is specified, the original font's size will be preserved.

    @param      matrix
                The transformation matrix for the font. If unspecified, the original font matrix will be preserved. Optional.

    @param      attributes
                A font descriptor containing additional attributes that the new font should contain.

    @result     Returns a new font reference converted from the original with the specified attributes.
*/
@available(tvOS 3.2, *)
func CTFontCreateCopyWithAttributes(font: CTFont, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>, _ attributes: CTFontDescriptor?) -> CTFont

/*!
    @function   CTFontCreateCopyWithSymbolicTraits
    @abstract   Returns a new font based on the original font with the specified symbolic traits.

    @param      font
                Original font reference on which to base the new font.

    @param      size
                The point size for the font reference. If 0.0 is specified, the original font's size will be preserved.

    @param      matrix
                The transformation matrix for the font. If unspecified, the original font matrix will be preserved. Optional.

    @param      symTraitValue
                The value of the symbolic traits. This bitfield is used to indicate the desired value for the traits specified by the symTraitMask parameter. Used in conjunction, they can allow for trait removal as well as addition.

    @param      symTraitMask
                The mask bits of the symbolic traits. This bitfield is used to indicate the traits that should be changed.

    @result     Returns a new font reference in the same family with the given symbolic traits, or NULL if none found in the system.
*/
@available(tvOS 3.2, *)
func CTFontCreateCopyWithSymbolicTraits(font: CTFont, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>, _ symTraitValue: CTFontSymbolicTraits, _ symTraitMask: CTFontSymbolicTraits) -> CTFont?

/*!
    @function   CTFontCreateCopyWithFamily
    @abstract   Returns a new font in the specified family based on the traits of the original font.

    @param      font
                Original font reference to base new font on.

    @param      size
                The point size for the font reference. If 0.0 is specified, the original font's size will be preserved.

    @param      matrix
                The transformation matrix for the font. If unspecified, the original font matrix will be preserved. Optional.

    @param      family
                The name of the desired family.

    @result     Returns a new font reference with the original traits in the given family. NULL if non found in the system.
*/
@available(tvOS 3.2, *)
func CTFontCreateCopyWithFamily(font: CTFont, _ size: CGFloat, _ matrix: UnsafePointer<CGAffineTransform>, _ family: CFString) -> CTFont?

/*!
    @function   CTFontCreateForString
    @abstract   Returns a new font reference that can best map the given string range based on the current font.

    @discussion This function is to be used when the current font does not cover the given range of the string. The current font itself will not be returned, but preference is given to fonts in its cascade list.

    @param      currentFont
                The current font that contains a valid cascade list.

    @param      string
                A unicode string containing characters that cannot be encoded by the current font.

    @param      range
                A CFRange specifying the range of the string that needs to be mapped.

    @result     This function returns the best substitute font that can encode the specified string range.

    @seealso    CTFontCopyCharacterSet
    @seealso    CTFontGetGlyphsForCharacters
    @seealso    kCTFontCascadeListAttribute
*/
@available(tvOS 3.2, *)
func CTFontCreateForString(currentFont: CTFont, _ string: CFString, _ range: CFRange) -> CTFont

/*!
    @function   CTFontCopyFontDescriptor
    @abstract   Returns the normalized font descriptors for the given font reference.

    @param      font
                The font reference.

    @result     This function returns a normalized font descriptor for a font. The font descriptor contains enough information to recreate this font at a later time.
*/
@available(tvOS 3.2, *)
func CTFontCopyFontDescriptor(font: CTFont) -> CTFontDescriptor

/*!
    @function   CTFontCopyAttribute
    @abstract   Returns the value associated with an arbitrary attribute.

    @param      font
                The font reference.

    @param      attribute
                The requested attribute.

    @result     This function returns a retained reference to an arbitrary attribute. If the requested attribute is not present, NULL is returned. Refer to the attribute definitions for documentation as to how each attribute is packaged as a CFType.
*/
@available(tvOS 3.2, *)
func CTFontCopyAttribute(font: CTFont, _ attribute: CFString) -> AnyObject?

/*!
    @function   CTFontGetSize
    @abstract   Returns the point size of the font reference.

    @param      font
                The font reference.

    @result     This function returns the point size of the given font reference. This is the point size provided when the font was created.
*/
@available(tvOS 3.2, *)
func CTFontGetSize(font: CTFont) -> CGFloat

/*!
    @function   CTFontGetMatrix
    @abstract   Returns the transformation matrix of the font.

    @param      font
                The font reference.

    @result     This function returns the transformation matrix for this given font reference. This is the matrix that was provided when the font was created.
*/
@available(tvOS 3.2, *)
func CTFontGetMatrix(font: CTFont) -> CGAffineTransform

/*!
    @function   CTFontGetSymbolicTraits
    @abstract   Returns the symbolic font traits.

    @param      font
                The font reference.

    @result     This function returns the symbolic traits of the font. This is equivalent to the kCTFontSymbolicTrait of traits dictionary. See CTFontTraits.h for a definition of the font traits.
*/
@available(tvOS 3.2, *)
func CTFontGetSymbolicTraits(font: CTFont) -> CTFontSymbolicTraits

/*!
    @function   CTFontCopyTraits
    @abstract   Returns the font traits dictionary.

    @param      font
                The font reference.

    @result     This function returns a retained reference to the font traits dictionary. Individual traits can be accessed with the trait key constants. See CTFontTraits.h for a definition of the font traits.
*/
@available(tvOS 3.2, *)
func CTFontCopyTraits(font: CTFont) -> CFDictionary

/*!
    @function   CTFontCopyPostScriptName
    @abstract   Returns the PostScript name.

    @param      font
                The font reference.

    @result     This function returns a retained reference to the PostScript name of the font.
*/
@available(tvOS 3.2, *)
func CTFontCopyPostScriptName(font: CTFont) -> CFString

/*!
    @function   CTFontCopyFamilyName
    @abstract   Returns the family name.

    @param      font
                The font reference.

    @result     This function returns a retained reference to the family name of the font.
*/
@available(tvOS 3.2, *)
func CTFontCopyFamilyName(font: CTFont) -> CFString

/*!
    @function   CTFontCopyFullName
    @abstract   Returns the display name.

    @param      font
                The font reference.

    @result     This function returns a retained reference to the full name of the font.
*/
@available(tvOS 3.2, *)
func CTFontCopyFullName(font: CTFont) -> CFString

/*!
    @function   CTFontCopyDisplayName
    @abstract   Returns the display name.

    @param      font
                The font reference.

    @result     This function returns a retained reference to the localized display name of the font.
*/
@available(tvOS 3.2, *)
func CTFontCopyDisplayName(font: CTFont) -> CFString

/*!
    @function   CTFontCopyName
    @abstract   Returns a reference to the requested name.

    @param      font
                The font reference.

    @param      nameKey
                The name specifier. See name specifier constants.

    @result     This function creates the requested name for the font, or NULL if the font does not have an entry for the requested name. The Unicode version of the name will be preferred, otherwise the first available will be used.
*/
@available(tvOS 3.2, *)
func CTFontCopyName(font: CTFont, _ nameKey: CFString) -> CFString?

/*!
    @function   CTFontCopyLocalizedName
    @abstract   Returns a reference to a localized font name.

    @param      font
                The font reference.

    @param      nameKey
                The name specifier. See name specifier constants.

    @param      actualLanguage
                Pointer to a CFStringRef to receive the language identifier of the returned name string. The format of the language identifier will conform to UTS #35.
                If CoreText can supply its own localized string where the font cannot, this value will be NULL.

    @result     This function returns a specific localized name from the font reference. The name is localized based on the user's global language precedence. If the font does not have an entry for the requested name, NULL will be returned. The matched language will be returned in the caller's buffer.
*/
@available(tvOS 3.2, *)
func CTFontCopyLocalizedName(font: CTFont, _ nameKey: CFString, _ actualLanguage: UnsafeMutablePointer<Unmanaged<CFString>?>) -> CFString?

/*!
    @function   CTFontCopyCharacterSet
    @abstract   Returns the Unicode character set of the font.

    @param      font
                The font reference.

    @result     This function returns a retained reference to the font's character set. This character set covers the nominal referenced by the font's Unicode cmap table (or equivalent).
*/
@available(tvOS 3.2, *)
func CTFontCopyCharacterSet(font: CTFont) -> CFCharacterSet

/*!
    @function   CTFontGetStringEncoding
    @abstract   Returns the best string encoding for legacy format support.

    @param      font
                The font reference.

    @result     This function returns the best string encoding for the font.
*/
@available(tvOS 3.2, *)
func CTFontGetStringEncoding(font: CTFont) -> CFStringEncoding

/*!
    @function   CTFontCopySupportedLanguages
    @abstract   Returns an array of languages supported by the font.

    @param      font
                The font reference.

    @result     This function returns a retained reference to an array of languages supported by the font. The array contains language identifier strings as CFStringRefs. The format of the language identifier will conform to UTS #35.
*/
@available(tvOS 3.2, *)
func CTFontCopySupportedLanguages(font: CTFont) -> CFArray

/*!
    @function   CTFontGetGlyphsForCharacters
    @abstract   Performs basic character-to-glyph mapping.

    @discussion This function only provides the nominal mapping as specified by the font's Unicode cmap (or equivalent); such mapping does not constitute proper Unicode layout: it is the caller's responsibility to handle the Unicode properties of the characters.

    @param      font
                The font reference.

    @param      characters
                An array of characters (UTF-16 code units). Non-BMP characters must be encoded as surrogate pairs.

    @param      glyphs
                A pointer to a buffer to receive the glyphs. Glyphs for non-BMP characters are sparse: the first glyph corresponds to the full character and the second glyph will be 0.

    @param      count
                The capacity of both the characters and glyphs arrays.

    @result     The return value indicates whether all provided characters were successfully mapped. A return value of true indicates that the font mapped all characters. A return value of false indicates that some or all of the characters were not mapped; glyphs for unmapped characters will be 0 (with the exception of those corresponding non-BMP characters as described above).

    @seealso    CTFontCopyCharacterSet
*/
@available(tvOS 3.2, *)
func CTFontGetGlyphsForCharacters(font: CTFont, _ characters: UnsafePointer<UniChar>, _ glyphs: UnsafeMutablePointer<CGGlyph>, _ count: CFIndex) -> Bool

/*!
    @function   CTFontGetAscent
    @abstract   Returns the scaled font ascent metric.

    @param      font
                The font reference.

    @result     This function returns the font ascent metric scaled based on the point size and matrix of the font reference.
*/
@available(tvOS 3.2, *)
func CTFontGetAscent(font: CTFont) -> CGFloat

/*!
    @function   CTFontGetDescent
    @abstract   Returns the scaled font descent metric.

    @param      font
                The font reference.

    @result     This function returns the font descent metric scaled based on the point size and matrix of the font reference.
*/
@available(tvOS 3.2, *)
func CTFontGetDescent(font: CTFont) -> CGFloat

/*!
    @function   CTFontGetLeading
    @abstract   Returns the scaled font leading metric.

    @param      font
                The font reference.

    @result     This function returns the font leading metric scaled based on the point size and matrix of the font reference.
*/
@available(tvOS 3.2, *)
func CTFontGetLeading(font: CTFont) -> CGFloat

/*!
    @function   CTFontGetUnitsPerEm
    @abstract   Returns the units per em metric.

    @param      font
                The font reference.

    @result     This function returns the units per em of the font.
*/
@available(tvOS 3.2, *)
func CTFontGetUnitsPerEm(font: CTFont) -> UInt32

/*!
    @function   CTFontGetGlyphCount
    @abstract   Returns the number of glyphs.

    @param      font
                The font reference.

    @result     This function returns the number of glyphs in the font.
*/
@available(tvOS 3.2, *)
func CTFontGetGlyphCount(font: CTFont) -> CFIndex

/*!
    @function   CTFontGetBoundingBox
    @abstract   Returns the scaled bounding box.

    @param      font
                The font reference.

    @result     This will return the design bounding box of the font, which is the rectangle defined by xMin, yMin, xMax, and yMax values for the font.
*/
@available(tvOS 3.2, *)
func CTFontGetBoundingBox(font: CTFont) -> CGRect

/*!
    @function   CTFontGetUnderlinePosition
    @abstract   Returns the scaled underline position.

    @param      font
                The font reference.

    @result     This function returns the font underline position metric scaled based on the point size and matrix of the font reference.
*/
@available(tvOS 3.2, *)
func CTFontGetUnderlinePosition(font: CTFont) -> CGFloat

/*!
    @function   CTFontGetUnderlineThickness
    @abstract   Returns the scaled underline thickness metric.

    @param      font
                The font reference.

    @result     This function returns the font underline thickness metric scaled based on the point size and matrix of the font reference.
*/
@available(tvOS 3.2, *)
func CTFontGetUnderlineThickness(font: CTFont) -> CGFloat

/*!
    @function   CTFontGetSlantAngle
    @abstract   Returns the slant angle of the font.

    @param      font
                The font reference.

    @result     This function returns the transformed slant angle of the font. This is equivalent to the italic or caret angle with any skew from the transformation matrix applied.
*/
@available(tvOS 3.2, *)
func CTFontGetSlantAngle(font: CTFont) -> CGFloat

/*!
    @function   CTFontGetCapHeight
    @abstract   Returns the cap height metric.

    @param      font
                The font reference.

    @result     This function returns the font cap height metric scaled based on the point size and matrix of the font reference.
*/
@available(tvOS 3.2, *)
func CTFontGetCapHeight(font: CTFont) -> CGFloat

/*!
    @function   CTFontGetXHeight
    @abstract   Returns the X height metric.

    @param      font
                The font reference.

    @result     This function returns the font X height metric scaled based on the point size and matrix of the font reference.
*/
@available(tvOS 3.2, *)
func CTFontGetXHeight(font: CTFont) -> CGFloat

/*!
    @function   CTFontGetGlyphWithName
    @abstract   Returns the CGGlyph for the specified glyph name.

    @param      font
                The font reference.

    @param      glyphName
                The glyph name as a CFString.

    @result     The glyph with the specified name or 0 if the name is not recognized; this glyph can be used with other Core Text glyph data accessors or with Quartz.
*/
@available(tvOS 3.2, *)
func CTFontGetGlyphWithName(font: CTFont, _ glyphName: CFString) -> CGGlyph

/*!
    @function   CTFontGetBoundingRectsForGlyphs
    @abstract   Calculates the bounding rects for an array of glyphs and returns the overall bounding rect for the run.

    @param      font
                The font reference.

    @param      orientation
                The intended drawing orientation of the glyphs. Used to determined which glyph metrics to return.

    @param      glyphs
                An array of count number of glyphs.

    @param      boundingRects
                An array of count number of CGRects to receive the computed glyph rects. Can be NULL, in which case only the overall bounding rect is calculated.

    @param      count
                The capacity of the glyphs and boundingRects buffers.

    @result     This function returns the overall bounding rectangle for an array or run of glyphs. The bounding rects of the individual glyphs are returned through the boundingRects parameter. These are the design metrics from the font transformed in font space.
*/
@available(tvOS 3.2, *)
func CTFontGetBoundingRectsForGlyphs(font: CTFont, _ orientation: CTFontOrientation, _ glyphs: UnsafePointer<CGGlyph>, _ boundingRects: UnsafeMutablePointer<CGRect>, _ count: CFIndex) -> CGRect

/*!
    @function   CTFontGetOpticalBoundsForGlyphs
    @abstract   Calculates the optical bounding rects for an array of glyphs and returns the overall optical bounding rect for the run.

    @discussion Fonts may specify the optical edges of glyphs that can be used to make the edges of lines of text line up in a more visually pleasing way. This function returns bounding rects corresponding to this information if present in a font, otherwise it returns typographic bounding rects (composed of the font's ascent and descent and a glyph's advance width).

    @param      font
                The font reference.

    @param      glyphs
                An array of count number of glyphs.

    @param      boundingRects
                An array of count number of CGRects to receive the computed glyph rects. Can be NULL, in which case only the overall bounding rect is calculated.

    @param      count
                The capacity of the glyphs and boundingRects buffers.

    @param      options
                Reserved, set to zero.

    @result     This function returns the overall bounding rectangle for an array or run of glyphs. The bounding rects of the individual glyphs are returned through the boundingRects parameter. These are the design metrics from the font transformed in font space.
*/
@available(tvOS 6.0, *)
func CTFontGetOpticalBoundsForGlyphs(font: CTFont, _ glyphs: UnsafePointer<CGGlyph>, _ boundingRects: UnsafeMutablePointer<CGRect>, _ count: CFIndex, _ options: CFOptionFlags) -> CGRect

/*!
    @function   CTFontGetAdvancesForGlyphs
    @abstract   Calculates the advances for an array of glyphs and returns the summed advance.

    @param      font
                The font reference.

    @param      orientation
                The intended drawing orientation of the glyphs. Used to determined which glyph metrics to return.

    @param      glyphs
                An array of count number of glyphs.

    @param      advances
                An array of count number of CGSize to receive the computed glyph advances. Can be NULL, in which case only the overall advance is calculated.

    @param      count
                The capacity of the glyphs and advances buffers.

    @result     This function returns the summed glyph advance of an array of glyphs. Individual glyph advances are passed back via the advances parameter. These are the ideal metrics for each glyph scaled and transformed in font space.
*/
@available(tvOS 3.2, *)
func CTFontGetAdvancesForGlyphs(font: CTFont, _ orientation: CTFontOrientation, _ glyphs: UnsafePointer<CGGlyph>, _ advances: UnsafeMutablePointer<CGSize>, _ count: CFIndex) -> Double

/*!
    @function   CTFontGetVerticalTranslationsForGlyphs
    @abstract   Calculates the offset from the default (horizontal) origin to the vertical origin for an array of glyphs.

    @param      font
                The font reference.

    @param      glyphs
                An array of count number of glyphs.

    @param      translations
                An array of count number of CGSize to receive the computed origin offsets.

    @param      count
                The capacity of the glyphs and translations buffers.
*/
@available(tvOS 3.2, *)
func CTFontGetVerticalTranslationsForGlyphs(font: CTFont, _ glyphs: UnsafePointer<CGGlyph>, _ translations: UnsafeMutablePointer<CGSize>, _ count: CFIndex)

/*!
    @function   CTFontCreatePathForGlyph
    @abstract   Creates a path for the specified glyph.

    @discussion Creates a path from the outlines of the glyph for the specified font. The path will reflect the font point size, matrix, and transform parameter, in that order. The transform parameter will most commonly be used to provide a translation to the desired glyph origin.

    @param      font
                The font reference.

    @param      glyph
                The glyph.

    @param      transform
                An affine transform applied to the path. Can be NULL, in which case CGAffineTransformIdentity will be used.

    @result     A retained CGPath reference containing the glyph outlines or NULL if there is no such glyph or it has no outline.
*/
@available(tvOS 3.2, *)
func CTFontCreatePathForGlyph(font: CTFont, _ glyph: CGGlyph, _ matrix: UnsafePointer<CGAffineTransform>) -> CGPath?

/*!
    @defined    kCTFontVariationAxisIdentifierKey
    @abstract   Key to get the variation axis identifier.
    @discussion This key is used with a variation axis dictionary to get the axis identifier value as a CFNumberRef.
*/
@available(tvOS 3.2, *)
let kCTFontVariationAxisIdentifierKey: CFString

/*!
    @defined    kCTFontVariationAxisMinimumValueKey
    @abstract   Key to get the variation axis minimum value.
    @discussion This key is used with a variation axis dictionary to get the minimum axis value as a CFNumberRef.
*/
@available(tvOS 3.2, *)
let kCTFontVariationAxisMinimumValueKey: CFString

/*!
    @defined    kCTFontVariationAxisMaximumValueKey
    @abstract   Key to get the variation axis maximum value.
    @discussion This key is used with a variation axis dictionary to get the maximum axis value as a CFNumberRef.
*/
@available(tvOS 3.2, *)
let kCTFontVariationAxisMaximumValueKey: CFString

/*!
    @defined    kCTFontVariationAxisDefaultValueKey
    @abstract   Key to get the variation axis default value.
    @discussion This key is used with a variation axis dictionary to get the default axis value as a CFNumberRef.
*/
@available(tvOS 3.2, *)
let kCTFontVariationAxisDefaultValueKey: CFString

/*!
    @defined    kCTFontVariationAxisNameKey
    @abstract   Key to get the variation axis name string.
    @discussion This key is used with a variation axis dictionary to get the localized variation axis name.
*/
@available(tvOS 3.2, *)
let kCTFontVariationAxisNameKey: CFString

/*!
    @function   CTFontCopyVariationAxes
    @abstract   Returns an array of variation axes.

    @param      font
                The font reference.

    @result     This function returns an array of variation axis dictionaries. Each variation axis dictionary contains the five variation axis keys above.
*/
@available(tvOS 3.2, *)
func CTFontCopyVariationAxes(font: CTFont) -> CFArray?

/*!
    @function   CTFontCopyVariation
    @abstract   Returns a variation dictionary from the font reference.

    @param      font
                The font reference.

    @result     This function returns the current variation instance as a dictionary. The keys for each variation correspond to the variation identifier obtained via kCTFontVariationAxisIdentifierKey which represents the axis' four character code as a CFNumber.
*/
@available(tvOS 3.2, *)
func CTFontCopyVariation(font: CTFont) -> CFDictionary?

/*!
    @defined    kCTFontOpenTypeFeatureTag
    @abstract   Key to get the OpenType feature tag.
    @discussion This key can be used with a font feature dictionary to get the tag as a CFStringRef.
*/
@available(tvOS 8.0, *)
let kCTFontOpenTypeFeatureTag: CFString

/*!
    @defined    kCTFontOpenTypeFeatureValue
    @abstract   Key to get the OpenType feature value.
    @discussion This key can be used with a font feature dictionary to get the value as a CFNumberRef.
*/
@available(tvOS 8.0, *)
let kCTFontOpenTypeFeatureValue: CFString

/*!
    @defined    kCTFontFeatureTypeIdentifierKey
    @abstract   Key to get the font feature type value.
    @discussion This key can be used with a font feature dictionary to get the type identifier as a CFNumberRef.
*/
@available(tvOS 3.2, *)
let kCTFontFeatureTypeIdentifierKey: CFString

/*!
    @defined    kCTFontFeatureTypeNameKey
    @abstract   Key to get the font feature name.
    @discussion This key can be used with a font feature dictionary to get the localized type name string as a CFString.
*/
@available(tvOS 3.2, *)
let kCTFontFeatureTypeNameKey: CFString

/*!
    @defined    kCTFontFeatureTypeExclusiveKey
    @abstract   Key to get the font feature exclusive setting.
    @discussion This key can be used with a font feature dictionary to get the the exclusive setting of the feature as a CFBoolean. The value associated with this key indicates whether the feature selectors associated with this type should be mutually exclusive.
*/
@available(tvOS 3.2, *)
let kCTFontFeatureTypeExclusiveKey: CFString

/*!
    @defined    kCTFontFeatureTypeSelectorsKey
    @abstract   Key to get the font feature selectors.
    @discussion This key can be used with a font feature dictionary to get the array of font feature selectors as a CFArrayRef. This is an array of selector dictionaries that contain the values for the following selector keys.
*/
@available(tvOS 3.2, *)
let kCTFontFeatureTypeSelectorsKey: CFString

/*!
    @defined    kCTFontFeatureSelectorIdentifierKey
    @abstract   Key to get the font feature selector identifier.
    @discussion This key can be used with a selector dictionary corresponding to a feature type to obtain the selector identifier value as a CFNumberRef.
*/
@available(tvOS 3.2, *)
let kCTFontFeatureSelectorIdentifierKey: CFString

/*!
    @defined    kCTFontFeatureSelectorNameKey
    @abstract   Key to get the font feature selector name.
    @discussion This key is used with a selector dictionary to get the localized name string for the selector as a CFStringRef.
*/
@available(tvOS 3.2, *)
let kCTFontFeatureSelectorNameKey: CFString

/*!
    @defined    kCTFontFeatureSelectorDefaultKey
    @abstract   Key to get the font feature selector default setting value.
    @discussion This key is used with a selector dictionary to get the default indicator for the selector. This value is a CFBooleanRef which if present and true indicates that this selector is the default setting for the current feature type.
*/
@available(tvOS 3.2, *)
let kCTFontFeatureSelectorDefaultKey: CFString

/*!
    @defined    kCTFontFeatureSelectorSettingKey
    @abstract   Key to get or specify the current feature setting.
    @discussion This key is used with a selector dictionary to get or specify the current setting for the selector. This value is a CFBooleanRef to indicate whether this selector is on or off. If this key is not present, the default setting is used.
*/
@available(tvOS 3.2, *)
let kCTFontFeatureSelectorSettingKey: CFString

/*!
    @function   CTFontCopyFeatures
    @abstract   Returns an array of font features

    @param      font
                The font reference.

    @result     This function returns an array of font feature dictionaries for the font reference.
*/
@available(tvOS 3.2, *)
func CTFontCopyFeatures(font: CTFont) -> CFArray?

/*!
    @function   CTFontCopyFeatureSettings
    @abstract   Returns an array of font feature setting tuples

    @discussion A setting tuple is a dictionary of a kCTFontFeatureTypeIdentifierKey key-value pair and a kCTFontFeatureSelectorIdentifierKey key-value pair. Each tuple corresponds to an enabled non-default setting. It is the caller's responsibility to handle exclusive and non-exclusive settings as necessary.

    @param      font
                The font reference.

    @result     This function returns a normalized array of font feature setting dictionaries. The array will only contain the non-default settings that should be applied to the font, or NULL if the default settings should be used.
*/
@available(tvOS 3.2, *)
func CTFontCopyFeatureSettings(font: CTFont) -> CFArray?

/*!
    @function   CTFontCopyGraphicsFont
    @abstract   Returns a CGFontRef and attributes.

    @param      font
                The font reference.

    @param      attributes
                A pointer to a CTFontDescriptorRef to receive a font descriptor containing additional attributes. Can be NULL. Must be released by caller.

    @result     This function returns a CGFontRef for the given font reference. Additional attributes from the font will be passed back as a font descriptor via the attributes parameter. The result must be released by the caller.
*/
@available(tvOS 3.2, *)
func CTFontCopyGraphicsFont(font: CTFont, _ attributes: UnsafeMutablePointer<Unmanaged<CTFontDescriptor>?>) -> CGFont

/*!
    @function   CTFontCreateWithGraphicsFont
    @abstract   Creates a new font reference from a CGFontRef.

    @param      graphicsFont
                A valid CGFontRef.

    @param      size
                The point size for the font reference. If 0.0 is specified, the default font size of 12.0 will be used.

    @param      matrix
                The transformation matrix for the font. If unspecified, the identity matrix will be used. Optional.

    @param      attributes
                A CTFontDescriptorRef containing additional attributes that should be matched. Optional.

    @result     This function returns a new font reference for an existing CGFontRef with the specified size, matrix, and additional attributes.
*/
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
  static var NoOptions: CTFontTableOptions { get }
}

/*!
    @function   CTFontCopyAvailableTables
    @abstract   Returns an array of font table tags.

    @param      font
                The font reference.

    @param      options

    @result     This function returns an array of CTFontTableTag values for the given font and the supplied options. The returned set will contain unboxed values, which may be extracted like so:
                <code>CTFontTableTag tag = (CTFontTableTag)(uintptr_t)CFArrayGetValueAtIndex(tags, index);</code>
*/
@available(tvOS 3.2, *)
func CTFontCopyAvailableTables(font: CTFont, _ options: CTFontTableOptions) -> CFArray?

/*!
    @function   CTFontCopyTable
    @abstract   Returns a reference to the font table data.

    @param      font
                The font reference.

    @param      table
                The font table identifier as a CTFontTableTag.

    @param      options

    @result     This function returns a retained reference to the font table data as CFDataRef or NULL if the table is not present.
*/
@available(tvOS 3.2, *)
func CTFontCopyTable(font: CTFont, _ table: CTFontTableTag, _ options: CTFontTableOptions) -> CFData?

/*!
    @function   CTFontDrawGlyphs
    @abstract   Renders the given glyphs from the CTFont at the given positions in the CGContext.
    @discussion This function will modify the CGContext's font, text size, and text matrix if specified in the CTFont. These attributes will not be restored.
        The given glyphs should be the result of proper Unicode text layout operations (such as CTLine). Results from CTFontGetGlyphsForCharacters (or similar APIs) do not perform any Unicode text layout.

    @param      font
                The font to render glyphs from. If the font has a size or matrix attribute, the CGContext will be set with these values.

    @param      glyphs
                The glyphs to be rendered. See above discussion of how the glyphs should be derived.

    @param      positions
                The positions (origins) for each glyph. The positions are in user space. The number of positions passed in must be equivalent to the number of glyphs.

    @param      count
                The number of glyphs to be rendered from the glyphs array.

    @param      context
                CGContext used to render the glyphs.

    @result     void
*/
@available(tvOS 4.2, *)
func CTFontDrawGlyphs(font: CTFont, _ glyphs: UnsafePointer<CGGlyph>, _ positions: UnsafePointer<CGPoint>, _ count: Int, _ context: CGContext)

/*!
    @function   CTFontGetLigatureCaretPositions
    @abstract   Returns caret positions within a glyph.
    @discussion This function is used to obtain caret positions for a specific glyph.
                The return value is the max number of positions possible, and the function
                will populate the caller's positions buffer with available positions if possible.
                This function may not be able to produce positions if the font does not
                have the appropriate data, in which case it will return 0.
 
    @param      font
                The font reference.
    
    @param      glyph
                The glyph.
 
    @param      positions
                A buffer of at least maxPositions to receive the ligature caret positions for
                the glyph.
 
    @param      maxPositions
                The maximum number of positions to return.
 
    @result     Returns the number of caret positions for the specified glyph.
*/
@available(tvOS 3.2, *)
func CTFontGetLigatureCaretPositions(font: CTFont, _ glyph: CGGlyph, _ positions: UnsafeMutablePointer<CGFloat>, _ maxPositions: CFIndex) -> CFIndex

/*!
    @defined    kCTBaselineClassRoman

    @abstract   Key to reference the Roman baseline class.
 
    @discussion This key can be used with a baseline info dictionary to offset to the Roman baseline as a CFNumberRef float. It can also be used as the value for kCTBaselineClassAttributeName.
*/
@available(tvOS 6.0, *)
let kCTBaselineClassRoman: CFString

/*!
    @defined    kCTBaselineClassIdeographicCentered
 
    @abstract   Key to reference the Ideographic Centered baseline class.
 
    @discussion This key can be used with a baseline info dictionary to offset to the Ideographic Centered baseline as a CFNumberRef float. It can also be used as the value for kCTBaselineClassAttributeName.
*/
@available(tvOS 6.0, *)
let kCTBaselineClassIdeographicCentered: CFString

/*!
    @defined    kCTBaselineClassIdeographicLow
 
    @abstract   Key to reference the Ideographic Low baseline class.
 
    @discussion This key can be used with a baseline info dictionary to offset to the Ideographic Low baseline as a CFNumberRef float. It can also be used as the value for kCTBaselineClassAttributeName.
*/
@available(tvOS 6.0, *)
let kCTBaselineClassIdeographicLow: CFString

/*!
    @defined    kCTBaselineClassIdeographicHigh

    @abstract   Key to reference the Ideographic High baseline class.

    @discussion This key can be used with a baseline info dictionary to offset to the Ideographic High baseline as a CFNumberRef float. It can also be used as the value for kCTBaselineClassAttributeName.
*/
@available(tvOS 6.0, *)
let kCTBaselineClassIdeographicHigh: CFString

/*!
    @defined    kCTBaselineClassHanging
 
    @abstract   Key to reference the Hanging baseline class.
 
    @discussion This key can be used with a baseline info dictionary to offset to the Hanging baseline as a CFNumberRef float. It can also be used as the value for kCTBaselineClassAttributeName.
*/
@available(tvOS 6.0, *)
let kCTBaselineClassHanging: CFString

/*!
    @defined    kCTBaselineClassMathKey

    @abstract   Key to reference the Math baseline class.

    @discussion This key can be used with a baseline info dictionary to offset to the Math baseline as a CFNumberRef float. It can also be used as the value for kCTBaselineClassAttributeName.
*/
@available(tvOS 6.0, *)
let kCTBaselineClassMath: CFString

/*!
    @defined    kCTBaselineReferenceFont
 
    @abstract   Key to reference a font for the reference baseline.
 
    @discussion This key can be used to specify a font for the reference baseline. The value is a CTFontRef or the kCTBaselineOriginalFont constant.
*/
@available(tvOS 6.0, *)
let kCTBaselineReferenceFont: CFString

/*!
    @defined    kCTBaselineOriginalFont
    
    @abstract   Use the original font for setting the reference baseline.
 
    @discussion This constant can be used as the value for kCTBaselineReferenceFont to specify that the original font should be used for the reference baseline.
*/
@available(tvOS 6.0, *)
let kCTBaselineOriginalFont: CFString

/*!
    @function   CTFontCopyDefaultCascadeListForLanguages
    @abstract   Return an ordered list of CTFontDescriptorRef's for font fallback derived from the system default fallback region according to the given language preferences. The style of the given is also matched as well as the weight and width of the font is not one of the system UI font, otherwise the UI font fallback is applied.

    @param      font
                The font reference.
 
    @param      languagePrefList
                The language preference list - ordered array of CFStringRef's of ISO language codes.

    @result     The ordered list of fallback fonts - ordered array of CTFontDescriptors.
*/
@available(tvOS 6.0, *)
func CTFontCopyDefaultCascadeListForLanguages(font: CTFont, _ languagePrefList: CFArray?) -> CFArray?
typealias CTFontCollectionRef = CTFontCollection
typealias CTMutableFontCollectionRef = CTMutableFontCollection

/*!
    @function   CTFontCollectionGetTypeID
    @abstract   Returns the type identifier for Core Text font collection references.
    @result     The identifier for the opaque types CTFontCollectionRef or CTMutableFontCollectionRef.
*/
@available(tvOS 3.2, *)
func CTFontCollectionGetTypeID() -> CFTypeID

/*!
    @typedef    CTFontCollectionSortDescriptorsCallback
    @abstract   Collection sorting callback.
    @discussion This callback can be specified to obtain the matching font descriptors of a collection in sorted order. Return the appropriate comparison result of first descriptor to second descriptor.
*/
typealias CTFontCollectionSortDescriptorsCallback = @convention(c) (CTFontDescriptor, CTFontDescriptor, UnsafeMutablePointer<Void>) -> CFComparisonResult

/*!
    @defined    kCTFontCollectionRemoveDuplicatesOption
    @abstract   Option key to specify filtering of duplicates.
    @discussion Specify this option key in the options dictionary with a non- zero value to enable automatic filtering of duplicate font descriptors.
*/
@available(tvOS 3.2, *)
let kCTFontCollectionRemoveDuplicatesOption: CFString

/*!
    @function   CTFontCollectionCreateFromAvailableFonts
    @abstract   Returns a new font collection matching all available fonts.

    @param      options
                The options dictionary. See constant option keys.

    @result     This function creates a new collection containing all fonts available to the current application.
*/
@available(tvOS 3.2, *)
func CTFontCollectionCreateFromAvailableFonts(options: CFDictionary?) -> CTFontCollection

/*!
    @function   CTFontCollectionCreateWithFontDescriptors
    @abstract   Returns a new collection based on the array of font descriptors.

    @param      queryDescriptors
                An array of font descriptors to use for matching. May be NULL, in which case the matching descriptors will be NULL.

    @param      options
                The options dictionary. See constant option keys.

    @result     This function creates a new collection based on the provided font descriptors. The contents of this collection is defined by matching the provided descriptors against all available font descriptors.
*/
@available(tvOS 3.2, *)
func CTFontCollectionCreateWithFontDescriptors(queryDescriptors: CFArray?, _ options: CFDictionary?) -> CTFontCollection

/*!
    @function   CTFontCollectionCreateCopyWithFontDescriptors
    @abstract   Returns a copy of the original collection augmented with the new font descriptors.

    @param      original
                The original font collection reference.

    @param      queryDescriptors
                An array of font descriptors to augment those of the original collection.

    @param      options
                The options dictionary. See constant option keys.

    @result     This function creates a copy of the original font collection augmented by the new font descriptors and options. The new font descriptors are merged with the existing descriptors to create a single set.
*/
@available(tvOS 3.2, *)
func CTFontCollectionCreateCopyWithFontDescriptors(original: CTFontCollection, _ queryDescriptors: CFArray?, _ options: CFDictionary?) -> CTFontCollection

/*!
    @function   CTFontCollectionCreateMatchingFontDescriptors
    @abstract   Returns an array of font descriptors matching the collection.

    @param      collection
                The font collection reference.

    @result     An array of CTFontDescriptors matching the collection definition or NULL if there are none.
*/
@available(tvOS 3.2, *)
func CTFontCollectionCreateMatchingFontDescriptors(collection: CTFontCollection) -> CFArray?

/*!
    @function   CTFontCollectionCreateMatchingFontDescriptorsSortedWithCallback
    @abstract   Returns the array of matching font descriptors sorted with the callback function.

    @param      collection
                The collection reference.

    @param      sortCallback
                The sorting callback function that defines the sort order.

    @param      refCon
                Pointer to client data define context for the callback.

    @result     An array of CTFontDescriptors matching the criteria of the collection, sorted by the results of the sorting callback function, or NULL if there are none.
*/
@available(tvOS 3.2, *)
func CTFontCollectionCreateMatchingFontDescriptorsSortedWithCallback(collection: CTFontCollection, _ sortCallback: CTFontCollectionSortDescriptorsCallback?, _ refCon: UnsafeMutablePointer<Void>) -> CFArray?
typealias CTFontDescriptorRef = CTFontDescriptor

/*!
    @function   CTFontDescriptorGetTypeID
    @abstract   Returns the type identifier for Core Text font descriptor
                references.
    @result     The identifier for the opaque type CTFontDescriptorRef.
*/
@available(tvOS 3.2, *)
func CTFontDescriptorGetTypeID() -> CFTypeID

/*!
    @defined    kCTFontURLAttribute
    @abstract   The font URL.
    @discussion This is the key for accessing the font URL from the font descriptor. The value associated with this key is a CFURLRef.
*/
@available(tvOS 3.2, *)
let kCTFontURLAttribute: CFString

/*!
    @defined    kCTFontNameAttribute
    @abstract   The PostScript name.
    @discussion This is the key for retrieving the PostScript name from the font descriptor. When matching, this is treated more generically: the system first tries to find fonts with this PostScript name. If none is found, the system tries to find fonts with this family name, and, finally, if still nothing, tries to find fonts with this display name. The value associated with this key is a CFStringRef. If unspecified, defaults to "Helvetica", if unavailable falls back to global font cascade list.
*/
@available(tvOS 3.2, *)
let kCTFontNameAttribute: CFString

/*!
    @defined    kCTFontDisplayNameAttribute
    @abstract   The display name.
    @discussion This is the key for accessing the name used to display the font. Most commonly this is the full name. The value associated with this key is a CFStringRef.
*/
@available(tvOS 3.2, *)
let kCTFontDisplayNameAttribute: CFString

/*!
    @defined    kCTFontFamilyNameAttribute
    @abstract   The family name.
    @discussion This is the key for accessing the family name from the font descriptor. The value associated with this key is a CFStringRef.
*/
@available(tvOS 3.2, *)
let kCTFontFamilyNameAttribute: CFString

/*!
    @defined    kCTFontStyleNameAttribute
    @abstract   The style name.
    @discussion This is the key for accessing the style name of the font. This name represents the designer's description of the font's style. The value associated with this key is a CFStringRef.
*/
@available(tvOS 3.2, *)
let kCTFontStyleNameAttribute: CFString

/*!
    @defined    kCTFontTraitsAttribute
    @abstract   The font traits dictionary.
    @discussion This is the key for accessing the dictionary of font traits for stylistic information. See CTFontTraits.h for the list of font traits. The value associated with this key is a CFDictionaryRef.
*/
@available(tvOS 3.2, *)
let kCTFontTraitsAttribute: CFString

/*!
    @defined    kCTFontVariationAttribute
    @abstract   The font variation dictionary.
    @discussion This key is used to obtain the font variation instance as a CFDictionaryRef. If specified in a font descriptor, fonts with the specified axes will be primary match candidates, if no such fonts exist, this attribute will be ignored.
*/
@available(tvOS 3.2, *)
let kCTFontVariationAttribute: CFString

/*!
    @defined    kCTFontSizeAttribute
    @abstract   The font point size.
    @discussion This key is used to obtain or specify the font point size. Creating a font with this unspecified will default to a point size of 12.0. The value for this key is represented as a CFNumberRef.
*/
@available(tvOS 3.2, *)
let kCTFontSizeAttribute: CFString

/*!
    @defined    kCTFontMatrixAttribute
    @abstract   The font transformation matrix.
    @discussion This key is used to specify the font transformation matrix when creating a font. The default value is CGAffineTransformIdentity. The value for this key is a CFDataRef containing a CGAffineTransform, of which only the a, b, c, and d fields are used.
*/
@available(tvOS 3.2, *)
let kCTFontMatrixAttribute: CFString

/*!
    @defined    kCTFontCascadeListAttribute
    @abstract   The font cascade list.
    @discussion This key is used to specify or obtain the cascade list used for a font reference. The cascade list is a CFArrayRef containing CTFontDescriptorRefs. If unspecified, the global cascade list is used. This list is not consulted for private-use characters on OS X 10.10, iOS 8, or earlier.
*/
@available(tvOS 3.2, *)
let kCTFontCascadeListAttribute: CFString

/*!
    @defined    kCTFontCharacterSetAttribute
    @abstract   The font unicode character coverage set.
    @discussion This key is used to specify or obtain the character set for a font reference. This value for this key is a CFCharacterSetRef. If specified this can be used to restrict the font to a subset of its actual character set. If unspecified this attribute is ignored and the actual character set is used.
*/
@available(tvOS 3.2, *)
let kCTFontCharacterSetAttribute: CFString

/*!
    @defined    kCTFontLanguagesAttribute
    @abstract   The list of supported languages.
    @discussion This key is used to specify or obtain a list of covered languages for a font reference. The value for this key is a CFArrayRef of CFStringRefs. If specified this restricts the search to matching fonts that support the specified languages. The language identifier string should conform to UTS #35. If unspecified this attribute is ignored.
*/
@available(tvOS 3.2, *)
let kCTFontLanguagesAttribute: CFString

/*!
    @defined    kCTFontBaselineAdjustAttribute
    @abstract   The baseline adjustment to apply to font metrics.
    @discussion This key is used to specify or obtain the baseline adjustment for a font reference. This is primary used when defining font descriptors for a cascade list to keep the baseline of all fonts even. The value associated with this is a float represented as a CFNumberRef.
*/
@available(tvOS 3.2, *)
let kCTFontBaselineAdjustAttribute: CFString

/*!
    @defined    kCTFontMacintoshEncodingsAttribute
    @abstract   The macintosh encodings attribute.
    @discussion This key is used to specify or obtain the macintosh encodings for a font reference. The value associated with this key is a CFNumberRef containing a bitfield of the Macintosh encodings. This attribute is provided for legacy compatibility.
*/
@available(tvOS 3.2, *)
let kCTFontMacintoshEncodingsAttribute: CFString

/*!
    @defined    kCTFontFeaturesAttribute
    @abstract   The array of font features.
    @discussion This key is used to specify or obtain the font features for a font reference. The value associated with this key is a CFArrayRef of font feature dictionaries. This features list contains the feature information from the 'feat' table of the font. See the CTFontCopyFeatures() API in   CTFont.h.
*/
@available(tvOS 3.2, *)
let kCTFontFeaturesAttribute: CFString

/*!
    @defined    kCTFontFeatureSettingsAttribute
    @abstract   The array of typographic feature settings.
    @discussion This key is used to specify an array of zero or more feature settings. In the case of duplicate or conflicting settings the last setting in the list will take precedence. In the case of AAT settings, it is the caller's responsibility to handle exclusive and non-exclusive settings as necessary.
                An AAT setting dictionary contains a tuple of a kCTFontFeatureTypeIdentifierKey key-value pair and a kCTFontFeatureSelectorIdentifierKey key-value pair.
                An OpenType setting dictionary contains a tuple of a kCTFontOpenTypeFeatureTag key-value pair and a kCTFontOpenTypeFeatureValue key-value pair. Each setting dictionary indicates which setting should be applied. In the case of duplicate or conflicting settings the last setting in the list will take precedence.

                Starting with OS X 10.10 and iOS 8.0, settings are also accepted (but not returned) in the following simplified forms:
                An OpenType setting can be either an array pair of tag string and value number, or a tag string on its own. For example: @[ @"c2sc", @1 ] or simply @"c2sc". An unspecified value enables the feature and a value of zero disables it.
                An AAT setting can be specified as an array pair of type and selector numbers. For example: @[ @(kUpperCaseType), @(kUpperCaseSmallCapsSelector) ].
*/
@available(tvOS 3.2, *)
let kCTFontFeatureSettingsAttribute: CFString

/*!
    @defined    kCTFontFixedAdvanceAttribute
    @abstract   Specifies advance width.
    @discussion This key is used to specify a constant advance width, which affects the glyph metrics of any font instance created with this key; it overrides font values and the font transformation matrix, if any. The value associated with this key must be a CFNumberRef.
*/
@available(tvOS 3.2, *)
let kCTFontFixedAdvanceAttribute: CFString

/*!
    @defined    kCTFontOrientationAttribute
    @abstract   The orientation attribute.
    @discussion This key is used to specify a particular orientation for the glyphs of the font. The value associated with this key is a int as a CFNumberRef. If you want to receive vertical metrics from a font for vertical rendering, specify kCTFontVerticalOrientation. If unspecified, the font will use its native orientation.
*/
@available(tvOS 3.2, *)
let kCTFontOrientationAttribute: CFString

/*!
    @enum       CTFontOrientation
    @abstract   Specifies the intended rendering orientation of the font for obtaining glyph metrics.
*/
enum CTFontOrientation : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  @available(tvOS 6.0, *)
  case Default
  @available(tvOS 6.0, *)
  case Horizontal
  @available(tvOS 6.0, *)
  case Vertical
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontDefaultOrientation: CTFontOrientation { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontHorizontalOrientation: CTFontOrientation { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontVerticalOrientation: CTFontOrientation { get }
}

/*!
    @defined    kCTFontFormatAttribute
    @abstract   Specifies the recognized format of the font.
    @discussion The attribute is used to specify or obtain the format of the font. The returned value is a CFNumber containing one of the constants defined below.
*/
@available(tvOS 3.2, *)
let kCTFontFormatAttribute: CFString

/*!
    @constant   kCTFontFormatUnrecognized
                The font is not a recognized format
    @constant   kCTFontFormatOpenTypePostScript
                The font is an OpenType format containing PostScript data
    @constant   kCTFontFormatOpenTypeTrueType
                The font is an OpenType format containing TrueType data
    @constant   kCTFontFormatTrueType
                The font is a recognized TrueType format
    @constant   kCTFontFormatPostScript
                The font is a recognized PostScript format
    @constant   kCTFontFormatBitmap
                The font is a bitmap only format
*/
enum CTFontFormat : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Unrecognized
  case OpenTypePostScript
  case OpenTypeTrueType
  case TrueType
  case PostScript
  case Bitmap
}

/*!
    @defined    kCTFontRegistrationScopeAttribute
    @abstract   Specifies the font descriptor's registration scope.
    @discussion The attribute is used to specify or obtain the font registration scope. The value returned is a CFNumberRef containing one of the CTFontManagerScope enumerated values. A value of NULL can be returned for font descriptors that are not registered.
*/
@available(tvOS 3.2, *)
let kCTFontRegistrationScopeAttribute: CFString

/*!
    @defined    kCTFontPriorityAttribute
    @abstract   The font descriptors priority when resolving duplicates and sorting match results.
    @discussion This key is used to obtain or specify the font priority. The value returned is a CFNumberRef containing an integer value as defined below. The higher the value, the higher the priority of the font. Only registered fonts will have a priority. Unregistered font descriptors will return NULL.
*/
@available(tvOS 3.2, *)
let kCTFontPriorityAttribute: CFString
var kCTFontPrioritySystem: Int { get }
var kCTFontPriorityNetwork: Int { get }
var kCTFontPriorityComputer: Int { get }
var kCTFontPriorityUser: Int { get }
var kCTFontPriorityDynamic: Int { get }
var kCTFontPriorityProcess: Int { get }
typealias CTFontPriority = UInt32

/*!
    @defined    kCTFontEnabledAttribute
    @abstract   The font enabled state.
    @discussion This key is used to obtain the font state. The returned value is a CFNumberRef representing a boolean value. Unregistered font descriptors will return NULL, which is equivalent to false.
*/
@available(tvOS 3.2, *)
let kCTFontEnabledAttribute: CFString

/*!
	@defined    kCTFontDownloadableAttribute
	@abstract   The font downloadable state.
	@discussion The value associated with this key is a CFBoolean.  If it is kCFBooleanTrue, CoreText attempts to download a font if necessary when matching a descriptor.
*/
@available(tvOS 6.0, *)
let kCTFontDownloadableAttribute: CFString

/*!
    @defined    kCTFontDownloadedAttribute
    @abstract   The download state.
    @discussion The value associated with this key is a CFBoolean.  If it is kCFBooleanTrue, corresponding FontAsset has been downloaded. (but still it may be necessary to call appropriate API in order to use the font in the FontAsset.)
*/
@available(tvOS 7.0, *)
let kCTFontDownloadedAttribute: CFString

/*!
    @function   CTFontDescriptorCreateWithNameAndSize
    @abstract   Creates a new font descriptor with the provided PostScript name and size.

    @param      name
                The PostScript name to be used for the font descriptor as a CFStringRef.

    @param      size
                The point size. If 0.0, the kCTFontSizeAttribute will be omitted from the font descriptor.

    @result     This function creates a new font descriptor reference with the given PostScript name and point size.
*/
@available(tvOS 3.2, *)
func CTFontDescriptorCreateWithNameAndSize(name: CFString, _ size: CGFloat) -> CTFontDescriptor

/*!
    @function   CTFontDescriptorCreateWithAttributes
    @abstract   Creates a new font descriptor reference from a dictionary of attributes.

    @param      attributes
                A CFDictionaryRef of arbitrary attributes.

    @result     This function creates a new font descriptor with the attributes specified. This dictionary can contain arbitrary attributes that will be preserved, however unrecognized attributes will be ignored on font creation and and may not be preserved over the round trip (descriptor -> font -> descriptor).
*/
@available(tvOS 3.2, *)
func CTFontDescriptorCreateWithAttributes(attributes: CFDictionary) -> CTFontDescriptor

/*!
    @function   CTFontDescriptorCreateCopyWithAttributes
    @abstract   Creates a copy of the original font descriptor with new attributes.

    @param      original
                The original font descriptor reference.

    @param      attributes
                A CFDictionaryRef of arbitrary attributes.

    @result     This function creates a new copy of the original font descriptor with attributes augmented by those specified. If there are conflicts between attributes, the new attributes will replace existing ones, except for kCTFontVariationAttribute and kCTFontFeatureSettingsAttribute which will be merged.
*/
@available(tvOS 3.2, *)
func CTFontDescriptorCreateCopyWithAttributes(original: CTFontDescriptor, _ attributes: CFDictionary) -> CTFontDescriptor

/*!
    @function   CTFontCreateCopyWithFamily
    @abstract   Returns a new font descriptor in the specified family based on the traits of the original descriptor.

    @param      original
                The original font descriptor reference.

    @param		family
                The name of the desired family.

    @result     Returns a new font reference with the original traits in the given family, or NULL if none found in the system.
*/
@available(tvOS 7.0, *)
func CTFontDescriptorCreateCopyWithFamily(original: CTFontDescriptor, _ family: CFString) -> CTFontDescriptor?

/*!
    @function   CTFontDescriptorCreateCopyWithSymbolicTraits
    @abstract   Returns a new font descriptor based on the original descriptor having the specified symbolic traits.

    @param      original
                The original font descriptor reference.

    @param		symTraitValue
                The value of the symbolic traits. This bitfield is used to indicate the desired value for the traits specified by the symTraitMask parameter. Used in conjunction, they can allow for trait removal as well as addition.

    @param		symTraitMask
                The mask bits of the symbolic traits. This bitfield is used to indicate the traits that should be changed.

    @result     Returns a new font descriptor reference in the same family with the given symbolic traits, or NULL if none found in the system.
*/
@available(tvOS 7.0, *)
func CTFontDescriptorCreateCopyWithSymbolicTraits(original: CTFontDescriptor, _ symTraitValue: CTFontSymbolicTraits, _ symTraitMask: CTFontSymbolicTraits) -> CTFontDescriptor?

/*!
    @function   CTFontDescriptorCreateCopyWithVariation
    @abstract   Creates a copy of the original font descriptor with a new variation instance.

    @param      original
                The original font descriptor reference.

    @param      variationIdentifier
                The variation axis identifier. This is the four character code of the variation axis as a CFNumberRef.

    @param      variationValue
                The value corresponding with the variation instance.

    @result     This function returns a copy of the original font descriptor with a new variation instance. This is a convenience method for easily creating new variation font instances.
*/
@available(tvOS 3.2, *)
func CTFontDescriptorCreateCopyWithVariation(original: CTFontDescriptor, _ variationIdentifier: CFNumber, _ variationValue: CGFloat) -> CTFontDescriptor

/*!
    @function   CTFontDescriptorCreateCopyWithFeature
    @abstract   Copies a font descriptor with new feature setting.

    @discussion This is a convenience method to more easily toggle the state of individual features.

    @param      original
                The original font descriptor reference.

    @param      featureTypeIdentifier
                The feature type identifier.

    @param      featureSelectorIdentifier
                The feature selector identifier.

    @result     A copy of the original font descriptor modified with the given feature settings.
*/
@available(tvOS 3.2, *)
func CTFontDescriptorCreateCopyWithFeature(original: CTFontDescriptor, _ featureTypeIdentifier: CFNumber, _ featureSelectorIdentifier: CFNumber) -> CTFontDescriptor

/*!
    @function   CTFontDescriptorCreateMatchingFontDescriptors
    @abstract   Returns an array of font normalized font descriptors matching the provided descriptor.

    @param      descriptor
                The font descriptor reference.

    @param      mandatoryAttributes
                A set of attribute keys which are required to be identically matched in any returned font descriptors. Optional.

    @result     This function returns a retained array of normalized font descriptors matching the attributes present in descriptor. If descriptor itself is normalized then the array will contain only one item, the original descriptor.
*/
@available(tvOS 3.2, *)
func CTFontDescriptorCreateMatchingFontDescriptors(descriptor: CTFontDescriptor, _ mandatoryAttributes: CFSet?) -> CFArray?

/*!
    @function   CTFontDescriptorCreateMatchingFontDescriptor
    @abstract   Returns an the single preferred matching font descriptor based on the original descriptor and system precedence.

    @param      descriptor
                The font descriptor reference.

    @param      mandatoryAttributes
                A set of attribute keys which are required to be identically matched in any returned font descriptors. Optional.

    @result     This function returns a retained normalized font descriptor matching the attributes present in descriptor. The original descriptor may be returned in normalized form.
*/
@available(tvOS 3.2, *)
func CTFontDescriptorCreateMatchingFontDescriptor(descriptor: CTFontDescriptor, _ mandatoryAttributes: CFSet?) -> CTFontDescriptor?

/*!
    Progress state
 */
enum CTFontDescriptorMatchingState : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case DidBegin
  case DidFinish
  case WillBeginQuerying
  case Stalled
  case WillBeginDownloading
  case Downloading
  case DidFinishDownloading
  case DidMatch
  case DidFailWithError
}
@available(tvOS 6.0, *)
let kCTFontDescriptorMatchingSourceDescriptor: CFString
@available(tvOS 6.0, *)
let kCTFontDescriptorMatchingDescriptors: CFString
@available(tvOS 6.0, *)
let kCTFontDescriptorMatchingResult: CFString
@available(tvOS 6.0, *)
let kCTFontDescriptorMatchingPercentage: CFString
@available(tvOS 6.0, *)
let kCTFontDescriptorMatchingCurrentAssetSize: CFString
@available(tvOS 6.0, *)
let kCTFontDescriptorMatchingTotalDownloadedSize: CFString
@available(tvOS 6.0, *)
let kCTFontDescriptorMatchingTotalAssetSize: CFString
@available(tvOS 6.0, *)
let kCTFontDescriptorMatchingError: CFString
typealias CTFontDescriptorProgressHandler = (CTFontDescriptorMatchingState, CFDictionary) -> Bool
@available(tvOS 6.0, *)
func CTFontDescriptorMatchFontDescriptorsWithProgressHandler(descriptors: CFArray, _ mandatoryAttributes: CFSet?, _ progressBlock: CTFontDescriptorProgressHandler) -> Bool

/*!
    @function   CTFontDescriptorCopyAttributes
    @abstract   Returns the attributes dictionary of the font descriptor.

    @param      descriptor
                The font descriptor reference.

    @result     A retained reference to the font descriptor attributes dictionary. This dictionary will contain the minimum number of attributes to fully specify this particular font descriptor.
*/
@available(tvOS 3.2, *)
func CTFontDescriptorCopyAttributes(descriptor: CTFontDescriptor) -> CFDictionary

/*!
    @function   CTFontDescriptorCopyAttribute
    @abstract   Returns the value associated with an arbitrary attribute.

    @param      descriptor
                The font descriptor.

    @param      attribute
                The requested attribute.

    @result     A retained reference to the requested attribute, or NULL if the requested attribute is not present. Refer to the attribute definitions for documentation as to how each attribute is packaged as a CFType.
*/
@available(tvOS 3.2, *)
func CTFontDescriptorCopyAttribute(descriptor: CTFontDescriptor, _ attribute: CFString) -> AnyObject?

/*!
    function    CTFontDescriptorCopyLocalizedAttribute
    @abstract   Returns a localized value for the requested attribute if available.

    @discussion This function returns a localized attribute based on the global language list. If localization is not possible for the attribute the behavior matches CTFontDescriptorCopyAttribute(). Generally, localization of attributes is only applicable to name attributes of a normalized font descriptor.

    @param      descriptor
                The font descriptor reference.

    @param      attribute
                The requested font attribute.

    @param      language
                If non-NULL, this will be receive a retained reference to the matched language. The language identifier will conform to UTS #35.
                If CoreText can supply its own localized string where the font cannot, this value will be NULL.

    @result     A retained reference to the requested attribute, or NULL if the requested attribute is not present. Refer to the attribute definitions for documentation as to how each attribute is packaged as a CFType.
*/
@available(tvOS 3.2, *)
func CTFontDescriptorCopyLocalizedAttribute(descriptor: CTFontDescriptor, _ attribute: CFString, _ language: UnsafeMutablePointer<Unmanaged<CFString>?>) -> AnyObject?

/*!
    @function   CTFontManagerCreateFontDescriptorsFromURL
    @abstract   Returns an array of font descriptors representing each of the fonts in the specified URL.
                Note: these font descriptors are not available through font descriptor matching.

    @param      fileURL
                A file system URL referencing a valid font file.

    @result     An array of CTFontDescriptors or NULL if there are no valid fonts.
*/
@available(tvOS 7.0, *)
func CTFontManagerCreateFontDescriptorsFromURL(fileURL: CFURL) -> CFArray?

/*!
    @function   CTFontManagerCreateFontDescriptorFromData
    @abstract   Returns a font descriptor representing the font in the supplied data.
                Note: the font descriptor is not available through font descriptor matching.

    @param      data
                A CFData containing font data.

    @result     A font descriptor created from the data or NULL if it is not a valid font.
*/
@available(tvOS 7.0, *)
func CTFontManagerCreateFontDescriptorFromData(data: CFData) -> CTFontDescriptor?

/*!
    @enum       CTFontManagerScope
    @abstract   Scope for font registration.
    @constant   kCTFontManagerScopeProcess
                The font is available to the current process for the duration of the process unless directly unregistered.
    @constant   kCTFontManagerScopeUser
                The font is available to all processes for the current user session and will be available in subsequent sessions unless unregistered.
                User scope is unsupported in iOS.
    @constant   kCTFontManagerScopeSession
                The font is available to the current user session, and will not be available in subsequent sessions.
                User scope is unsupported in iOS.
*/
enum CTFontManagerScope : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case None
  case Process
  case User
  case Session
}

/*!
    @function   CTFontManagerRegisterFontsForURL
    @abstract   Registers fonts from the specified font URL with the font manager. Registered fonts are discoverable through font descriptor matching.

    @param      fontURL
                Font URL.

    @param      scope
                Scope constant defining the availability and lifetime of the registration. See scope constants for more details.

    @param      error
                Pointer to receive CFError in the case of failed registration.

    @result     Returns true if registration of the fonts was successful.
*/
@available(tvOS 4.1, *)
func CTFontManagerRegisterFontsForURL(fontURL: CFURL, _ scope: CTFontManagerScope, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   CTFontManagerUnregisterFontsForURL
    @abstract   Unregisters fonts from the specified font URL with the font manager. Unregistered fonts are no longer discoverable through font descriptor matching.
                iOS note: only fonts registered with CTFontManagerRegisterFontsForURL or CTFontManagerRegisterFontsForURLs can be unregistered with this API.

    @param      fontURL
                Font URL.

    @param      scope
                Scope constant defining the availability and lifetime of the registration. Should match the scope the fonts are registered in. See scope constants for more details.

    @param      error
                Pointer to receive CFError in the case of failed unregistration.

    @result     Returns true if unregistration of the fonts was successful.

*/
@available(tvOS 4.1, *)
func CTFontManagerUnregisterFontsForURL(fontURL: CFURL, _ scope: CTFontManagerScope, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   CTFontManagerRegisterGraphicsFont
    @abstract   Registers the specified graphics font with the font manager. Registered fonts are discoverable through font descriptor matching.
                Attempts to register a font that is either already registered or contains the same Postscript of an already registered font will fail.
                This functionality is useful for fonts that may be embedded in documents or present/constructed in memory. A graphics font is obtained
                by calling CGFontCreateWithDataProvider. Fonts that are backed by files should be registered using CTFontManagerRegisterFontsForURL.
 
    @param      font
                Graphics font to be registered.
 
    @param      error
                Pointer to receive CFError in the case of failed registration.
 
    @result     Returns true if registration of the fonts was successful.
*/
@available(tvOS 4.1, *)
func CTFontManagerRegisterGraphicsFont(font: CGFont, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   CTFontManagerUnregisterGraphicsFont
    @abstract   Unregisters the specified graphics font with the font manager. Unregistered fonts are no longer discoverable through font descriptor matching.
 
    @param      font
                Graphics font to be unregistered.
 
    @param      error
                Pointer to receive CFError in the case of failed unregistration.
 
    @result     Returns true if unregistration of the font was successful.
*/
@available(tvOS 4.1, *)
func CTFontManagerUnregisterGraphicsFont(font: CGFont, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   CTFontManagerRegisterFontsForURLs
    @abstract   Registers fonts from the specified font URLs with the font manager. Registered fonts are discoverable through font descriptor matching.

    @param      fontURLs
                Array of font URLs.

    @param      scope
                Scope constant defining the availability and lifetime of the registration. See scope constants for more details.

    @param      errors
                Pointer to CFArrayRef to receive array of CFError references. Each error will contain a CFArray of font URLs corresponding to kCTFontManagerErrorFontURLsKey. These URLs represent the font files that caused the error, and were not successfully registered. Must be released by caller. Can be NULL.

    @result     Returns true if registration of all font URLs was successful. Otherwise false.
*/
@available(tvOS 4.1, *)
func CTFontManagerRegisterFontsForURLs(fontURLs: CFArray, _ scope: CTFontManagerScope, _ errors: UnsafeMutablePointer<Unmanaged<CFArray>?>) -> Bool

/*!
    @function   CTFontManagerUnregisterFontsForURLs
    @abstract   Unregisters fonts from the specified font URLs with the font manager. Unregistered fonts are no longer discoverable through font descriptor matching.
                iOS note: only fonts registered with CTFontManagerRegisterFontsForURL or CTFontManagerRegisterFontsForURLs can be unregistered with this API.

    @param      fontURLs
                Array of font URLs.

    @param      scope
                Scope constant defining the availability and lifetime of the registration. Should match the scope the fonts are registered in. See scope constants for more details.

    @param      errors
                Pointer to CFArrayRef to receive array of CFError references. Each error will contain a CFArray of font URLs corresponding to kCTFontManagerErrorFontURLsKey. These URLs represent the font files that caused the error, and were not successfully unregistered. Must be released by caller. Can be NULL.

    @result     Returns true if unregistration of all font URLs was successful. Otherwise false.
*/
@available(tvOS 4.1, *)
func CTFontManagerUnregisterFontsForURLs(fontURLs: CFArray, _ scope: CTFontManagerScope, _ errors: UnsafeMutablePointer<Unmanaged<CFArray>?>) -> Bool

/*!
    @enum
    @abstract   Auto-activation settings.
    @constant   kCTFontManagerAutoActivationDefault
                Default auto-activation setting. When specified, the application will use the global setting.
    @constant   kCTFontManagerAutoActivationDisabled
                Disables auto-activation.
    @constant   kCTFontManagerAutoActivationEnabled
                Enables auto-activation.
    @constant   kCTFontManagerAutoActivationPromptUser
                Requires user input for auto-activation. A dialog will be presented to the user to confirm auto
                activation of the font.
*/
enum CTFontManagerAutoActivationSetting : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Default
  case Disabled
  case Enabled
  case PromptUser
}

/*!
    @constant   kCTFontManagerRegisteredFontsChangedNotification
    @abstract   Notification name for font registry changes.
    @discussion This is the string to use as the notification name when subscribing
                to CTFontManager notifications.  This notification will be posted when fonts are added or removed.
                OS X clients should register as an observer of the notification with the distributed notification center
                for changes in session or user scopes and with the local notification center for changes in process scope.
                iOS clients should register as an observer of the notification with the local notification center for all changes.
*/
@available(tvOS 7.0, *)
let kCTFontManagerRegisteredFontsChangedNotification: CFString

/*!
    @const      kCTFontManagerErrorDomain
    @abstract   CFError domain for CTFontManager errors
    @discussion CFErrors with this domain will have error codes corresponding to one of the CTFontManagerErrors above.
*/
@available(tvOS 3.2, *)
let kCTFontManagerErrorDomain: CFString

/*!
    @constant   kCTFontManagerErrorFontURLsKey
    @abstract   User info key to be used with CFError references returned from registration functions.
    @discussion The value associated with this key in the user info dictionary of a CFError is a CFArray of font URLs that failed with given error.
*/
@available(tvOS 3.2, *)
let kCTFontManagerErrorFontURLsKey: CFString

/*!
    @enum
    @abstract   Font registration errors
    @discussion Errors that would prevent registration of fonts for a specified font file URL.
    @constant   kCTFontManagerErrorFileNotFound
                The file does not exist at the specified URL.
    @constant   kCTFontManagerErrorInsufficientPermissions
                Cannot access the file due to insufficient permissions.
    @constant   kCTFontManagerErrorUnrecognizedFormat
                The file is not a recognized or supported font file format.
    @constant   kCTFontManagerErrorInvalidFontData
                The file contains invalid font data that could cause system problems.
    @constant   kCTFontManagerErrorAlreadyRegistered
                The file has already been registered in the specified scope.
*/
/*!
    @enum
    @abstract   Font un-registration errors
    @discussion Errors that would prevent un-registration of fonts for a specified font file URL.
    @constant   kCTFontManagerErrorNotRegistered
                The file is not registered in the specified scope.
    @constant   kCTFontManagerErrorInUse
                The font file is actively in use and cannot be unregistered.
    @constant   kCTFontManagerErrorSystemRequired
                The file is required by the system and cannot be unregistered.
*/
enum CTFontManagerError : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case FileNotFound
  case InsufficientPermissions
  case UnrecognizedFormat
  case InvalidFontData
  case AlreadyRegistered
  case NotRegistered
  case InUse
  case SystemRequired
}

/*!
    @defined    kCTFontSymbolicTrait
    @abstract   Dictionary key to access the symbolic traits value.
    @discussion Use this key to access the symbolic traits value from the font traits dictionary. The value is returned as a CFNumberRef.
*/
@available(tvOS 3.2, *)
let kCTFontSymbolicTrait: CFString

/*!
    @defined    kCTFontWeightTrait
    @abstract   Dictionary key to access the weight trait value.
    @discussion Use this key to access the normalized weight trait from the font traits dictionary. The value returned is a CFNumberRef representing a float value between -1.0 and 1.0 for normalized weight. The value of 0.0 corresponds to the regular or medium font weight.
*/
@available(tvOS 3.2, *)
let kCTFontWeightTrait: CFString

/*!
    @defined    kCTFontWidthTrait
    @abstract   Dictionary key to access the width (condense/expand) trait value.
    @discussion Use this key to access the normalized proportion trait from the font traits dictionary. This value corresponds to the relative inter-glyph spacing for a given font. The value returned is a CFNumberRef representing a float between -1.0 and 1.0. The value of 0.0 corresponds to regular glyph spacing while negative values represent condensed glyph spacing.
*/
@available(tvOS 3.2, *)
let kCTFontWidthTrait: CFString

/*!
    @defined    kCTFontSlantTrait
    @abstract   Dictionary key to access the slant trait value.
    @discussion Use this key to access the normalized slant angle from the font traits dictionary. The value returned is a CFNumberRef representing a float value between -1.0 and 1.0 for normalized slant angle. The value or 0.0 corresponds to 0 degree clockwise rotation from the vertical and 1.0 corresponds to 30 degrees clockwise rotation.
*/
@available(tvOS 3.2, *)
let kCTFontSlantTrait: CFString
var kCTFontClassMaskShift: Int { get }

/*!
    @enum       CTFontSymbolicTraits
    @abstract   Symbolic representation of stylistic font attributes.
    @discussion CTFontSymbolicTraits symbolically describes stylistic aspects of a font. The top 4 bits is used to describe appearance of the font while the lower 28 bits for typeface. The font appearance information represented by the upper 4 bits can be used for stylistic font matching.
*/
struct CTFontSymbolicTraits : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var TraitItalic: CTFontSymbolicTraits { get }
  static var TraitBold: CTFontSymbolicTraits { get }
  static var TraitExpanded: CTFontSymbolicTraits { get }
  static var TraitCondensed: CTFontSymbolicTraits { get }
  static var TraitMonoSpace: CTFontSymbolicTraits { get }
  static var TraitVertical: CTFontSymbolicTraits { get }
  static var TraitUIOptimized: CTFontSymbolicTraits { get }
  static var TraitColorGlyphs: CTFontSymbolicTraits { get }
  static var TraitComposite: CTFontSymbolicTraits { get }
  static var TraitClassMask: CTFontSymbolicTraits { get }
  static var ItalicTrait: CTFontSymbolicTraits { get }
  static var BoldTrait: CTFontSymbolicTraits { get }
  static var ExpandedTrait: CTFontSymbolicTraits { get }
  static var CondensedTrait: CTFontSymbolicTraits { get }
  static var MonoSpaceTrait: CTFontSymbolicTraits { get }
  static var VerticalTrait: CTFontSymbolicTraits { get }
  static var UIOptimizedTrait: CTFontSymbolicTraits { get }
  static var ColorGlyphsTrait: CTFontSymbolicTraits { get }
  static var CompositeTrait: CTFontSymbolicTraits { get }
  static var ClassMaskTrait: CTFontSymbolicTraits { get }
}

/*!
    @enum       CTFontStylisticClass
    @abstract   Stylistic class values.
    @discussion CTFontStylisticClass classifies certain stylistic qualities of the font. These values correspond closely to the font class values in the OpenType 'OS/2' table. The class values are bundled in the upper four bits of the CTFontSymbolicTraits and can be obtained via the kCTFontClassMaskTrait.
*/
struct CTFontStylisticClass : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var ClassUnknown: CTFontStylisticClass { get }
  static var ClassOldStyleSerifs: CTFontStylisticClass { get }
  static var ClassTransitionalSerifs: CTFontStylisticClass { get }
  static var ClassModernSerifs: CTFontStylisticClass { get }
  static var ClassClarendonSerifs: CTFontStylisticClass { get }
  static var ClassSlabSerifs: CTFontStylisticClass { get }
  static var ClassFreeformSerifs: CTFontStylisticClass { get }
  static var ClassSansSerif: CTFontStylisticClass { get }
  static var ClassOrnamentals: CTFontStylisticClass { get }
  static var ClassScripts: CTFontStylisticClass { get }
  static var ClassSymbolic: CTFontStylisticClass { get }
  static var UnknownClass: CTFontStylisticClass { get }
  static var OldStyleSerifsClass: CTFontStylisticClass { get }
  static var TransitionalSerifsClass: CTFontStylisticClass { get }
  static var ModernSerifsClass: CTFontStylisticClass { get }
  static var ClarendonSerifsClass: CTFontStylisticClass { get }
  static var SlabSerifsClass: CTFontStylisticClass { get }
  static var FreeformSerifsClass: CTFontStylisticClass { get }
  static var SansSerifClass: CTFontStylisticClass { get }
  static var OrnamentalsClass: CTFontStylisticClass { get }
  static var ScriptsClass: CTFontStylisticClass { get }
  static var SymbolicClass: CTFontStylisticClass { get }
}
typealias CTFrameRef = CTFrame

/*!
	@function	CTFrameGetTypeID
	@abstract	Returns the CFType of the frame object
*/
@available(tvOS 3.2, *)
func CTFrameGetTypeID() -> CFTypeID

/*!
    @enum		CTFrameProgression
    @abstract	These constants specify frame progression types.

    @discussion The lines of text within a frame may be stacked for either
                horizontal or vertical text. Values are enumerated for each
                stacking type supported by CTFrame. Frames created with a
                progression type specifying vertical text will rotate lines
                90 degrees counterclockwise when drawing.

    @constant	kCTFrameProgressionTopToBottom
                Lines are stacked top to bottom for horizontal text.

    @constant	kCTFrameProgressionRightToLeft
                Lines are stacked right to left for vertical text.

    @constant	kCTFrameProgressionLeftToRight
                Lines are stacked left to right for vertical text.
*/
enum CTFrameProgression : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case TopToBottom
  case RightToLeft
  case LeftToRight
}

/*!
	@const		kCTFrameProgressionAttributeName
	@abstract	Specifies progression for a frame.
	
	@discussion Value must be a CFNumberRef containing a CTFrameProgression.
				Default is kCTFrameProgressionTopToBottom. This value determines
				the line stacking behavior for a frame and does not affect the
				appearance of the glyphs within that frame.

	@seealso	CTFramesetterCreateFrame
*/
@available(tvOS 3.2, *)
let kCTFrameProgressionAttributeName: CFString

/*!
	@enum		CTFramePathFillRule
	@abstract	These constants specify fill rule used by the frame.
 
	@discussion When a path intersects with itself, the client should specify which rule to use for deciding the 
				area of the path.
 
	@constant	kCTFramePathFillEvenOdd
				Text is filled in the area that would be painted if the path were given to CGContextEOFillPath.

	@constant	kCTFramePathFillWindingNumber
				Text is fill in the area that would be painted if the path were given to CGContextFillPath.
 
 
 */
enum CTFramePathFillRule : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case EvenOdd
  case WindingNumber
}

/*!
	@const		kCTFramePathFillRuleAttributeName
	@abstract	Specifies fill rule for a frame if this attribute is used at top level of frameAttributes dictionary, or specify
				fill rule for a clipping path if used in a dictionary contained in an array specified by kCTFrameClippingPathsAttributeName.
				
	@discussion Value must be a CFNumberRef containing kCTFramePathFillEvenOdd or kCTFramePathFillWindingNumber.
				Default is kCTFramePathFillEvenOdd.

	@seealso	CTFramesetterCreateFrame
 */
@available(tvOS 4.2, *)
let kCTFramePathFillRuleAttributeName: CFString

/*!
	@const		kCTFramePathWidthAttributeName
	@abstract	Specifies frame width if this attribute is used at top level of frameAttributes dictionary, or specify
				clipping path width if used in a dictionary contained in an array specified by kCTFrameClippingPathsAttributeName.

	@discussion Value must be a CFNumberRef specifying frame width.
				Default is zero.

	@seealso	CTFramesetterCreateFrame
 */
@available(tvOS 4.2, *)
let kCTFramePathWidthAttributeName: CFString

/*!
	@const		kCTFrameClippingPathsAttributeName
	@abstract	Specifies array of paths to clip frame.
	
	@discussion Value must be a CFArrayRef containing CFDictionaryRefs or CGPathRef.  (CGPathRef is allowed on 10.8 or later.)
				Each dictionary should have a kCTFramePathClippingPathAttributeName key-value pair, and can have a kCTFramePathFillRuleAttributeName key-value pair 
				and kCTFramePathFillRuleAttributeName key-value pair as optional parameters.  In case of CGPathRef, default fill rule (kCTFramePathFillEvenOdd) and width (0.0) are used.

	@seealso	CTFramesetterCreateFrame
*/
@available(tvOS 4.3, *)
let kCTFrameClippingPathsAttributeName: CFString

/*!
	@const		kCTFramePathClippingPathAttributeName
	@abstract	Specifies clipping path.  This attribute is valid in a dictionary contained in an array specified by kCTFrameClippingPathsAttributeName.
				On 10.8 or later, This attribute is also valid in frameAttributes dictionary passed to CTFramesetterCreateFrame.

	@discussion Value must be a CGPathRef specifying a clipping path.

	@seealso	kCTFrameClippingPathsAttributeName
 */
@available(tvOS 4.3, *)
let kCTFramePathClippingPathAttributeName: CFString

/*!
	@function	CTFrameGetStringRange
	@abstract	Returns the range of characters that were originally requested
				to fill the frame.

	@param		frame
				The frame that you want to get the character range from.

	@result		This function will return a CFRange containing the backing
				store range of characters that were originally requested
				to fill the frame. If the function call is not successful,
				then an empty range will be returned.
*/
@available(tvOS 3.2, *)
func CTFrameGetStringRange(frame: CTFrame) -> CFRange

/*!
	@function	CTFrameGetVisibleStringRange
	@abstract	Returns the range of characters that actually fit in the
				frame.

	@discussion This can be used to chain frames, as it returns the range of
				characters that can be seen in the frame. The next frame would
				start where this frame ends.

	@param		frame
				The frame that you want to get the visible character range
				from.

	@result		This function will return a CFRange containing the backing
				store range of characters that fit into the frame. If the
				function call is not successful, or if no characters fit
				in the frame, then an empty range will be returned.
*/
@available(tvOS 3.2, *)
func CTFrameGetVisibleStringRange(frame: CTFrame) -> CFRange

/*!
	@function	CTFrameGetPath
	@abstract	Returns the path used to create the frame.

	@param		frame
				The frame that you want to obtain the path from.
*/
@available(tvOS 3.2, *)
func CTFrameGetPath(frame: CTFrame) -> CGPath

/*!
	@function	CTFrameGetFrameAttributes
	@abstract	Returns the frame attributes used to create the frame.

	@discussion It is possible to create a frame with an attributes dictionary
				in order to control various aspects of the framing process.
				These attributes are different from the ones that are used to
				create an attributed string.

	@param		frame
				The frame that you want to obtain the frame attributes from.

	@result		This function will return a CFDictionary containing the
				frame attributes that were used to create the frame. If the
				frame was created without any frame attributes, this function
				will return NULL.
*/
@available(tvOS 3.2, *)
func CTFrameGetFrameAttributes(frame: CTFrame) -> CFDictionary?

/*!
	@function	CTFrameGetLines
	@abstract	Returns an array of lines that make up the frame.

	@discussion This function will return an array of CTLine objects that are
				stored in the frame. These line objects can be accessed and
				manipulated in any way that normal line objects can be. It is
				possible that an empty frame exists. That is, a frame in which
				no lines exist. In this case, the returned array will have 0
				entries.

	@param		frame
				The frame that you want to obtain the line array from.

	@result		This function will return a CFArray object containing the
				CTLine objects that make up the frame.
*/
@available(tvOS 3.2, *)
func CTFrameGetLines(frame: CTFrame) -> CFArray

/*!
	@function	CTFrameGetLineOrigins
	@abstract	Copies a range of line origins for a frame.

	@discussion	This function will copy a range of CGPoint structures. Each
				CGPoint is the origin of the corresponding line in the array of
				lines returned by CTFrameGetLines, relative to the origin of the
				frame's path. The maximum number of line origins returned by
				this function is the count of the array of lines.

	@param		frame
				The frame that you want to obtain the line origin array from.

	@param		range
				The range of line origins you wish to copy. If the length of the
				range is set to 0, then the copy operation will continue from
				the range's start index to the last line origin.

	@param		origins
				The buffer to which the origins will be copied. The buffer must
				have at least as many elements as specified by range's length.
				When using the origins to calculate measurements for a frame's
				contents, remember that line origins do not always correspond to
				line metrics; paragraph style settings can affect line origins,
				for one. The overall typographic bounds of a frame may generally
				be calculated as the difference between the top of the frame and
				the descent of the last line. This will obviously exclude any
				spacing following the last line, but such spacing has no effect
				on framesetting in the first place.
*/
@available(tvOS 3.2, *)
func CTFrameGetLineOrigins(frame: CTFrame, _ range: CFRange, _ origins: UnsafeMutablePointer<CGPoint>)

/*!
	@function	CTFrameDraw
	@abstract	Draws an entire frame to a context.

	@discussion This function will draw an entire frame to the context. Note
				that this call may leave the context in any state and does not
				flush it after the draw operation.

	@param		frame
				The frame that you want to draw.

	@param		context
				The context to draw the frame to.

	@result		If both the frame and the context are valid, the frame will be
				drawn in the context.
*/
@available(tvOS 3.2, *)
func CTFrameDraw(frame: CTFrame, _ context: CGContext)
typealias CTFramesetterRef = CTFramesetter

/*!
	@function	CTFramesetterGetTypeID
	@abstract	Returns the CFType of the framesetter object
*/
@available(tvOS 3.2, *)
func CTFramesetterGetTypeID() -> CFTypeID

/*!
	@function	CTFramesetterCreateWithAttributedString
	@abstract	Creates an immutable framesetter object from an attributed
				string.

	@discussion The resultant framesetter object can be used to create and
				fill text frames with the CTFramesetterCreateFrame call.

	@param		string
				The run with which you want to construct the framesetter
				object with.

	@result		This function will return a reference to a CTFramesetter if
				the call was successful. Otherwise, it will return NULL.
*/
@available(tvOS 3.2, *)
func CTFramesetterCreateWithAttributedString(string: CFAttributedString) -> CTFramesetter

/*!
	@function	CTFramesetterCreateFrame
	@abstract	Creates an immutable frame from a framesetter.

	@discussion This call will create a frame full of glyphs in the shape of
				the path provided by the "path" parameter. The framesetter
				will continue to fill the frame until it either runs out of
				text or it finds that text no longer fits.

	@param		framesetter
				The framesetter that will be used to create the frame.

	@param		stringRange
				The string range which the new frame will be based on. The
				string range is a range over the string that was used to
				create the framesetter. If the length portion of the range
				is set to 0, then the framesetter will continue to add lines
				until it runs out of text or space.

	@param		path
				A CGPath object that specifies the shape which the frame will
				take on.

	@param		frameAttributes
				Additional attributes that control the frame filling process
				can be specified here, or NULL if there are no such attributes.
				See CTFrame.h for available attributes.

	@result		This function will return a reference to a new CTFrame object.
*/
@available(tvOS 3.2, *)
func CTFramesetterCreateFrame(framesetter: CTFramesetter, _ stringRange: CFRange, _ path: CGPath, _ frameAttributes: CFDictionary?) -> CTFrame

/*!
	@function	CTFramesetterGetTypesetter
	@abstract	Returns the typesetter object being used by the framesetter.

	@discussion Each framesetter uses a typesetter internally to perform
				line breaking and other contextual analysis based on the
				characters in a string; this function returns the typesetter
				being used by a particular framesetter if the caller would
				like to perform other operations on that typesetter.

	@param		framesetter
				The framesetter from which a typesetter is being requested.

	@result		This function will return a reference to a CTTypesetter
				object, which should not be released by the caller.
*/
@available(tvOS 3.2, *)
func CTFramesetterGetTypesetter(framesetter: CTFramesetter) -> CTTypesetter

/*!
	@function	CTFramesetterSuggestFrameSizeWithConstraints
	@abstract	Determines the frame size needed for a string range.

	@discussion	This function may be used to determine how much space is needed
				to display a string, optionally by constraining the space along
				either dimension.

	@param		framesetter
				The framesetter that will be used for measuring the frame size.

	@param		stringRange
				The string range to which the frame size will apply. The
				string range is a range over the string that was used to
				create the framesetter. If the length portion of the range
				is set to 0, then the framesetter will continue to add lines
				until it runs out of text or space.

	@param		frameAttributes
				Additional attributes that control the frame filling process
				can be specified here, or NULL if there are no such attributes.

	@param		constraints
				The width and height to which the frame size will be constrained,
				A value of CGFLOAT_MAX for either dimension indicates that it
				should be treated as unconstrained.

	@param		fitRange
				The range of the string that actually fit in the constrained size.

	@result		The actual dimensions for the given string range and constraints.
*/
@available(tvOS 3.2, *)
func CTFramesetterSuggestFrameSizeWithConstraints(framesetter: CTFramesetter, _ stringRange: CFRange, _ frameAttributes: CFDictionary?, _ constraints: CGSize, _ fitRange: UnsafeMutablePointer<CFRange>) -> CGSize
typealias CTGlyphInfoRef = CTGlyphInfo

/*!
	@function	CTGlyphInfoGetTypeID
	@abstract	Returns the CFType of the glyph info object
*/
@available(tvOS 3.2, *)
func CTGlyphInfoGetTypeID() -> CFTypeID

/*!
	@enum		CTCharacterCollection
	@abstract	These constants specify character collections.

	@constant	kCTCharacterCollectionIdentityMapping
				Indicates that the character identifier is equal to the CGGlyph
				glyph index.

	@constant	kCTCharacterCollectionAdobeCNS1
				Indicates the Adobe-CNS1 mapping.

	@constant	kCTCharacterCollectionAdobeGB1
				Indicates the Adobe-GB1 mapping.

	@constant	kCTCharacterCollectionAdobeJapan1
				Indicates the Adobe-Japan1 mapping.

	@constant	kCTCharacterCollectionAdobeJapan2
				Indicates the Adobe-Japan2 mapping.

	@constant	kCTCharacterCollectionAdobeKorea1
				Indicates the Adobe-Korea1 mapping.
*/
enum CTCharacterCollection : UInt16 {
  init?(rawValue: UInt16)
  var rawValue: UInt16 { get }
  @available(tvOS 6.0, *)
  case IdentityMapping
  @available(tvOS 6.0, *)
  case AdobeCNS1
  @available(tvOS 6.0, *)
  case AdobeGB1
  @available(tvOS 6.0, *)
  case AdobeJapan1
  @available(tvOS 6.0, *)
  case AdobeJapan2
  @available(tvOS 6.0, *)
  case AdobeKorea1
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTIdentityMappingCharacterCollection: CTCharacterCollection { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTAdobeCNS1CharacterCollection: CTCharacterCollection { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTAdobeGB1CharacterCollection: CTCharacterCollection { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTAdobeJapan1CharacterCollection: CTCharacterCollection { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTAdobeJapan2CharacterCollection: CTCharacterCollection { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTAdobeKorea1CharacterCollection: CTCharacterCollection { get }
}

/*!
	@function	CTGlyphInfoCreateWithGlyphName
	@abstract	Creates an immutable glyph info object.

	@discussion This function creates an immutable glyph info object for a glyph
				name such as "copyright" and a specified font.

	@param		glyphName
				The name of the glyph.

	@param		font
				The font to be associated with the returned CTGlyphInfo object.

	@param		baseString
				The part of the string the returned object is intended
				to override.

	@result		This function will return a reference to a CTGlyphInfo object.
*/
@available(tvOS 3.2, *)
func CTGlyphInfoCreateWithGlyphName(glyphName: CFString, _ font: CTFont, _ baseString: CFString) -> CTGlyphInfo

/*!
	@function	CTGlyphInfoCreateWithGlyph
	@abstract	Creates an immutable glyph info object.

	@discussion This function creates an immutable glyph info object for a glyph
				index and a specified font.

	@param		glyph
				The glyph identifier.

	@param		font
				The font to be associated with the returned CTGlyphInfo object.

	@param		baseString
				The part of the string the returned object is intended
				to override.

	@result		This function will return a reference to a CTGlyphInfo object.
*/
@available(tvOS 3.2, *)
func CTGlyphInfoCreateWithGlyph(glyph: CGGlyph, _ font: CTFont, _ baseString: CFString) -> CTGlyphInfo

/*!
	@function	CTGlyphInfoCreateWithCharacterIdentifier
	@abstract	Creates an immutable glyph info object.

	@discussion This function creates an immutable glyph info object for a
				character identifier and a character collection.

	@param		cid
				A character identifier.

	@param		collection
				A character collection identifier.

	@param		baseString
				The part of the string the returned object is intended
				to override.

	@result		This function will return a reference to a CTGlyphInfo object.
*/
@available(tvOS 3.2, *)
func CTGlyphInfoCreateWithCharacterIdentifier(cid: CGFontIndex, _ collection: CTCharacterCollection, _ baseString: CFString) -> CTGlyphInfo

/*!
	@function	CTGlyphInfoGetGlyphName
	@abstract	Gets the glyph name for a glyph info, if applicable.

	@discussion This function will return the glyph name.

	@param		glyphInfo
				The glyph info for which you would like the glyph name.

	@result		If the glyph info object was created with a glyph name, it will
				be returned. Otherwise, this function will return NULL.
*/
@available(tvOS 3.2, *)
func CTGlyphInfoGetGlyphName(glyphInfo: CTGlyphInfo) -> CFString?

/*!
	@function	CTGlyphInfoGetCharacterIdentifier
	@abstract	Gets the character identifier for a glyph info.

	@discussion This function will return the character identifier.

	@param		glyphInfo
				The glyph info for which you would like the character identifier.

	@result		If the glyph info object was created with a character identifier,
				it will be returned. Otherwise, this function will return 0.
*/
@available(tvOS 3.2, *)
func CTGlyphInfoGetCharacterIdentifier(glyphInfo: CTGlyphInfo) -> CGFontIndex

/*!
	@function	CTGlyphInfoGetCharacterCollection
	@abstract	Gets the character collection for a glyph info.

	@discussion This function will return the character collection. If the glyph
				info object was created with a glyph name or a glyph index, its
				character collection will be
				kCTIdentityMappingCharacterCollection.

	@param		glyphInfo
				The glyph info for which you would like the character collection.

	@result		This function will return the character collection of the given
				glyph info.
*/
@available(tvOS 3.2, *)
func CTGlyphInfoGetCharacterCollection(glyphInfo: CTGlyphInfo) -> CTCharacterCollection
typealias CTLineRef = CTLine

/*!
    @enum       CTLineBoundsOptions
    @abstract   Options for CTLineGetBoundsWithOptions.

    @discussion Passing 0 (no options) returns the typographic bounds,
                including typographic leading and shifts.

    @constant   kCTLineBoundsExcludeTypographicLeading
                Pass this option to exclude typographic leading.

    @constant   kCTLineBoundsExcludeTypographicShifts
                Pass this option to ignore cross-stream shifts due to
                positioning (such as kerning or baseline alignment).

    @constant   kCTLineBoundsUseHangingPunctuation
                Normally line bounds include all glyphs; pass this option to
                treat standard punctuation hanging off either end of the line
                as fully hanging.

    @constant   kCTLineBoundsUseGlyphPathBounds
                Pass this option to use glyph path bounds rather than the
                default typographic bounds.

    @constant   kCTLineBoundsUseOpticalBounds
                Pass this option to use optical bounds. This option overrides
                kCTLineBoundsUseGlyphPathBounds.
                
    @constant   kCTLineBoundsIncludeLanguageExtents
                Pass this option to include additional space based on common
                glyph sequences for various languages. The result is intended
                to be used when drawing to avoid clipping that may be caused
                by the typographic bounds. This option does not have any effect
                when used with kCTLineBoundsUseGlyphPathBounds.
*/
struct CTLineBoundsOptions : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var ExcludeTypographicLeading: CTLineBoundsOptions { get }
  static var ExcludeTypographicShifts: CTLineBoundsOptions { get }
  static var UseHangingPunctuation: CTLineBoundsOptions { get }
  static var UseGlyphPathBounds: CTLineBoundsOptions { get }
  static var UseOpticalBounds: CTLineBoundsOptions { get }
  @available(tvOS 8.0, *)
  static var IncludeLanguageExtents: CTLineBoundsOptions { get }
}

/*!
    @enum       CTLineTruncationType
    @abstract   Truncation types required by CTLineCreateTruncatedLine. These
                will tell truncation engine which type of truncation is being
                requested.

    @constant   kCTLineTruncationStart
                Truncate at the beginning of the line, leaving the end portion
                visible.

    @constant   kCTLineTruncationEnd
                Truncate at the end of the line, leaving the start portion
                visible.

    @constant   kCTLineTruncationMiddle
                Truncate in the middle of the line, leaving both the start
                and the end portions visible.
*/
enum CTLineTruncationType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Start
  case End
  case Middle
}

/*!
    @function   CTLineGetTypeID
    @abstract   Returns the CFType of the line object
*/
@available(tvOS 3.2, *)
func CTLineGetTypeID() -> CFTypeID

/*!
    @function   CTLineCreateWithAttributedString
    @abstract   Creates a single immutable line object directly from an
                attributed string.

    @discussion This will allow clients who need very simple line generation to
                create a line without needing to create a typesetter object. The
                typesetting will be done under the hood. Without a typesetter
                object, the line cannot be properly broken. However, for simple
                things like text labels and other things, this is not an issue.

    @param      attrString
                The attributed string which the line will be created for.

    @result     This function will return a reference to a CTLine object.
*/
@available(tvOS 3.2, *)
func CTLineCreateWithAttributedString(attrString: CFAttributedString) -> CTLine

/*!
    @function   CTLineCreateTruncatedLine
    @abstract   Creates a truncated line from an existing line.

    @param      line
                The line that you want to create a truncated line for.

    @param      width
                The width at which truncation will begin. The line will be
                truncated if its width is greater than the width passed in this.

    @param      truncationType
                The type of truncation to perform if needed.

    @param      truncationToken
                This token will be added to the point where truncation took place
                to indicate that the line was truncated. Usually, the truncation
                token is the ellipsis character (U+2026). If this parameter is
                set to NULL, then no truncation token is used, and the line is
                simply cut off. The line specified in truncationToken should have
                a width less than the width specified by the width parameter. If
                the width of the line specified in truncationToken is greater,
                this function will return NULL if truncation is needed.

    @result     This function will return a reference to a truncated CTLine
                object if the call was successful. Otherwise, it will return
                NULL.
*/
@available(tvOS 3.2, *)
func CTLineCreateTruncatedLine(line: CTLine, _ width: Double, _ truncationType: CTLineTruncationType, _ truncationToken: CTLine?) -> CTLine?

/*!
    @function   CTLineCreateJustifiedLine
    @abstract   Creates a justified line from an existing line.

    @param      line
                The line that you want to create a justified line for.

    @param      justificationFactor
                Allows for full or partial justification. When set to 1.0 or
                greater indicates, full justification will be performed. If less
                than 1.0, varying degrees of partial justification will be
                performed. If set to 0 or less, then no justification will be
                performed.

    @param      justificationWidth
                The width to which the resultant line will be justified. If
                justificationWidth is less than the actual width of the line,
                then negative justification will be performed ("text squishing").

    @result     This function will return a reference to a justified CTLine
                object if the call was successful. Otherwise, it will return
                NULL.
*/
@available(tvOS 3.2, *)
func CTLineCreateJustifiedLine(line: CTLine, _ justificationFactor: CGFloat, _ justificationWidth: Double) -> CTLine?

/*!
    @function   CTLineGetGlyphCount
    @abstract   Returns the total glyph count for the line object.

    @discussion The total glyph count is equal to the sum of all of the glyphs in
                the glyph runs forming the line.

    @param      line
                The line that you want to obtain the glyph count for.

    @result     The total glyph count for the line passed in.
*/
@available(tvOS 3.2, *)
func CTLineGetGlyphCount(line: CTLine) -> CFIndex

/*!
    @function   CTLineGetGlyphRuns
    @abstract   Returns the array of glyph runs that make up the line object.

    @param      line
                The line that you want to obtain the glyph run array for.

    @result     A CFArrayRef containing the CTRun objects that make up the line.
*/
@available(tvOS 3.2, *)
func CTLineGetGlyphRuns(line: CTLine) -> CFArray

/*!
    @function   CTLineGetStringRange
    @abstract   Gets the range of characters that originally spawned the glyphs
                in the line.

    @param      line
                The line that you want to obtain the string range from.

    @result     A CFRange that contains the range over the backing store string
                that spawned the glyphs. If the function fails for any reason, an
                empty range will be returned.
*/
@available(tvOS 3.2, *)
func CTLineGetStringRange(line: CTLine) -> CFRange

/*!
    @function   CTLineGetPenOffsetForFlush
    @abstract   Gets the pen offset required to draw flush text.

    @param      line
                The line that you want to obtain a flush position from.

    @param      flushFactor
                Specifies what kind of flushness you want. A flushFactor of 0 or
                less indicates left flush. A flushFactor of 1.0 or more indicates
                right flush. Flush factors between 0 and 1.0 indicate varying
                degrees of center flush, with a value of 0.5 being totally center
                flush.

    @param      flushWidth
                Specifies the width that the flushness operation should apply to.

    @result     A value which can be used to offset the current pen position for
                the flush operation.
*/
@available(tvOS 3.2, *)
func CTLineGetPenOffsetForFlush(line: CTLine, _ flushFactor: CGFloat, _ flushWidth: Double) -> Double

/*!
    @function   CTLineDraw
    @abstract   Draws a line.

    @discussion This is a convenience call, since the line could be drawn
                run-by-run by getting the glyph runs and accessing the glyphs out
                of them. Note that this call may leave the graphics context in
                any state and does not flush the context after the draw
                operation.

    @param      line
                The line that you want to draw.

    @param      context
                The context to which the line will be drawn.
*/
@available(tvOS 3.2, *)
func CTLineDraw(line: CTLine, _ context: CGContext)

/*!
    @function   CTLineGetTypographicBounds
    @abstract   Calculates the typographic bounds for a line.

    @discussion A line's typographic width is the distance to the rightmost
                glyph advance width edge. Note that this distance includes
                trailing whitespace glyphs.

    @param      line
                The line that you want to calculate the typographic bounds for.

    @param      ascent
                Upon return, this parameter will contain the ascent of the line.
                This may be set to NULL if not needed.

    @param      descent
                Upon return, this parameter will contain the descent of the line.
                This may be set to NULL if not needed.

    @param      leading
                Upon return, this parameter will contain the leading of the line.
                This may be set to NULL if not needed.

    @result     The typographic width of the line. If line is invalid, this
                function will always return zero.

    @seealso    CTLineGetTrailingWhitespaceWidth
*/
@available(tvOS 3.2, *)
func CTLineGetTypographicBounds(line: CTLine, _ ascent: UnsafeMutablePointer<CGFloat>, _ descent: UnsafeMutablePointer<CGFloat>, _ leading: UnsafeMutablePointer<CGFloat>) -> Double

/*!
    @function   CTLineGetBoundsWithOptions
    @abstract   Calculates the bounds for a line.

    @param      line
                The line that you want to calculate the bounds for.

    @param      options
                Desired options or 0 if none.

    @result     The bounds of the line as specified by the type and options,
                such that the coordinate origin is coincident with the line
                origin and the rect origin is at the bottom left. If the line
                is invalid this function will return CGRectNull.
*/
@available(tvOS 6.0, *)
func CTLineGetBoundsWithOptions(line: CTLine, _ options: CTLineBoundsOptions) -> CGRect

/*!
    @function   CTLineGetTrailingWhitespaceWidth
    @abstract   Calculates the trailing whitespace width for a line.

    @param      line
                The line that you want to calculate the trailing whitespace width
                for. Creating a line for a width can result in a line that is
                actually longer than the desired width due to trailing
                whitespace. Normally this is not an issue due to whitespace being
                invisible, but this function may be used to determine what amount
                of a line's width is due to trailing whitespace.

    @result     The width of the line's trailing whitespace. If line is invalid,
                this function will always return zero.
*/
@available(tvOS 3.2, *)
func CTLineGetTrailingWhitespaceWidth(line: CTLine) -> Double

/*!
    @function   CTLineGetImageBounds
    @abstract   Calculates the image bounds for a line.

    @discussion The image bounds for a line is the union of all non-empty glyph
                bounding rects, each positioned as it would be if drawn using
                CTLineDraw using the current context. Note that the result is
                ideal and does not account for raster coverage due to rendering.
                This function is purely a convenience for using glyphs as an
                image and should not be used for typographic purposes.

    @param      line
                The line that you want to calculate the image bounds for.

    @param      context
                The context which the image bounds will be calculated for or NULL,
                in which case the bounds are relative to CGPointZero.

    @result     A rectangle that tightly encloses the paths of the line's glyphs,
                which will be translated by the supplied context's text position.
                If the line is invalid, CGRectNull will be returned.

    @seealso    CTLineGetTypographicBounds
    @seealso    CTLineGetBoundsWithOptions
    @seealso    CTLineGetPenOffsetForFlush
*/
@available(tvOS 3.2, *)
func CTLineGetImageBounds(line: CTLine, _ context: CGContext?) -> CGRect

/*!
    @function   CTLineGetStringIndexForPosition
    @abstract   Performs hit testing.

    @discussion This function can be used to determine the string index for a
                mouse click or other event. This string index corresponds to the
                character before which the next character should be inserted.
                This determination is made by analyzing the string from which a
                typesetter was created and the corresponding glyphs as embodied
                by a particular line.

    @param      line
                The line being examined.

    @param      position
                The location of the mouse click relative to the line's origin.

    @result     The string index for the position. Relative to the line's string
                range, this value will be no less than the first string index and
                no greater than one plus the last string index. In the event of
                failure, this function will return kCFNotFound.
*/
@available(tvOS 3.2, *)
func CTLineGetStringIndexForPosition(line: CTLine, _ position: CGPoint) -> CFIndex

/*!
    @function   CTLineGetOffsetForStringIndex
    @abstract   Determines the graphical offset(s) for a string index.

    @discussion This function returns the graphical offset(s) corresponding to
                a string index, suitable for movement between adjacent lines or
                for drawing a custom caret. For the former, the primary offset
                may be adjusted for any relative indentation of the two lines;
                a CGPoint constructed with the adjusted offset for its x value
                and 0.0 for its y value is suitable for passing to
                CTLineGetStringIndexForPosition. In either case, the primary
                offset corresponds to the portion of the caret that represents
                the visual insertion location for a character whose direction
                matches the line's writing direction.

    @param      line
                The line from which the offset is requested.

    @param      charIndex
                The string index corresponding to the desired position.

    @param      secondaryOffset
                An output parameter that will be set to the secondary offset
                along the baseline for charIndex. When a single caret is
                sufficient for a string index, this value will be the same as
                the primary offset, which is the return value of this function.
                This parameter may be NULL.

    @result     The primary offset along the baseline for charIndex, or 0.0 in
                the event of failure.
*/
@available(tvOS 3.2, *)
func CTLineGetOffsetForStringIndex(line: CTLine, _ charIndex: CFIndex, _ secondaryOffset: UnsafeMutablePointer<CGFloat>) -> CGFloat

/*!
    @function   CTLineEnumerateCaretOffsets
    @abstract   Enumerates caret offsets for characters in a line.

    @discussion The provided block is invoked once for each logical caret edge in the line, in left-to-right visual order.

    @param      block
                The offset parameter is relative to the line origin. The leadingEdge parameter of this block refers to logical order.
*/
@available(tvOS 9.0, *)
func CTLineEnumerateCaretOffsets(line: CTLine, _ block: (Double, CFIndex, Bool, UnsafeMutablePointer<Bool>) -> Void)
typealias CTParagraphStyleRef = CTParagraphStyle

/*!
    @function   CTParagraphStyleGetTypeID
    @abstract   Returns the CFType of the paragraph style object
*/
@available(tvOS 3.2, *)
func CTParagraphStyleGetTypeID() -> CFTypeID

/*!
    @enum       CTTextAlignment
    @abstract   These constants specify text alignment.

    @constant   kCTTextAlignmentLeft
                Text is visually left-aligned.

    @constant   kCTTextAlignmentRight
                Text is visually right-aligned.

    @constant   kCTTextAlignmentCenter
                Text is visually center-aligned.

    @constant   kCTTextAlignmentJustified
                Text is fully justified. The last line in a paragraph is
                naturally aligned.

    @constant   kCTTextAlignmentNatural
                Use the natural alignment of the text's script.
*/
enum CTTextAlignment : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  @available(tvOS 6.0, *)
  case Left
  @available(tvOS 6.0, *)
  case Right
  @available(tvOS 6.0, *)
  case Center
  @available(tvOS 6.0, *)
  case Justified
  @available(tvOS 6.0, *)
  case Natural
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTLeftTextAlignment: CTTextAlignment { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTRightTextAlignment: CTTextAlignment { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTCenterTextAlignment: CTTextAlignment { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTJustifiedTextAlignment: CTTextAlignment { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTNaturalTextAlignment: CTTextAlignment { get }
}

/*!
    @enum       CTLineBreakMode
    @abstract   These constants specify what happens when a line is too long for
                its frame.

    @constant   kCTLineBreakByWordWrapping
                Wrapping occurs at word boundaries, unless the word itself doesn't
                fit on a single line.

    @constant   kCTLineBreakByCharWrapping
                Wrapping occurs before the first character that doesn't fit.

    @constant   kCTLineBreakByClipping
                Lines are simply not drawn past the edge of the frame.

    @constant   kCTLineBreakByTruncatingHead
                Each line is displayed so that the end fits in the frame and the
                missing text is indicated by some kind of ellipsis glyph.

    @constant   kCTLineBreakByTruncatingTail
                Each line is displayed so that the beginning fits in the
                container and the missing text is indicated by some kind of
                ellipsis glyph.

    @constant   kCTLineBreakByTruncatingMiddle
                Each line is displayed so that the beginning and end fit in the
                container and the missing text is indicated by some kind of
                ellipsis glyph in the middle.
*/
enum CTLineBreakMode : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case ByWordWrapping
  case ByCharWrapping
  case ByClipping
  case ByTruncatingHead
  case ByTruncatingTail
  case ByTruncatingMiddle
}

/*!
    @enum       CTWritingDirection
    @abstract   These constants specify the writing direction

    @constant   kCTWritingDirectionNatural
                The writing direction is algorithmically determined
                using the Unicode Bidirectional Algorithm rules P2 and P3.

    @constant   kCTWritingDirectionLeftToRight
                The writing direction is left to right.

    @constant   kCTWritingDirectionRightToLeft
                The writing direction is right to left.
*/
enum CTWritingDirection : Int8 {
  init?(rawValue: Int8)
  var rawValue: Int8 { get }
  case Natural
  case LeftToRight
  case RightToLeft
}

/*!
    @enum       CTParagraphStyleSpecifier
    @abstract   These constants are used to query and modify the CTParagraphStyle
                object.

    @discussion Each specifier has a type and a default value associated with it.
                The type must always be observed when setting or fetching the
                value from the CTParagraphStyle object. In addition, some
                specifiers affect the behavior of both the framesetter and
                the typesetter, and others only affect the behavior of the
                framesetter; this is also noted below.

    @constant   kCTParagraphStyleSpecifierAlignment
                The text alignment. Natural text alignment is realized as
                left or right alignment, depending on the line sweep direction
                of the first script contained in the paragraph.

                Type: CTTextAlignment
                Default: kCTNaturalTextAlignment
                Application: CTFramesetter


    @constant   kCTParagraphStyleSpecifierFirstLineHeadIndent
                The distance in points from the leading margin of a frame to
                the beginning of the paragraph's first line. This value is always
                nonnegative.

                Type: CGFloat
                Default: 0.0
                Application: CTFramesetter


    @constant   kCTParagraphStyleSpecifierHeadIndent
                The distance in points from the leading margin of a text
                container to the beginning of lines other than the first.
                This value is always nonnegative.

                Type: CGFloat
                Default: 0.0
                Application: CTFramesetter


    @constant   kCTParagraphStyleSpecifierTailIndent
                The distance in points from the margin of a frame to the end of
                lines. If positive, this value is the distance from the leading
                margin (for example, the left margin in left-to-right text).
                If 0 or negative, it's the distance from the trailing margin.

                Type: CGFloat
                Default: 0.0
                Application: CTFramesetter


    @constant   kCTParagraphStyleSpecifierTabStops
                The CTTextTab objects, sorted by location, that define the tab
                stops for the paragraph style.

                Type: CFArray of CTTextTabRef
                Default: 12 left-aligned tabs, spaced by 28.0 points
                Application: CTFramesetter, CTTypesetter


    @constant   kCTParagraphStyleSpecifierDefaultTabInterval
                The document-wide default tab interval. Tabs after the last
                specified by kCTParagraphStyleSpecifierTabStops are placed at
                integer multiples of this distance (if positive).

                Type: CGFloat
                Default: 0.0
                Application: CTFramesetter, CTTypesetter


    @constant   kCTParagraphStyleSpecifierLineBreakMode
                The mode that should be used to break lines when laying out
                the paragraph's text.

                Type: CTLineBreakMode
                Default: kCTLineBreakByWordWrapping
                Application: CTFramesetter


    @constant   kCTParagraphStyleSpecifierLineHeightMultiple
                The line height multiple. The natural line height of the
                receiver is multiplied by this factor (if positive) before
                being constrained by minimum and maximum line height.

                Type: CGFloat
                Default: 0.0
                Application: CTFramesetter


    @constant   kCTParagraphStyleSpecifierMaximumLineHeight
                The maximum height that any line in the frame will occupy,
                regardless of the font size or size of any attached graphic.
                Glyphs and graphics exceeding this height will overlap
                neighboring lines. A maximum height of 0 implies
                no line height limit. This value is always nonnegative.

                Type: CGFloat
                Default: 0.0
                Application: CTFramesetter


    @constant   kCTParagraphStyleSpecifierMinimumLineHeight
                The minimum height that any line in the frame will occupy,
                regardless of the font size or size of any attached graphic.
                This value is always nonnegative.

                Type: CGFloat
                Default: 0.0
                Application: CTFramesetter


    @constant   kCTParagraphStyleSpecifierLineSpacing
                Deprecated.
                Use kCTParagraphStyleSpecifierMaximumLineSpacing, kCTParagraphStyleSpecifierMinimumLineSpacing,
                and kCTParagraphStyleSpecifierLineSpacingAdjustment to control
                space between lines.


    @constant   kCTParagraphStyleSpecifierParagraphSpacing
                The space added at the end of the paragraph to separate it from
                the following paragraph. This value is always nonnegative and is
                determined by adding the previous paragraph's
                kCTParagraphStyleSpecifierParagraphSpacing setting and the
                current paragraph's kCTParagraphStyleSpecifierParagraphSpacingBefore
                setting.

                Type: CGFloat
                Default: 0.0
                Application: CTFramesetter


    @constant   kCTParagraphStyleSpecifierParagraphSpacingBefore
                The distance between the paragraph's top and the beginning of
                its text content.

                Type: CGFloat
                Default: 0.0
                Application: CTFramesetter


    @constant   kCTParagraphStyleSpecifierBaseWritingDirection
                The base writing direction of the lines.

                Type: CTWritingDirection
                Default: kCTWritingDirectionNatural
                Application: CTFramesetter, CTTypesetter


    @constant   kCTParagraphStyleSpecifierMaximumLineSpacing
                The maximum space in points between lines within the paragraph
                (commonly known as leading).

                Type: CGFloat
                Default: some large number.
                Application: CTFramesetter
 
 
    @constant   kCTParagraphStyleSpecifierMinimumLineSpacing
                The minimum space in points between lines within the paragraph
                (commonly known as leading).

                Type: CGFloat
                Default: 0.0
                Application: CTFramesetter
 
 
    @constant   kCTParagraphStyleSpecifierLineSpacingAdjustment
                The space in points added between lines within the paragraph
                (commonly known as leading). 

                Type: CGFloat
                Default: 0.0
                Application: CTFramesetter


    @constant   kCTParagraphStyleSpecifierLineBoundsOptions
                The options controlling the alignment of the line edges with
                the leading and trailing margins.

                Type: CTLineBoundsOptions
                Default: 0 (no options)
                Application: CTTypesetter
*/
enum CTParagraphStyleSpecifier : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Alignment
  case FirstLineHeadIndent
  case HeadIndent
  case TailIndent
  case TabStops
  case DefaultTabInterval
  case LineBreakMode
  case LineHeightMultiple
  case MaximumLineHeight
  case MinimumLineHeight
  case LineSpacing
  case ParagraphSpacing
  case ParagraphSpacingBefore
  case BaseWritingDirection
  case MaximumLineSpacing
  case MinimumLineSpacing
  case LineSpacingAdjustment
  case LineBoundsOptions
  case Count
}

/*!
    @struct     CTParagraphStyleSetting
    @abstract   This structure is used to alter the paragraph style.

    @field      spec
                The specifier of the setting.

    @field      valueSize
                The size of the value pointed to by the "value" field. This
                must match the size of the value required by the
                CTParagraphStyleSpecifier set in the "spec" field.

    @field      value
                A reference to the value of the setting specified by the
                "spec" field. The value must be in the proper range for the
                spec value. The value must also be at least valueSize.
*/
struct CTParagraphStyleSetting {
  var spec: CTParagraphStyleSpecifier
  var valueSize: Int
  var value: UnsafePointer<Void>
}

/*!
    @function   CTParagraphStyleCreate
    @abstract   Creates an immutable paragraph style.

    @discussion Using this function is the easiest and most efficient way to
                create a paragraph style. Paragraph styles should be kept
                immutable for totally lock-free operation.

                If an invalid paragraph style setting specifier is passed into
                the "settings" parameter, nothing bad will happen but just don't
                expect to be able to query for this value. This is to allow
                backwards compatibility with style setting specifiers that may
                be introduced in future versions.

    @param      settings
                The settings that you wish to pre-load the paragraph style
                with. If you wish to specify the default set of settings,
                then this parameter may be set to NULL.

    @param      settingCount
                The number of settings that you have specified in the
                "settings" parameter. This must be greater than or equal
                to zero.

    @result     If the paragraph style creation was successful, this function
                will return a valid reference to an immutable CTParagraphStyle
                object. Otherwise, this function will return NULL.
*/
@available(tvOS 3.2, *)
func CTParagraphStyleCreate(settings: UnsafePointer<CTParagraphStyleSetting>, _ settingCount: Int) -> CTParagraphStyle

/*!
    @function   CTParagraphStyleCreateCopy
    @abstract   Creates an immutable copy of a paragraph style.

    @param      paragraphStyle
                The style that you wish to copy.

    @result     If the "paragraphStyle" reference is valid, then this
                function will return valid reference to an immutable
                CTParagraphStyle object that is a copy of the one passed into
                "paragraphStyle".
*/
@available(tvOS 3.2, *)
func CTParagraphStyleCreateCopy(paragraphStyle: CTParagraphStyle) -> CTParagraphStyle

/*!
    @function   CTParagraphStyleGetValueForSpecifier
    @abstract   Obtains the current value for a single setting specifier.

    @discussion This function will return the current value of the specifier
                whether or not the user had actually set it. If the user has
                not set it, this function will return the default value.

                If an invalid paragraph style setting specifier is passed into
                the "spec" parameter, nothing bad will happen and the buffer
                value will simply be zeroed out. This is to allow backwards
                compatibility with style setting specifier that may be introduced
                in future versions.

    @param      paragraphStyle
                The paragraph style that you wish to get the value from.

    @param      spec
                The setting specifier that you want to get the value for.

    @param      valueBufferSize
                The size of the buffer pointed to by the "valueBuffer" parameter.
                This value must be at least as large as the size the required by
                the CTParagraphSpecifier value set in the "spec" parameter.

    @param      valueBuffer
                The buffer where the requested setting value will be written
                upon successful completion. The buffer's size needs to be at least
                as large as the value passed into "valueBufferSize".

    @result     This function will return "true" if the valueBuffer had been
                successfully filled. Otherwise, this function will return false,
                indicating that one or more of the parameters is not valid.
*/
@available(tvOS 3.2, *)
func CTParagraphStyleGetValueForSpecifier(paragraphStyle: CTParagraphStyle, _ spec: CTParagraphStyleSpecifier, _ valueBufferSize: Int, _ valueBuffer: UnsafeMutablePointer<Void>) -> Bool
typealias CTRubyAnnotationRef = CTRubyAnnotation

/*!
    @function	CTRubyAnnotationGetTypeID
    @abstract	Returns the CFType of the ruby annotation object
*/
@available(tvOS 8.0, *)
func CTRubyAnnotationGetTypeID() -> CFTypeID

/*!
    @enum       CTRubyAlignment
    @abstract   These constants specify how to align the ruby annotation and the base text relative to each other when they don't have the same length.

    @constant   kCTRubyAlignmentAuto
                CoreText will determine the alignment.

    @constant   kCTRubyAlignmentStart
                The ruby text is aligned with the start edge of the base text.

    @constant   kCTRubyAlignmentCenter
                The ruby text is centered within the width of the base text. If the ruby text is wider than the base text the base text is centered in the width of the ruby text.

    @constant   kCTRubyAlignmentEnd
                The ruby text is aligned with the end edge of the base text.

    @constant   kCTRubyAlignmentDistributeLetter
                If the width of the ruby text is less than the width of the base text, the ruby text is evenly distributed over the width of the base text, with the first letter of the ruby text aligning with the first letter of the base text and the last letter of the ruby text aligning with the last letter of the base text. If the width of the base text is less than the width of the ruby text, the base text is evenly distributed over the width of the ruby text.

    @constant   kCTRubyAlignmentDistributeSpace
                If the width of the ruby text is less than the width of the base text, the ruby text is evenly distributed over the width of the base text, with a certain amount of space, usually half the inter-character width of the ruby text, before the first and after the last character. If the width of the base text is less than the width of the ruby text, the base text is similarly aligned to the width of the ruby text.

    @constant   kCTRubyAlignmentLineEdge
                If the ruby text is not adjacent to a line edge it is aligned as with kCTRubyAlignmentAuto. If it is adjacent to a line edge the end of ruby text adjacent to the line edge is aligned to the line edge. This is only relevant if the width of the ruby text is greater than the width of the base text; otherwise alignment is as with kCTRubyAlignmentAuto.
*/
@available(tvOS 8.0, *)
enum CTRubyAlignment : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case Invalid
  case Auto
  case Start
  case Center
  case End
  case DistributeLetter
  case DistributeSpace
  case LineEdge
}

/*!
    @enum       CTRubyOverhang
    @abstract   These constants specify whether, and on which side, ruby text is allowed to overhang adjacent text if it is wider than the base text.

    @constant   kCTRubyOverhangAuto
                The ruby text can overhang adjacent text on both sides.

    @constant   kCTRubyOverhangStart
                The ruby text can overhang the text that proceeds it.

    @constant   kCTRubyOverhangEnd
                The ruby text can overhang the text that follows it.

    @constant   kCTRubyOverhangNone
                The ruby text cannot overhang the proceeding or following text.
*/
@available(tvOS 8.0, *)
enum CTRubyOverhang : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case Invalid
  case Auto
  case Start
  case End
  case None
}

/*!
    @enum       CTRubyPosition
    @abstract   These constants specify the position of the ruby text with respect to the base text.

    @constant   kCTRubyPositionBefore
                The ruby text is positioned before the base text; i.e. above horizontal text and to the right of vertical text.

    @constant   kCTRubyPositionAfter
                The ruby text is positioned after the base text; i.e. below horizontal text and to the left of vertical text.

    @constant   kCTRubyPositionInterCharacter
                The ruby text is positioned to the right of the base text whether it is horizontal or vertical. This is the way that Bopomofo annotations are attached to Chinese text in Taiwan.

    @constant   kCTRubyPositionInline
                The ruby text follows the base text with no special styling.
*/
@available(tvOS 8.0, *)
enum CTRubyPosition : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case Before
  case After
  case InterCharacter
  case Inline
  case Count
}

/*!
    @function   CTRubyAnnotationCreate
    @abstract   Creates an immutable ruby annotation object.

    @discussion Using this function is the easiest and most efficient way to
                create a ruby annotation object.

    @param      alignment
                Specifies how the ruby text and the base text should be aligned relative to each other.

    @param      overhang
                Specifies how the ruby text can overhang adjacent characters.

    @param		sizeFactor
                Specifies the size of the annotation text as a percent of the size of the base text.

    @param      text
                An array of CFStringRef, indexed by CTRubyPosition. Supply NULL for any unused positions.

    @result     This function will return a reference to a CTRubyAlignment object.
*/
@available(tvOS 8.0, *)
func CTRubyAnnotationCreate(alignment: CTRubyAlignment, _ overhang: CTRubyOverhang, _ sizeFactor: CGFloat, _ text: UnsafeMutablePointer<Unmanaged<CFString>?>) -> CTRubyAnnotation

/*!
    @function   CTRubyAnnotationCreateCopy
    @abstract   Creates an immutable copy of a ruby annotation object.

    @param      rubyAnnotation
                The ruby annotation that you wish to copy.

    @result     If the "rubyAnnotation" reference is valid, then this
                function will return valid reference to an immutable
                CTRubyAnnotation object that is a copy of the one passed into
                "rubyAnnotation".
*/
@available(tvOS 8.0, *)
func CTRubyAnnotationCreateCopy(rubyAnnotation: CTRubyAnnotation) -> CTRubyAnnotation

/*!
    @function   CTRubyAnnotationGetAlignment
    @abstract   Get the alignment value of a ruby annotation object.

    @param      rubyAnnotation
                The ruby annotation object.

    @result     If the "rubyAnnotation" reference is valid, then this
                function will return its alignment. Otherwise it will return kCTRubyAlignmentInvalid.
*/
@available(tvOS 8.0, *)
func CTRubyAnnotationGetAlignment(rubyAnnotation: CTRubyAnnotation) -> CTRubyAlignment

/*!
    @function   CTRubyAnnotationGetOverhang
    @abstract   Get the overhang value of a ruby annotation object.

    @param      rubyAnnotation
                The ruby annotation object.

    @result     If the "rubyAnnotation" reference is valid, then this
                function will return its overhang value. Otherwise it will return kCTRubyOverhangInvalid.
*/
@available(tvOS 8.0, *)
func CTRubyAnnotationGetOverhang(rubyAnnotation: CTRubyAnnotation) -> CTRubyOverhang

/*!
    @function   CTRubyAnnotationGetSizeFactor
    @abstract   Get the size factor of a ruby annotation object.

    @param      rubyAnnotation
                The ruby annotation object.

    @result     If the "rubyAnnotation" reference is valid, then this
                function will return its sizeFactor. Otherwise it will return 0.
*/
@available(tvOS 8.0, *)
func CTRubyAnnotationGetSizeFactor(rubyAnnotation: CTRubyAnnotation) -> CGFloat

/*!
    @function   CTRubyAnnotationGetTextForPosition
    @abstract   Get the ruby text for a particular position in a ruby annotation.

    @param      rubyAnnotation
                The ruby annotation object.

    @param      postion
                The position for which you want to get the ruby text.

    @result     If the "rubyAnnotation" reference and the position are valid, then this
                function will return a CFStringRef for the text. Otherwise it will return NULL.
*/
@available(tvOS 8.0, *)
func CTRubyAnnotationGetTextForPosition(rubyAnnotation: CTRubyAnnotation, _ position: CTRubyPosition) -> CFString?
typealias CTRunRef = CTRun

/*!
    @enum       CTRunStatus
    @abstract   A bitfield passed back by CTRunGetStatus that is used to
                indicate the disposition of the run.

    @constant   kCTRunStatusNoStatus
                The run has no special attributes.

    @constant   kCTRunStatusRightToLeft
                When set, the run is right to left.

    @constant   kCTRunStatusNonMonotonic
                When set, the run has been reordered in some way such that
                the string indices associated with the glyphs are no longer
                strictly increasing (for left to right runs) or decreasing
                (for right to left runs).

    @constant   kCTRunStatusHasNonIdentityMatrix
                When set, the run requires a specific text matrix to be set
                in the current CG context for proper drawing.
*/
struct CTRunStatus : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var NoStatus: CTRunStatus { get }
  static var RightToLeft: CTRunStatus { get }
  static var NonMonotonic: CTRunStatus { get }
  static var HasNonIdentityMatrix: CTRunStatus { get }
}

/*!
    @function   CTRunGetTypeID
    @abstract   Returns the CFType of the run object
*/
@available(tvOS 3.2, *)
func CTRunGetTypeID() -> CFTypeID

/*!
    @function   CTRunGetGlyphCount
    @abstract   Gets the glyph count for the run.

    @param      run
                The run whose glyph count you wish to access.

    @result     The number of glyphs that the run contains. It is totally
                possible that this function could return a value of zero,
                indicating that there are no glyphs in this run.
*/
@available(tvOS 3.2, *)
func CTRunGetGlyphCount(run: CTRun) -> CFIndex

/*!
    @function   CTRunGetAttributes
    @abstract   Returns the attribute dictionary that was used to create the
                glyph run.

    @discussion This dictionary returned is either the same exact one that was
                set as an attribute dictionary on the original attributed string
                or a dictionary that has been manufactured by the layout engine.
                Attribute dictionaries can be manufactured in the case of font
                substitution or if they are missing critical attributes.

    @param      run
                The run whose attributes you wish to access.

    @result     The attribute dictionary.
*/
@available(tvOS 3.2, *)
func CTRunGetAttributes(run: CTRun) -> CFDictionary

/*!
    @function   CTRunGetStatus
    @abstract   Returns the run's status.

    @discussion In addition to attributes, runs also have status that can be
                used to expedite certain operations. Knowing the direction and
                ordering of a run's glyphs can aid in string index analysis,
                whereas knowing whether the positions reference the identity
                text matrix can avoid expensive comparisons. Note that this
                status is provided as a convenience, since this information is
                not strictly necessary but can certainly be helpful.

    @param      run
                The run whose status you wish to access.

    @result     The run's status.
*/
@available(tvOS 3.2, *)
func CTRunGetStatus(run: CTRun) -> CTRunStatus

/*!
    @function   CTRunGetGlyphsPtr
    @abstract   Returns a direct pointer for the glyph array stored in the run.

    @discussion The glyph array will have a length equal to the value returned by
                CTRunGetGlyphCount. The caller should be prepared for this
                function to return NULL even if there are glyphs in the stream.
                Should this function return NULL, the caller will need to
                allocate their own buffer and call CTRunGetGlyphs to fetch the
                glyphs.

    @param      run
                The run whose glyphs you wish to access.

    @result     A valid pointer to an array of CGGlyph structures or NULL.
*/
@available(tvOS 3.2, *)
func CTRunGetGlyphsPtr(run: CTRun) -> UnsafePointer<CGGlyph>

/*!
    @function   CTRunGetGlyphs
    @abstract   Copies a range of glyphs into user-provided buffer.

    @param      run
                The run whose glyphs you wish to copy.

    @param      range
                The range of glyphs to be copied, with the entire range having a
                location of 0 and a length of CTRunGetGlyphCount. If the length
                of the range is set to 0, then the operation will continue from
                the range's start index to the end of the run.

    @param      buffer
                The buffer where the glyphs will be copied to. The buffer must be
                allocated to at least the value specified by the range's length.
*/
@available(tvOS 3.2, *)
func CTRunGetGlyphs(run: CTRun, _ range: CFRange, _ buffer: UnsafeMutablePointer<CGGlyph>)

/*!
    @function   CTRunGetPositionsPtr
    @abstract   Returns a direct pointer for the glyph position array stored in
                the run.

    @discussion The glyph positions in a run are relative to the origin of the
                line containing the run. The position array will have a length
                equal to the value returned by CTRunGetGlyphCount. The caller
                should be prepared for this function to return NULL even if there
                are glyphs in the stream. Should this function return NULL, the
                caller will need to allocate their own buffer and call
                CTRunGetPositions to fetch the positions.

    @param      run
                The run whose positions you wish to access.

    @result     A valid pointer to an array of CGPoint structures or NULL.
*/
@available(tvOS 3.2, *)
func CTRunGetPositionsPtr(run: CTRun) -> UnsafePointer<CGPoint>

/*!
    @function   CTRunGetPositions
    @abstract   Copies a range of glyph positions into a user-provided buffer.

    @discussion The glyph positions in a run are relative to the origin of the
                line containing the run.

    @param      run
                The run whose positions you wish to copy.

    @param      range
                The range of glyph positions to be copied, with the entire range
                having a location of 0 and a length of CTRunGetGlyphCount. If the
                length of the range is set to 0, then the operation will continue
                from the range's start index to the end of the run.

    @param      buffer
                The buffer where the glyph positions will be copied to. The buffer
                must be allocated to at least the value specified by the range's
                length.
*/
@available(tvOS 3.2, *)
func CTRunGetPositions(run: CTRun, _ range: CFRange, _ buffer: UnsafeMutablePointer<CGPoint>)

/*!
    @function   CTRunGetAdvancesPtr
    @abstract   Returns a direct pointer for the glyph advance array stored in
                the run.

    @discussion The advance array will have a length equal to the value returned
                by CTRunGetGlyphCount. The caller should be prepared for this
                function to return NULL even if there are glyphs in the stream.
                Should this function return NULL, the caller will need to
                allocate their own buffer and call CTRunGetAdvances to fetch the
                advances. Note that advances alone are not sufficient for correctly
                positioning glyphs in a line, as a run may have a non-identity
                matrix or the initial glyph in a line may have a non-zero origin;
                callers should consider using positions instead.

    @param      run
                The run whose advances you wish to access.

    @result     A valid pointer to an array of CGSize structures or NULL.
*/
@available(tvOS 3.2, *)
func CTRunGetAdvancesPtr(run: CTRun) -> UnsafePointer<CGSize>

/*!
    @function   CTRunGetAdvances
    @abstract   Copies a range of glyph advances into a user-provided buffer.

    @param      run
                The run whose advances you wish to copy.

    @param      range
                The range of glyph advances to be copied, with the entire range
                having a location of 0 and a length of CTRunGetGlyphCount. If the
                length of the range is set to 0, then the operation will continue
                from the range's start index to the end of the run.

    @param      buffer
                The buffer where the glyph advances will be copied to. The buffer
                must be allocated to at least the value specified by the range's
                length.
*/
@available(tvOS 3.2, *)
func CTRunGetAdvances(run: CTRun, _ range: CFRange, _ buffer: UnsafeMutablePointer<CGSize>)

/*!
    @function   CTRunGetStringIndicesPtr
    @abstract   Returns a direct pointer for the string indices stored in the run.

    @discussion The indices are the character indices that originally spawned the
                glyphs that make up the run. They can be used to map the glyphs in
                the run back to the characters in the backing store. The string
                indices array will have a length equal to the value returned by
                CTRunGetGlyphCount. The caller should be prepared for this
                function to return NULL even if there are glyphs in the stream.
                Should this function return NULL, the caller will need to allocate
                their own buffer and call CTRunGetStringIndices to fetch the
                indices.

    @param      run
                The run whose string indices you wish to access.

    @result     A valid pointer to an array of CFIndex structures or NULL.
*/
@available(tvOS 3.2, *)
func CTRunGetStringIndicesPtr(run: CTRun) -> UnsafePointer<CFIndex>

/*!
    @function   CTRunGetStringIndices
    @abstract   Copies a range of string indices int o a user-provided buffer.

    @discussion The indices are the character indices that originally spawned the
                glyphs that make up the run. They can be used to map the glyphs
                in the run back to the characters in the backing store.

    @param      run
                The run whose string indices you wish to copy.

    @param      range
                The range of string indices to be copied, with the entire range
                having a location of 0 and a length of CTRunGetGlyphCount. If the
                length of the range is set to 0, then the operation will continue
                from the range's start index to the end of the run.

    @param      buffer
                The buffer where the string indices will be copied to. The buffer
                must be allocated to at least the value specified by the range's
                length.
*/
@available(tvOS 3.2, *)
func CTRunGetStringIndices(run: CTRun, _ range: CFRange, _ buffer: UnsafeMutablePointer<CFIndex>)

/*!
    @function   CTRunGetStringRange
    @abstract   Gets the range of characters that originally spawned the glyphs
                in the run.

    @param      run
                The run whose string range you wish to access.

    @result     Returns the range of characters that originally spawned the
                glyphs. If run is invalid, this will return an empty range.
*/
@available(tvOS 3.2, *)
func CTRunGetStringRange(run: CTRun) -> CFRange

/*!
    @function   CTRunGetTypographicBounds
    @abstract   Gets the typographic bounds of the run.

    @param      run
                The run that you want to calculate the typographic bounds for.

    @param      range
                The range of glyphs to be measured, with the entire range having
                a location of 0 and a length of CTRunGetGlyphCount. If the length
                of the range is set to 0, then the operation will continue from
                the range's start index to the end of the run.

    @param      ascent
                Upon return, this parameter will contain the ascent of the run.
                This may be set to NULL if not needed.

    @param      descent
                Upon return, this parameter will contain the descent of the run.
                This may be set to NULL if not needed.

    @param      leading
                Upon return, this parameter will contain the leading of the run.
                This may be set to NULL if not needed.

    @result     The typographic width of the run. If run or range is
                invalid, then this function will always return zero.
*/
@available(tvOS 3.2, *)
func CTRunGetTypographicBounds(run: CTRun, _ range: CFRange, _ ascent: UnsafeMutablePointer<CGFloat>, _ descent: UnsafeMutablePointer<CGFloat>, _ leading: UnsafeMutablePointer<CGFloat>) -> Double

/*!
    @function   CTRunGetImageBounds
    @abstract   Calculates the image bounds for a glyph range.

    @discussion The image bounds for a run is the union of all non-empty glyph
                bounding rects, each positioned as it would be if drawn using
                CTRunDraw using the current context. Note that the result is
                ideal and does not account for raster coverage due to rendering.
                This function is purely a convenience for using glyphs as an
                image and should not be used for typographic purposes.

    @param      run
                The run that you want to calculate the image bounds for.

    @param      context
                The context which the image bounds will be calculated for or NULL,
                in which case the bounds are relative to CGPointZero.

    @param      range
                The range of glyphs to be measured, with the entire range having
                a location of 0 and a length of CTRunGetGlyphCount. If the length
                of the range is set to 0, then the operation will continue from
                the range's start index to the end of the run.

    @result     A rect that tightly encloses the paths of the run's glyphs. The
                rect origin will match the drawn position of the requested range;
                that is, it will be translated by the supplied context's text
                position and the positions of the individual glyphs. If the run
                or range is invalid, CGRectNull will be returned.

    @seealso    CTRunGetTypographicBounds
*/
@available(tvOS 3.2, *)
func CTRunGetImageBounds(run: CTRun, _ context: CGContext?, _ range: CFRange) -> CGRect

/*!
    @function   CTRunGetTextMatrix
    @abstract   Returns the text matrix needed to draw this run.

    @discussion To properly draw the glyphs in a run, the fields 'tx' and 'ty' of
                the CGAffineTransform returned by this function should be set to
                the current text position.

    @param      run
                The run object from which to get the text matrix.

    @result     A CGAffineTransform.
*/
@available(tvOS 3.2, *)
func CTRunGetTextMatrix(run: CTRun) -> CGAffineTransform

/*!
    @function   CTRunDraw
    @abstract   Draws a complete run or part of one.

    @discussion This is a convenience call, since the run could also be drawn by
                accessing its glyphs, positions, and text matrix. Unlike when
                drawing the entire line containing the run with CTLineDraw, the
                run's underline (if any) will not be drawn, since the underline's
                appearance may depend on other runs in the line. Note that this
                call may leave the graphics context in any state and does not
                flush the context after the draw operation.

    @param      run
                The run that you want to draw.

    @param      context
                The context to draw the run to.

    @param      range
                The range of glyphs to be drawn, with the entire range having a
                location of 0 and a length of CTRunGetGlyphCount. If the length
                of the range is set to 0, then the operation will continue from
                the range's start index to the end of the run.
*/
@available(tvOS 3.2, *)
func CTRunDraw(run: CTRun, _ context: CGContext, _ range: CFRange)
typealias CTRunDelegateRef = CTRunDelegate

/*!
	@function	CTRunDelegateGetTypeID
	@abstract	Returns the CFType of CTRunDelegate objects.
*/
@available(tvOS 3.2, *)
func CTRunDelegateGetTypeID() -> CFTypeID

/*!
	@typedef	CTRunDelegateDeallocateCallback
	@abstract	The callback invoked when a CTRunDelegate is deallocated.
	
	@param		refCon
				The value supplied to CTRunDelegateCreate.
*/
typealias CTRunDelegateDeallocateCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void

/*!
	@typedef	CTRunDelegateGetAscentCallback
	@abstract	The callback used to determine typographic ascent.
	
	@param		refCon
				The value supplied to CTRunDelegateCreate.
				
	@result		A CGFloat value indicating the typographic ascent of glyphs to
				which a run delegate pertains.
*/
typealias CTRunDelegateGetAscentCallback = @convention(c) (UnsafeMutablePointer<Void>) -> CGFloat

/*!
	@typedef	CTRunDelegateGetDescentCallback
	@abstract	The callback used to determine typographic descent.
	
	@param		refCon
				The value supplied to CTRunDelegateCreate.
				
	@result		A CGFloat value indicating the typographic descent of glyphs to
				which a run delegate pertains.
*/
typealias CTRunDelegateGetDescentCallback = @convention(c) (UnsafeMutablePointer<Void>) -> CGFloat

/*!
	@typedef	CTRunDelegateGetWidthCallback
	@abstract	The callback used to determine width.
	
	@param		refCon
				The value supplied to CTRunDelegateCreate.
				
	@result		A CGFloat value indicating the width of glyphs to which a run
				delegate pertains. A value of 0.0 indicates that the glyphs
				should not be drawn.
*/
typealias CTRunDelegateGetWidthCallback = @convention(c) (UnsafeMutablePointer<Void>) -> CGFloat

/*!
	@typedef	CTRunDelegateCallbacks
	@abstract	Structure containing the callbacks of a CTRunDelegate.
	
	@discussion These callbacks are provided by the owner of a run delegate and
				are used to modify glyph metrics during layout. The values
				returned by a delegate are applied to each glyph in the run(s)
				corresponding to the attribute containing that delegate.
				
	@field		version
				The version number of the callbacks being passed in as a
				parameter to CTRunDelegateCreate. This field should always 
				be set to kCTRunDelegateCurrentVersion.
				
	@field		dealloc
				The callback used when a CTRunDelegate's retain count reaches
				0 and the CTRunDelegate is deallocated. This callback may be
				NULL.
				
	@field		getAscent
				The callback used to indicate the ascent of the
				CTRunDelegate. This callback may be NULL, which is equivalent
				to a getAscent callback that always returns 0.
				
	@field		getDescent
				The callback used to indicate the descent of the
				CTRunDelegate. This callback may be NULL, which is equivalent
				to a getDescent callback that always returns 0.
				
	@field		getWidth
				The callback used to indicate the width of the
				CTRunDelegate. This callback may be NULL, which is equivalent
				to a getWidth callback that always returns 0.
*/
struct CTRunDelegateCallbacks {
  var version: CFIndex
  var dealloc: CTRunDelegateDeallocateCallback
  var getAscent: CTRunDelegateGetAscentCallback
  var getDescent: CTRunDelegateGetDescentCallback
  var getWidth: CTRunDelegateGetWidthCallback
}
var kCTRunDelegateVersion1: Int { get }
var kCTRunDelegateCurrentVersion: Int { get }

/*!
	@function	CTRunDelegateCreate
	@abstract	Creates an immutable instance of a run delegate.

	@discussion This function creates an immutable instance of a run delegate
				that can be used for reserving space in a line or for eliding the
				glyphs for a range of text altogether. 
				
	@param		callbacks
				The callbacks for this run delegate.
				
	@result		If run delegate creation was successful, this function will
				return a valid reference to an immutable CTRunDelegate
				object. Otherwise, this function will return NULL.
*/
@available(tvOS 3.2, *)
func CTRunDelegateCreate(callbacks: UnsafePointer<CTRunDelegateCallbacks>, _ refCon: UnsafeMutablePointer<Void>) -> CTRunDelegate?

/*!
	@function	CTRunDelegateGetRefCon
	@abstract	Returns a run delegate's refCon value.

	@discussion This function returns the refCon value that a run delegate was
				created with.
				
	@param		runDelegate
				The run delegate to be queried.
				
	@result		The refCon value of the supplied run delegate.
*/
@available(tvOS 3.2, *)
func CTRunDelegateGetRefCon(runDelegate: CTRunDelegate) -> UnsafeMutablePointer<Void>

/*!
    @const      kCTFontAttributeName
    @abstract   The font.

    @discussion Value must be a CTFontRef. Default is Helvetica 12.
*/
@available(tvOS 3.2, *)
let kCTFontAttributeName: CFString

/*!
    @const      kCTForegroundColorFromContextAttributeName
    @abstract   Never set a foreground color in the CGContext; use what is set as
                the context's fill color.

    @discussion Value must be a CFBooleanRef. Default is false. The reason
                why this exists is because an NSAttributedString defaults to a
                black color if no color attribute is set. This forces CoreText to
                set the color in the context. This will allow developers to
                sidestep this, making CoreText set nothing but font information
                in the CGContext. If set, this attribute also determines the
                color used by kCTUnderlineStyleAttributeName, in which case it
                overrides the foreground color.
*/
@available(tvOS 3.2, *)
let kCTForegroundColorFromContextAttributeName: CFString

/*!
    @const      kCTKernAttributeName
    @abstract   A kerning adjustment.

    @discussion Value must be a CFNumberRef float. Default is standard kerning.
                The kerning attribute indicate how many points the following
                character should be shifted from its default offset as defined
                by the current character's font in points; a positive kern
                indicates a shift farther along and a negative kern indicates a
                shift closer to the current character. If this attribute is not
                present, standard kerning will be used. If this attribute is
                set to 0.0, no kerning will be done at all.
*/
@available(tvOS 3.2, *)
let kCTKernAttributeName: CFString

/*!
    @const      kCTLigatureAttributeName
    @abstract   Controls ligature formation.

    @discussion Value must be a CFNumberRef. Default is int value 1. The ligature
                attribute determines what kinds of ligatures should be used when
                displaying the string. A value of 0 indicates that only ligatures
                essential for proper rendering of text should be used, 1
                indicates that standard ligatures should be used, and 2 indicates
                that all available ligatures should be used. Which ligatures are
                standard depends on the script and possibly the font. Arabic
                text, for example, requires ligatures for many character
                sequences, but has a rich set of additional ligatures that
                combine characters. English text has no essential ligatures, and
                typically has only two standard ligatures, those for "fi" and
                "fl" -- all others being considered more advanced or fancy.

                On iOS releases prior to 6.0 essential ligatures are applied
                if the font contains glyphs for any of U+FB00 through U+FB04 and
                the font lacks AAT or OpenType shaping tables, but as of 6.0
                shaping tables (or the lack thereof) are treated as definitive.
*/
@available(tvOS 3.2, *)
let kCTLigatureAttributeName: CFString

/*!
    @const      kCTForegroundColorAttributeName
    @abstract   The foreground color.

    @discussion Value must be a CGColorRef. Default value is black.
*/
@available(tvOS 3.2, *)
let kCTForegroundColorAttributeName: CFString

/*!
    @const      kCTParagraphStyleAttributeName
    @abstract   A CTParagraphStyle object which is used to specify things like
                line alignment, tab rulers, writing direction, etc.

    @discussion Value must be a CTParagraphStyleRef. Default is an empty
                CTParagraphStyle object. See CTParagraphStyle.h for more
                information.
*/
@available(tvOS 3.2, *)
let kCTParagraphStyleAttributeName: CFString

/*!
    @const      kCTStrokeWidthAttributeName
    @abstract   The stroke width.

    @discussion Value must be a CFNumberRef. Default value is 0.0, or no stroke.
                This attribute, interpreted as a percentage of font point size,
                controls the text drawing mode: positive values effect drawing
                with stroke only; negative values are for stroke and fill. A
                typical value for outlined text is 3.0.
*/
@available(tvOS 3.2, *)
let kCTStrokeWidthAttributeName: CFString

/*!
    @const      kCTStrokeColorAttributeName
    @abstract   The stroke color.

    @discussion Value must be a CGColorRef. Default is the foreground color.
*/
@available(tvOS 3.2, *)
let kCTStrokeColorAttributeName: CFString

/*!
    @const      kCTUnderlineStyleAttributeName
    @abstract   Allows the setting of an underline to be applied at render
                time.

    @discussion Value must be a CFNumberRef. Default is kCTUnderlineStyleNone.
                Set a value of something other than kCTUnderlineStyleNone to draw
                an underline. In addition, the CTUnderlineStyleModifiers can be
                used to modify the look of the underline. The underline color
                will be determined by the text's foreground color.
*/
@available(tvOS 3.2, *)
let kCTUnderlineStyleAttributeName: CFString

/*!
    @const      kCTSuperscriptAttributeName
    @abstract   Controls vertical text positioning.

    @discussion Value must be a CFNumberRef. Default is int value 0. If supported
                by the specified font, a value of 1 enables superscripting and a
                value of -1 enables subscripting.
*/
@available(tvOS 3.2, *)
let kCTSuperscriptAttributeName: CFString

/*!
    @const      kCTUnderlineColorAttributeName
    @abstract   The underline color.

    @discussion Value must be a CGColorRef. Default is the foreground color.
*/
@available(tvOS 3.2, *)
let kCTUnderlineColorAttributeName: CFString

/*!
    @const      kCTVerticalFormsAttributeName
    @abstract   Controls glyph orientation.

    @discussion Value must be a CFBooleanRef. Default is false. A value of false
                indicates that horizontal glyph forms are to be used, true
                indicates that vertical glyph forms are to be used.
*/
@available(tvOS 4.3, *)
let kCTVerticalFormsAttributeName: CFString

/*!
    @const      kCTGlyphInfoAttributeName
    @abstract   Allows the use of unencoded glyphs.

    @discussion Value must be a CTGlyphInfoRef. The glyph specified by this
                CTGlyphInfo object is assigned to the entire attribute range,
                provided that its contents match the specified base string and
                that the specified glyph is available in the font specified by
                kCTFontAttributeName. See CTGlyphInfo.h for more information.
*/
@available(tvOS 3.2, *)
let kCTGlyphInfoAttributeName: CFString

/*!
    @const      kCTCharacterShapeAttributeName
    @abstract   Controls glyph selection.

    @discussion Value must be a CFNumberRef. Default is value is 0 (disabled).
                A non-zero value is interpreted as an SFNT kCharacterShapeType
                selector + 1; see SFNTLayoutTypes.h for selectors. For example,
                an attribute value of 1 corresponds to kTraditionalCharactersSelector.
*/
@available(tvOS, introduced=3.2, deprecated=9.0)
let kCTCharacterShapeAttributeName: CFString

/*!
    @const      kCTLanguageAttributeName
    @abstract   Specifies text language.

    @discussion Value must be a CFStringRef containing a locale identifier. Default
                is unset. When this attribute is set to a valid identifier, it will
                be used to select localized glyphs (if supported by the font) and
                locale-specific line breaking rules.
*/
@available(tvOS 7.0, *)
let kCTLanguageAttributeName: CFString

/*!
    @const      kCTRunDelegateAttributeName
    @abstract   Allows customization of certain aspects of a range of text's
                appearance.

    @discussion Value must be a CTRunDelegateRef. The values returned by the
                embedded object for an attribute range apply to each glyph
                resulting from the text in that range. Because an embedded object
                is only a display-time modification, care should be taken to
                avoid applying this attribute to a range of text with complex
                behavior, such as a change of writing direction, combining marks,
                etc. Consequently, it is recommended that this attribute be
                applied to a range containing the single character U+FFFC. See
                CTRunDelegate.h for more information.
*/
@available(tvOS 3.2, *)
let kCTRunDelegateAttributeName: CFString

/*!
    @enum       CTUnderlineStyle
    @abstract   Underline style specifiers.

    @discussion These underline type specifiers can be applied to the value set
                with the kCTUnderlineStyleAttributeName attribute to tell
                CoreText that you want a different underline style.
*/
struct CTUnderlineStyle : OptionSetType {
  init(rawValue: Int32)
  let rawValue: Int32
  static var None: CTUnderlineStyle { get }
  static var Single: CTUnderlineStyle { get }
  static var Thick: CTUnderlineStyle { get }
  static var Double: CTUnderlineStyle { get }
}

/*!
    @enum       CTUnderlineStyleModifiers
    @abstract   Underline style modifiers.

    @discussion Set these bits with the CTUnderlineStyle that you set with the
                kCTUnderlineStyleAttributeName attribute to modify how the
                underline will be drawn.
*/
struct CTUnderlineStyleModifiers : OptionSetType {
  init(rawValue: Int32)
  let rawValue: Int32
  static var PatternSolid: CTUnderlineStyleModifiers { get }
  static var PatternDot: CTUnderlineStyleModifiers { get }
  static var PatternDash: CTUnderlineStyleModifiers { get }
  static var PatternDashDot: CTUnderlineStyleModifiers { get }
  static var PatternDashDotDot: CTUnderlineStyleModifiers { get }
}

/*!
    @const      kCTBaselineClassAttributeName
    @abstract   Key to reference a baseline class override.

    @discussion Value must be one of the kCTBaselineClass constants. Normally,
                glyphs on the line will be assigned baseline classes according to
                the 'bsln' or 'BASE' table in the font. This attribute may be
                used to change this assignment.

    @seealso    kCTBaselineClassRoman
    @seealso    kCTBaselineClassIdeographicCentered
    @seealso    kCTBaselineClassIdeographicLow
    @seealso    kCTBaselineClassIdeographicHigh
    @seealso    kCTBaselineClassHanging
    @seealso    kCTBaselineClassMath
*/
@available(tvOS 6.0, *)
let kCTBaselineClassAttributeName: CFString

/*!
    @const      kCTBaselineInfoAttributeName
    @abstract   Key to reference a baseline info dictionary.

    @discussion Value must be a CFDictionaryRef. Normally, baseline offsets will
                be assigned based on the 'bsln' or 'BASE' table in the font. This
                attribute may be used to assign different offsets. Each key in
                the dictionary is one of the kCTBaselineClass constants and the
                value is a CFNumberRef of the baseline offset in points. You only
                need to specify the offsets you wish to change.

    @seealso    kCTBaselineClassRoman
    @seealso    kCTBaselineClassIdeographicCentered
    @seealso    kCTBaselineClassIdeographicLow
    @seealso    kCTBaselineClassIdeographicHigh
    @seealso    kCTBaselineClassHanging
    @seealso    kCTBaselineClassMath
*/
@available(tvOS 6.0, *)
let kCTBaselineInfoAttributeName: CFString

/*!
    @const      kCTBaselineReferenceInfoAttributeName
    @abstract   Key to reference a baseline info dictionary for the reference baseline.

    @discussion Value must be a CFDictionaryRef. All glyphs in a run are assigned
                a baseline class and then aligned to the offset for that class in
                the reference baseline baseline info. See the discussion of
                kCTBaselineInfoAttributeName for information about the contents
                of the dictionary. You can also use the kCTBaselineReferenceFont
                key to specify that the baseline offsets of a particular
                CTFontRef should be used as the reference offsets.

    @seealso    kCTBaselineClassRoman
    @seealso    kCTBaselineClassIdeographicCentered
    @seealso    kCTBaselineClassIdeographicLow
    @seealso    kCTBaselineClassIdeographicHigh
    @seealso    kCTBaselineClassHanging
    @seealso    kCTBaselineClassMath
    @seealso    kCTBaselineReferenceFont
*/
@available(tvOS 6.0, *)
let kCTBaselineReferenceInfoAttributeName: CFString

/*!
    @const      kCTWritingDirectionAttributeName
    @abstract   Specifies a bidirectional override or embedding.

    @discussion Value must be a CFArray of CFNumberRefs, each of which should
                have a value of either kCTWritingDirectionLeftToRight or
                kCTWritingDirectionRightToLeft, plus one of
                kCTWritingDirectionEmbedding or kCTWritingDirectionOverride.
                This array represents a sequence of nested bidirectional
                embeddings or overrides, in order from outermost to innermost,
                with (kCTWritingDirectionLeftToRight | kCTWritingDirectionEmbedding)
                corresponding to a LRE/PDF pair in plain text or
                <span dir="ltr"></span> in HTML, (kCTWritingDirectionRightToLeft
                | kCTWritingDirectionEmbedding) corresponding to a RLE/PDF
                pair in plain text or a <span dir="rtl"></span> in HTML,
                (kCTWritingDirectionLeftToRight | kCTWritingDirectionOverride)
                corresponding to a LRO/PDF pair in plain text or
                <bdo dir="ltr"></span> in HTML, and (kCTWritingDirectionRightToLeft
                | kCTWritingDirectionOverride) corresponding to a RLO/PDF
                pair in plain text or <bdo dir="rtl"></span> in HTML.

    @seealso    kCTWritingDirectionLeftToRight
    @seealso    kCTWritingDirectionRightToLeft
    @seealso    kCTWritingDirectionEmbedding
    @seealso    kCTWritingDirectionOverride
*/
@available(tvOS 6.0, *)
let kCTWritingDirectionAttributeName: CFString
var kCTWritingDirectionEmbedding: Int { get }
var kCTWritingDirectionOverride: Int { get }

/*!
    @const      kCTRubyAnnotationAttributeName
    @abstract   Key to reference a CTRubyAnnotation.

    @discussion Value must be a CTRubyAnnotationRef. See CTRubyAnnotation.h for
                more information.
 */
@available(tvOS 8.0, *)
let kCTRubyAnnotationAttributeName: CFString
typealias CTTextTabRef = CTTextTab

/*!
	@function	CTTypesetterGetTypeID
	@abstract	Returns the CFType of the text tab object
*/
@available(tvOS 3.2, *)
func CTTextTabGetTypeID() -> CFTypeID

/*!
	@const		kCTTabColumnTerminatorsAttributeName
	@abstract	Used to specify the terminating character for a tab column

	@discussion The value associated with this attribute is a CFCharacterSet. The
				character set is used to determine the terminating character for
				a tab column. The tab and newline characters are implied even if
				they don't exist in the character set. This attribute can be used
				to implement decimal tabs, for instance. This attribute is
				optional.
*/
@available(tvOS 3.2, *)
let kCTTabColumnTerminatorsAttributeName: CFString

/*!
	@function	CTTextTabCreate
	@abstract	Creates and initializes a new text tab.

	@param		alignment
				The tab's alignment. This is used to determine the position of
				text inside the tab column. This parameter must be set to a valid
				CTTextAlignment value or this function will return NULL.

	@param		location
				The tab's ruler location, relative to the back margin.

	@param		options
				Options to pass in when the tab is created. Currently, the only
				option available is kCTTabColumnTerminatorsAttributeName. This
				parameter is optional and can be set to NULL if not needed.

	@result		The new CTTextTab.
*/
@available(tvOS 3.2, *)
func CTTextTabCreate(alignment: CTTextAlignment, _ location: Double, _ options: CFDictionary?) -> CTTextTab

/*!
	@function	CTTextTabGetAlignment
	@abstract	Returns the text alignment of the tab.

	@param		tab
				The tab whose text alignment you wish to access.

	@result		The tab's text alignment value.
*/
@available(tvOS 3.2, *)
func CTTextTabGetAlignment(tab: CTTextTab) -> CTTextAlignment

/*!
	@function	CTTextTabGetLocation
	@abstract	Returns the tab's ruler location.

	@param		tab
				The tab whose location you wish to access.

	@result		The tab's ruler location relative to the back margin.
*/
@available(tvOS 3.2, *)
func CTTextTabGetLocation(tab: CTTextTab) -> Double

/*!
	@function	CTTextTabGetOptions
	@abstract	Returns the dictionary of attributes associated with the tab. 

	@param		tab
				The tab whose attributes you wish to access.

	@result		The dictionary of attributes associated with the tab or NULL if
				no dictionary is present.
*/
@available(tvOS 3.2, *)
func CTTextTabGetOptions(tab: CTTextTab) -> CFDictionary?
typealias CTTypesetterRef = CTTypesetter

/*!
	@function	CTTypesetterGetTypeID
	@abstract	Returns the CFType of the typesetter object
*/
@available(tvOS 3.2, *)
func CTTypesetterGetTypeID() -> CFTypeID

/*!
	@const		kCTTypesetterOptionForcedEmbeddingLevel
	@abstract	Specifies the embedding level.
	@discussion	Value must be a CFNumberRef. Default is unset. Normally,
				typesetting applies the Unicode Bidirectional Algorithm as
				described in UAX #9. If present, this specifies the embedding
				level and any directional control characters are ignored.
*/
@available(tvOS 3.2, *)
let kCTTypesetterOptionForcedEmbeddingLevel: CFString

/*!
	@function	CTTypesetterCreateWithAttributedString
	@abstract	Creates an immutable typesetter object using an attributed
				string.

	@discussion The resultant typesetter can be used to create lines, perform
				line breaking, and do other contextual analysis based on the
				characters in the string.

	@param		string
				The CFAttributedStringRef that you want to typeset. This
				parameter must be filled in with a valid CFAttributedString.

	@result		This function will return a reference to a CTTypesetter.
*/
@available(tvOS 3.2, *)
func CTTypesetterCreateWithAttributedString(string: CFAttributedString) -> CTTypesetter

/*!
	@function	CTTypesetterCreateWithAttributedStringAndOptions
	@abstract	Creates an immutable typesetter object using an attributed
				string and a dictionary of options.

	@discussion The resultant typesetter can be used to create lines, perform
				line breaking, and do other contextual analysis based on the
				characters in the string.

	@param		string
				The CFAttributedStringRef that you want to typeset. This
				parameter must be filled in with a valid CFAttributedString.

	@param		options
				A CFDictionary of typesetter options, or NULL if there are none.

	@result		This function will return a reference to a CTTypesetter.
*/
@available(tvOS 3.2, *)
func CTTypesetterCreateWithAttributedStringAndOptions(string: CFAttributedString, _ options: CFDictionary?) -> CTTypesetter

/*!
	@function	CTTypesetterCreateLineWithOffset
	@abstract	Creates an immutable line from the typesetter.

	@discussion The resultant line will consist of glyphs in the correct visual
				order, ready to draw.

	@param		typesetter
				The typesetter which the line will come from.

	@param		stringRange
				The string range which the line will be based on. If the length
				portion of range is set to 0, then the typesetter will continue
				to add glyphs to the line until it runs out of characters in the
				string. The location and length of the range must be within the
				bounds of the string, otherwise the call will fail.

	@param		offset
				The line position offset.

	@result		This function will return a reference to a CTLine.
*/
@available(tvOS 3.2, *)
func CTTypesetterCreateLineWithOffset(typesetter: CTTypesetter, _ stringRange: CFRange, _ offset: Double) -> CTLine

/*!
	@function	CTTypesetterCreateLine
	@abstract	Equivalent to CTTypesetterCreateLineWithOffset with offset = 0.0.
*/
@available(tvOS 3.2, *)
func CTTypesetterCreateLine(typesetter: CTTypesetter, _ stringRange: CFRange) -> CTLine

/*!
	@function	CTTypesetterSuggestLineBreakWithOffset
	@abstract	Suggests a contextual line break point based on the width
				provided.

	@discussion The line break can be triggered either by a hard break character
				in the stream or by filling the specified width with characters.

	@param		typesetter
				The typesetter which the line will come from.

	@param		startIndex
				The starting point for the line break calculations. The break
				calculations will include the character starting at startIndex.

	@param		width
				The requested line break width.

	@param		offset
				The line position offset.

	@result		The value returned is a count of the characters from startIndex
				that would cause the line break. This value returned can be used
				to construct a character range for CTTypesetterCreateLine.
*/
@available(tvOS 3.2, *)
func CTTypesetterSuggestLineBreakWithOffset(typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double, _ offset: Double) -> CFIndex

/*!
	@function	CTTypesetterSuggestLineBreak
	@abstract	Equivalent to CTTypesetterSuggestLineBreakWithOffset with offset = 0.0.
*/
@available(tvOS 3.2, *)
func CTTypesetterSuggestLineBreak(typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double) -> CFIndex

/*!
	@function	CTTypesetterSuggestClusterBreakWithOffset
	@abstract	Suggests a cluster line break point based on the width provided.

	@discussion Suggests a typographic cluster line break point based on the width
				provided. This cluster break is similar to a character break,
				except that it will not break apart linguistic clusters. No other
				contextual analysis will be done. This can be used by the caller
				to implement a different line breaking scheme, such as
				hyphenation. Note that a typographic cluster break can also be
				triggered by a hard break character in the stream.

	@param		typesetter
				The typesetter which the line will come from.

	@param		startIndex
				The starting point for the typographic cluster break
				calculations. The break calculations will include the character
				starting at startIndex.

	@param		width
				The requested typographic cluster break width.

	@param		offset
				The line position offset.

	@result		The value returned is a count of the characters from startIndex
				that would cause the cluster break. This value returned can be
				used to construct a character range for CTTypesetterCreateLine.
*/
@available(tvOS 3.2, *)
func CTTypesetterSuggestClusterBreakWithOffset(typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double, _ offset: Double) -> CFIndex

/*!
	@function	CTTypesetterSuggestClusterBreak
	@abstract	Equivalent to CTTypesetterSuggestClusterBreakWithOffset with offset = 0.0.
*/
@available(tvOS 3.2, *)
func CTTypesetterSuggestClusterBreak(typesetter: CTTypesetter, _ startIndex: CFIndex, _ width: Double) -> CFIndex
var kAllTypographicFeaturesType: Int { get }
var kLigaturesType: Int { get }
var kCursiveConnectionType: Int { get }
var kLetterCaseType: Int { get }
var kVerticalSubstitutionType: Int { get }
var kLinguisticRearrangementType: Int { get }
var kNumberSpacingType: Int { get }
var kSmartSwashType: Int { get }
var kDiacriticsType: Int { get }
var kVerticalPositionType: Int { get }
var kFractionsType: Int { get }
var kOverlappingCharactersType: Int { get }
var kTypographicExtrasType: Int { get }
var kMathematicalExtrasType: Int { get }
var kOrnamentSetsType: Int { get }
var kCharacterAlternativesType: Int { get }
var kDesignComplexityType: Int { get }
var kStyleOptionsType: Int { get }
var kCharacterShapeType: Int { get }
var kNumberCaseType: Int { get }
var kTextSpacingType: Int { get }
var kTransliterationType: Int { get }
var kAnnotationType: Int { get }
var kKanaSpacingType: Int { get }
var kIdeographicSpacingType: Int { get }
var kUnicodeDecompositionType: Int { get }
var kRubyKanaType: Int { get }
var kCJKSymbolAlternativesType: Int { get }
var kIdeographicAlternativesType: Int { get }
var kCJKVerticalRomanPlacementType: Int { get }
var kItalicCJKRomanType: Int { get }
var kCaseSensitiveLayoutType: Int { get }
var kAlternateKanaType: Int { get }
var kStylisticAlternativesType: Int { get }
var kContextualAlternatesType: Int { get }
var kLowerCaseType: Int { get }
var kUpperCaseType: Int { get }
var kLanguageTagType: Int { get }
var kCJKRomanSpacingType: Int { get }
var kLastFeatureType: Int { get }
var kAllTypeFeaturesOnSelector: Int { get }
var kAllTypeFeaturesOffSelector: Int { get }
var kRequiredLigaturesOnSelector: Int { get }
var kRequiredLigaturesOffSelector: Int { get }
var kCommonLigaturesOnSelector: Int { get }
var kCommonLigaturesOffSelector: Int { get }
var kRareLigaturesOnSelector: Int { get }
var kRareLigaturesOffSelector: Int { get }
var kLogosOnSelector: Int { get }
var kLogosOffSelector: Int { get }
var kRebusPicturesOnSelector: Int { get }
var kRebusPicturesOffSelector: Int { get }
var kDiphthongLigaturesOnSelector: Int { get }
var kDiphthongLigaturesOffSelector: Int { get }
var kSquaredLigaturesOnSelector: Int { get }
var kSquaredLigaturesOffSelector: Int { get }
var kAbbrevSquaredLigaturesOnSelector: Int { get }
var kAbbrevSquaredLigaturesOffSelector: Int { get }
var kSymbolLigaturesOnSelector: Int { get }
var kSymbolLigaturesOffSelector: Int { get }
var kContextualLigaturesOnSelector: Int { get }
var kContextualLigaturesOffSelector: Int { get }
var kHistoricalLigaturesOnSelector: Int { get }
var kHistoricalLigaturesOffSelector: Int { get }
var kUnconnectedSelector: Int { get }
var kPartiallyConnectedSelector: Int { get }
var kCursiveSelector: Int { get }
var kUpperAndLowerCaseSelector: Int { get }
var kAllCapsSelector: Int { get }
var kAllLowerCaseSelector: Int { get }
var kSmallCapsSelector: Int { get }
var kInitialCapsSelector: Int { get }
var kInitialCapsAndSmallCapsSelector: Int { get }
var kSubstituteVerticalFormsOnSelector: Int { get }
var kSubstituteVerticalFormsOffSelector: Int { get }
var kLinguisticRearrangementOnSelector: Int { get }
var kLinguisticRearrangementOffSelector: Int { get }
var kMonospacedNumbersSelector: Int { get }
var kProportionalNumbersSelector: Int { get }
var kThirdWidthNumbersSelector: Int { get }
var kQuarterWidthNumbersSelector: Int { get }
var kWordInitialSwashesOnSelector: Int { get }
var kWordInitialSwashesOffSelector: Int { get }
var kWordFinalSwashesOnSelector: Int { get }
var kWordFinalSwashesOffSelector: Int { get }
var kLineInitialSwashesOnSelector: Int { get }
var kLineInitialSwashesOffSelector: Int { get }
var kLineFinalSwashesOnSelector: Int { get }
var kLineFinalSwashesOffSelector: Int { get }
var kNonFinalSwashesOnSelector: Int { get }
var kNonFinalSwashesOffSelector: Int { get }
var kShowDiacriticsSelector: Int { get }
var kHideDiacriticsSelector: Int { get }
var kDecomposeDiacriticsSelector: Int { get }
var kNormalPositionSelector: Int { get }
var kSuperiorsSelector: Int { get }
var kInferiorsSelector: Int { get }
var kOrdinalsSelector: Int { get }
var kScientificInferiorsSelector: Int { get }
var kNoFractionsSelector: Int { get }
var kVerticalFractionsSelector: Int { get }
var kDiagonalFractionsSelector: Int { get }
var kPreventOverlapOnSelector: Int { get }
var kPreventOverlapOffSelector: Int { get }
var kHyphensToEmDashOnSelector: Int { get }
var kHyphensToEmDashOffSelector: Int { get }
var kHyphenToEnDashOnSelector: Int { get }
var kHyphenToEnDashOffSelector: Int { get }
var kSlashedZeroOnSelector: Int { get }
var kSlashedZeroOffSelector: Int { get }
var kFormInterrobangOnSelector: Int { get }
var kFormInterrobangOffSelector: Int { get }
var kSmartQuotesOnSelector: Int { get }
var kSmartQuotesOffSelector: Int { get }
var kPeriodsToEllipsisOnSelector: Int { get }
var kPeriodsToEllipsisOffSelector: Int { get }
var kHyphenToMinusOnSelector: Int { get }
var kHyphenToMinusOffSelector: Int { get }
var kAsteriskToMultiplyOnSelector: Int { get }
var kAsteriskToMultiplyOffSelector: Int { get }
var kSlashToDivideOnSelector: Int { get }
var kSlashToDivideOffSelector: Int { get }
var kInequalityLigaturesOnSelector: Int { get }
var kInequalityLigaturesOffSelector: Int { get }
var kExponentsOnSelector: Int { get }
var kExponentsOffSelector: Int { get }
var kMathematicalGreekOnSelector: Int { get }
var kMathematicalGreekOffSelector: Int { get }
var kNoOrnamentsSelector: Int { get }
var kDingbatsSelector: Int { get }
var kPiCharactersSelector: Int { get }
var kFleuronsSelector: Int { get }
var kDecorativeBordersSelector: Int { get }
var kInternationalSymbolsSelector: Int { get }
var kMathSymbolsSelector: Int { get }
var kNoAlternatesSelector: Int { get }
var kDesignLevel1Selector: Int { get }
var kDesignLevel2Selector: Int { get }
var kDesignLevel3Selector: Int { get }
var kDesignLevel4Selector: Int { get }
var kDesignLevel5Selector: Int { get }
var kNoStyleOptionsSelector: Int { get }
var kDisplayTextSelector: Int { get }
var kEngravedTextSelector: Int { get }
var kIlluminatedCapsSelector: Int { get }
var kTitlingCapsSelector: Int { get }
var kTallCapsSelector: Int { get }
var kTraditionalCharactersSelector: Int { get }
var kSimplifiedCharactersSelector: Int { get }
var kJIS1978CharactersSelector: Int { get }
var kJIS1983CharactersSelector: Int { get }
var kJIS1990CharactersSelector: Int { get }
var kTraditionalAltOneSelector: Int { get }
var kTraditionalAltTwoSelector: Int { get }
var kTraditionalAltThreeSelector: Int { get }
var kTraditionalAltFourSelector: Int { get }
var kTraditionalAltFiveSelector: Int { get }
var kExpertCharactersSelector: Int { get }
var kJIS2004CharactersSelector: Int { get }
var kHojoCharactersSelector: Int { get }
var kNLCCharactersSelector: Int { get }
var kTraditionalNamesCharactersSelector: Int { get }
var kLowerCaseNumbersSelector: Int { get }
var kUpperCaseNumbersSelector: Int { get }
var kProportionalTextSelector: Int { get }
var kMonospacedTextSelector: Int { get }
var kHalfWidthTextSelector: Int { get }
var kThirdWidthTextSelector: Int { get }
var kQuarterWidthTextSelector: Int { get }
var kAltProportionalTextSelector: Int { get }
var kAltHalfWidthTextSelector: Int { get }
var kNoTransliterationSelector: Int { get }
var kHanjaToHangulSelector: Int { get }
var kHiraganaToKatakanaSelector: Int { get }
var kKatakanaToHiraganaSelector: Int { get }
var kKanaToRomanizationSelector: Int { get }
var kRomanizationToHiraganaSelector: Int { get }
var kRomanizationToKatakanaSelector: Int { get }
var kHanjaToHangulAltOneSelector: Int { get }
var kHanjaToHangulAltTwoSelector: Int { get }
var kHanjaToHangulAltThreeSelector: Int { get }
var kNoAnnotationSelector: Int { get }
var kBoxAnnotationSelector: Int { get }
var kRoundedBoxAnnotationSelector: Int { get }
var kCircleAnnotationSelector: Int { get }
var kInvertedCircleAnnotationSelector: Int { get }
var kParenthesisAnnotationSelector: Int { get }
var kPeriodAnnotationSelector: Int { get }
var kRomanNumeralAnnotationSelector: Int { get }
var kDiamondAnnotationSelector: Int { get }
var kInvertedBoxAnnotationSelector: Int { get }
var kInvertedRoundedBoxAnnotationSelector: Int { get }
var kFullWidthKanaSelector: Int { get }
var kProportionalKanaSelector: Int { get }
var kFullWidthIdeographsSelector: Int { get }
var kProportionalIdeographsSelector: Int { get }
var kHalfWidthIdeographsSelector: Int { get }
var kCanonicalCompositionOnSelector: Int { get }
var kCanonicalCompositionOffSelector: Int { get }
var kCompatibilityCompositionOnSelector: Int { get }
var kCompatibilityCompositionOffSelector: Int { get }
var kTranscodingCompositionOnSelector: Int { get }
var kTranscodingCompositionOffSelector: Int { get }
var kNoRubyKanaSelector: Int { get }
var kRubyKanaSelector: Int { get }
var kRubyKanaOnSelector: Int { get }
var kRubyKanaOffSelector: Int { get }
var kNoCJKSymbolAlternativesSelector: Int { get }
var kCJKSymbolAltOneSelector: Int { get }
var kCJKSymbolAltTwoSelector: Int { get }
var kCJKSymbolAltThreeSelector: Int { get }
var kCJKSymbolAltFourSelector: Int { get }
var kCJKSymbolAltFiveSelector: Int { get }
var kNoIdeographicAlternativesSelector: Int { get }
var kIdeographicAltOneSelector: Int { get }
var kIdeographicAltTwoSelector: Int { get }
var kIdeographicAltThreeSelector: Int { get }
var kIdeographicAltFourSelector: Int { get }
var kIdeographicAltFiveSelector: Int { get }
var kCJKVerticalRomanCenteredSelector: Int { get }
var kCJKVerticalRomanHBaselineSelector: Int { get }
var kNoCJKItalicRomanSelector: Int { get }
var kCJKItalicRomanSelector: Int { get }
var kCJKItalicRomanOnSelector: Int { get }
var kCJKItalicRomanOffSelector: Int { get }
var kCaseSensitiveLayoutOnSelector: Int { get }
var kCaseSensitiveLayoutOffSelector: Int { get }
var kCaseSensitiveSpacingOnSelector: Int { get }
var kCaseSensitiveSpacingOffSelector: Int { get }
var kAlternateHorizKanaOnSelector: Int { get }
var kAlternateHorizKanaOffSelector: Int { get }
var kAlternateVertKanaOnSelector: Int { get }
var kAlternateVertKanaOffSelector: Int { get }
var kNoStylisticAlternatesSelector: Int { get }
var kStylisticAltOneOnSelector: Int { get }
var kStylisticAltOneOffSelector: Int { get }
var kStylisticAltTwoOnSelector: Int { get }
var kStylisticAltTwoOffSelector: Int { get }
var kStylisticAltThreeOnSelector: Int { get }
var kStylisticAltThreeOffSelector: Int { get }
var kStylisticAltFourOnSelector: Int { get }
var kStylisticAltFourOffSelector: Int { get }
var kStylisticAltFiveOnSelector: Int { get }
var kStylisticAltFiveOffSelector: Int { get }
var kStylisticAltSixOnSelector: Int { get }
var kStylisticAltSixOffSelector: Int { get }
var kStylisticAltSevenOnSelector: Int { get }
var kStylisticAltSevenOffSelector: Int { get }
var kStylisticAltEightOnSelector: Int { get }
var kStylisticAltEightOffSelector: Int { get }
var kStylisticAltNineOnSelector: Int { get }
var kStylisticAltNineOffSelector: Int { get }
var kStylisticAltTenOnSelector: Int { get }
var kStylisticAltTenOffSelector: Int { get }
var kStylisticAltElevenOnSelector: Int { get }
var kStylisticAltElevenOffSelector: Int { get }
var kStylisticAltTwelveOnSelector: Int { get }
var kStylisticAltTwelveOffSelector: Int { get }
var kStylisticAltThirteenOnSelector: Int { get }
var kStylisticAltThirteenOffSelector: Int { get }
var kStylisticAltFourteenOnSelector: Int { get }
var kStylisticAltFourteenOffSelector: Int { get }
var kStylisticAltFifteenOnSelector: Int { get }
var kStylisticAltFifteenOffSelector: Int { get }
var kStylisticAltSixteenOnSelector: Int { get }
var kStylisticAltSixteenOffSelector: Int { get }
var kStylisticAltSeventeenOnSelector: Int { get }
var kStylisticAltSeventeenOffSelector: Int { get }
var kStylisticAltEighteenOnSelector: Int { get }
var kStylisticAltEighteenOffSelector: Int { get }
var kStylisticAltNineteenOnSelector: Int { get }
var kStylisticAltNineteenOffSelector: Int { get }
var kStylisticAltTwentyOnSelector: Int { get }
var kStylisticAltTwentyOffSelector: Int { get }
var kContextualAlternatesOnSelector: Int { get }
var kContextualAlternatesOffSelector: Int { get }
var kSwashAlternatesOnSelector: Int { get }
var kSwashAlternatesOffSelector: Int { get }
var kContextualSwashAlternatesOnSelector: Int { get }
var kContextualSwashAlternatesOffSelector: Int { get }
var kDefaultLowerCaseSelector: Int { get }
var kLowerCaseSmallCapsSelector: Int { get }
var kLowerCasePetiteCapsSelector: Int { get }
var kDefaultUpperCaseSelector: Int { get }
var kUpperCaseSmallCapsSelector: Int { get }
var kUpperCasePetiteCapsSelector: Int { get }
var kHalfWidthCJKRomanSelector: Int { get }
var kProportionalCJKRomanSelector: Int { get }
var kDefaultCJKRomanSelector: Int { get }
var kFullWidthCJKRomanSelector: Int { get }
var kSFNTLookupSimpleArray: Int { get }
var kSFNTLookupSegmentSingle: Int { get }
var kSFNTLookupSegmentArray: Int { get }
var kSFNTLookupSingleTable: Int { get }
var kSFNTLookupTrimmedArray: Int { get }
typealias SFNTLookupTableFormat = UInt16
typealias SFNTLookupValue = UInt16
typealias SFNTLookupOffset = UInt16
typealias SFNTLookupKind = UInt32
struct SFNTLookupBinarySearchHeader {
  var unitSize: UInt16
  var nUnits: UInt16
  var searchRange: UInt16
  var entrySelector: UInt16
  var rangeShift: UInt16
  init()
  init(unitSize: UInt16, nUnits: UInt16, searchRange: UInt16, entrySelector: UInt16, rangeShift: UInt16)
}
struct SFNTLookupArrayHeader {
  var lookupValues: (SFNTLookupValue)
  init()
  init(lookupValues: (SFNTLookupValue))
}
struct SFNTLookupTrimmedArrayHeader {
  var firstGlyph: UInt16
  var count: UInt16
  var valueArray: (SFNTLookupValue)
  init()
  init(firstGlyph: UInt16, count: UInt16, valueArray: (SFNTLookupValue))
}
struct SFNTLookupSegment {
  var lastGlyph: UInt16
  var firstGlyph: UInt16
  var value: (UInt16)
  init()
  init(lastGlyph: UInt16, firstGlyph: UInt16, value: (UInt16))
}
struct SFNTLookupSegmentHeader {
  var binSearch: SFNTLookupBinarySearchHeader
  var segments: (SFNTLookupSegment)
  init()
  init(binSearch: SFNTLookupBinarySearchHeader, segments: (SFNTLookupSegment))
}
struct SFNTLookupSingle {
  var glyph: UInt16
  var value: (UInt16)
  init()
  init(glyph: UInt16, value: (UInt16))
}
struct SFNTLookupSingleHeader {
  var binSearch: SFNTLookupBinarySearchHeader
  var entries: (SFNTLookupSingle)
  init()
  init(binSearch: SFNTLookupBinarySearchHeader, entries: (SFNTLookupSingle))
}
struct SFNTLookupFormatSpecificHeader {
  var theArray: SFNTLookupArrayHeader
  var segment: SFNTLookupSegmentHeader
  var single: SFNTLookupSingleHeader
  var trimmedArray: SFNTLookupTrimmedArrayHeader
  init(theArray: SFNTLookupArrayHeader)
  init(segment: SFNTLookupSegmentHeader)
  init(single: SFNTLookupSingleHeader)
  init(trimmedArray: SFNTLookupTrimmedArrayHeader)
  init()
}
struct SFNTLookupTable {
  var format: SFNTLookupTableFormat
  var fsHeader: SFNTLookupFormatSpecificHeader
  init()
  init(format: SFNTLookupTableFormat, fsHeader: SFNTLookupFormatSpecificHeader)
}
typealias SFNTLookupTablePtr = UnsafeMutablePointer<SFNTLookupTable>
typealias SFNTLookupTableHandle = UnsafeMutablePointer<SFNTLookupTablePtr>
var kSTClassEndOfText: Int { get }
var kSTClassOutOfBounds: Int { get }
var kSTClassDeletedGlyph: Int { get }
var kSTClassEndOfLine: Int { get }
var kSTSetMark: Int { get }
var kSTNoAdvance: Int { get }
var kSTMarkEnd: Int { get }
var kSTLigActionMask: Int { get }
var kSTRearrVerbMask: Int { get }
typealias STClass = UInt8
typealias STEntryIndex = UInt8
struct STHeader {
  var filler: UInt8
  var nClasses: STClass
  var classTableOffset: UInt16
  var stateArrayOffset: UInt16
  var entryTableOffset: UInt16
  init()
  init(filler: UInt8, nClasses: STClass, classTableOffset: UInt16, stateArrayOffset: UInt16, entryTableOffset: UInt16)
}
struct STClassTable {
  var firstGlyph: UInt16
  var nGlyphs: UInt16
  var classes: (STClass)
  init()
  init(firstGlyph: UInt16, nGlyphs: UInt16, classes: (STClass))
}
struct STEntryZero {
  var newState: UInt16
  var flags: UInt16
  init()
  init(newState: UInt16, flags: UInt16)
}
struct STEntryOne {
  var newState: UInt16
  var flags: UInt16
  var offset1: UInt16
  init()
  init(newState: UInt16, flags: UInt16, offset1: UInt16)
}
struct STEntryTwo {
  var newState: UInt16
  var flags: UInt16
  var offset1: UInt16
  var offset2: UInt16
  init()
  init(newState: UInt16, flags: UInt16, offset1: UInt16, offset2: UInt16)
}
var kSTXHasLigAction: Int { get }
typealias STXClass = UInt16
typealias STXStateIndex = UInt16
typealias STXEntryIndex = UInt16
struct STXHeader {
  var nClasses: UInt32
  var classTableOffset: UInt32
  var stateArrayOffset: UInt32
  var entryTableOffset: UInt32
  init()
  init(nClasses: UInt32, classTableOffset: UInt32, stateArrayOffset: UInt32, entryTableOffset: UInt32)
}
typealias STXClassTable = SFNTLookupTable
struct STXEntryZero {
  var newState: STXStateIndex
  var flags: UInt16
  init()
  init(newState: STXStateIndex, flags: UInt16)
}
struct STXEntryOne {
  var newState: STXStateIndex
  var flags: UInt16
  var index1: UInt16
  init()
  init(newState: STXStateIndex, flags: UInt16, index1: UInt16)
}
struct STXEntryTwo {
  var newState: STXStateIndex
  var flags: UInt16
  var index1: UInt16
  var index2: UInt16
  init()
  init(newState: STXStateIndex, flags: UInt16, index1: UInt16, index2: UInt16)
}
var kSTKCrossStreamReset: Int { get }
var kLCARTag: Int { get }
var kLCARCurrentVersion: Int { get }
var kLCARLinearFormat: Int { get }
var kLCARCtlPointFormat: Int { get }
struct LcarCaretClassEntry {
  var count: UInt16
  var partials: (UInt16)
  init()
  init(count: UInt16, partials: (UInt16))
}
struct LcarCaretTable {
  var version: Fixed
  var format: UInt16
  var lookup: SFNTLookupTable
  init()
  init(version: Fixed, format: UInt16, lookup: SFNTLookupTable)
}
typealias LcarCaretTablePtr = UnsafeMutablePointer<LcarCaretTable>
var kJUSTTag: Int { get }
var kJUSTCurrentVersion: Int { get }
var kJUSTStandardFormat: Int { get }
var kJUSTnoGlyphcode: Int { get }
var kJUSTpcDecompositionAction: Int { get }
var kJUSTpcUnconditionalAddAction: Int { get }
var kJUSTpcConditionalAddAction: Int { get }
var kJUSTpcGlyphStretchAction: Int { get }
var kJUSTpcDuctilityAction: Int { get }
var kJUSTpcGlyphRepeatAddAction: Int { get }
var kJUSTKashidaPriority: Int { get }
var kJUSTSpacePriority: Int { get }
var kJUSTLetterPriority: Int { get }
var kJUSTNullPriority: Int { get }
var kJUSTPriorityCount: Int { get }
var kJUSTOverridePriority: Int { get }
var kJUSTOverrideLimits: Int { get }
var kJUSTOverrideUnlimited: Int { get }
var kJUSTUnlimited: Int { get }
var kJUSTPriorityMask: Int { get }
typealias JustPCActionType = UInt16
typealias JustificationFlags = UInt16
struct JustPCDecompositionAction {
  var lowerLimit: Fixed
  var upperLimit: Fixed
  var order: UInt16
  var count: UInt16
  var glyphs: (UInt16)
  init()
  init(lowerLimit: Fixed, upperLimit: Fixed, order: UInt16, count: UInt16, glyphs: (UInt16))
}
typealias JustPCUnconditionalAddAction = UInt16
struct JustPCConditionalAddAction {
  var substThreshold: Fixed
  var addGlyph: UInt16
  var substGlyph: UInt16
  init()
  init(substThreshold: Fixed, addGlyph: UInt16, substGlyph: UInt16)
}
struct JustPCDuctilityAction {
  var ductilityAxis: UInt32
  var minimumLimit: Fixed
  var noStretchValue: Fixed
  var maximumLimit: Fixed
  init()
  init(ductilityAxis: UInt32, minimumLimit: Fixed, noStretchValue: Fixed, maximumLimit: Fixed)
}
struct JustPCGlyphRepeatAddAction {
  var flags: UInt16
  var glyph: UInt16
  init()
  init(flags: UInt16, glyph: UInt16)
}
struct JustPCActionSubrecord {
  var theClass: UInt16
  var theType: JustPCActionType
  var length: UInt32
  var data: UInt32
  init()
  init(theClass: UInt16, theType: JustPCActionType, length: UInt32, data: UInt32)
}
struct JustPCAction {
  var actionCount: UInt32
  var actions: (JustPCActionSubrecord)
  init()
  init(actionCount: UInt32, actions: (JustPCActionSubrecord))
}
struct JustWidthDeltaEntry {
  var justClass: UInt32
  var beforeGrowLimit: Fixed
  var beforeShrinkLimit: Fixed
  var afterGrowLimit: Fixed
  var afterShrinkLimit: Fixed
  var growFlags: JustificationFlags
  var shrinkFlags: JustificationFlags
  init()
  init(justClass: UInt32, beforeGrowLimit: Fixed, beforeShrinkLimit: Fixed, afterGrowLimit: Fixed, afterShrinkLimit: Fixed, growFlags: JustificationFlags, shrinkFlags: JustificationFlags)
}
struct JustWidthDeltaGroup {
  var count: UInt32
  var entries: (JustWidthDeltaEntry)
  init()
  init(count: UInt32, entries: (JustWidthDeltaEntry))
}
struct JustPostcompTable {
  var lookupTable: SFNTLookupTable
  init()
  init(lookupTable: SFNTLookupTable)
}
struct JustDirectionTable {
  var justClass: UInt16
  var widthDeltaClusters: UInt16
  var postcomp: UInt16
  var lookup: SFNTLookupTable
  init()
  init(justClass: UInt16, widthDeltaClusters: UInt16, postcomp: UInt16, lookup: SFNTLookupTable)
}
struct JustTable {
  var version: Fixed
  var format: UInt16
  var horizHeaderOffset: UInt16
  var vertHeaderOffset: UInt16
  init()
  init(version: Fixed, format: UInt16, horizHeaderOffset: UInt16, vertHeaderOffset: UInt16)
}
var kOPBDTag: Int { get }
var kOPBDCurrentVersion: Int { get }
var kOPBDDistanceFormat: Int { get }
var kOPBDControlPointFormat: Int { get }
typealias OpbdTableFormat = UInt16
struct OpbdSideValues {
  var leftSideShift: Int16
  var topSideShift: Int16
  var rightSideShift: Int16
  var bottomSideShift: Int16
  init()
  init(leftSideShift: Int16, topSideShift: Int16, rightSideShift: Int16, bottomSideShift: Int16)
}
struct OpbdTable {
  var version: Fixed
  var format: OpbdTableFormat
  var lookupTable: SFNTLookupTable
  init()
  init(version: Fixed, format: OpbdTableFormat, lookupTable: SFNTLookupTable)
}
var kMORTTag: Int { get }
var kMORTCurrentVersion: Int { get }
var kMORTCoverVertical: Int { get }
var kMORTCoverDescending: Int { get }
var kMORTCoverIgnoreVertical: Int { get }
var kMORTCoverTypeMask: Int { get }
var kMORTRearrangementType: Int { get }
var kMORTContextualType: Int { get }
var kMORTLigatureType: Int { get }
var kMORTSwashType: Int { get }
var kMORTInsertionType: Int { get }
var kMORTLigLastAction: Int { get }
var kMORTLigStoreLigature: Int { get }
var kMORTLigFormOffsetMask: Int { get }
var kMORTLigFormOffsetShift: Int { get }
var kMORTraNoAction: Int { get }
var kMORTraxA: Int { get }
var kMORTraDx: Int { get }
var kMORTraDxA: Int { get }
var kMORTraxAB: Int { get }
var kMORTraxBA: Int { get }
var kMORTraCDx: Int { get }
var kMORTraDCx: Int { get }
var kMORTraCDxA: Int { get }
var kMORTraDCxA: Int { get }
var kMORTraDxAB: Int { get }
var kMORTraDxBA: Int { get }
var kMORTraCDxAB: Int { get }
var kMORTraCDxBA: Int { get }
var kMORTraDCxAB: Int { get }
var kMORTraDCxBA: Int { get }
var kMORTDoInsertionsBefore: Int { get }
var kMORTIsSplitVowelPiece: Int { get }
var kMORTInsertionsCountMask: Int { get }
var kMORTCurrInsertKashidaLike: Int { get }
var kMORTMarkInsertKashidaLike: Int { get }
var kMORTCurrInsertBefore: Int { get }
var kMORTMarkInsertBefore: Int { get }
var kMORTMarkJustTableCountMask: Int { get }
var kMORTMarkJustTableCountShift: Int { get }
var kMORTCurrJustTableCountMask: Int { get }
var kMORTCurrJustTableCountShift: Int { get }
var kMORTCurrInsertCountMask: Int { get }
var kMORTCurrInsertCountShift: Int { get }
var kMORTMarkInsertCountMask: Int { get }
var kMORTMarkInsertCountShift: Int { get }
typealias MortSubtableMaskFlags = UInt32
typealias MortLigatureActionEntry = UInt32
struct MortRearrangementSubtable {
  var header: STHeader
  init()
  init(header: STHeader)
}
struct MortContextualSubtable {
  var header: STHeader
  var substitutionTableOffset: UInt16
  init()
  init(header: STHeader, substitutionTableOffset: UInt16)
}
struct MortLigatureSubtable {
  var header: STHeader
  var ligatureActionTableOffset: UInt16
  var componentTableOffset: UInt16
  var ligatureTableOffset: UInt16
  init()
  init(header: STHeader, ligatureActionTableOffset: UInt16, componentTableOffset: UInt16, ligatureTableOffset: UInt16)
}
struct MortSwashSubtable {
  var lookup: SFNTLookupTable
  init()
  init(lookup: SFNTLookupTable)
}
struct MortInsertionSubtable {
  var header: STHeader
  init()
  init(header: STHeader)
}
struct MortSpecificSubtable {
  var rearrangement: MortRearrangementSubtable
  var contextual: MortContextualSubtable
  var ligature: MortLigatureSubtable
  var swash: MortSwashSubtable
  var insertion: MortInsertionSubtable
  init(rearrangement: MortRearrangementSubtable)
  init(contextual: MortContextualSubtable)
  init(ligature: MortLigatureSubtable)
  init(swash: MortSwashSubtable)
  init(insertion: MortInsertionSubtable)
  init()
}
struct MortSubtable {
  var length: UInt16
  var coverage: UInt16
  var flags: MortSubtableMaskFlags
  var u: MortSpecificSubtable
  init()
  init(length: UInt16, coverage: UInt16, flags: MortSubtableMaskFlags, u: MortSpecificSubtable)
}
struct MortFeatureEntry {
  var featureType: UInt16
  var featureSelector: UInt16
  var enableFlags: MortSubtableMaskFlags
  var disableFlags: MortSubtableMaskFlags
  init()
  init(featureType: UInt16, featureSelector: UInt16, enableFlags: MortSubtableMaskFlags, disableFlags: MortSubtableMaskFlags)
}
struct MortChain {
  var defaultFlags: MortSubtableMaskFlags
  var length: UInt32
  var nFeatures: UInt16
  var nSubtables: UInt16
  var featureEntries: (MortFeatureEntry)
  init()
  init(defaultFlags: MortSubtableMaskFlags, length: UInt32, nFeatures: UInt16, nSubtables: UInt16, featureEntries: (MortFeatureEntry))
}
struct MortTable {
  var version: Fixed
  var nChains: UInt32
  var chains: (MortChain)
  init()
  init(version: Fixed, nChains: UInt32, chains: (MortChain))
}
var kMORXTag: Int { get }
var kMORXCurrentVersion: Int { get }
var kMORXCoverVertical: Int { get }
var kMORXCoverDescending: Int { get }
var kMORXCoverIgnoreVertical: Int { get }
var kMORXCoverLogicalOrder: Int { get }
var kMORXCoverTypeMask: Int { get }
struct MorxRearrangementSubtable {
  var header: STXHeader
  init()
  init(header: STXHeader)
}
struct MorxContextualSubtable {
  var header: STXHeader
  var substitutionTableOffset: UInt32
  init()
  init(header: STXHeader, substitutionTableOffset: UInt32)
}
struct MorxLigatureSubtable {
  var header: STXHeader
  var ligatureActionTableOffset: UInt32
  var componentTableOffset: UInt32
  var ligatureTableOffset: UInt32
  init()
  init(header: STXHeader, ligatureActionTableOffset: UInt32, componentTableOffset: UInt32, ligatureTableOffset: UInt32)
}
struct MorxInsertionSubtable {
  var header: STXHeader
  var insertionGlyphTableOffset: UInt32
  init()
  init(header: STXHeader, insertionGlyphTableOffset: UInt32)
}
struct MorxSpecificSubtable {
  var rearrangement: MorxRearrangementSubtable
  var contextual: MorxContextualSubtable
  var ligature: MorxLigatureSubtable
  var swash: MortSwashSubtable
  var insertion: MorxInsertionSubtable
  init(rearrangement: MorxRearrangementSubtable)
  init(contextual: MorxContextualSubtable)
  init(ligature: MorxLigatureSubtable)
  init(swash: MortSwashSubtable)
  init(insertion: MorxInsertionSubtable)
  init()
}
struct MorxSubtable {
  var length: UInt32
  var coverage: UInt32
  var flags: MortSubtableMaskFlags
  var u: MorxSpecificSubtable
  init()
  init(length: UInt32, coverage: UInt32, flags: MortSubtableMaskFlags, u: MorxSpecificSubtable)
}
struct MorxChain {
  var defaultFlags: MortSubtableMaskFlags
  var length: UInt32
  var nFeatures: UInt32
  var nSubtables: UInt32
  var featureEntries: (MortFeatureEntry)
  init()
  init(defaultFlags: MortSubtableMaskFlags, length: UInt32, nFeatures: UInt32, nSubtables: UInt32, featureEntries: (MortFeatureEntry))
}
struct MorxTable {
  var version: Fixed
  var nChains: UInt32
  var chains: (MorxChain)
  init()
  init(version: Fixed, nChains: UInt32, chains: (MorxChain))
}
var kPROPTag: Int { get }
var kPROPCurrentVersion: Int { get }
var kPROPPairOffsetShift: Int { get }
var kPROPPairOffsetSign: Int { get }
var kPROPIsFloaterMask: Int { get }
var kPROPCanHangLTMask: Int { get }
var kPROPCanHangRBMask: Int { get }
var kPROPUseRLPairMask: Int { get }
var kPROPPairOffsetMask: Int { get }
var kPROPRightConnectMask: Int { get }
var kPROPZeroReserved: Int { get }
var kPROPDirectionMask: Int { get }
var kPROPLDirectionClass: Int { get }
var kPROPRDirectionClass: Int { get }
var kPROPALDirectionClass: Int { get }
var kPROPENDirectionClass: Int { get }
var kPROPESDirectionClass: Int { get }
var kPROPETDirectionClass: Int { get }
var kPROPANDirectionClass: Int { get }
var kPROPCSDirectionClass: Int { get }
var kPROPPSDirectionClass: Int { get }
var kPROPSDirectionClass: Int { get }
var kPROPWSDirectionClass: Int { get }
var kPROPONDirectionClass: Int { get }
var kPROPSENDirectionClass: Int { get }
var kPROPLREDirectionClass: Int { get }
var kPROPLRODirectionClass: Int { get }
var kPROPRLEDirectionClass: Int { get }
var kPROPRLODirectionClass: Int { get }
var kPROPPDFDirectionClass: Int { get }
var kPROPNSMDirectionClass: Int { get }
var kPROPBNDirectionClass: Int { get }
var kPROPNumDirectionClasses: Int { get }
typealias PropCharProperties = UInt16
struct PropTable {
  var version: Fixed
  var format: UInt16
  var defaultProps: PropCharProperties
  var lookup: SFNTLookupTable
  init()
  init(version: Fixed, format: UInt16, defaultProps: PropCharProperties, lookup: SFNTLookupTable)
}
struct PropLookupSegment {
  var lastGlyph: UInt16
  var firstGlyph: UInt16
  var value: UInt16
  init()
  init(lastGlyph: UInt16, firstGlyph: UInt16, value: UInt16)
}
struct PropLookupSingle {
  var glyph: UInt16
  var props: PropCharProperties
  init()
  init(glyph: UInt16, props: PropCharProperties)
}
var kTRAKTag: Int { get }
var kTRAKCurrentVersion: Int { get }
var kTRAKUniformFormat: Int { get }
typealias TrakValue = Int16
struct TrakTableEntry {
  var track: Fixed
  var nameTableIndex: UInt16
  var sizesOffset: UInt16
  init()
  init(track: Fixed, nameTableIndex: UInt16, sizesOffset: UInt16)
}
struct TrakTableData {
  var nTracks: UInt16
  var nSizes: UInt16
  var sizeTableOffset: UInt32
  var trakTable: (TrakTableEntry)
  init()
  init(nTracks: UInt16, nSizes: UInt16, sizeTableOffset: UInt32, trakTable: (TrakTableEntry))
}
struct TrakTable {
  var version: Fixed
  var format: UInt16
  var horizOffset: UInt16
  var vertOffset: UInt16
  init()
  init(version: Fixed, format: UInt16, horizOffset: UInt16, vertOffset: UInt16)
}
var kKERNTag: Int { get }
var kKERNCurrentVersion: Int { get }
var kKERNVertical: Int { get }
var kKERNResetCrossStream: Int { get }
var kKERNCrossStream: Int { get }
var kKERNVariation: Int { get }
var kKERNUnusedBits: Int { get }
var kKERNFormatMask: Int { get }
var kKERNOrderedList: Int { get }
var kKERNStateTable: Int { get }
var kKERNSimpleArray: Int { get }
var kKERNIndexArray: Int { get }
var kKERNLineStart: Int { get }
var kKERNLineEndKerning: Int { get }
var kKERNNoCrossKerning: Int { get }
var kKERNNotesRequested: Int { get }
var kKERNNoStakeNote: Int { get }
var kKERNCrossStreamResetNote: Int { get }
var kKERNNotApplied: Int { get }
typealias KernTableFormat = UInt8
typealias KernSubtableInfo = UInt16
typealias KernKerningValue = Int16
typealias KernArrayOffset = UInt16
struct KernVersion0Header {
  var version: UInt16
  var nTables: UInt16
  var firstSubtable: (UInt16)
  init()
  init(version: UInt16, nTables: UInt16, firstSubtable: (UInt16))
}
struct KernTableHeader {
  var version: Fixed
  var nTables: Int32
  var firstSubtable: (UInt16)
  init()
  init(version: Fixed, nTables: Int32, firstSubtable: (UInt16))
}
typealias KernTableHeaderPtr = UnsafeMutablePointer<KernTableHeader>
typealias KernTableHeaderHandle = UnsafeMutablePointer<KernTableHeaderPtr>
struct KernKerningPair {
  var left: UInt16
  var right: UInt16
  init()
  init(left: UInt16, right: UInt16)
}
struct KernOrderedListEntry {
  var pair: KernKerningPair
  var value: KernKerningValue
  init()
  init(pair: KernKerningPair, value: KernKerningValue)
}
typealias KernOrderedListEntryPtr = UnsafeMutablePointer<KernOrderedListEntry>
struct KernOrderedListHeader {
  var nPairs: UInt16
  var searchRange: UInt16
  var entrySelector: UInt16
  var rangeShift: UInt16
  var table: (UInt16)
  init()
  init(nPairs: UInt16, searchRange: UInt16, entrySelector: UInt16, rangeShift: UInt16, table: (UInt16))
}
struct KernStateHeader {
  var header: STHeader
  var valueTable: UInt16
  var firstTable: (UInt8)
  init()
  init(header: STHeader, valueTable: UInt16, firstTable: (UInt8))
}
struct KernStateEntry {
  var newState: UInt16
  var flags: UInt16
  init()
  init(newState: UInt16, flags: UInt16)
}
struct KernOffsetTable {
  var firstGlyph: UInt16
  var nGlyphs: UInt16
  var offsetTable: (KernArrayOffset)
  init()
  init(firstGlyph: UInt16, nGlyphs: UInt16, offsetTable: (KernArrayOffset))
}
typealias KernOffsetTablePtr = UnsafeMutablePointer<KernOffsetTable>
struct KernSimpleArrayHeader {
  var rowWidth: UInt16
  var leftOffsetTable: UInt16
  var rightOffsetTable: UInt16
  var theArray: KernArrayOffset
  var firstTable: (UInt16)
  init()
  init(rowWidth: UInt16, leftOffsetTable: UInt16, rightOffsetTable: UInt16, theArray: KernArrayOffset, firstTable: (UInt16))
}
struct KernIndexArrayHeader {
  var glyphCount: UInt16
  var kernValueCount: UInt8
  var leftClassCount: UInt8
  var rightClassCount: UInt8
  var flags: UInt8
  var kernValue: (Int16)
  var leftClass: (UInt8)
  var rightClass: (UInt8)
  var kernIndex: (UInt8)
  init()
  init(glyphCount: UInt16, kernValueCount: UInt8, leftClassCount: UInt8, rightClassCount: UInt8, flags: UInt8, kernValue: (Int16), leftClass: (UInt8), rightClass: (UInt8), kernIndex: (UInt8))
}
struct KernFormatSpecificHeader {
  var orderedList: KernOrderedListHeader
  var stateTable: KernStateHeader
  var simpleArray: KernSimpleArrayHeader
  var indexArray: KernIndexArrayHeader
  init(orderedList: KernOrderedListHeader)
  init(stateTable: KernStateHeader)
  init(simpleArray: KernSimpleArrayHeader)
  init(indexArray: KernIndexArrayHeader)
  init()
}
struct KernVersion0SubtableHeader {
  var version: UInt16
  var length: UInt16
  var stInfo: KernSubtableInfo
  var fsHeader: KernFormatSpecificHeader
  init()
  init(version: UInt16, length: UInt16, stInfo: KernSubtableInfo, fsHeader: KernFormatSpecificHeader)
}
struct KernSubtableHeader {
  var length: Int32
  var stInfo: KernSubtableInfo
  var tupleIndex: Int16
  var fsHeader: KernFormatSpecificHeader
  init()
  init(length: Int32, stInfo: KernSubtableInfo, tupleIndex: Int16, fsHeader: KernFormatSpecificHeader)
}
typealias KernSubtableHeaderPtr = UnsafeMutablePointer<KernSubtableHeader>
var kKERXTag: Int { get }
var kKERXCurrentVersion: Int { get }
var kKERXVertical: Int { get }
var kKERXResetCrossStream: Int { get }
var kKERXCrossStream: Int { get }
var kKERXVariation: Int { get }
var kKERXDescending: Int { get }
var kKERXUnusedBits: Int { get }
var kKERXFormatMask: Int { get }
var kKERXOrderedList: Int { get }
var kKERXStateTable: Int { get }
var kKERXSimpleArray: Int { get }
var kKERXIndexArray: Int { get }
var kKERXControlPoint: Int { get }
var kKERXLineStart: Int { get }
var kKERXLineEndKerning: Int { get }
var kKERXNoCrossKerning: Int { get }
var kKERXNotesRequested: Int { get }
var kKERXNoStakeNote: Int { get }
var kKERXCrossStreamResetNote: Int { get }
var kKERXNotApplied: Int { get }
var kKERXActionTypeMask: UInt32 { get }
var kKERXActionTypeControlPoints: UInt32 { get }
var kKERXActionTypeAnchorPoints: UInt32 { get }
var kKERXActionTypeCoordinates: UInt32 { get }
var kKERXUnusedFlags: UInt32 { get }
var kKERXActionOffsetMask: UInt32 { get }
typealias KerxSubtableCoverage = UInt32
typealias KerxArrayOffset = UInt32
struct KerxTableHeader {
  var version: Fixed
  var nTables: UInt32
  var firstSubtable: (UInt32)
  init()
  init(version: Fixed, nTables: UInt32, firstSubtable: (UInt32))
}
typealias KerxTableHeaderPtr = UnsafeMutablePointer<KerxTableHeader>
typealias KerxTableHeaderHandle = UnsafeMutablePointer<KerxTableHeaderPtr>
struct KerxKerningPair {
  var left: UInt16
  var right: UInt16
  init()
  init(left: UInt16, right: UInt16)
}
struct KerxOrderedListEntry {
  var pair: KerxKerningPair
  var value: KernKerningValue
  init()
  init(pair: KerxKerningPair, value: KernKerningValue)
}
typealias KerxOrderedListEntryPtr = UnsafeMutablePointer<KerxOrderedListEntry>
struct KerxOrderedListHeader {
  var nPairs: UInt32
  var searchRange: UInt32
  var entrySelector: UInt32
  var rangeShift: UInt32
  var table: (UInt32)
  init()
  init(nPairs: UInt32, searchRange: UInt32, entrySelector: UInt32, rangeShift: UInt32, table: (UInt32))
}
struct KerxStateHeader {
  var header: STXHeader
  var valueTable: UInt32
  var firstTable: (UInt8)
  init()
  init(header: STXHeader, valueTable: UInt32, firstTable: (UInt8))
}
struct KerxStateEntry {
  var newState: UInt16
  var flags: UInt16
  var valueIndex: UInt16
  init()
  init(newState: UInt16, flags: UInt16, valueIndex: UInt16)
}
struct KerxControlPointHeader {
  var header: STXHeader
  var flags: UInt32
  var firstTable: (UInt8)
  init()
  init(header: STXHeader, flags: UInt32, firstTable: (UInt8))
}
struct KerxControlPointEntry {
  var newState: UInt16
  var flags: UInt16
  var actionIndex: UInt16
  init()
  init(newState: UInt16, flags: UInt16, actionIndex: UInt16)
}
struct KerxControlPointAction {
  var markControlPoint: UInt16
  var currControlPoint: UInt16
  init()
  init(markControlPoint: UInt16, currControlPoint: UInt16)
}
struct KerxAnchorPointAction {
  var markAnchorPoint: UInt16
  var currAnchorPoint: UInt16
  init()
  init(markAnchorPoint: UInt16, currAnchorPoint: UInt16)
}
struct KerxCoordinateAction {
  var markX: UInt16
  var markY: UInt16
  var currX: UInt16
  var currY: UInt16
  init()
  init(markX: UInt16, markY: UInt16, currX: UInt16, currY: UInt16)
}
struct KerxSimpleArrayHeader {
  var rowWidth: UInt32
  var leftOffsetTable: UInt32
  var rightOffsetTable: UInt32
  var theArray: KerxArrayOffset
  var firstTable: (UInt32)
  init()
  init(rowWidth: UInt32, leftOffsetTable: UInt32, rightOffsetTable: UInt32, theArray: KerxArrayOffset, firstTable: (UInt32))
}
struct KerxIndexArrayHeader {
  var glyphCount: UInt16
  var kernValueCount: UInt16
  var leftClassCount: UInt16
  var rightClassCount: UInt16
  var flags: UInt16
  var kernValue: (Int16)
  var leftClass: (UInt16)
  var rightClass: (UInt16)
  var kernIndex: (UInt16)
  init()
  init(glyphCount: UInt16, kernValueCount: UInt16, leftClassCount: UInt16, rightClassCount: UInt16, flags: UInt16, kernValue: (Int16), leftClass: (UInt16), rightClass: (UInt16), kernIndex: (UInt16))
}
struct KerxFormatSpecificHeader {
  var orderedList: KerxOrderedListHeader
  var stateTable: KerxStateHeader
  var simpleArray: KerxSimpleArrayHeader
  var indexArray: KerxIndexArrayHeader
  var controlPoint: KerxControlPointHeader
  init(orderedList: KerxOrderedListHeader)
  init(stateTable: KerxStateHeader)
  init(simpleArray: KerxSimpleArrayHeader)
  init(indexArray: KerxIndexArrayHeader)
  init(controlPoint: KerxControlPointHeader)
  init()
}
struct KerxSubtableHeader {
  var length: UInt32
  var stInfo: KerxSubtableCoverage
  var tupleIndex: UInt32
  var fsHeader: KerxFormatSpecificHeader
  init()
  init(length: UInt32, stInfo: KerxSubtableCoverage, tupleIndex: UInt32, fsHeader: KerxFormatSpecificHeader)
}
typealias KerxSubtableHeaderPtr = UnsafeMutablePointer<KerxSubtableHeader>
var kBSLNTag: Int { get }
var kBSLNCurrentVersion: Int { get }
var kBSLNDistanceFormatNoMap: Int { get }
var kBSLNDistanceFormatWithMap: Int { get }
var kBSLNControlPointFormatNoMap: Int { get }
var kBSLNControlPointFormatWithMap: Int { get }
var kBSLNRomanBaseline: Int { get }
var kBSLNIdeographicCenterBaseline: Int { get }
var kBSLNIdeographicLowBaseline: Int { get }
var kBSLNHangingBaseline: Int { get }
var kBSLNMathBaseline: Int { get }
var kBSLNIdeographicHighBaseline: Int { get }
var kBSLNLastBaseline: Int { get }
var kBSLNNumBaselineClasses: Int { get }
var kBSLNNoBaseline: Int { get }
var kBSLNNoBaselineOverride: Int { get }
typealias BslnBaselineClass = UInt32
typealias BslnBaselineRecord = (Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed, Fixed)
struct BslnFormat0Part {
  var deltas: (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16)
  init()
  init(deltas: (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16))
}
struct BslnFormat1Part {
  var deltas: (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16)
  var mappingData: SFNTLookupTable
  init()
  init(deltas: (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16), mappingData: SFNTLookupTable)
}
struct BslnFormat2Part {
  var stdGlyph: UInt16
  var ctlPoints: (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16)
  init()
  init(stdGlyph: UInt16, ctlPoints: (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16))
}
struct BslnFormat3Part {
  var stdGlyph: UInt16
  var ctlPoints: (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16)
  var mappingData: SFNTLookupTable
  init()
  init(stdGlyph: UInt16, ctlPoints: (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16), mappingData: SFNTLookupTable)
}
struct BslnFormatUnion {
  var fmt0Part: BslnFormat0Part
  var fmt1Part: BslnFormat1Part
  var fmt2Part: BslnFormat2Part
  var fmt3Part: BslnFormat3Part
  init(fmt0Part: BslnFormat0Part)
  init(fmt1Part: BslnFormat1Part)
  init(fmt2Part: BslnFormat2Part)
  init(fmt3Part: BslnFormat3Part)
  init()
}
typealias BslnTableFormat = UInt16
struct BslnTable {
  var version: Fixed
  var format: BslnTableFormat
  var defaultBaseline: UInt16
  var parts: BslnFormatUnion
  init()
  init(version: Fixed, format: BslnTableFormat, defaultBaseline: UInt16, parts: BslnFormatUnion)
}
typealias BslnTablePtr = UnsafeMutablePointer<BslnTable>
struct ALMXHeader {
  var Version: Fixed
  var Flags: UInt16
  var NMasters: UInt16
  var FirstGlyph: UInt16
  var LastGlyph: UInt16
  var lookup: SFNTLookupTable
  init()
  init(Version: Fixed, Flags: UInt16, NMasters: UInt16, FirstGlyph: UInt16, LastGlyph: UInt16, lookup: SFNTLookupTable)
}
struct ALMXGlyphEntry {
  var GlyphIndexOffset: Int16
  var HorizontalAdvance: Int16
  var XOffsetToHOrigin: Int16
  var VerticalAdvance: Int16
  var YOffsetToVOrigin: Int16
  init()
  init(GlyphIndexOffset: Int16, HorizontalAdvance: Int16, XOffsetToHOrigin: Int16, VerticalAdvance: Int16, YOffsetToVOrigin: Int16)
}
struct ROTAHeader {
  var Version: Fixed
  var Flags: UInt16
  var NMasters: UInt16
  var FirstGlyph: UInt16
  var LastGlyph: UInt16
  var lookup: SFNTLookupTable
  init()
  init(Version: Fixed, Flags: UInt16, NMasters: UInt16, FirstGlyph: UInt16, LastGlyph: UInt16, lookup: SFNTLookupTable)
}
struct ROTAGlyphEntry {
  var GlyphIndexOffset: Int16
  var HBaselineOffset: Int16
  var VBaselineOffset: Int16
  init()
  init(GlyphIndexOffset: Int16, HBaselineOffset: Int16, VBaselineOffset: Int16)
}
var kANKRCurrentVersion: Int { get }
struct AnchorPoint {
  var x: Int16
  var y: Int16
  init()
  init(x: Int16, y: Int16)
}
struct AnchorPointTable {
  var nPoints: UInt32
  var points: (AnchorPoint)
  init()
  init(nPoints: UInt32, points: (AnchorPoint))
}
struct AnkrTable {
  var version: UInt16
  var flags: UInt16
  var lookupTableOffset: UInt32
  var anchorPointTableOffset: UInt32
  init()
  init(version: UInt16, flags: UInt16, lookupTableOffset: UInt32, anchorPointTableOffset: UInt32)
}
var kLTAGCurrentVersion: Int { get }
struct LtagStringRange {
  var offset: UInt16
  var length: UInt16
  init()
  init(offset: UInt16, length: UInt16)
}
struct LtagTable {
  var version: UInt32
  var flags: UInt32
  var numTags: UInt32
  var tagRange: (LtagStringRange)
  init()
  init(version: UInt32, flags: UInt32, numTags: UInt32, tagRange: (LtagStringRange))
}
struct sfntDirectoryEntry {
  var tableTag: FourCharCode
  var checkSum: UInt32
  var offset: UInt32
  var length: UInt32
  init()
  init(tableTag: FourCharCode, checkSum: UInt32, offset: UInt32, length: UInt32)
}
struct sfntDirectory {
  var format: FourCharCode
  var numOffsets: UInt16
  var searchRange: UInt16
  var entrySelector: UInt16
  var rangeShift: UInt16
  var table: (sfntDirectoryEntry)
  init()
  init(format: FourCharCode, numOffsets: UInt16, searchRange: UInt16, entrySelector: UInt16, rangeShift: UInt16, table: (sfntDirectoryEntry))
}
var sizeof_sfntDirectory: Int { get }
var cmapFontTableTag: Int { get }
var kFontUnicodePlatform: Int { get }
var kFontMacintoshPlatform: Int { get }
var kFontReservedPlatform: Int { get }
var kFontMicrosoftPlatform: Int { get }
var kFontCustomPlatform: Int { get }
var kFontUnicodeDefaultSemantics: Int { get }
var kFontUnicodeV1_1Semantics: Int { get }
var kFontISO10646_1993Semantics: Int { get }
var kFontUnicodeV2_0BMPOnlySemantics: Int { get }
var kFontUnicodeV2_0FullCoverageSemantics: Int { get }
var kFontUnicodeV4_0VariationSequenceSemantics: Int { get }
var kFontUnicode_FullRepertoire: Int { get }
var kFontRomanScript: Int { get }
var kFontJapaneseScript: Int { get }
var kFontTraditionalChineseScript: Int { get }
var kFontChineseScript: Int { get }
var kFontKoreanScript: Int { get }
var kFontArabicScript: Int { get }
var kFontHebrewScript: Int { get }
var kFontGreekScript: Int { get }
var kFontCyrillicScript: Int { get }
var kFontRussian: Int { get }
var kFontRSymbolScript: Int { get }
var kFontDevanagariScript: Int { get }
var kFontGurmukhiScript: Int { get }
var kFontGujaratiScript: Int { get }
var kFontOriyaScript: Int { get }
var kFontBengaliScript: Int { get }
var kFontTamilScript: Int { get }
var kFontTeluguScript: Int { get }
var kFontKannadaScript: Int { get }
var kFontMalayalamScript: Int { get }
var kFontSinhaleseScript: Int { get }
var kFontBurmeseScript: Int { get }
var kFontKhmerScript: Int { get }
var kFontThaiScript: Int { get }
var kFontLaotianScript: Int { get }
var kFontGeorgianScript: Int { get }
var kFontArmenianScript: Int { get }
var kFontSimpleChineseScript: Int { get }
var kFontTibetanScript: Int { get }
var kFontMongolianScript: Int { get }
var kFontGeezScript: Int { get }
var kFontEthiopicScript: Int { get }
var kFontAmharicScript: Int { get }
var kFontSlavicScript: Int { get }
var kFontEastEuropeanRomanScript: Int { get }
var kFontVietnameseScript: Int { get }
var kFontExtendedArabicScript: Int { get }
var kFontSindhiScript: Int { get }
var kFontUninterpretedScript: Int { get }
var kFontMicrosoftSymbolScript: Int { get }
var kFontMicrosoftStandardScript: Int { get }
var kFontMicrosoftUCS4Script: Int { get }
var kFontCustom8BitScript: Int { get }
var kFontCustom816BitScript: Int { get }
var kFontCustom16BitScript: Int { get }
var kFontEnglishLanguage: Int { get }
var kFontFrenchLanguage: Int { get }
var kFontGermanLanguage: Int { get }
var kFontItalianLanguage: Int { get }
var kFontDutchLanguage: Int { get }
var kFontSwedishLanguage: Int { get }
var kFontSpanishLanguage: Int { get }
var kFontDanishLanguage: Int { get }
var kFontPortugueseLanguage: Int { get }
var kFontNorwegianLanguage: Int { get }
var kFontHebrewLanguage: Int { get }
var kFontJapaneseLanguage: Int { get }
var kFontArabicLanguage: Int { get }
var kFontFinnishLanguage: Int { get }
var kFontGreekLanguage: Int { get }
var kFontIcelandicLanguage: Int { get }
var kFontMalteseLanguage: Int { get }
var kFontTurkishLanguage: Int { get }
var kFontCroatianLanguage: Int { get }
var kFontTradChineseLanguage: Int { get }
var kFontUrduLanguage: Int { get }
var kFontHindiLanguage: Int { get }
var kFontThaiLanguage: Int { get }
var kFontKoreanLanguage: Int { get }
var kFontLithuanianLanguage: Int { get }
var kFontPolishLanguage: Int { get }
var kFontHungarianLanguage: Int { get }
var kFontEstonianLanguage: Int { get }
var kFontLettishLanguage: Int { get }
var kFontLatvianLanguage: Int { get }
var kFontSaamiskLanguage: Int { get }
var kFontLappishLanguage: Int { get }
var kFontFaeroeseLanguage: Int { get }
var kFontFarsiLanguage: Int { get }
var kFontPersianLanguage: Int { get }
var kFontRussianLanguage: Int { get }
var kFontSimpChineseLanguage: Int { get }
var kFontFlemishLanguage: Int { get }
var kFontIrishLanguage: Int { get }
var kFontAlbanianLanguage: Int { get }
var kFontRomanianLanguage: Int { get }
var kFontCzechLanguage: Int { get }
var kFontSlovakLanguage: Int { get }
var kFontSlovenianLanguage: Int { get }
var kFontYiddishLanguage: Int { get }
var kFontSerbianLanguage: Int { get }
var kFontMacedonianLanguage: Int { get }
var kFontBulgarianLanguage: Int { get }
var kFontUkrainianLanguage: Int { get }
var kFontByelorussianLanguage: Int { get }
var kFontUzbekLanguage: Int { get }
var kFontKazakhLanguage: Int { get }
var kFontAzerbaijaniLanguage: Int { get }
var kFontAzerbaijanArLanguage: Int { get }
var kFontArmenianLanguage: Int { get }
var kFontGeorgianLanguage: Int { get }
var kFontMoldavianLanguage: Int { get }
var kFontKirghizLanguage: Int { get }
var kFontTajikiLanguage: Int { get }
var kFontTurkmenLanguage: Int { get }
var kFontMongolianLanguage: Int { get }
var kFontMongolianCyrLanguage: Int { get }
var kFontPashtoLanguage: Int { get }
var kFontKurdishLanguage: Int { get }
var kFontKashmiriLanguage: Int { get }
var kFontSindhiLanguage: Int { get }
var kFontTibetanLanguage: Int { get }
var kFontNepaliLanguage: Int { get }
var kFontSanskritLanguage: Int { get }
var kFontMarathiLanguage: Int { get }
var kFontBengaliLanguage: Int { get }
var kFontAssameseLanguage: Int { get }
var kFontGujaratiLanguage: Int { get }
var kFontPunjabiLanguage: Int { get }
var kFontOriyaLanguage: Int { get }
var kFontMalayalamLanguage: Int { get }
var kFontKannadaLanguage: Int { get }
var kFontTamilLanguage: Int { get }
var kFontTeluguLanguage: Int { get }
var kFontSinhaleseLanguage: Int { get }
var kFontBurmeseLanguage: Int { get }
var kFontKhmerLanguage: Int { get }
var kFontLaoLanguage: Int { get }
var kFontVietnameseLanguage: Int { get }
var kFontIndonesianLanguage: Int { get }
var kFontTagalogLanguage: Int { get }
var kFontMalayRomanLanguage: Int { get }
var kFontMalayArabicLanguage: Int { get }
var kFontAmharicLanguage: Int { get }
var kFontTigrinyaLanguage: Int { get }
var kFontGallaLanguage: Int { get }
var kFontOromoLanguage: Int { get }
var kFontSomaliLanguage: Int { get }
var kFontSwahiliLanguage: Int { get }
var kFontRuandaLanguage: Int { get }
var kFontRundiLanguage: Int { get }
var kFontChewaLanguage: Int { get }
var kFontMalagasyLanguage: Int { get }
var kFontEsperantoLanguage: Int { get }
var kFontWelshLanguage: Int { get }
var kFontBasqueLanguage: Int { get }
var kFontCatalanLanguage: Int { get }
var kFontLatinLanguage: Int { get }
var kFontQuechuaLanguage: Int { get }
var kFontGuaraniLanguage: Int { get }
var kFontAymaraLanguage: Int { get }
var kFontTatarLanguage: Int { get }
var kFontUighurLanguage: Int { get }
var kFontDzongkhaLanguage: Int { get }
var kFontJavaneseRomLanguage: Int { get }
var kFontSundaneseRomLanguage: Int { get }
var kFontNoPlatformCode: UInt32 { get }
var kFontNoScriptCode: UInt32 { get }
var kFontNoLanguageCode: UInt32 { get }
struct sfntCMapSubHeader {
  var format: UInt16
  var length: UInt16
  var languageID: UInt16
  init()
  init(format: UInt16, length: UInt16, languageID: UInt16)
}
var sizeof_sfntCMapSubHeader: Int { get }
struct sfntCMapExtendedSubHeader {
  var format: UInt16
  var reserved: UInt16
  var length: UInt32
  var language: UInt32
  init()
  init(format: UInt16, reserved: UInt16, length: UInt32, language: UInt32)
}
var sizeof_sfntCMapExtendedSubHeader: Int { get }
struct sfntCMapEncoding {
  var platformID: UInt16
  var scriptID: UInt16
  var offset: UInt32
  init()
  init(platformID: UInt16, scriptID: UInt16, offset: UInt32)
}
var sizeof_sfntCMapEncoding: Int { get }
struct sfntCMapHeader {
  var version: UInt16
  var numTables: UInt16
  var encoding: (sfntCMapEncoding)
  init()
  init(version: UInt16, numTables: UInt16, encoding: (sfntCMapEncoding))
}
var sizeof_sfntCMapHeader: Int { get }
var nameFontTableTag: Int { get }
var kFontCopyrightName: Int { get }
var kFontFamilyName: Int { get }
var kFontStyleName: Int { get }
var kFontUniqueName: Int { get }
var kFontFullName: Int { get }
var kFontVersionName: Int { get }
var kFontPostscriptName: Int { get }
var kFontTrademarkName: Int { get }
var kFontManufacturerName: Int { get }
var kFontDesignerName: Int { get }
var kFontDescriptionName: Int { get }
var kFontVendorURLName: Int { get }
var kFontDesignerURLName: Int { get }
var kFontLicenseDescriptionName: Int { get }
var kFontLicenseInfoURLName: Int { get }
var kFontPreferredFamilyName: Int { get }
var kFontPreferredSubfamilyName: Int { get }
var kFontMacCompatibleFullName: Int { get }
var kFontSampleTextName: Int { get }
var kFontPostScriptCIDName: Int { get }
var kFontLastReservedName: Int { get }
var kFontNoNameCode: UInt32 { get }
struct sfntNameRecord {
  var platformID: UInt16
  var scriptID: UInt16
  var languageID: UInt16
  var nameID: UInt16
  var length: UInt16
  var offset: UInt16
  init()
  init(platformID: UInt16, scriptID: UInt16, languageID: UInt16, nameID: UInt16, length: UInt16, offset: UInt16)
}
var sizeof_sfntNameRecord: Int { get }
struct sfntNameHeader {
  var format: UInt16
  var count: UInt16
  var stringOffset: UInt16
  var rec: (sfntNameRecord)
  init()
  init(format: UInt16, count: UInt16, stringOffset: UInt16, rec: (sfntNameRecord))
}
var sizeof_sfntNameHeader: Int { get }
var variationFontTableTag: Int { get }
struct sfntVariationAxis {
  var axisTag: FourCharCode
  var minValue: Fixed
  var defaultValue: Fixed
  var maxValue: Fixed
  var flags: Int16
  var nameID: Int16
  init()
  init(axisTag: FourCharCode, minValue: Fixed, defaultValue: Fixed, maxValue: Fixed, flags: Int16, nameID: Int16)
}
var sizeof_sfntVariationAxis: Int { get }
struct sfntInstance {
  var nameID: Int16
  var flags: Int16
  var coord: (Fixed)
  init()
  init(nameID: Int16, flags: Int16, coord: (Fixed))
}
var sizeof_sfntInstance: Int { get }
struct sfntVariationHeader {
  var version: Fixed
  var offsetToData: UInt16
  var countSizePairs: UInt16
  var axisCount: UInt16
  var axisSize: UInt16
  var instanceCount: UInt16
  var instanceSize: UInt16
  var axis: (sfntVariationAxis)
  var instance: (sfntInstance)
  init()
  init(version: Fixed, offsetToData: UInt16, countSizePairs: UInt16, axisCount: UInt16, axisSize: UInt16, instanceCount: UInt16, instanceSize: UInt16, axis: (sfntVariationAxis), instance: (sfntInstance))
}
var sizeof_sfntVariationHeader: Int { get }
var descriptorFontTableTag: Int { get }
struct sfntFontDescriptor {
  var name: FourCharCode
  var value: Fixed
  init()
  init(name: FourCharCode, value: Fixed)
}
struct sfntDescriptorHeader {
  var version: Fixed
  var descriptorCount: Int32
  var descriptor: (sfntFontDescriptor)
  init()
  init(version: Fixed, descriptorCount: Int32, descriptor: (sfntFontDescriptor))
}
var sizeof_sfntDescriptorHeader: Int { get }
var featureFontTableTag: Int { get }
struct sfntFeatureName {
  var featureType: UInt16
  var settingCount: UInt16
  var offsetToSettings: Int32
  var featureFlags: UInt16
  var nameID: Int16
  init()
  init(featureType: UInt16, settingCount: UInt16, offsetToSettings: Int32, featureFlags: UInt16, nameID: Int16)
}
struct sfntFontFeatureSetting {
  var setting: UInt16
  var nameID: Int16
  init()
  init(setting: UInt16, nameID: Int16)
}
struct sfntFontRunFeature {
  var featureType: UInt16
  var setting: UInt16
  init()
  init(featureType: UInt16, setting: UInt16)
}
struct sfntFeatureHeader {
  var version: Int32
  var featureNameCount: UInt16
  var featureSetCount: UInt16
  var reserved: Int32
  var names: (sfntFeatureName)
  var settings: (sfntFontFeatureSetting)
  var runs: (sfntFontRunFeature)
  init()
  init(version: Int32, featureNameCount: UInt16, featureSetCount: UInt16, reserved: Int32, names: (sfntFeatureName), settings: (sfntFontFeatureSetting), runs: (sfntFontRunFeature))
}
var os2FontTableTag: Int { get }
var nonGlyphID: Int { get }
typealias FontNameCode = UInt32
typealias FontPlatformCode = UInt32
typealias FontScriptCode = UInt32
typealias FontLanguageCode = UInt32
struct FontVariation {
  var name: FourCharCode
  var value: Fixed
  init()
  init(name: FourCharCode, value: Fixed)
}
