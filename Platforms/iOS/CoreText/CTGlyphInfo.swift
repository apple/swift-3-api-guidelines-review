
class CTGlyphInfo {
}
@available(iOS 3.2, *)
func CTGlyphInfoGetTypeID() -> CFTypeID
enum CTCharacterCollection : UInt16 {
  init?(rawValue: UInt16)
  var rawValue: UInt16 { get }
  @available(iOS 6.0, *)
  case IdentityMapping
  @available(iOS 6.0, *)
  case AdobeCNS1
  @available(iOS 6.0, *)
  case AdobeGB1
  @available(iOS 6.0, *)
  case AdobeJapan1
  @available(iOS 6.0, *)
  case AdobeJapan2
  @available(iOS 6.0, *)
  case AdobeKorea1
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTIdentityMappingCharacterCollection: CTCharacterCollection { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTAdobeCNS1CharacterCollection: CTCharacterCollection { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTAdobeGB1CharacterCollection: CTCharacterCollection { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTAdobeJapan1CharacterCollection: CTCharacterCollection { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTAdobeJapan2CharacterCollection: CTCharacterCollection { get }
  @available(iOS, introduced=3.2, deprecated=9.0)
  static var kCTAdobeKorea1CharacterCollection: CTCharacterCollection { get }
}
@available(iOS 3.2, *)
func CTGlyphInfoCreateWithGlyphName(glyphName: CFString, _ font: CTFont, _ baseString: CFString) -> CTGlyphInfo
@available(iOS 3.2, *)
func CTGlyphInfoCreateWithGlyph(glyph: CGGlyph, _ font: CTFont, _ baseString: CFString) -> CTGlyphInfo
@available(iOS 3.2, *)
func CTGlyphInfoCreateWithCharacterIdentifier(cid: CGFontIndex, _ collection: CTCharacterCollection, _ baseString: CFString) -> CTGlyphInfo
@available(iOS 3.2, *)
func CTGlyphInfoGetGlyphName(glyphInfo: CTGlyphInfo) -> CFString?
@available(iOS 3.2, *)
func CTGlyphInfoGetCharacterIdentifier(glyphInfo: CTGlyphInfo) -> CGFontIndex
@available(iOS 3.2, *)
func CTGlyphInfoGetCharacterCollection(glyphInfo: CTGlyphInfo) -> CTCharacterCollection
