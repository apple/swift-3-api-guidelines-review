
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
  @available(iOS 2.0, *)
  class func newlineCharacterSet() -> NSCharacterSet
  /*not inherited*/ init(range aRange: NSRange)
  /*not inherited*/ init(charactersInString aString: String)
  /*not inherited*/ init(bitmapRepresentation data: NSData)
  /*not inherited*/ init?(contentsOfFile fName: String)
  init(coder aDecoder: NSCoder)
  func characterIsMember(aCharacter: unichar) -> Bool
  @NSCopying var bitmapRepresentation: NSData { get }
  @NSCopying var invertedSet: NSCharacterSet { get }
  func longCharacterIsMember(theLongChar: UTF32Char) -> Bool
  func isSupersetOfSet(theOtherSet: NSCharacterSet) -> Bool
  func hasMemberInPlane(thePlane: UInt8) -> Bool
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
}
class NSMutableCharacterSet : NSCharacterSet, NSCopying, NSMutableCopying {
  func addCharactersInRange(aRange: NSRange)
  func removeCharactersInRange(aRange: NSRange)
  func addCharactersInString(aString: String)
  func removeCharactersInString(aString: String)
  func formUnionWithCharacterSet(otherSet: NSCharacterSet)
  func formIntersectionWithCharacterSet(otherSet: NSCharacterSet)
  func invert()
  class func controlCharacterSet() -> NSMutableCharacterSet
  class func whitespaceCharacterSet() -> NSMutableCharacterSet
  class func whitespaceAndNewlineCharacterSet() -> NSMutableCharacterSet
  class func decimalDigitCharacterSet() -> NSMutableCharacterSet
  class func letterCharacterSet() -> NSMutableCharacterSet
  class func lowercaseLetterCharacterSet() -> NSMutableCharacterSet
  class func uppercaseLetterCharacterSet() -> NSMutableCharacterSet
  class func nonBaseCharacterSet() -> NSMutableCharacterSet
  class func alphanumericCharacterSet() -> NSMutableCharacterSet
  class func decomposableCharacterSet() -> NSMutableCharacterSet
  class func illegalCharacterSet() -> NSMutableCharacterSet
  class func punctuationCharacterSet() -> NSMutableCharacterSet
  class func capitalizedLetterCharacterSet() -> NSMutableCharacterSet
  class func symbolCharacterSet() -> NSMutableCharacterSet
  @available(iOS 2.0, *)
  class func newlineCharacterSet() -> NSMutableCharacterSet
  /*not inherited*/ init(range aRange: NSRange)
  /*not inherited*/ init(charactersInString aString: String)
  /*not inherited*/ init(bitmapRepresentation data: NSData)
  /*not inherited*/ init?(contentsOfFile fName: String)
  init(coder aDecoder: NSCoder)
  convenience init()
}
