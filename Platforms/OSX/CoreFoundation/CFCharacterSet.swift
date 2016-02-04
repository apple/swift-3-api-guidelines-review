
class CFCharacterSet {
}
@available(*, deprecated, renamed="CFCharacterSet")
typealias CFCharacterSetRef = CFCharacterSet
@available(*, deprecated, renamed="CFMutableCharacterSet")
typealias CFMutableCharacterSetRef = CFMutableCharacterSet
class CFMutableCharacterSet {
}
enum CFCharacterSetPredefinedSet : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Control
  case Whitespace
  case WhitespaceAndNewline
  case DecimalDigit
  case Letter
  case LowercaseLetter
  case UppercaseLetter
  case NonBase
  case Decomposable
  case AlphaNumeric
  case Punctuation
  case CapitalizedLetter
  case Symbol
  @available(OSX 10.5, *)
  case Newline
  case Illegal
}
func CFCharacterSetGetTypeID() -> CFTypeID
func CFCharacterSetGetPredefined(theSetIdentifier: CFCharacterSetPredefinedSet) -> CFCharacterSet!
func CFCharacterSetCreateWithCharactersInRange(alloc: CFAllocator!, _ theRange: CFRange) -> CFCharacterSet!
func CFCharacterSetCreateWithCharactersInString(alloc: CFAllocator!, _ theString: CFString!) -> CFCharacterSet!
func CFCharacterSetCreateWithBitmapRepresentation(alloc: CFAllocator!, _ theData: CFData!) -> CFCharacterSet!
func CFCharacterSetCreateInvertedSet(alloc: CFAllocator!, _ theSet: CFCharacterSet!) -> CFCharacterSet!
func CFCharacterSetIsSupersetOfSet(theSet: CFCharacterSet!, _ theOtherset: CFCharacterSet!) -> Bool
func CFCharacterSetHasMemberInPlane(theSet: CFCharacterSet!, _ thePlane: CFIndex) -> Bool
func CFCharacterSetCreateMutable(alloc: CFAllocator!) -> CFMutableCharacterSet!
func CFCharacterSetCreateCopy(alloc: CFAllocator!, _ theSet: CFCharacterSet!) -> CFCharacterSet!
func CFCharacterSetCreateMutableCopy(alloc: CFAllocator!, _ theSet: CFCharacterSet!) -> CFMutableCharacterSet!
func CFCharacterSetIsCharacterMember(theSet: CFCharacterSet!, _ theChar: UniChar) -> Bool
func CFCharacterSetIsLongCharacterMember(theSet: CFCharacterSet!, _ theChar: UTF32Char) -> Bool
func CFCharacterSetCreateBitmapRepresentation(alloc: CFAllocator!, _ theSet: CFCharacterSet!) -> CFData!
func CFCharacterSetAddCharactersInRange(theSet: CFMutableCharacterSet!, _ theRange: CFRange)
func CFCharacterSetRemoveCharactersInRange(theSet: CFMutableCharacterSet!, _ theRange: CFRange)
func CFCharacterSetAddCharactersInString(theSet: CFMutableCharacterSet!, _ theString: CFString!)
func CFCharacterSetRemoveCharactersInString(theSet: CFMutableCharacterSet!, _ theString: CFString!)
func CFCharacterSetUnion(theSet: CFMutableCharacterSet!, _ theOtherSet: CFCharacterSet!)
func CFCharacterSetIntersect(theSet: CFMutableCharacterSet!, _ theOtherSet: CFCharacterSet!)
func CFCharacterSetInvert(theSet: CFMutableCharacterSet!)
