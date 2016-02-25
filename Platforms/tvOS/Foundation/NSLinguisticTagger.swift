
@available(tvOS 5.0, *)
let NSLinguisticTagSchemeTokenType: String
@available(tvOS 5.0, *)
let NSLinguisticTagSchemeLexicalClass: String
@available(tvOS 5.0, *)
let NSLinguisticTagSchemeNameType: String
@available(tvOS 5.0, *)
let NSLinguisticTagSchemeNameTypeOrLexicalClass: String
@available(tvOS 5.0, *)
let NSLinguisticTagSchemeLemma: String
@available(tvOS 5.0, *)
let NSLinguisticTagSchemeLanguage: String
@available(tvOS 5.0, *)
let NSLinguisticTagSchemeScript: String
@available(tvOS 5.0, *)
let NSLinguisticTagWord: String
@available(tvOS 5.0, *)
let NSLinguisticTagPunctuation: String
@available(tvOS 5.0, *)
let NSLinguisticTagWhitespace: String
@available(tvOS 5.0, *)
let NSLinguisticTagOther: String
@available(tvOS 5.0, *)
let NSLinguisticTagNoun: String
@available(tvOS 5.0, *)
let NSLinguisticTagVerb: String
@available(tvOS 5.0, *)
let NSLinguisticTagAdjective: String
@available(tvOS 5.0, *)
let NSLinguisticTagAdverb: String
@available(tvOS 5.0, *)
let NSLinguisticTagPronoun: String
@available(tvOS 5.0, *)
let NSLinguisticTagDeterminer: String
@available(tvOS 5.0, *)
let NSLinguisticTagParticle: String
@available(tvOS 5.0, *)
let NSLinguisticTagPreposition: String
@available(tvOS 5.0, *)
let NSLinguisticTagNumber: String
@available(tvOS 5.0, *)
let NSLinguisticTagConjunction: String
@available(tvOS 5.0, *)
let NSLinguisticTagInterjection: String
@available(tvOS 5.0, *)
let NSLinguisticTagClassifier: String
@available(tvOS 5.0, *)
let NSLinguisticTagIdiom: String
@available(tvOS 5.0, *)
let NSLinguisticTagOtherWord: String
@available(tvOS 5.0, *)
let NSLinguisticTagSentenceTerminator: String
@available(tvOS 5.0, *)
let NSLinguisticTagOpenQuote: String
@available(tvOS 5.0, *)
let NSLinguisticTagCloseQuote: String
@available(tvOS 5.0, *)
let NSLinguisticTagOpenParenthesis: String
@available(tvOS 5.0, *)
let NSLinguisticTagCloseParenthesis: String
@available(tvOS 5.0, *)
let NSLinguisticTagWordJoiner: String
@available(tvOS 5.0, *)
let NSLinguisticTagDash: String
@available(tvOS 5.0, *)
let NSLinguisticTagOtherPunctuation: String
@available(tvOS 5.0, *)
let NSLinguisticTagParagraphBreak: String
@available(tvOS 5.0, *)
let NSLinguisticTagOtherWhitespace: String
@available(tvOS 5.0, *)
let NSLinguisticTagPersonalName: String
@available(tvOS 5.0, *)
let NSLinguisticTagPlaceName: String
@available(tvOS 5.0, *)
let NSLinguisticTagOrganizationName: String
struct NSLinguisticTaggerOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var OmitWords: NSLinguisticTaggerOptions { get }
  static var OmitPunctuation: NSLinguisticTaggerOptions { get }
  static var OmitWhitespace: NSLinguisticTaggerOptions { get }
  static var OmitOther: NSLinguisticTaggerOptions { get }
  static var JoinNames: NSLinguisticTaggerOptions { get }
}
@available(tvOS 5.0, *)
class NSLinguisticTagger : NSObject {
  @available(tvOS 5.0, *)
  init(tagSchemes tagSchemes: [String], options opts: Int)
  @available(tvOS 5.0, *)
  var tagSchemes: [String] { get }
  @available(tvOS 5.0, *)
  var string: String?
  @available(tvOS 5.0, *)
  class func availableTagSchemesForLanguage(_ language: String) -> [String]
  @available(tvOS 5.0, *)
  func setOrthography(_ orthography: NSOrthography?, range range: NSRange)
  @available(tvOS 5.0, *)
  func orthographyAtIndex(_ charIndex: Int, effectiveRange effectiveRange: NSRangePointer) -> NSOrthography?
  @available(tvOS 5.0, *)
  func stringEditedInRange(_ newRange: NSRange, changeInLength delta: Int)
  @available(tvOS 5.0, *)
  func enumerateTagsInRange(_ range: NSRange, scheme tagScheme: String, options opts: NSLinguisticTaggerOptions, usingBlock block: (String, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(tvOS 5.0, *)
  func sentenceRangeForRange(_ range: NSRange) -> NSRange
  @available(tvOS 5.0, *)
  func tagAtIndex(_ charIndex: Int, scheme tagScheme: String, tokenRange tokenRange: NSRangePointer, sentenceRange sentenceRange: NSRangePointer) -> String?
  @available(tvOS 5.0, *)
  func tagsInRange(_ range: NSRange, scheme tagScheme: String, options opts: NSLinguisticTaggerOptions, tokenRanges tokenRanges: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]
  @available(tvOS 5.0, *)
  func possibleTagsAtIndex(_ charIndex: Int, scheme tagScheme: String, tokenRange tokenRange: NSRangePointer, sentenceRange sentenceRange: NSRangePointer, scores scores: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]?
}
extension NSString {
  @available(tvOS 5.0, *)
  func linguisticTagsInRange(_ range: NSRange, scheme tagScheme: String, options opts: NSLinguisticTaggerOptions, orthography orthography: NSOrthography?, tokenRanges tokenRanges: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]
  @available(tvOS 5.0, *)
  func enumerateLinguisticTagsInRange(_ range: NSRange, scheme tagScheme: String, options opts: NSLinguisticTaggerOptions, orthography orthography: NSOrthography?, usingBlock block: (String, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
