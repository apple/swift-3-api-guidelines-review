
class NSSpellChecker : NSObject {
  class func sharedSpellChecker() -> NSSpellChecker
  class func sharedSpellCheckerExists() -> Bool
  class func uniqueSpellDocumentTag() -> Int
  func checkSpellingOfString(stringToCheck: String, startingAt startingOffset: Int, language: String?, wrap wrapFlag: Bool, inSpellDocumentWithTag tag: Int, wordCount: UnsafeMutablePointer<Int>) -> NSRange
  func checkSpellingOfString(stringToCheck: String, startingAt startingOffset: Int) -> NSRange
  func countWordsInString(stringToCount: String, language: String?) -> Int
  @available(OSX 10.5, *)
  func checkGrammarOfString(stringToCheck: String, startingAt startingOffset: Int, language: String?, wrap wrapFlag: Bool, inSpellDocumentWithTag tag: Int, details: AutoreleasingUnsafeMutablePointer<NSArray?>) -> NSRange
  @available(OSX 10.6, *)
  func checkString(stringToCheck: String, range: NSRange, types checkingTypes: NSTextCheckingTypes, options: [String : AnyObject]?, inSpellDocumentWithTag tag: Int, orthography: AutoreleasingUnsafeMutablePointer<NSOrthography?>, wordCount: UnsafeMutablePointer<Int>) -> [NSTextCheckingResult]
  @available(OSX 10.6, *)
  func requestCheckingOfString(stringToCheck: String, range: NSRange, types checkingTypes: NSTextCheckingTypes, options: [String : AnyObject]?, inSpellDocumentWithTag tag: Int, completionHandler: ((Int, [NSTextCheckingResult], NSOrthography, Int) -> Void)?) -> Int
  @available(OSX 10.6, *)
  func menuForResult(result: NSTextCheckingResult, string checkedString: String, options: [String : AnyObject]?, atLocation location: NSPoint, inView view: NSView) -> NSMenu?
  @available(OSX 10.6, *)
  func userQuotesArrayForLanguage(language: String) -> [String]
  @available(OSX 10.6, *)
  var userReplacementsDictionary: [String : String] { get }
  func updateSpellingPanelWithMisspelledWord(word: String)
  @available(OSX 10.5, *)
  func updateSpellingPanelWithGrammarString(string: String, detail: [String : AnyObject])
  var spellingPanel: NSPanel { get }
  var accessoryView: NSView?
  @available(OSX 10.6, *)
  var substitutionsPanel: NSPanel { get }
  @available(OSX 10.6, *)
  var substitutionsPanelAccessoryViewController: NSViewController?
  @available(OSX 10.6, *)
  func updatePanels()
  func ignoreWord(wordToIgnore: String, inSpellDocumentWithTag tag: Int)
  func ignoredWordsInSpellDocumentWithTag(tag: Int) -> [String]?
  func setIgnoredWords(words: [String], inSpellDocumentWithTag tag: Int)
  @available(OSX 10.6, *)
  func guessesForWordRange(range: NSRange, inString string: String, language: String?, inSpellDocumentWithTag tag: Int) -> [String]?
  @available(OSX 10.7, *)
  func correctionForWordRange(range: NSRange, inString string: String, language: String, inSpellDocumentWithTag tag: Int) -> String?
  func completionsForPartialWordRange(range: NSRange, inString string: String, language: String?, inSpellDocumentWithTag tag: Int) -> [String]?
  @available(OSX 10.7, *)
  func languageForWordRange(range: NSRange, inString string: String, orthography: NSOrthography?) -> String?
  func closeSpellDocumentWithTag(tag: Int)
  @available(OSX 10.7, *)
  func recordResponse(response: NSCorrectionResponse, toCorrection correction: String, forWord word: String, language: String?, inSpellDocumentWithTag tag: Int)
  @available(OSX 10.7, *)
  func showCorrectionIndicatorOfType(type: NSCorrectionIndicatorType, primaryString: String, alternativeStrings: [String], forStringInRect rectOfTypedString: NSRect, view: NSView, completionHandler completionBlock: ((String!) -> Void)?)
  @available(OSX 10.7, *)
  func dismissCorrectionIndicatorForView(view: NSView)
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
  case None
  case Accepted
  case Rejected
  case Ignored
  case Edited
  case Reverted
}
enum NSCorrectionIndicatorType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Reversion
  case Guesses
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
