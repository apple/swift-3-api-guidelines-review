
enum NSCharacterCollection : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case IdentityMappingCharacterCollection
  case AdobeCNS1CharacterCollection
  case AdobeGB1CharacterCollection
  case AdobeJapan1CharacterCollection
  case AdobeJapan2CharacterCollection
  case AdobeKorea1CharacterCollection
}
class NSGlyphInfo : NSObject, NSCopying, NSSecureCoding {
  /*not inherited*/ init?(glyphName glyphName: String, forFont font: NSFont, baseString theString: String)
  /*not inherited*/ init?(glyph glyph: NSGlyph, forFont font: NSFont, baseString theString: String)
  /*not inherited*/ init?(characterIdentifier cid: Int, collection characterCollection: NSCharacterCollection, baseString theString: String)
  var glyphName: String? { get }
  var characterIdentifier: Int { get }
  var characterCollection: NSCharacterCollection { get }
  func copyWithZone(_ zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
