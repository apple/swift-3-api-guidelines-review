
class NSSpellChecker : Object {
  class func shared() -> NSSpellChecker
  class func sharedSpellCheckerExists() -> Bool
  class func uniqueSpellDocumentTag() -> Int
  func checkSpelling(of stringToCheck: String, startingAt startingOffset: Int, language: String?, wrap wrapFlag: Bool, inSpellDocumentWithTag tag: Int, wordCount: UnsafeMutablePointer<Int>) -> NSRange
  func checkSpelling(of stringToCheck: String, startingAt startingOffset: Int) -> NSRange
  func countWords(in stringToCount: String, language: String?) -> Int
  @available(OSX 10.5, *)
  func checkGrammar(of stringToCheck: String, startingAt startingOffset: Int, language: String?, wrap wrapFlag: Bool, inSpellDocumentWithTag tag: Int, details: AutoreleasingUnsafeMutablePointer<NSArray?>) -> NSRange
  @available(OSX 10.6, *)
  func check(stringToCheck: String, range: NSRange, types checkingTypes: TextCheckingTypes, options: [String : AnyObject]? = [:], inSpellDocumentWithTag tag: Int, orthography: AutoreleasingUnsafeMutablePointer<Orthography?>, wordCount: UnsafeMutablePointer<Int>) -> [TextCheckingResult]
  @available(OSX 10.6, *)
  func requestChecking(of stringToCheck: String, range: NSRange, types checkingTypes: TextCheckingTypes, options: [String : AnyObject]? = [:], inSpellDocumentWithTag tag: Int, completionHandler: ((Int, [TextCheckingResult], Orthography, Int) -> Void)? = nil) -> Int
  @available(OSX 10.6, *)
  func menu(for result: TextCheckingResult, string checkedString: String, options: [String : AnyObject]? = [:], atLocation location: Point, in view: NSView) -> NSMenu?
  @available(OSX 10.6, *)
  func userQuotesArray(forLanguage language: String) -> [String]
  @available(OSX 10.6, *)
  var userReplacementsDictionary: [String : String] { get }
  func updateSpellingPanel(withMisspelledWord word: String)
  @available(OSX 10.5, *)
  func updateSpellingPanel(withGrammarString string: String, detail: [String : AnyObject])
  var spellingPanel: NSPanel { get }
  var accessoryView: NSView?
  @available(OSX 10.6, *)
  var substitutionsPanel: NSPanel { get }
  @available(OSX 10.6, *)
  var substitutionsPanelAccessoryViewController: NSViewController?
  @available(OSX 10.6, *)
  func updatePanels()
  func ignoreWord(wordToIgnore: String, inSpellDocumentWithTag tag: Int)
  func ignoredWordsInSpellDocument(withTag tag: Int) -> [String]?
  func setIgnoredWords(words: [String], inSpellDocumentWithTag tag: Int)
  @available(OSX 10.6, *)
  func guesses(forWordRange range: NSRange, in string: String, language: String?, inSpellDocumentWithTag tag: Int) -> [String]?
  @available(OSX 10.7, *)
  func correction(forWordRange range: NSRange, in string: String, language: String, inSpellDocumentWithTag tag: Int) -> String?
  func completions(forPartialWordRange range: NSRange, in string: String, language: String?, inSpellDocumentWithTag tag: Int) -> [String]?
  @available(OSX 10.7, *)
  func language(forWordRange range: NSRange, in string: String, orthography: Orthography?) -> String?
  func closeSpellDocument(tag tag: Int)
  @available(OSX 10.7, *)
  func record(response: NSCorrectionResponse, toCorrection correction: String, forWord word: String, language: String?, inSpellDocumentWithTag tag: Int)
  @available(OSX 10.7, *)
  func showCorrectionIndicator(of type: NSCorrectionIndicatorType, primaryString: String, alternativeStrings: [String], forStringIn rectOfTypedString: Rect, view: NSView, completionHandler completionBlock: ((String!) -> Void)? = nil)
  @available(OSX 10.7, *)
  func dismissCorrectionIndicator(for view: NSView)
  @available(OSX 10.5, *)
  var availableLanguages: [String] { get }
  @available(OSX 10.6, *)
  var userPreferredLanguages: [String] { get }
  @available(OSX 10.6, *)
  var automaticallyIdentifiesLanguages: Bool
  func setWordFieldStringValue(aString: String)
  func learnWord(word: String)
  @available(OSX 10.5, *)
  func hasLearnedWord(word: String) -> Bool
  @available(OSX 10.5, *)
  func unlearnWord(word: String)
  @available(OSX 10.7, *)
  class func isAutomaticTextReplacementEnabled() -> Bool
  @available(OSX 10.7, *)
  class func isAutomaticSpellingCorrectionEnabled() -> Bool
  @available(OSX 10.9, *)
  class func isAutomaticQuoteSubstitutionEnabled() -> Bool
  @available(OSX 10.9, *)
  class func isAutomaticDashSubstitutionEnabled() -> Bool
  func language() -> String
  func setLanguage(language: String) -> Bool
  init()
}
struct __scFlags {
  var autoShowGuesses: UInt32
  var needDelayedGuess: UInt32
  var unignoreInProgress: UInt32
  var wordFieldEdited: UInt32
  var inSpelling: UInt32
  var reconnectSpelling: UInt32
  var inGrammar: UInt32
  var reconnectGrammar: UInt32
  var languageIdentification: UInt32
  var languagesHidden: UInt32
  var quotesByLanguage: UInt32
  var _reserved: UInt32
  init()
  init(autoShowGuesses: UInt32, needDelayedGuess: UInt32, unignoreInProgress: UInt32, wordFieldEdited: UInt32, inSpelling: UInt32, reconnectSpelling: UInt32, inGrammar: UInt32, reconnectGrammar: UInt32, languageIdentification: UInt32, languagesHidden: UInt32, quotesByLanguage: UInt32, _reserved: UInt32)
}
@available(OSX 10.6, *)
let NSTextCheckingOrthographyKey: String
@available(OSX 10.6, *)
let NSTextCheckingQuotesKey: String
@available(OSX 10.6, *)
let NSTextCheckingReplacementsKey: String
@available(OSX 10.6, *)
let NSTextCheckingReferenceDateKey: String
@available(OSX 10.6, *)
let NSTextCheckingReferenceTimeZoneKey: String
@available(OSX 10.6, *)
let NSTextCheckingDocumentURLKey: String
@available(OSX 10.6, *)
let NSTextCheckingDocumentTitleKey: String
@available(OSX 10.6, *)
let NSTextCheckingDocumentAuthorKey: String
@available(OSX 10.7, *)
let NSTextCheckingRegularExpressionsKey: String
enum NSCorrectionResponse : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case accepted
  case rejected
  case ignored
  case edited
  case reverted
}
enum NSCorrectionIndicatorType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case reversion
  case guesses
}
@available(OSX 10.7, *)
let NSSpellCheckerDidChangeAutomaticSpellingCorrectionNotification: String
@available(OSX 10.7, *)
let NSSpellCheckerDidChangeAutomaticTextReplacementNotification: String
@available(OSX 10.9, *)
let NSSpellCheckerDidChangeAutomaticQuoteSubstitutionNotification: String
@available(OSX 10.9, *)
let NSSpellCheckerDidChangeAutomaticDashSubstitutionNotification: String
extension NSSpellChecker {
}
