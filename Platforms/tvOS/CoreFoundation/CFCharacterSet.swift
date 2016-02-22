
class CFCharacterSet {
}
class CFMutableCharacterSet {
}
enum CFCharacterSetPredefinedSet : CFIndex {
  init?(rawValue rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case control
  case whitespace
  case whitespaceAndNewline
  case decimalDigit
  case letter
  case lowercaseLetter
  case uppercaseLetter
  case nonBase
  case decomposable
  case alphaNumeric
  case punctuation
  case capitalizedLetter
  case symbol
  @available(tvOS 2.0, *)
  case newline
  case illegal
}
func CFCharacterSetGetTypeID() -> CFTypeID
func CFCharacterSetGetPredefined(_ theSetIdentifier: CFCharacterSetPredefinedSet) -> CFCharacterSet!
func CFCharacterSetCreateWithCharactersInRange(_ alloc: CFAllocator!, _ theRange: CFRange) -> CFCharacterSet!
func CFCharacterSetCreateWithCharactersInString(_ alloc: CFAllocator!, _ theString: CFString!) -> CFCharacterSet!
func CFCharacterSetCreateWithBitmapRepresentation(_ alloc: CFAllocator!, _ theData: CFData!) -> CFCharacterSet!
func CFCharacterSetCreateInvertedSet(_ alloc: CFAllocator!, _ theSet: CFCharacterSet!) -> CFCharacterSet!
func CFCharacterSetIsSupersetOfSet(_ theSet: CFCharacterSet!, _ theOtherset: CFCharacterSet!) -> Bool
func CFCharacterSetHasMemberInPlane(_ theSet: CFCharacterSet!, _ thePlane: CFIndex) -> Bool
func CFCharacterSetCreateMutable(_ alloc: CFAllocator!) -> CFMutableCharacterSet!
func CFCharacterSetCreateCopy(_ alloc: CFAllocator!, _ theSet: CFCharacterSet!) -> CFCharacterSet!
func CFCharacterSetCreateMutableCopy(_ alloc: CFAllocator!, _ theSet: CFCharacterSet!) -> CFMutableCharacterSet!
func CFCharacterSetIsCharacterMember(_ theSet: CFCharacterSet!, _ theChar: UniChar) -> Bool
func CFCharacterSetIsLongCharacterMember(_ theSet: CFCharacterSet!, _ theChar: UTF32Char) -> Bool
func CFCharacterSetCreateBitmapRepresentation(_ alloc: CFAllocator!, _ theSet: CFCharacterSet!) -> CFData!
func CFCharacterSetAddCharactersInRange(_ theSet: CFMutableCharacterSet!, _ theRange: CFRange)
func CFCharacterSetRemoveCharactersInRange(_ theSet: CFMutableCharacterSet!, _ theRange: CFRange)
func CFCharacterSetAddCharactersInString(_ theSet: CFMutableCharacterSet!, _ theString: CFString!)
func CFCharacterSetRemoveCharactersInString(_ theSet: CFMutableCharacterSet!, _ theString: CFString!)
func CFCharacterSetUnion(_ theSet: CFMutableCharacterSet!, _ theOtherSet: CFCharacterSet!)
func CFCharacterSetIntersect(_ theSet: CFMutableCharacterSet!, _ theOtherSet: CFCharacterSet!)
func CFCharacterSetInvert(_ theSet: CFMutableCharacterSet!)
