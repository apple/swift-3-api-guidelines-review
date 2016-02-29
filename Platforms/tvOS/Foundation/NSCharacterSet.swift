
var NSOpenStepUnicodeReservedBase: Int { get }
class NSCharacterSet : NSObject, NSCopying, NSMutableCopying, NSCoding {
  class func control() -> NSCharacterSet
  class func whitespace() -> NSCharacterSet
  class func whitespaceAndNewline() -> NSCharacterSet
  class func decimalDigit() -> NSCharacterSet
  class func letter() -> NSCharacterSet
  class func lowercaseLetter() -> NSCharacterSet
  class func uppercaseLetter() -> NSCharacterSet
  class func nonBase() -> NSCharacterSet
  class func alphanumeric() -> NSCharacterSet
  class func decomposable() -> NSCharacterSet
  class func illegal() -> NSCharacterSet
  class func punctuation() -> NSCharacterSet
  class func capitalizedLetter() -> NSCharacterSet
  class func symbol() -> NSCharacterSet
  @available(tvOS 2.0, *)
  class func newline() -> NSCharacterSet
  /*not inherited*/ init(range aRange: NSRange)
  /*not inherited*/ init(charactersIn aString: String)
  /*not inherited*/ init(bitmapRepresentation data: NSData)
  /*not inherited*/ init?(contentsOfFile fName: String)
  init(coder aDecoder: NSCoder)
  func characterIsMember(_ aCharacter: unichar) -> Bool
  @NSCopying var bitmapRepresentation: NSData { get }
  @NSCopying var inverted: NSCharacterSet { get }
  func longCharacterIsMember(_ theLongChar: UTF32Char) -> Bool
  func isSuperset(of theOtherSet: NSCharacterSet) -> Bool
  func hasMember(inPlane thePlane: UInt8) -> Bool
  func copy(with zone: NSZone = nil) -> AnyObject
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
  func encode(with aCoder: NSCoder)
}
class NSMutableCharacterSet : NSCharacterSet, NSCopying, NSMutableCopying {
  func addCharacters(in aRange: NSRange)
  func removeCharacters(in aRange: NSRange)
  func addCharacters(in aString: String)
  func removeCharacters(in aString: String)
  func formUnion(with otherSet: NSCharacterSet)
  func formIntersection(with otherSet: NSCharacterSet)
  func invert()
}
