
class NSSpellChecker : NSObject {
  class func sharedSpellChecker() -> NSSpellChecker
  class func sharedSpellCheckerExists() -> Bool
  class func uniqueSpellDocumentTag() -> Int
  func checkSpellingOfString(_ stringToCheck: String, startingAt startingOffset: Int, language language: String?, wrap wrapFlag: Bool, inSpellDocumentWithTag tag: Int, wordCount wordCount: UnsafeMutablePointer<Int>) -> NSRange
  func checkSpellingOfString(_ stringToCheck: String, startingAt startingOffset: Int) -> NSRange
  func countWordsInString(_ stringToCount: String, language language: String?) -> Int
  @available(OSX 10.5, *)
  func checkGrammarOfString(_ stringToCheck: String, startingAt startingOffset: Int, language language: String?, wrap wrapFlag: Bool, inSpellDocumentWithTag tag: Int, details details: AutoreleasingUnsafeMutablePointer<NSArray?>) -> NSRange
  @available(OSX 10.6, *)
  func checkString(_ stringToCheck: String, range range: NSRange, types checkingTypes: NSTextCheckingTypes, options options: [String : AnyObject]?, inSpellDocumentWithTag tag: Int, orthography orthography: AutoreleasingUnsafeMutablePointer<NSOrthography?>, wordCount wordCount: UnsafeMutablePointer<Int>) -> [NSTextCheckingResult]
  @available(OSX 10.6, *)
  func requestCheckingOfString(_ stringToCheck: String, range range: NSRange, types checkingTypes: NSTextCheckingTypes, options options: [String : AnyObject]?, inSpellDocumentWithTag tag: Int, completionHandler completionHandler: ((Int, [NSTextCheckingResult], NSOrthography, Int) -> Void)?) -> Int
  @available(OSX 10.6, *)
  func menuForResult(_ result: NSTextCheckingResult, string checkedString: String, options options: [String : AnyObject]?, atLocation location: NSPoint, inView view: NSView) -> NSMenu?
  @available(OSX 10.6, *)
  func userQuotesArrayForLanguage(_ language: String) -> [String]
  @available(OSX 10.6, *)
  var userReplacementsDictionary: [String : String] { get }
  func updateSpellingPanelWithMisspelledWord(_ word: String)
  @available(OSX 10.5, *)
  func updateSpellingPanelWithGrammarString(_ string: String, detail detail: [String : AnyObject])
  var spellingPanel: NSPanel { get }
  var accessoryView: NSView?
  @available(OSX 10.6, *)
  var substitutionsPanel: NSPanel { get }
  @available(OSX 10.6, *)
  var substitutionsPanelAccessoryViewController: NSViewController?
  @available(OSX 10.6, *)
  func updatePanels()
  func ignoreWord(_ wordToIgnore: String, inSpellDocumentWithTag tag: Int)
  func ignoredWordsInSpellDocumentWithTag(_ tag: Int) -> [String]?
  func setIgnoredWords(_ words: [String], inSpellDocumentWithTag tag: Int)
  @available(OSX 10.6, *)
  func guessesForWordRange(_ range: NSRange, inString string: String, language language: String?, inSpellDocumentWithTag tag: Int) -> [String]?
  @available(OSX 10.7, *)
  func correctionForWordRange(_ range: NSRange, inString string: String, language language: String, inSpellDocumentWithTag tag: Int) -> String?
  func completionsForPartialWordRange(_ range: NSRange, inString string: String, language language: String?, inSpellDocumentWithTag tag: Int) -> [String]?
  @available(OSX 10.7, *)
  func languageForWordRange(_ range: NSRange, inString string: String, orthography orthography: NSOrthography?) -> String?
  func closeSpellDocumentWithTag(_ tag: Int)
  @available(OSX 10.7, *)
  func recordResponse(_ response: NSCorrectionResponse, toCorrection correction: String, forWord word: String, language language: String?, inSpellDocumentWithTag tag: Int)
  @available(OSX 10.7, *)
  func showCorrectionIndicatorOfType(_ type: NSCorrectionIndicatorType, primaryString primaryString: String, alternativeStrings alternativeStrings: [String], forStringInRect rectOfTypedString: NSRect, view view: NSView, completionHandler completionBlock: ((String!) -> Void)?)
  @available(OSX 10.7, *)
  func dismissCorrectionIndicatorForView(_ view: NSView)
  @available(OSX 10.5, *)
  var availableLanguages: [String] { get }
  @available(OSX 10.6, *)
  var userPreferredLanguages: [String] { get }
  @available(OSX 10.6, *)
  var automaticallyIdentifiesLanguages: Bool
  func setWordFieldStringValue(_ aString: String)
  func learnWord(_ word: String)
  @available(OSX 10.5, *)
  func hasLearnedWord(_ word: String) -> Bool
  @available(OSX 10.5, *)
  func unlearnWord(_ word: String)
  @available(OSX 10.7, *)
  class func isAutomaticTextReplacementEnabled() -> Bool
  @available(OSX 10.7, *)
  class func isAutomaticSpellingCorrectionEnabled() -> Bool
  @available(OSX 10.9, *)
  class func isAutomaticQuoteSubstitutionEnabled() -> Bool
  @available(OSX 10.9, *)
  class func isAutomaticDashSubstitutionEnabled() -> Bool
  func language() -> String
  func setLanguage(_ language: String) -> Bool
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
  init(autoShowGuesses autoShowGuesses: UInt32, needDelayedGuess needDelayedGuess: UInt32, unignoreInProgress unignoreInProgress: UInt32, wordFieldEdited wordFieldEdited: UInt32, inSpelling inSpelling: UInt32, reconnectSpelling reconnectSpelling: UInt32, inGrammar inGrammar: UInt32, reconnectGrammar reconnectGrammar: UInt32, languageIdentification languageIdentification: UInt32, languagesHidden languagesHidden: UInt32, quotesByLanguage quotesByLanguage: UInt32, _reserved _reserved: UInt32)
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
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case None
  case Accepted
  case Rejected
  case Ignored
  case Edited
  case Reverted
}
enum NSCorrectionIndicatorType : Int {
  init?(rawValue rawValue: Int)
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
