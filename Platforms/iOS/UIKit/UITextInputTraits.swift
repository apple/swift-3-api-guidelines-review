
enum UITextAutocapitalizationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Words
  case Sentences
  case AllCharacters
}
enum UITextAutocorrectionType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case No
  case Yes
}
@available(iOS 5.0, *)
enum UITextSpellCheckingType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case No
  case Yes
}
enum UIKeyboardType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case ASCIICapable
  case NumbersAndPunctuation
  case URL
  case NumberPad
  case PhonePad
  case NamePhonePad
  case EmailAddress
  @available(iOS 4.1, *)
  case DecimalPad
  @available(iOS 5.0, *)
  case Twitter
  @available(iOS 7.0, *)
  case WebSearch
  static var Alphabet: UIKeyboardType { get }
}
enum UIKeyboardAppearance : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  @available(iOS 7.0, *)
  case Dark
  @available(iOS 7.0, *)
  case Light
  static var Alert: UIKeyboardAppearance { get }
}
enum UIReturnKeyType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Go
  case Google
  case Join
  case Next
  case Route
  case Search
  case Send
  case Yahoo
  case Done
  case EmergencyCall
  @available(iOS 9.0, *)
  case Continue
}
protocol UITextInputTraits : NSObjectProtocol {
  optional var autocapitalizationType: UITextAutocapitalizationType { get set }
  optional var autocorrectionType: UITextAutocorrectionType { get set }
  @available(iOS 5.0, *)
  optional var spellCheckingType: UITextSpellCheckingType { get set }
  optional var keyboardType: UIKeyboardType { get set }
  optional var keyboardAppearance: UIKeyboardAppearance { get set }
  optional var returnKeyType: UIReturnKeyType { get set }
  optional var enablesReturnKeyAutomatically: Bool { get set }
  optional var secureTextEntry: Bool { get set }
}
