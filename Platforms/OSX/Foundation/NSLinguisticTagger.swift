
@available(OSX 10.7, *)
let linguisticTagSchemeTokenType: String
@available(OSX 10.7, *)
let linguisticTagSchemeLexicalClass: String
@available(OSX 10.7, *)
let linguisticTagSchemeNameType: String
@available(OSX 10.7, *)
let linguisticTagSchemeNameTypeOrLexicalClass: String
@available(OSX 10.7, *)
let linguisticTagSchemeLemma: String
@available(OSX 10.7, *)
let linguisticTagSchemeLanguage: String
@available(OSX 10.7, *)
let linguisticTagSchemeScript: String
@available(OSX 10.7, *)
let linguisticTagWord: String
@available(OSX 10.7, *)
let linguisticTagPunctuation: String
@available(OSX 10.7, *)
let linguisticTagWhitespace: String
@available(OSX 10.7, *)
let linguisticTagOther: String
@available(OSX 10.7, *)
let linguisticTagNoun: String
@available(OSX 10.7, *)
let linguisticTagVerb: String
@available(OSX 10.7, *)
let linguisticTagAdjective: String
@available(OSX 10.7, *)
let linguisticTagAdverb: String
@available(OSX 10.7, *)
let linguisticTagPronoun: String
@available(OSX 10.7, *)
let linguisticTagDeterminer: String
@available(OSX 10.7, *)
let linguisticTagParticle: String
@available(OSX 10.7, *)
let linguisticTagPreposition: String
@available(OSX 10.7, *)
let linguisticTagNumber: String
@available(OSX 10.7, *)
let linguisticTagConjunction: String
@available(OSX 10.7, *)
let linguisticTagInterjection: String
@available(OSX 10.7, *)
let linguisticTagClassifier: String
@available(OSX 10.7, *)
let linguisticTagIdiom: String
@available(OSX 10.7, *)
let linguisticTagOtherWord: String
@available(OSX 10.7, *)
let linguisticTagSentenceTerminator: String
@available(OSX 10.7, *)
let linguisticTagOpenQuote: String
@available(OSX 10.7, *)
let linguisticTagCloseQuote: String
@available(OSX 10.7, *)
let linguisticTagOpenParenthesis: String
@available(OSX 10.7, *)
let linguisticTagCloseParenthesis: String
@available(OSX 10.7, *)
let linguisticTagWordJoiner: String
@available(OSX 10.7, *)
let linguisticTagDash: String
@available(OSX 10.7, *)
let linguisticTagOtherPunctuation: String
@available(OSX 10.7, *)
let linguisticTagParagraphBreak: String
@available(OSX 10.7, *)
let linguisticTagOtherWhitespace: String
@available(OSX 10.7, *)
let linguisticTagPersonalName: String
@available(OSX 10.7, *)
let linguisticTagPlaceName: String
@available(OSX 10.7, *)
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
@available(OSX 10.7, *)
class LinguisticTagger : Object {
  @available(OSX 10.7, *)
  init(tagSchemes: [String], options opts: Int)
  @available(OSX 10.7, *)
  var tagSchemes: [String] { get }
  @available(OSX 10.7, *)
  var string: String?
  @available(OSX 10.7, *)
  class func availableTagSchemes(forLanguage language: String) -> [String]
  @available(OSX 10.7, *)
  func setOrthography(orthography: Orthography?, range: NSRange)
  @available(OSX 10.7, *)
  func orthography(at charIndex: Int, effectiveRange: RangePointer) -> Orthography?
  @available(OSX 10.7, *)
  func stringEdited(in newRange: NSRange, changeInLength delta: Int)
  @available(OSX 10.7, *)
  func enumerateTags(in range: NSRange, scheme tagScheme: String, options opts: LinguisticTaggerOptions = [], using block: (String, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.7, *)
  func sentenceRange(for range: NSRange) -> NSRange
  @available(OSX 10.7, *)
  func tag(at charIndex: Int, scheme tagScheme: String, tokenRange: RangePointer, sentenceRange: RangePointer) -> String?
  @available(OSX 10.7, *)
  func tags(in range: NSRange, scheme tagScheme: String, options opts: LinguisticTaggerOptions = [], tokenRanges: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]
  @available(OSX 10.7, *)
  func possibleTags(at charIndex: Int, scheme tagScheme: String, tokenRange: RangePointer, sentenceRange: RangePointer, scores: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]?
  convenience init()
}
extension NSString {
  @available(OSX 10.7, *)
  func linguisticTags(in range: NSRange, scheme tagScheme: String, options opts: LinguisticTaggerOptions = [], orthography: Orthography?, tokenRanges: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]
  @available(OSX 10.7, *)
  func enumerateLinguisticTags(in range: NSRange, scheme tagScheme: String, options opts: LinguisticTaggerOptions = [], orthography: Orthography?, using block: (String, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
