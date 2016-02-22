
typealias CFStringEncoding = UInt32
var kCFStringEncodingInvalidId: UInt32 { get }
enum CFStringBuiltInEncodings : CFStringEncoding {
  init?(rawValue rawValue: CFStringEncoding)
  var rawValue: CFStringEncoding { get }
  case macRoman
  case windowsLatin1
  case isoLatin1
  case nextStepLatin
  case ASCII
  case unicode
  case UTF8
  case nonLossyASCII
  static var UTF16: CFStringBuiltInEncodings { get }
  case UTF16BE
  case UTF16LE
  case UTF32
  case UTF32BE
  case UTF32LE
}
func CFStringGetTypeID() -> CFTypeID
func CFStringCreateWithPascalString(_ alloc: CFAllocator!, _ pStr: ConstStr255Param, _ encoding: CFStringEncoding) -> CFString!
func CFStringCreateWithCString(_ alloc: CFAllocator!, _ cStr: UnsafePointer<Int8>, _ encoding: CFStringEncoding) -> CFString!
func CFStringCreateWithBytes(_ alloc: CFAllocator!, _ bytes: UnsafePointer<UInt8>, _ numBytes: CFIndex, _ encoding: CFStringEncoding, _ isExternalRepresentation: Bool) -> CFString!
func CFStringCreateWithCharacters(_ alloc: CFAllocator!, _ chars: UnsafePointer<UniChar>, _ numChars: CFIndex) -> CFString!
func CFStringCreateWithPascalStringNoCopy(_ alloc: CFAllocator!, _ pStr: ConstStr255Param, _ encoding: CFStringEncoding, _ contentsDeallocator: CFAllocator!) -> CFString!
func CFStringCreateWithCStringNoCopy(_ alloc: CFAllocator!, _ cStr: UnsafePointer<Int8>, _ encoding: CFStringEncoding, _ contentsDeallocator: CFAllocator!) -> CFString!
func CFStringCreateWithBytesNoCopy(_ alloc: CFAllocator!, _ bytes: UnsafePointer<UInt8>, _ numBytes: CFIndex, _ encoding: CFStringEncoding, _ isExternalRepresentation: Bool, _ contentsDeallocator: CFAllocator!) -> CFString!
func CFStringCreateWithCharactersNoCopy(_ alloc: CFAllocator!, _ chars: UnsafePointer<UniChar>, _ numChars: CFIndex, _ contentsDeallocator: CFAllocator!) -> CFString!
func CFStringCreateWithSubstring(_ alloc: CFAllocator!, _ str: CFString!, _ range: CFRange) -> CFString!
func CFStringCreateCopy(_ alloc: CFAllocator!, _ theString: CFString!) -> CFString!
func CFStringCreateWithFormatAndArguments(_ alloc: CFAllocator!, _ formatOptions: CFDictionary!, _ format: CFString!, _ arguments: CVaListPointer) -> CFString!
func CFStringCreateMutable(_ alloc: CFAllocator!, _ maxLength: CFIndex) -> CFMutableString!
func CFStringCreateMutableCopy(_ alloc: CFAllocator!, _ maxLength: CFIndex, _ theString: CFString!) -> CFMutableString!
func CFStringCreateMutableWithExternalCharactersNoCopy(_ alloc: CFAllocator!, _ chars: UnsafeMutablePointer<UniChar>, _ numChars: CFIndex, _ capacity: CFIndex, _ externalCharactersAllocator: CFAllocator!) -> CFMutableString!
func CFStringGetLength(_ theString: CFString!) -> CFIndex
func CFStringGetCharacterAtIndex(_ theString: CFString!, _ idx: CFIndex) -> UniChar
func CFStringGetCharacters(_ theString: CFString!, _ range: CFRange, _ buffer: UnsafeMutablePointer<UniChar>)
func CFStringGetPascalString(_ theString: CFString!, _ buffer: StringPtr, _ bufferSize: CFIndex, _ encoding: CFStringEncoding) -> Bool
func CFStringGetCString(_ theString: CFString!, _ buffer: UnsafeMutablePointer<Int8>, _ bufferSize: CFIndex, _ encoding: CFStringEncoding) -> Bool
func CFStringGetPascalStringPtr(_ theString: CFString!, _ encoding: CFStringEncoding) -> ConstStringPtr
func CFStringGetCStringPtr(_ theString: CFString!, _ encoding: CFStringEncoding) -> UnsafePointer<Int8>
func CFStringGetCharactersPtr(_ theString: CFString!) -> UnsafePointer<UniChar>
func CFStringGetBytes(_ theString: CFString!, _ range: CFRange, _ encoding: CFStringEncoding, _ lossByte: UInt8, _ isExternalRepresentation: Bool, _ buffer: UnsafeMutablePointer<UInt8>, _ maxBufLen: CFIndex, _ usedBufLen: UnsafeMutablePointer<CFIndex>) -> CFIndex
func CFStringCreateFromExternalRepresentation(_ alloc: CFAllocator!, _ data: CFData!, _ encoding: CFStringEncoding) -> CFString!
func CFStringCreateExternalRepresentation(_ alloc: CFAllocator!, _ theString: CFString!, _ encoding: CFStringEncoding, _ lossByte: UInt8) -> CFData!
func CFStringGetSmallestEncoding(_ theString: CFString!) -> CFStringEncoding
func CFStringGetFastestEncoding(_ theString: CFString!) -> CFStringEncoding
func CFStringGetSystemEncoding() -> CFStringEncoding
func CFStringGetMaximumSizeForEncoding(_ length: CFIndex, _ encoding: CFStringEncoding) -> CFIndex
func CFStringGetFileSystemRepresentation(_ string: CFString!, _ buffer: UnsafeMutablePointer<Int8>, _ maxBufLen: CFIndex) -> Bool
func CFStringGetMaximumSizeOfFileSystemRepresentation(_ string: CFString!) -> CFIndex
func CFStringCreateWithFileSystemRepresentation(_ alloc: CFAllocator!, _ buffer: UnsafePointer<Int8>) -> CFString!
struct CFStringCompareFlags : OptionSetType {
  init(rawValue rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var compareCaseInsensitive: CFStringCompareFlags { get }
  static var compareBackwards: CFStringCompareFlags { get }
  static var compareAnchored: CFStringCompareFlags { get }
  static var compareNonliteral: CFStringCompareFlags { get }
  static var compareLocalized: CFStringCompareFlags { get }
  static var compareNumerically: CFStringCompareFlags { get }
  @available(tvOS 2.0, *)
  static var compareDiacriticInsensitive: CFStringCompareFlags { get }
  @available(tvOS 2.0, *)
  static var compareWidthInsensitive: CFStringCompareFlags { get }
  @available(tvOS 2.0, *)
  static var compareForcedOrdering: CFStringCompareFlags { get }
}
@available(tvOS 2.0, *)
func CFStringCompareWithOptionsAndLocale(_ theString1: CFString!, _ theString2: CFString!, _ rangeToCompare: CFRange, _ compareOptions: CFStringCompareFlags, _ locale: CFLocale!) -> CFComparisonResult
func CFStringCompareWithOptions(_ theString1: CFString!, _ theString2: CFString!, _ rangeToCompare: CFRange, _ compareOptions: CFStringCompareFlags) -> CFComparisonResult
func CFStringCompare(_ theString1: CFString!, _ theString2: CFString!, _ compareOptions: CFStringCompareFlags) -> CFComparisonResult
@available(tvOS 2.0, *)
func CFStringFindWithOptionsAndLocale(_ theString: CFString!, _ stringToFind: CFString!, _ rangeToSearch: CFRange, _ searchOptions: CFStringCompareFlags, _ locale: CFLocale!, _ result: UnsafeMutablePointer<CFRange>) -> Bool
func CFStringFindWithOptions(_ theString: CFString!, _ stringToFind: CFString!, _ rangeToSearch: CFRange, _ searchOptions: CFStringCompareFlags, _ result: UnsafeMutablePointer<CFRange>) -> Bool
func CFStringCreateArrayWithFindResults(_ alloc: CFAllocator!, _ theString: CFString!, _ stringToFind: CFString!, _ rangeToSearch: CFRange, _ compareOptions: CFStringCompareFlags) -> CFArray!
func CFStringFind(_ theString: CFString!, _ stringToFind: CFString!, _ compareOptions: CFStringCompareFlags) -> CFRange
func CFStringHasPrefix(_ theString: CFString!, _ prefix: CFString!) -> Bool
func CFStringHasSuffix(_ theString: CFString!, _ suffix: CFString!) -> Bool
func CFStringGetRangeOfComposedCharactersAtIndex(_ theString: CFString!, _ theIndex: CFIndex) -> CFRange
func CFStringFindCharacterFromSet(_ theString: CFString!, _ theSet: CFCharacterSet!, _ rangeToSearch: CFRange, _ searchOptions: CFStringCompareFlags, _ result: UnsafeMutablePointer<CFRange>) -> Bool
func CFStringGetLineBounds(_ theString: CFString!, _ range: CFRange, _ lineBeginIndex: UnsafeMutablePointer<CFIndex>, _ lineEndIndex: UnsafeMutablePointer<CFIndex>, _ contentsEndIndex: UnsafeMutablePointer<CFIndex>)
@available(tvOS 2.0, *)
func CFStringGetParagraphBounds(_ string: CFString!, _ range: CFRange, _ parBeginIndex: UnsafeMutablePointer<CFIndex>, _ parEndIndex: UnsafeMutablePointer<CFIndex>, _ contentsEndIndex: UnsafeMutablePointer<CFIndex>)
@available(tvOS 4.2, *)
func CFStringGetHyphenationLocationBeforeIndex(_ string: CFString!, _ location: CFIndex, _ limitRange: CFRange, _ options: CFOptionFlags, _ locale: CFLocale!, _ character: UnsafeMutablePointer<UTF32Char>) -> CFIndex
@available(tvOS 4.3, *)
func CFStringIsHyphenationAvailableForLocale(_ locale: CFLocale!) -> Bool
func CFStringCreateByCombiningStrings(_ alloc: CFAllocator!, _ theArray: CFArray!, _ separatorString: CFString!) -> CFString!
func CFStringCreateArrayBySeparatingStrings(_ alloc: CFAllocator!, _ theString: CFString!, _ separatorString: CFString!) -> CFArray!
func CFStringGetIntValue(_ str: CFString!) -> Int32
func CFStringGetDoubleValue(_ str: CFString!) -> Double
func CFStringAppend(_ theString: CFMutableString!, _ appendedString: CFString!)
func CFStringAppendCharacters(_ theString: CFMutableString!, _ chars: UnsafePointer<UniChar>, _ numChars: CFIndex)
func CFStringAppendPascalString(_ theString: CFMutableString!, _ pStr: ConstStr255Param, _ encoding: CFStringEncoding)
func CFStringAppendCString(_ theString: CFMutableString!, _ cStr: UnsafePointer<Int8>, _ encoding: CFStringEncoding)
func CFStringAppendFormatAndArguments(_ theString: CFMutableString!, _ formatOptions: CFDictionary!, _ format: CFString!, _ arguments: CVaListPointer)
func CFStringInsert(_ str: CFMutableString!, _ idx: CFIndex, _ insertedStr: CFString!)
func CFStringDelete(_ theString: CFMutableString!, _ range: CFRange)
func CFStringReplace(_ theString: CFMutableString!, _ range: CFRange, _ replacement: CFString!)
func CFStringReplaceAll(_ theString: CFMutableString!, _ replacement: CFString!)
func CFStringFindAndReplace(_ theString: CFMutableString!, _ stringToFind: CFString!, _ replacementString: CFString!, _ rangeToSearch: CFRange, _ compareOptions: CFStringCompareFlags) -> CFIndex
func CFStringSetExternalCharactersNoCopy(_ theString: CFMutableString!, _ chars: UnsafeMutablePointer<UniChar>, _ length: CFIndex, _ capacity: CFIndex)
func CFStringPad(_ theString: CFMutableString!, _ padString: CFString!, _ length: CFIndex, _ indexIntoPad: CFIndex)
func CFStringTrim(_ theString: CFMutableString!, _ trimString: CFString!)
func CFStringTrimWhitespace(_ theString: CFMutableString!)
func CFStringLowercase(_ theString: CFMutableString!, _ locale: CFLocale!)
func CFStringUppercase(_ theString: CFMutableString!, _ locale: CFLocale!)
func CFStringCapitalize(_ theString: CFMutableString!, _ locale: CFLocale!)
enum CFStringNormalizationForm : CFIndex {
  init?(rawValue rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case D
  case KD
  case C
  case KC
}
func CFStringNormalize(_ theString: CFMutableString!, _ theForm: CFStringNormalizationForm)
@available(tvOS 2.0, *)
func CFStringFold(_ theString: CFMutableString!, _ theFlags: CFStringCompareFlags, _ theLocale: CFLocale!)
func CFStringTransform(_ string: CFMutableString!, _ range: UnsafeMutablePointer<CFRange>, _ transform: CFString!, _ reverse: Bool) -> Bool
let kCFStringTransformStripCombiningMarks: CFString!
let kCFStringTransformToLatin: CFString!
let kCFStringTransformFullwidthHalfwidth: CFString!
let kCFStringTransformLatinKatakana: CFString!
let kCFStringTransformLatinHiragana: CFString!
let kCFStringTransformHiraganaKatakana: CFString!
let kCFStringTransformMandarinLatin: CFString!
let kCFStringTransformLatinHangul: CFString!
let kCFStringTransformLatinArabic: CFString!
let kCFStringTransformLatinHebrew: CFString!
let kCFStringTransformLatinThai: CFString!
let kCFStringTransformLatinCyrillic: CFString!
let kCFStringTransformLatinGreek: CFString!
let kCFStringTransformToXMLHex: CFString!
let kCFStringTransformToUnicodeName: CFString!
@available(tvOS 2.0, *)
let kCFStringTransformStripDiacritics: CFString!
func CFStringIsEncodingAvailable(_ encoding: CFStringEncoding) -> Bool
func CFStringGetListOfAvailableEncodings() -> UnsafePointer<CFStringEncoding>
func CFStringGetNameOfEncoding(_ encoding: CFStringEncoding) -> CFString!
func CFStringConvertEncodingToNSStringEncoding(_ encoding: CFStringEncoding) -> UInt
func CFStringConvertNSStringEncodingToEncoding(_ encoding: UInt) -> CFStringEncoding
func CFStringConvertEncodingToWindowsCodepage(_ encoding: CFStringEncoding) -> UInt32
func CFStringConvertWindowsCodepageToEncoding(_ codepage: UInt32) -> CFStringEncoding
func CFStringConvertIANACharSetNameToEncoding(_ theString: CFString!) -> CFStringEncoding
func CFStringConvertEncodingToIANACharSetName(_ encoding: CFStringEncoding) -> CFString!
func CFStringGetMostCompatibleMacStringEncoding(_ encoding: CFStringEncoding) -> CFStringEncoding
var __kCFStringInlineBufferLength: Int32 { get }
struct CFStringInlineBuffer {
  var buffer: (UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar)
  var theString: Unmanaged<CFString>!
  var directUniCharBuffer: UnsafePointer<UniChar>
  var directCStringBuffer: UnsafePointer<Int8>
  var rangeToBuffer: CFRange
  var bufferedRangeStart: CFIndex
  var bufferedRangeEnd: CFIndex
  init()
  init(buffer buffer: (UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar), theString theString: Unmanaged<CFString>!, directUniCharBuffer directUniCharBuffer: UnsafePointer<UniChar>, directCStringBuffer directCStringBuffer: UnsafePointer<Int8>, rangeToBuffer rangeToBuffer: CFRange, bufferedRangeStart bufferedRangeStart: CFIndex, bufferedRangeEnd bufferedRangeEnd: CFIndex)
}
func CFStringInitInlineBuffer(_ str: CFString!, _ buf: UnsafeMutablePointer<CFStringInlineBuffer>, _ range: CFRange)
func CFStringGetCharacterFromInlineBuffer(_ buf: UnsafeMutablePointer<CFStringInlineBuffer>, _ idx: CFIndex) -> UniChar
func CFStringIsSurrogateHighCharacter(_ character: UniChar) -> Bool
func CFStringIsSurrogateLowCharacter(_ character: UniChar) -> Bool
func CFStringGetLongCharacterForSurrogatePair(_ surrogateHigh: UniChar, _ surrogateLow: UniChar) -> UTF32Char
func CFStringGetSurrogatePairForLongCharacter(_ character: UTF32Char, _ surrogates: UnsafeMutablePointer<UniChar>) -> Bool
func CFShow(_ obj: CFTypeRef!)
func CFShowStr(_ str: CFString!)
func __CFStringMakeConstantString(_ cStr: UnsafePointer<Int8>) -> CFString!
