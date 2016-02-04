
class SpellServer : Object {
  unowned(unsafe) var delegate: @sil_unmanaged SpellServerDelegate?
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
protocol SpellServerDelegate : ObjectProtocol {
  optional func spellServer(sender: SpellServer, findMisspelledWordIn stringToCheck: String, language: String, wordCount: UnsafeMutablePointer<Int>, countOnly: Bool) -> NSRange
  optional func spellServer(sender: SpellServer, suggestGuessesForWord word: String, inLanguage language: String) -> [String]?
  optional func spellServer(sender: SpellServer, didLearnWord word: String, inLanguage language: String)
  optional func spellServer(sender: SpellServer, didForgetWord word: String, inLanguage language: String)
  optional func spellServer(sender: SpellServer, suggestCompletionsForPartialWordRange range: NSRange, in string: String, language: String) -> [String]?
  @available(OSX 10.5, *)
  optional func spellServer(sender: SpellServer, checkGrammarIn stringToCheck: String, language: String?, details: AutoreleasingUnsafeMutablePointer<NSArray?>) -> NSRange
  @available(OSX 10.6, *)
  optional func spellServer(sender: SpellServer, check stringToCheck: String, offset: Int, types checkingTypes: TextCheckingTypes, options: [String : AnyObject]? = [:], orthography: Orthography?, wordCount: UnsafeMutablePointer<Int>) -> [TextCheckingResult]?
  @available(OSX 10.7, *)
  optional func spellServer(sender: SpellServer, recordResponse response: Int, toCorrection correction: String, forWord word: String, language: String)
}
@available(OSX 10.5, *)
let grammarRange: String
@available(OSX 10.5, *)
let grammarUserDescription: String
@available(OSX 10.5, *)
let grammarCorrections: String
