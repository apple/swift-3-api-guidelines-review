
@available(watchOS 2.0, *)
let linguisticTagSchemeTokenType: String
@available(watchOS 2.0, *)
let linguisticTagSchemeLexicalClass: String
@available(watchOS 2.0, *)
let linguisticTagSchemeNameType: String
@available(watchOS 2.0, *)
let linguisticTagSchemeNameTypeOrLexicalClass: String
@available(watchOS 2.0, *)
let linguisticTagSchemeLemma: String
@available(watchOS 2.0, *)
let linguisticTagSchemeLanguage: String
@available(watchOS 2.0, *)
let linguisticTagSchemeScript: String
@available(watchOS 2.0, *)
let linguisticTagWord: String
@available(watchOS 2.0, *)
let linguisticTagPunctuation: String
@available(watchOS 2.0, *)
let linguisticTagWhitespace: String
@available(watchOS 2.0, *)
let linguisticTagOther: String
@available(watchOS 2.0, *)
let linguisticTagNoun: String
@available(watchOS 2.0, *)
let linguisticTagVerb: String
@available(watchOS 2.0, *)
let linguisticTagAdjective: String
@available(watchOS 2.0, *)
let linguisticTagAdverb: String
@available(watchOS 2.0, *)
let linguisticTagPronoun: String
@available(watchOS 2.0, *)
let linguisticTagDeterminer: String
@available(watchOS 2.0, *)
let linguisticTagParticle: String
@available(watchOS 2.0, *)
let linguisticTagPreposition: String
@available(watchOS 2.0, *)
let linguisticTagNumber: String
@available(watchOS 2.0, *)
let linguisticTagConjunction: String
@available(watchOS 2.0, *)
let linguisticTagInterjection: String
@available(watchOS 2.0, *)
let linguisticTagClassifier: String
@available(watchOS 2.0, *)
let linguisticTagIdiom: String
@available(watchOS 2.0, *)
let linguisticTagOtherWord: String
@available(watchOS 2.0, *)
let linguisticTagSentenceTerminator: String
@available(watchOS 2.0, *)
let linguisticTagOpenQuote: String
@available(watchOS 2.0, *)
let linguisticTagCloseQuote: String
@available(watchOS 2.0, *)
let linguisticTagOpenParenthesis: String
@available(watchOS 2.0, *)
let linguisticTagCloseParenthesis: String
@available(watchOS 2.0, *)
let linguisticTagWordJoiner: String
@available(watchOS 2.0, *)
let linguisticTagDash: String
@available(watchOS 2.0, *)
let linguisticTagOtherPunctuation: String
@available(watchOS 2.0, *)
let linguisticTagParagraphBreak: String
@available(watchOS 2.0, *)
let linguisticTagOtherWhitespace: String
@available(watchOS 2.0, *)
let linguisticTagPersonalName: String
@available(watchOS 2.0, *)
let linguisticTagPlaceName: String
@available(watchOS 2.0, *)
let linguisticTagOrganizationName: String
struct LinguisticTaggerOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var omitWords: LinguisticTaggerOptions { get }
  static var omitPunctuation: LinguisticTaggerOptions { get }
  static var omitWhitespace: LinguisticTaggerOptions { get }
  static var omitOther: LinguisticTaggerOptions { get }
  static var joinNames: LinguisticTaggerOptions { get }
}
@available(watchOS 2.0, *)
class LinguisticTagger : Object {
  @available(watchOS 2.0, *)
  init(tagSchemes: [String], options opts: Int)
  @available(watchOS 2.0, *)
  var tagSchemes: [String] { get }
  @available(watchOS 2.0, *)
  var string: String?
  @available(watchOS 2.0, *)
  class func availableTagSchemes(forLanguage language: String) -> [String]
  @available(watchOS 2.0, *)
  func setOrthography(orthography: Orthography?, range: NSRange)
  @available(watchOS 2.0, *)
  func orthography(at charIndex: Int, effectiveRange: RangePointer) -> Orthography?
  @available(watchOS 2.0, *)
  func stringEdited(in newRange: NSRange, changeInLength delta: Int)
  @available(watchOS 2.0, *)
  func enumerateTags(in range: NSRange, scheme tagScheme: String, options opts: LinguisticTaggerOptions = [], usingBlock block: (String, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 2.0, *)
  func sentenceRange(forRange range: NSRange) -> NSRange
  @available(watchOS 2.0, *)
  func tag(at charIndex: Int, scheme tagScheme: String, tokenRange: RangePointer, sentenceRange: RangePointer) -> String?
  @available(watchOS 2.0, *)
  func tags(in range: NSRange, scheme tagScheme: String, options opts: LinguisticTaggerOptions = [], tokenRanges: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]
  @available(watchOS 2.0, *)
  func possibleTags(at charIndex: Int, scheme tagScheme: String, tokenRange: RangePointer, sentenceRange: RangePointer, scores: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]?
  convenience init()
}
extension NSString {
  @available(watchOS 2.0, *)
  func linguisticTags(in range: NSRange, scheme tagScheme: String, options opts: LinguisticTaggerOptions = [], orthography: Orthography?, tokenRanges: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]
  @available(watchOS 2.0, *)
  func enumerateLinguisticTags(in range: NSRange, scheme tagScheme: String, options opts: LinguisticTaggerOptions = [], orthography: Orthography?, usingBlock block: (String, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
