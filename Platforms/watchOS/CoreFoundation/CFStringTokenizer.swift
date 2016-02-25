
@available(watchOS 2.0, *)
func CFStringTokenizerCopyBestStringLanguage(_ string: CFString!, _ range: CFRange) -> CFString!
@available(*, deprecated, renamed="CFStringTokenizer")
typealias CFStringTokenizerRef = CFStringTokenizer
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
  init(rawValue rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var None: CFStringTokenizerTokenType { get }
  static var Normal: CFStringTokenizerTokenType { get }
  static var HasSubTokensMask: CFStringTokenizerTokenType { get }
  static var HasDerivedSubTokensMask: CFStringTokenizerTokenType { get }
  static var HasHasNumbersMask: CFStringTokenizerTokenType { get }
  static var HasNonLettersMask: CFStringTokenizerTokenType { get }
  static var IsCJWordMask: CFStringTokenizerTokenType { get }
}
@available(watchOS 2.0, *)
func CFStringTokenizerGetTypeID() -> CFTypeID
@available(watchOS 2.0, *)
func CFStringTokenizerCreate(_ alloc: CFAllocator!, _ string: CFString!, _ range: CFRange, _ options: CFOptionFlags, _ locale: CFLocale!) -> CFStringTokenizer!
@available(watchOS 2.0, *)
func CFStringTokenizerSetString(_ tokenizer: CFStringTokenizer!, _ string: CFString!, _ range: CFRange)
@available(watchOS 2.0, *)
func CFStringTokenizerGoToTokenAtIndex(_ tokenizer: CFStringTokenizer!, _ index: CFIndex) -> CFStringTokenizerTokenType
@available(watchOS 2.0, *)
func CFStringTokenizerAdvanceToNextToken(_ tokenizer: CFStringTokenizer!) -> CFStringTokenizerTokenType
@available(watchOS 2.0, *)
func CFStringTokenizerGetCurrentTokenRange(_ tokenizer: CFStringTokenizer!) -> CFRange
@available(watchOS 2.0, *)
func CFStringTokenizerCopyCurrentTokenAttribute(_ tokenizer: CFStringTokenizer!, _ attribute: CFOptionFlags) -> CFTypeRef!
@available(watchOS 2.0, *)
func CFStringTokenizerGetCurrentSubTokens(_ tokenizer: CFStringTokenizer!, _ ranges: UnsafeMutablePointer<CFRange>, _ maxRangeLength: CFIndex, _ derivedSubTokens: CFMutableArray!) -> CFIndex
