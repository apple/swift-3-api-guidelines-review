
var openStepUnicodeReservedBase: Int { get }
class CharacterSet : Object, Copying, MutableCopying, Coding {
  class func control() -> CharacterSet
  class func whitespace() -> CharacterSet
  class func whitespaceAndNewline() -> CharacterSet
  class func decimalDigit() -> CharacterSet
  class func letter() -> CharacterSet
  class func lowercaseLetter() -> CharacterSet
  class func uppercaseLetter() -> CharacterSet
  class func nonBase() -> CharacterSet
  class func alphanumeric() -> CharacterSet
  class func decomposable() -> CharacterSet
  class func illegal() -> CharacterSet
  class func punctuation() -> CharacterSet
  class func capitalizedLetter() -> CharacterSet
  class func symbol() -> CharacterSet
  @available(OSX 10.5, *)
  class func newline() -> CharacterSet
  /*not inherited*/ init(range aRange: NSRange)
  /*not inherited*/ init(charactersIn aString: String)
  /*not inherited*/ init(bitmapRepresentation data: Data)
  /*not inherited*/ init?(contentsOfFile fName: String)
  init(coder aDecoder: Coder)
  func characterIsMember(aCharacter: unichar) -> Bool
  @NSCopying var bitmapRepresentation: Data { get }
  @NSCopying var inverted: CharacterSet { get }
  func longCharacterIsMember(theLongChar: UTF32Char) -> Bool
  func isSupersetOf(theOtherSet: CharacterSet) -> Bool
  func hasMember(inPlane thePlane: UInt8) -> Bool
  convenience init()
  func copy(with zone: Zone = nil) -> AnyObject
  func mutableCopy(with zone: Zone = nil) -> AnyObject
  func encode(with aCoder: Coder)
}
class MutableCharacterSet : CharacterSet, Copying, MutableCopying {
  func addCharacters(in aRange: NSRange)
  func removeCharacters(in aRange: NSRange)
  func addCharacters(in aString: String)
  func removeCharacters(in aString: String)
  func formUnion(otherSet: CharacterSet)
  func formIntersection(otherSet: CharacterSet)
  func invert()
  class func control() -> MutableCharacterSet
  class func whitespace() -> MutableCharacterSet
  class func whitespaceAndNewline() -> MutableCharacterSet
  class func decimalDigit() -> MutableCharacterSet
  class func letter() -> MutableCharacterSet
  class func lowercaseLetter() -> MutableCharacterSet
  class func uppercaseLetter() -> MutableCharacterSet
  class func nonBase() -> MutableCharacterSet
  class func alphanumeric() -> MutableCharacterSet
  class func decomposable() -> MutableCharacterSet
  class func illegal() -> MutableCharacterSet
  class func punctuation() -> MutableCharacterSet
  class func capitalizedLetter() -> MutableCharacterSet
  class func symbol() -> MutableCharacterSet
  @available(OSX 10.5, *)
  class func newline() -> MutableCharacterSet
  /*not inherited*/ init(range aRange: NSRange)
  /*not inherited*/ init(charactersIn aString: String)
  /*not inherited*/ init(bitmapRepresentation data: Data)
  /*not inherited*/ init?(contentsOfFile fName: String)
  init(coder aDecoder: Coder)
  convenience init()
}
