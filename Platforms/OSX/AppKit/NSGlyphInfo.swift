
enum NSCharacterCollection : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case IdentityMappingCharacterCollection
  case AdobeCNS1CharacterCollection
  case AdobeGB1CharacterCollection
  case AdobeJapan1CharacterCollection
  case AdobeJapan2CharacterCollection
  case AdobeKorea1CharacterCollection
}
class NSGlyphInfo : Object, Copying, SecureCoding {
  /*not inherited*/ init?(glyphName: String, forFont font: NSFont, baseString theString: String)
  /*not inherited*/ init?(glyph: NSGlyph, forFont font: NSFont, baseString theString: String)
  /*not inherited*/ init?(characterIdentifier cid: Int, collection characterCollection: NSCharacterCollection, baseString theString: String)
  var glyphName: String? { get }
  var characterIdentifier: Int { get }
  var characterCollection: NSCharacterCollection { get }
  init()
  func copyWith(zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
