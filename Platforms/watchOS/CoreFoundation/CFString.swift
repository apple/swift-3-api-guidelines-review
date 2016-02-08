
typealias CFStringEncoding = UInt32
var kCFStringEncodingInvalidId: UInt32 { get }
enum CFStringBuiltInEncodings : CFStringEncoding {
  init?(rawValue: CFStringEncoding)
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
func CFStringCreateWithPascalString(alloc: CFAllocator!, _ pStr: ConstStr255Param, _ encoding: CFStringEncoding) -> CFString!
func CFStringCreateWithCString(alloc: CFAllocator!, _ cStr: UnsafePointer<Int8>, _ encoding: CFStringEncoding) -> CFString!
func CFStringCreateWithBytes(alloc: CFAllocator!, _ bytes: UnsafePointer<UInt8>, _ numBytes: CFIndex, _ encoding: CFStringEncoding, _ isExternalRepresentation: Bool) -> CFString!
func CFStringCreateWithCharacters(alloc: CFAllocator!, _ chars: UnsafePointer<UniChar>, _ numChars: CFIndex) -> CFString!
func CFStringCreateWithPascalStringNoCopy(alloc: CFAllocator!, _ pStr: ConstStr255Param, _ encoding: CFStringEncoding, _ contentsDeallocator: CFAllocator!) -> CFString!
func CFStringCreateWithCStringNoCopy(alloc: CFAllocator!, _ cStr: UnsafePointer<Int8>, _ encoding: CFStringEncoding, _ contentsDeallocator: CFAllocator!) -> CFString!
func CFStringCreateWithBytesNoCopy(alloc: CFAllocator!, _ bytes: UnsafePointer<UInt8>, _ numBytes: CFIndex, _ encoding: CFStringEncoding, _ isExternalRepresentation: Bool, _ contentsDeallocator: CFAllocator!) -> CFString!
func CFStringCreateWithCharactersNoCopy(alloc: CFAllocator!, _ chars: UnsafePointer<UniChar>, _ numChars: CFIndex, _ contentsDeallocator: CFAllocator!) -> CFString!
func CFStringCreateWithSubstring(alloc: CFAllocator!, _ str: CFString!, _ range: CFRange) -> CFString!
func CFStringCreateCopy(alloc: CFAllocator!, _ theString: CFString!) -> CFString!
func CFStringCreateWithFormatAndArguments(alloc: CFAllocator!, _ formatOptions: CFDictionary!, _ format: CFString!, _ arguments: CVaListPointer) -> CFString!
func CFStringCreateMutable(alloc: CFAllocator!, _ maxLength: CFIndex) -> CFMutableString!
func CFStringCreateMutableCopy(alloc: CFAllocator!, _ maxLength: CFIndex, _ theString: CFString!) -> CFMutableString!
func CFStringCreateMutableWithExternalCharactersNoCopy(alloc: CFAllocator!, _ chars: UnsafeMutablePointer<UniChar>, _ numChars: CFIndex, _ capacity: CFIndex, _ externalCharactersAllocator: CFAllocator!) -> CFMutableString!
func CFStringGetLength(theString: CFString!) -> CFIndex
func CFStringGetCharacterAtIndex(theString: CFString!, _ idx: CFIndex) -> UniChar
func CFStringGetCharacters(theString: CFString!, _ range: CFRange, _ buffer: UnsafeMutablePointer<UniChar>)
func CFStringGetPascalString(theString: CFString!, _ buffer: StringPtr, _ bufferSize: CFIndex, _ encoding: CFStringEncoding) -> Bool
func CFStringGetCString(theString: CFString!, _ buffer: UnsafeMutablePointer<Int8>, _ bufferSize: CFIndex, _ encoding: CFStringEncoding) -> Bool
func CFStringGetPascalStringPtr(theString: CFString!, _ encoding: CFStringEncoding) -> ConstStringPtr
func CFStringGetCStringPtr(theString: CFString!, _ encoding: CFStringEncoding) -> UnsafePointer<Int8>
func CFStringGetCharactersPtr(theString: CFString!) -> UnsafePointer<UniChar>
func CFStringGetBytes(theString: CFString!, _ range: CFRange, _ encoding: CFStringEncoding, _ lossByte: UInt8, _ isExternalRepresentation: Bool, _ buffer: UnsafeMutablePointer<UInt8>, _ maxBufLen: CFIndex, _ usedBufLen: UnsafeMutablePointer<CFIndex>) -> CFIndex
func CFStringCreateFromExternalRepresentation(alloc: CFAllocator!, _ data: CFData!, _ encoding: CFStringEncoding) -> CFString!
func CFStringCreateExternalRepresentation(alloc: CFAllocator!, _ theString: CFString!, _ encoding: CFStringEncoding, _ lossByte: UInt8) -> CFData!
func CFStringGetSmallestEncoding(theString: CFString!) -> CFStringEncoding
func CFStringGetFastestEncoding(theString: CFString!) -> CFStringEncoding
func CFStringGetSystemEncoding() -> CFStringEncoding
func CFStringGetMaximumSizeForEncoding(length: CFIndex, _ encoding: CFStringEncoding) -> CFIndex
func CFStringGetFileSystemRepresentation(string: CFString!, _ buffer: UnsafeMutablePointer<Int8>, _ maxBufLen: CFIndex) -> Bool
func CFStringGetMaximumSizeOfFileSystemRepresentation(string: CFString!) -> CFIndex
func CFStringCreateWithFileSystemRepresentation(alloc: CFAllocator!, _ buffer: UnsafePointer<Int8>) -> CFString!
struct CFStringCompareFlags : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var compareCaseInsensitive: CFStringCompareFlags { get }
  static var compareBackwards: CFStringCompareFlags { get }
  static var compareAnchored: CFStringCompareFlags { get }
  static var compareNonliteral: CFStringCompareFlags { get }
  static var compareLocalized: CFStringCompareFlags { get }
  static var compareNumerically: CFStringCompareFlags { get }
  @available(watchOS 2.0, *)
  static var compareDiacriticInsensitive: CFStringCompareFlags { get }
  @available(watchOS 2.0, *)
  static var compareWidthInsensitive: CFStringCompareFlags { get }
  @available(watchOS 2.0, *)
  static var compareForcedOrdering: CFStringCompareFlags { get }
}
@available(watchOS 2.0, *)
func CFStringCompareWithOptionsAndLocale(theString1: CFString!, _ theString2: CFString!, _ rangeToCompare: CFRange, _ compareOptions: CFStringCompareFlags, _ locale: CFLocale!) -> CFComparisonResult
func CFStringCompareWithOptions(theString1: CFString!, _ theString2: CFString!, _ rangeToCompare: CFRange, _ compareOptions: CFStringCompareFlags) -> CFComparisonResult
func CFStringCompare(theString1: CFString!, _ theString2: CFString!, _ compareOptions: CFStringCompareFlags) -> CFComparisonResult
@available(watchOS 2.0, *)
func CFStringFindWithOptionsAndLocale(theString: CFString!, _ stringToFind: CFString!, _ rangeToSearch: CFRange, _ searchOptions: CFStringCompareFlags, _ locale: CFLocale!, _ result: UnsafeMutablePointer<CFRange>) -> Bool
func CFStringFindWithOptions(theString: CFString!, _ stringToFind: CFString!, _ rangeToSearch: CFRange, _ searchOptions: CFStringCompareFlags, _ result: UnsafeMutablePointer<CFRange>) -> Bool
func CFStringCreateArrayWithFindResults(alloc: CFAllocator!, _ theString: CFString!, _ stringToFind: CFString!, _ rangeToSearch: CFRange, _ compareOptions: CFStringCompareFlags) -> CFArray!
func CFStringFind(theString: CFString!, _ stringToFind: CFString!, _ compareOptions: CFStringCompareFlags) -> CFRange
func CFStringHasPrefix(theString: CFString!, _ prefix: CFString!) -> Bool
func CFStringHasSuffix(theString: CFString!, _ suffix: CFString!) -> Bool
func CFStringGetRangeOfComposedCharactersAtIndex(theString: CFString!, _ theIndex: CFIndex) -> CFRange
func CFStringFindCharacterFromSet(theString: CFString!, _ theSet: CFCharacterSet!, _ rangeToSearch: CFRange, _ searchOptions: CFStringCompareFlags, _ result: UnsafeMutablePointer<CFRange>) -> Bool
func CFStringGetLineBounds(theString: CFString!, _ range: CFRange, _ lineBeginIndex: UnsafeMutablePointer<CFIndex>, _ lineEndIndex: UnsafeMutablePointer<CFIndex>, _ contentsEndIndex: UnsafeMutablePointer<CFIndex>)
@available(watchOS 2.0, *)
func CFStringGetParagraphBounds(string: CFString!, _ range: CFRange, _ parBeginIndex: UnsafeMutablePointer<CFIndex>, _ parEndIndex: UnsafeMutablePointer<CFIndex>, _ contentsEndIndex: UnsafeMutablePointer<CFIndex>)
@available(watchOS 2.0, *)
func CFStringGetHyphenationLocationBeforeIndex(string: CFString!, _ location: CFIndex, _ limitRange: CFRange, _ options: CFOptionFlags, _ locale: CFLocale!, _ character: UnsafeMutablePointer<UTF32Char>) -> CFIndex
@available(watchOS 2.0, *)
func CFStringIsHyphenationAvailableForLocale(locale: CFLocale!) -> Bool
func CFStringCreateByCombiningStrings(alloc: CFAllocator!, _ theArray: CFArray!, _ separatorString: CFString!) -> CFString!
func CFStringCreateArrayBySeparatingStrings(alloc: CFAllocator!, _ theString: CFString!, _ separatorString: CFString!) -> CFArray!
func CFStringGetIntValue(str: CFString!) -> Int32
func CFStringGetDoubleValue(str: CFString!) -> Double
func CFStringAppend(theString: CFMutableString!, _ appendedString: CFString!)
func CFStringAppendCharacters(theString: CFMutableString!, _ chars: UnsafePointer<UniChar>, _ numChars: CFIndex)
func CFStringAppendPascalString(theString: CFMutableString!, _ pStr: ConstStr255Param, _ encoding: CFStringEncoding)
func CFStringAppendCString(theString: CFMutableString!, _ cStr: UnsafePointer<Int8>, _ encoding: CFStringEncoding)
func CFStringAppendFormatAndArguments(theString: CFMutableString!, _ formatOptions: CFDictionary!, _ format: CFString!, _ arguments: CVaListPointer)
func CFStringInsert(str: CFMutableString!, _ idx: CFIndex, _ insertedStr: CFString!)
func CFStringDelete(theString: CFMutableString!, _ range: CFRange)
func CFStringReplace(theString: CFMutableString!, _ range: CFRange, _ replacement: CFString!)
func CFStringReplaceAll(theString: CFMutableString!, _ replacement: CFString!)
func CFStringFindAndReplace(theString: CFMutableString!, _ stringToFind: CFString!, _ replacementString: CFString!, _ rangeToSearch: CFRange, _ compareOptions: CFStringCompareFlags) -> CFIndex
func CFStringSetExternalCharactersNoCopy(theString: CFMutableString!, _ chars: UnsafeMutablePointer<UniChar>, _ length: CFIndex, _ capacity: CFIndex)
func CFStringPad(theString: CFMutableString!, _ padString: CFString!, _ length: CFIndex, _ indexIntoPad: CFIndex)
func CFStringTrim(theString: CFMutableString!, _ trimString: CFString!)
func CFStringTrimWhitespace(theString: CFMutableString!)
func CFStringLowercase(theString: CFMutableString!, _ locale: CFLocale!)
func CFStringUppercase(theString: CFMutableString!, _ locale: CFLocale!)
func CFStringCapitalize(theString: CFMutableString!, _ locale: CFLocale!)
enum CFStringNormalizationForm : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case D
  case KD
  case C
  case KC
}
func CFStringNormalize(theString: CFMutableString!, _ theForm: CFStringNormalizationForm)
@available(watchOS 2.0, *)
func CFStringFold(theString: CFMutableString!, _ theFlags: CFStringCompareFlags, _ theLocale: CFLocale!)
func CFStringTransform(string: CFMutableString!, _ range: UnsafeMutablePointer<CFRange>, _ transform: CFString!, _ reverse: Bool) -> Bool
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
@available(watchOS 2.0, *)
let kCFStringTransformStripDiacritics: CFString!
func CFStringIsEncodingAvailable(encoding: CFStringEncoding) -> Bool
func CFStringGetListOfAvailableEncodings() -> UnsafePointer<CFStringEncoding>
func CFStringGetNameOfEncoding(encoding: CFStringEncoding) -> CFString!
func CFStringConvertEncodingToNSStringEncoding(encoding: CFStringEncoding) -> UInt
func CFStringConvertNSStringEncodingToEncoding(encoding: UInt) -> CFStringEncoding
func CFStringConvertEncodingToWindowsCodepage(encoding: CFStringEncoding) -> UInt32
func CFStringConvertWindowsCodepageToEncoding(codepage: UInt32) -> CFStringEncoding
func CFStringConvertIANACharSetNameToEncoding(theString: CFString!) -> CFStringEncoding
func CFStringConvertEncodingToIANACharSetName(encoding: CFStringEncoding) -> CFString!
func CFStringGetMostCompatibleMacStringEncoding(encoding: CFStringEncoding) -> CFStringEncoding
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
  init(buffer: (UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar), theString: Unmanaged<CFString>!, directUniCharBuffer: UnsafePointer<UniChar>, directCStringBuffer: UnsafePointer<Int8>, rangeToBuffer: CFRange, bufferedRangeStart: CFIndex, bufferedRangeEnd: CFIndex)
}
func CFStringInitInlineBuffer(str: CFString!, _ buf: UnsafeMutablePointer<CFStringInlineBuffer>, _ range: CFRange)
func CFStringGetCharacterFromInlineBuffer(buf: UnsafeMutablePointer<CFStringInlineBuffer>, _ idx: CFIndex) -> UniChar
func CFStringIsSurrogateHighCharacter(character: UniChar) -> Bool
func CFStringIsSurrogateLowCharacter(character: UniChar) -> Bool
func CFStringGetLongCharacterForSurrogatePair(surrogateHigh: UniChar, _ surrogateLow: UniChar) -> UTF32Char
func CFStringGetSurrogatePairForLongCharacter(character: UTF32Char, _ surrogates: UnsafeMutablePointer<UniChar>) -> Bool
func CFShow(obj: CFTypeRef!)
func CFShowStr(str: CFString!)
func __CFStringMakeConstantString(cStr: UnsafePointer<Int8>) -> CFString!
