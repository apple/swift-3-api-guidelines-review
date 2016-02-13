
enum NSCharacterCollection : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case identityMappingCharacterCollection
  case adobeCNS1CharacterCollection
  case adobeGB1CharacterCollection
  case adobeJapan1CharacterCollection
  case adobeJapan2CharacterCollection
  case adobeKorea1CharacterCollection
}
class NSGlyphInfo : Object, Copying, SecureCoding {
  /*not inherited*/ init?(glyphName: String, for font: NSFont, baseString theString: String)
  /*not inherited*/ init?(glyph: NSGlyph, for font: NSFont, baseString theString: String)
  /*not inherited*/ init?(characterIdentifier cid: Int, collection characterCollection: NSCharacterCollection, baseString theString: String)
  var glyphName: String? { get }
  var characterIdentifier: Int { get }
  var characterCollection: NSCharacterCollection { get }
  init()
  func copy(zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
