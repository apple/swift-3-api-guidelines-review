
@available(tvOS 5.0, *)
let linguisticTagSchemeTokenType: String
@available(tvOS 5.0, *)
let linguisticTagSchemeLexicalClass: String
@available(tvOS 5.0, *)
let linguisticTagSchemeNameType: String
@available(tvOS 5.0, *)
let linguisticTagSchemeNameTypeOrLexicalClass: String
@available(tvOS 5.0, *)
let linguisticTagSchemeLemma: String
@available(tvOS 5.0, *)
let linguisticTagSchemeLanguage: String
@available(tvOS 5.0, *)
let linguisticTagSchemeScript: String
@available(tvOS 5.0, *)
let linguisticTagWord: String
@available(tvOS 5.0, *)
let linguisticTagPunctuation: String
@available(tvOS 5.0, *)
let linguisticTagWhitespace: String
@available(tvOS 5.0, *)
let linguisticTagOther: String
@available(tvOS 5.0, *)
let linguisticTagNoun: String
@available(tvOS 5.0, *)
let linguisticTagVerb: String
@available(tvOS 5.0, *)
let linguisticTagAdjective: String
@available(tvOS 5.0, *)
let linguisticTagAdverb: String
@available(tvOS 5.0, *)
let linguisticTagPronoun: String
@available(tvOS 5.0, *)
let linguisticTagDeterminer: String
@available(tvOS 5.0, *)
let linguisticTagParticle: String
@available(tvOS 5.0, *)
let linguisticTagPreposition: String
@available(tvOS 5.0, *)
let linguisticTagNumber: String
@available(tvOS 5.0, *)
let linguisticTagConjunction: String
@available(tvOS 5.0, *)
let linguisticTagInterjection: String
@available(tvOS 5.0, *)
let linguisticTagClassifier: String
@available(tvOS 5.0, *)
let linguisticTagIdiom: String
@available(tvOS 5.0, *)
let linguisticTagOtherWord: String
@available(tvOS 5.0, *)
let linguisticTagSentenceTerminator: String
@available(tvOS 5.0, *)
let linguisticTagOpenQuote: String
@available(tvOS 5.0, *)
let linguisticTagCloseQuote: String
@available(tvOS 5.0, *)
let linguisticTagOpenParenthesis: String
@available(tvOS 5.0, *)
let linguisticTagCloseParenthesis: String
@available(tvOS 5.0, *)
let linguisticTagWordJoiner: String
@available(tvOS 5.0, *)
let linguisticTagDash: String
@available(tvOS 5.0, *)
let linguisticTagOtherPunctuation: String
@available(tvOS 5.0, *)
let linguisticTagParagraphBreak: String
@available(tvOS 5.0, *)
let linguisticTagOtherWhitespace: String
@available(tvOS 5.0, *)
let linguisticTagPersonalName: String
@available(tvOS 5.0, *)
let linguisticTagPlaceName: String
@available(tvOS 5.0, *)
let linguisticTagOrganizationName: String
struct LinguisticTaggerOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var OmitWords: LinguisticTaggerOptions { get }
  static var OmitPunctuation: LinguisticTaggerOptions { get }
  static var OmitWhitespace: LinguisticTaggerOptions { get }
  static var OmitOther: LinguisticTaggerOptions { get }
  static var JoinNames: LinguisticTaggerOptions { get }
}
@available(tvOS 5.0, *)
class LinguisticTagger : Object {
  @available(tvOS 5.0, *)
  init(tagSchemes: [String], options opts: Int)
  @available(tvOS 5.0, *)
  var tagSchemes: [String] { get }
  @available(tvOS 5.0, *)
  var string: String?
  @available(tvOS 5.0, *)
  class func availableTagSchemesForLanguage(language: String) -> [String]
  @available(tvOS 5.0, *)
  func setOrthography(orthography: Orthography?, range: NSRange)
  @available(tvOS 5.0, *)
  func orthographyAt(charIndex: Int, effectiveRange: RangePointer) -> Orthography?
  @available(tvOS 5.0, *)
  func stringEditedIn(newRange: NSRange, changeInLength delta: Int)
  @available(tvOS 5.0, *)
  func enumerateTagsIn(range: NSRange, scheme tagScheme: String, options opts: LinguisticTaggerOptions = [], usingBlock block: (String, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(tvOS 5.0, *)
  func sentenceRangeFor(range: NSRange) -> NSRange
  @available(tvOS 5.0, *)
  func tagAt(charIndex: Int, scheme tagScheme: String, tokenRange: RangePointer, sentenceRange: RangePointer) -> String?
  @available(tvOS 5.0, *)
  func tagsIn(range: NSRange, scheme tagScheme: String, options opts: LinguisticTaggerOptions = [], tokenRanges: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]
  @available(tvOS 5.0, *)
  func possibleTagsAt(charIndex: Int, scheme tagScheme: String, tokenRange: RangePointer, sentenceRange: RangePointer, scores: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]?
  convenience init()
}
extension NSString {
  @available(tvOS 5.0, *)
  func linguisticTagsIn(range: NSRange, scheme tagScheme: String, options opts: LinguisticTaggerOptions = [], orthography: Orthography?, tokenRanges: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]
  @available(tvOS 5.0, *)
  func enumerateLinguisticTagsIn(range: NSRange, scheme tagScheme: String, options opts: LinguisticTaggerOptions = [], orthography: Orthography?, usingBlock block: (String, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
