
var NSOpenStepUnicodeReservedBase: Int { get }
class NSCharacterSet : NSObject, NSCopying, NSMutableCopying, NSCoding {
  class func controlCharacterSet() -> NSCharacterSet
  class func whitespaceCharacterSet() -> NSCharacterSet
  class func whitespaceAndNewlineCharacterSet() -> NSCharacterSet
  class func decimalDigitCharacterSet() -> NSCharacterSet
  class func letterCharacterSet() -> NSCharacterSet
  class func lowercaseLetterCharacterSet() -> NSCharacterSet
  class func uppercaseLetterCharacterSet() -> NSCharacterSet
  class func nonBaseCharacterSet() -> NSCharacterSet
  class func alphanumericCharacterSet() -> NSCharacterSet
  class func decomposableCharacterSet() -> NSCharacterSet
  class func illegalCharacterSet() -> NSCharacterSet
  class func punctuationCharacterSet() -> NSCharacterSet
  class func capitalizedLetterCharacterSet() -> NSCharacterSet
  class func symbolCharacterSet() -> NSCharacterSet
  @available(watchOS 2.0, *)
  class func newlineCharacterSet() -> NSCharacterSet
  /*not inherited*/ init(range aRange: NSRange)
  /*not inherited*/ init(charactersInString aString: String)
  /*not inherited*/ init(bitmapRepresentation data: NSData)
  /*not inherited*/ init?(contentsOfFile fName: String)
  init(coder aDecoder: NSCoder)
  func characterIsMember(_ aCharacter: unichar) -> Bool
  @NSCopying var bitmapRepresentation: NSData { get }
  @NSCopying var invertedSet: NSCharacterSet { get }
  func longCharacterIsMember(_ theLongChar: UTF32Char) -> Bool
  func isSupersetOfSet(_ theOtherSet: NSCharacterSet) -> Bool
  func hasMemberInPlane(_ thePlane: UInt8) -> Bool
  func copyWithZone(_ zone: NSZone) -> AnyObject
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
  func encodeWithCoder(_ aCoder: NSCoder)
}
class NSMutableCharacterSet : NSCharacterSet, NSCopying, NSMutableCopying {
  func addCharactersInRange(_ aRange: NSRange)
  func removeCharactersInRange(_ aRange: NSRange)
  func addCharactersInString(_ aString: String)
  func removeCharactersInString(_ aString: String)
  func formUnionWithCharacterSet(_ otherSet: NSCharacterSet)
  func formIntersectionWithCharacterSet(_ otherSet: NSCharacterSet)
  func invert()
}
