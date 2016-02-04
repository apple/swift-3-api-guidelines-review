
class NSSpellServer : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged NSSpellServerDelegate?
  func registerLanguage(language: String?, byVendor vendor: String?) -> Bool
  func isWordInUserDictionaries(word: String, caseSensitive flag: Bool) -> Bool
  func run()
  init()
}
struct __ssFlags {
  var delegateLearnsWords: UInt32
  var delegateForgetsWords: UInt32
  var busy: UInt32
  var _reserved: UInt32
  init()
  init(delegateLearnsWords: UInt32, delegateForgetsWords: UInt32, busy: UInt32, _reserved: UInt32)
}
protocol NSSpellServerDelegate : NSObjectProtocol {
  optional func spellServer(sender: NSSpellServer, findMisspelledWordInString stringToCheck: String, language: String, wordCount: UnsafeMutablePointer<Int>, countOnly: Bool) -> NSRange
  optional func spellServer(sender: NSSpellServer, suggestGuessesForWord word: String, inLanguage language: String) -> [String]?
  optional func spellServer(sender: NSSpellServer, didLearnWord word: String, inLanguage language: String)
  optional func spellServer(sender: NSSpellServer, didForgetWord word: String, inLanguage language: String)
  optional func spellServer(sender: NSSpellServer, suggestCompletionsForPartialWordRange range: NSRange, inString string: String, language: String) -> [String]?
  @available(OSX 10.5, *)
  optional func spellServer(sender: NSSpellServer, checkGrammarInString stringToCheck: String, language: String?, details: AutoreleasingUnsafeMutablePointer<NSArray?>) -> NSRange
  @available(OSX 10.6, *)
  optional func spellServer(sender: NSSpellServer, checkString stringToCheck: String, offset: Int, types checkingTypes: NSTextCheckingTypes, options: [String : AnyObject]?, orthography: NSOrthography?, wordCount: UnsafeMutablePointer<Int>) -> [NSTextCheckingResult]?
  @available(OSX 10.7, *)
  optional func spellServer(sender: NSSpellServer, recordResponse response: Int, toCorrection correction: String, forWord word: String, language: String)
}
@available(OSX 10.5, *)
let NSGrammarRange: String
@available(OSX 10.5, *)
let NSGrammarUserDescription: String
@available(OSX 10.5, *)
let NSGrammarCorrections: String
