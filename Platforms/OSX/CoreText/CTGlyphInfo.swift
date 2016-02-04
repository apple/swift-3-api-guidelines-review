
class CTGlyphInfo {
}
@available(OSX 10.5, *)
func CTGlyphInfoGetTypeID() -> CFTypeID
enum CTCharacterCollection : UInt16 {
  init?(rawValue: UInt16)
  var rawValue: UInt16 { get }
  @available(OSX 10.8, *)
  case IdentityMapping
  @available(OSX 10.8, *)
  case AdobeCNS1
  @available(OSX 10.8, *)
  case AdobeGB1
  @available(OSX 10.8, *)
  case AdobeJapan1
  @available(OSX 10.8, *)
  case AdobeJapan2
  @available(OSX 10.8, *)
  case AdobeKorea1
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTIdentityMappingCharacterCollection: CTCharacterCollection { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTAdobeCNS1CharacterCollection: CTCharacterCollection { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTAdobeGB1CharacterCollection: CTCharacterCollection { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTAdobeJapan1CharacterCollection: CTCharacterCollection { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTAdobeJapan2CharacterCollection: CTCharacterCollection { get }
  @available(OSX, introduced=10.5, deprecated=10.11)
  static var kCTAdobeKorea1CharacterCollection: CTCharacterCollection { get }
}
@available(OSX 10.5, *)
func CTGlyphInfoCreateWithGlyphName(glyphName: CFString, _ font: CTFont, _ baseString: CFString) -> CTGlyphInfo
@available(OSX 10.5, *)
func CTGlyphInfoCreateWithGlyph(glyph: CGGlyph, _ font: CTFont, _ baseString: CFString) -> CTGlyphInfo
@available(OSX 10.5, *)
func CTGlyphInfoCreateWithCharacterIdentifier(cid: CGFontIndex, _ collection: CTCharacterCollection, _ baseString: CFString) -> CTGlyphInfo
@available(OSX 10.5, *)
func CTGlyphInfoGetGlyphName(glyphInfo: CTGlyphInfo) -> CFString?
@available(OSX 10.5, *)
func CTGlyphInfoGetCharacterIdentifier(glyphInfo: CTGlyphInfo) -> CGFontIndex
@available(OSX 10.5, *)
func CTGlyphInfoGetCharacterCollection(glyphInfo: CTGlyphInfo) -> CTCharacterCollection
