
@available(watchOS 2.0, *)
let NSLinguisticTagSchemeTokenType: String
@available(watchOS 2.0, *)
let NSLinguisticTagSchemeLexicalClass: String
@available(watchOS 2.0, *)
let NSLinguisticTagSchemeNameType: String
@available(watchOS 2.0, *)
let NSLinguisticTagSchemeNameTypeOrLexicalClass: String
@available(watchOS 2.0, *)
let NSLinguisticTagSchemeLemma: String
@available(watchOS 2.0, *)
let NSLinguisticTagSchemeLanguage: String
@available(watchOS 2.0, *)
let NSLinguisticTagSchemeScript: String
@available(watchOS 2.0, *)
let NSLinguisticTagWord: String
@available(watchOS 2.0, *)
let NSLinguisticTagPunctuation: String
@available(watchOS 2.0, *)
let NSLinguisticTagWhitespace: String
@available(watchOS 2.0, *)
let NSLinguisticTagOther: String
@available(watchOS 2.0, *)
let NSLinguisticTagNoun: String
@available(watchOS 2.0, *)
let NSLinguisticTagVerb: String
@available(watchOS 2.0, *)
let NSLinguisticTagAdjective: String
@available(watchOS 2.0, *)
let NSLinguisticTagAdverb: String
@available(watchOS 2.0, *)
let NSLinguisticTagPronoun: String
@available(watchOS 2.0, *)
let NSLinguisticTagDeterminer: String
@available(watchOS 2.0, *)
let NSLinguisticTagParticle: String
@available(watchOS 2.0, *)
let NSLinguisticTagPreposition: String
@available(watchOS 2.0, *)
let NSLinguisticTagNumber: String
@available(watchOS 2.0, *)
let NSLinguisticTagConjunction: String
@available(watchOS 2.0, *)
let NSLinguisticTagInterjection: String
@available(watchOS 2.0, *)
let NSLinguisticTagClassifier: String
@available(watchOS 2.0, *)
let NSLinguisticTagIdiom: String
@available(watchOS 2.0, *)
let NSLinguisticTagOtherWord: String
@available(watchOS 2.0, *)
let NSLinguisticTagSentenceTerminator: String
@available(watchOS 2.0, *)
let NSLinguisticTagOpenQuote: String
@available(watchOS 2.0, *)
let NSLinguisticTagCloseQuote: String
@available(watchOS 2.0, *)
let NSLinguisticTagOpenParenthesis: String
@available(watchOS 2.0, *)
let NSLinguisticTagCloseParenthesis: String
@available(watchOS 2.0, *)
let NSLinguisticTagWordJoiner: String
@available(watchOS 2.0, *)
let NSLinguisticTagDash: String
@available(watchOS 2.0, *)
let NSLinguisticTagOtherPunctuation: String
@available(watchOS 2.0, *)
let NSLinguisticTagParagraphBreak: String
@available(watchOS 2.0, *)
let NSLinguisticTagOtherWhitespace: String
@available(watchOS 2.0, *)
let NSLinguisticTagPersonalName: String
@available(watchOS 2.0, *)
let NSLinguisticTagPlaceName: String
@available(watchOS 2.0, *)
let NSLinguisticTagOrganizationName: String
struct NSLinguisticTaggerOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var OmitWords: NSLinguisticTaggerOptions { get }
  static var OmitPunctuation: NSLinguisticTaggerOptions { get }
  static var OmitWhitespace: NSLinguisticTaggerOptions { get }
  static var OmitOther: NSLinguisticTaggerOptions { get }
  static var JoinNames: NSLinguisticTaggerOptions { get }
}
@available(watchOS 2.0, *)
class NSLinguisticTagger : NSObject {
  @available(watchOS 2.0, *)
  init(tagSchemes: [String], options opts: Int)
  @available(watchOS 2.0, *)
  var tagSchemes: [String] { get }
  @available(watchOS 2.0, *)
  var string: String?
  @available(watchOS 2.0, *)
  class func availableTagSchemesForLanguage(language: String) -> [String]
  @available(watchOS 2.0, *)
  func setOrthography(orthography: NSOrthography?, range: NSRange)
  @available(watchOS 2.0, *)
  func orthographyAtIndex(charIndex: Int, effectiveRange: NSRangePointer) -> NSOrthography?
  @available(watchOS 2.0, *)
  func stringEditedInRange(newRange: NSRange, changeInLength delta: Int)
  @available(watchOS 2.0, *)
  func enumerateTagsInRange(range: NSRange, scheme tagScheme: String, options opts: NSLinguisticTaggerOptions, usingBlock block: (String, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 2.0, *)
  func sentenceRangeForRange(range: NSRange) -> NSRange
  @available(watchOS 2.0, *)
  func tagAtIndex(charIndex: Int, scheme tagScheme: String, tokenRange: NSRangePointer, sentenceRange: NSRangePointer) -> String?
  @available(watchOS 2.0, *)
  func tagsInRange(range: NSRange, scheme tagScheme: String, options opts: NSLinguisticTaggerOptions, tokenRanges: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]
  @available(watchOS 2.0, *)
  func possibleTagsAtIndex(charIndex: Int, scheme tagScheme: String, tokenRange: NSRangePointer, sentenceRange: NSRangePointer, scores: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]?
  convenience init()
}
extension NSString {
  @available(watchOS 2.0, *)
  func linguisticTagsInRange(range: NSRange, scheme tagScheme: String, options opts: NSLinguisticTaggerOptions, orthography: NSOrthography?, tokenRanges: AutoreleasingUnsafeMutablePointer<NSArray?>) -> [String]
  @available(watchOS 2.0, *)
  func enumerateLinguisticTagsInRange(range: NSRange, scheme tagScheme: String, options opts: NSLinguisticTaggerOptions, orthography: NSOrthography?, usingBlock block: (String, NSRange, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
