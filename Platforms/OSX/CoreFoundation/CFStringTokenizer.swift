
@available(OSX 10.5, *)
func CFStringTokenizerCopyBestStringLanguage(string: CFString!, _ range: CFRange) -> CFString!
class CFStringTokenizer {
}
var kCFStringTokenizerUnitWord: CFOptionFlags { get }
var kCFStringTokenizerUnitSentence: CFOptionFlags { get }
var kCFStringTokenizerUnitParagraph: CFOptionFlags { get }
var kCFStringTokenizerUnitLineBreak: CFOptionFlags { get }
var kCFStringTokenizerUnitWordBoundary: CFOptionFlags { get }
var kCFStringTokenizerAttributeLatinTranscription: CFOptionFlags { get }
var kCFStringTokenizerAttributeLanguage: CFOptionFlags { get }
struct CFStringTokenizerTokenType : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var None: CFStringTokenizerTokenType { get }
  static var Normal: CFStringTokenizerTokenType { get }
  static var HasSubTokensMask: CFStringTokenizerTokenType { get }
  static var HasDerivedSubTokensMask: CFStringTokenizerTokenType { get }
  static var HasHasNumbersMask: CFStringTokenizerTokenType { get }
  static var HasNonLettersMask: CFStringTokenizerTokenType { get }
  static var IsCJWordMask: CFStringTokenizerTokenType { get }
}
@available(OSX 10.5, *)
func CFStringTokenizerGetTypeID() -> CFTypeID
@available(OSX 10.5, *)
func CFStringTokenizerCreate(alloc: CFAllocator!, _ string: CFString!, _ range: CFRange, _ options: CFOptionFlags, _ locale: CFLocale!) -> CFStringTokenizer!
@available(OSX 10.5, *)
func CFStringTokenizerSetString(tokenizer: CFStringTokenizer!, _ string: CFString!, _ range: CFRange)
@available(OSX 10.5, *)
func CFStringTokenizerGoToTokenAtIndex(tokenizer: CFStringTokenizer!, _ index: CFIndex) -> CFStringTokenizerTokenType
@available(OSX 10.5, *)
func CFStringTokenizerAdvanceToNextToken(tokenizer: CFStringTokenizer!) -> CFStringTokenizerTokenType
@available(OSX 10.5, *)
func CFStringTokenizerGetCurrentTokenRange(tokenizer: CFStringTokenizer!) -> CFRange
@available(OSX 10.5, *)
func CFStringTokenizerCopyCurrentTokenAttribute(tokenizer: CFStringTokenizer!, _ attribute: CFOptionFlags) -> CFTypeRef!
@available(OSX 10.5, *)
func CFStringTokenizerGetCurrentSubTokens(tokenizer: CFStringTokenizer!, _ ranges: UnsafeMutablePointer<CFRange>, _ maxRangeLength: CFIndex, _ derivedSubTokens: CFMutableArray!) -> CFIndex
