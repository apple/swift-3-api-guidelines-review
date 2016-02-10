
@available(iOS 5.0, *)
let linguisticTagSchemeTokenType: String
@available(iOS 5.0, *)
let linguisticTagSchemeLexicalClass: String
@available(iOS 5.0, *)
let linguisticTagSchemeNameType: String
@available(iOS 5.0, *)
let linguisticTagSchemeNameTypeOrLexicalClass: String
@available(iOS 5.0, *)
let linguisticTagSchemeLemma: String
@available(iOS 5.0, *)
let linguisticTagSchemeLanguage: String
@available(iOS 5.0, *)
let linguisticTagSchemeScript: String
@available(iOS 5.0, *)
let linguisticTagWord: String
@available(iOS 5.0, *)
let linguisticTagPunctuation: String
@available(iOS 5.0, *)
let linguisticTagWhitespace: String
@available(iOS 5.0, *)
let linguisticTagOther: String
@available(iOS 5.0, *)
let linguisticTagNoun: String
@available(iOS 5.0, *)
let linguisticTagVerb: String
@available(iOS 5.0, *)
let linguisticTagAdjective: String
@available(iOS 5.0, *)
let linguisticTagAdverb: String
@available(iOS 5.0, *)
let linguisticTagPronoun: String
@available(iOS 5.0, *)
let linguisticTagDeterminer: String
@available(iOS 5.0, *)
let linguisticTagParticle: String
@available(iOS 5.0, *)
let linguisticTagPreposition: String
@available(iOS 5.0, *)
let linguisticTagNumber: String
@available(iOS 5.0, *)
let linguisticTagConjunction: String
@available(iOS 5.0, *)
let linguisticTagInterjection: String
@available(iOS 5.0, *)
let linguisticTagClassifier: String
@available(iOS 5.0, *)
let linguisticTagIdiom: String
@available(iOS 5.0, *)
let linguisticTagOtherWord: String
@available(iOS 5.0, *)
let linguisticTagSentenceTerminator: String
@available(iOS 5.0, *)
let linguisticTagOpenQuote: String
@available(iOS 5.0, *)
let linguisticTagCloseQuote: String
@available(iOS 5.0, *)
let linguisticTagOpenParenthesis: String
@available(iOS 5.0, *)
let linguisticTagCloseParenthesis: String
@available(iOS 5.0, *)
let linguisticTagWordJoiner: String
@available(iOS 5.0, *)
let linguisticTagDash: String
@available(iOS 5.0, *)
let linguisticTagOtherPunctuation: String
@available(iOS 5.0, *)
let linguisticTagParagraphBreak: String
@available(iOS 5.0, *)
let linguisticTagOtherWhitespace: String
@available(iOS 5.0, *)
let linguisticTagPersonalName: String
@available(iOS 5.0, *)
let linguisticTagPlaceName: String
@available(iOS 5.0, *)
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
@available(iOS 5.0, *)
class LinguisticTagger : Object {
  @available(iOS 5.0, *)
  init(tagSchemes: [String], options opts: Int)
  @available(iOS 5.0, *)
  var tagSchemes: [String] { get }
  @available(iOS 5.0, *)
  var string: String?
  @available(iOS 5.0, *)
  class func availableTagSchemes(forLanguage language: String) -> [String]
  @available(iOS 5.0, *)
  func setOrthography(orthography: Orthography?, range: NSRange)
  @available(iOS 5.0, *)
  func orthography(at charIndex: Int, effectiveRange: RangePointer) -> Orthography?
  @available(iOS 5.0, *)
  func stringEdited(in newRange: NSRange, changeInLength delta: Int)
  @available(iOS 5.0, *)
  func enumerateTags(in range: NSRange, scheme tagScheme: String, options opts: LinguisticTaggerOptions = [], using block: (String, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 5.0, *)
  func sentenceRange(for range: NSRange) -> NSRange
  @available(iOS 5.0, *)
  func tag(at charIndex: Int, scheme tagScheme: String, tokenRange: RangePointer, sentenceRange: RangePointer) -> String?
  @available(iOS 5.0, *)
  func tags(in range: NSRange, scheme tagScheme: String, options opts: LinguisticTaggerOptions = [], tokenRanges: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]
  @available(iOS 5.0, *)
  func possibleTags(at charIndex: Int, scheme tagScheme: String, tokenRange: RangePointer, sentenceRange: RangePointer, scores: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]?
  convenience init()
}
extension NSString {
  @available(iOS 5.0, *)
  func linguisticTags(in range: NSRange, scheme tagScheme: String, options opts: LinguisticTaggerOptions = [], orthography: Orthography?, tokenRanges: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]
  @available(iOS 5.0, *)
  func enumerateLinguisticTags(in range: NSRange, scheme tagScheme: String, options opts: LinguisticTaggerOptions = [], orthography: Orthography?, using block: (String, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
