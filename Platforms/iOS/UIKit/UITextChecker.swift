
@available(iOS 3.2, *)
class UITextChecker : NSObject {
  func rangeOfMisspelledWord(in stringToCheck: String, range range: NSRange, startingAt startingOffset: Int, wrap wrapFlag: Bool, language language: String) -> NSRange
  func guesses(forWordRange range: NSRange, in string: String, language language: String) -> [AnyObject]?
  func completions(forPartialWordRange range: NSRange, in string: String?, language language: String) -> [AnyObject]?
  func ignoreWord(_ wordToIgnore: String)
  func ignoredWords() -> [AnyObject]?
  func setIgnoredWords(_ words: [AnyObject]?)
  class func learnWord(_ word: String)
  class func hasLearnedWord(_ word: String) -> Bool
  class func unlearnWord(_ word: String)
  class func availableLanguages() -> [AnyObject]
}
