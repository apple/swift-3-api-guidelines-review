
@available(tvOS 3.2, *)
class UITextChecker : NSObject {
  func rangeOfMisspelledWordInString(_ stringToCheck: String, range range: NSRange, startingAt startingOffset: Int, wrap wrapFlag: Bool, language language: String) -> NSRange
  func guessesForWordRange(_ range: NSRange, inString string: String, language language: String) -> [AnyObject]?
  func completionsForPartialWordRange(_ range: NSRange, inString string: String?, language language: String) -> [AnyObject]?
  func ignoreWord(_ wordToIgnore: String)
  func ignoredWords() -> [AnyObject]?
  func setIgnoredWords(_ words: [AnyObject]?)
  class func learnWord(_ word: String)
  class func hasLearnedWord(_ word: String) -> Bool
  class func unlearnWord(_ word: String)
  class func availableLanguages() -> [AnyObject]
}
