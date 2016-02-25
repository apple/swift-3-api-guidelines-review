
protocol UITextDocumentProxy : UIKeyInput {
  var documentContextBeforeInput: String? { get }
  var documentContextAfterInput: String? { get }
  func adjustTextPositionByCharacterOffset(_ offset: Int)
}
@available(tvOS 8.0, *)
class UIInputViewController : UIViewController, UITextInputDelegate {
  var textDocumentProxy: UITextDocumentProxy { get }
  var primaryLanguage: String?
  func dismissKeyboard()
  func advanceToNextInputMode()
  func requestSupplementaryLexiconWithCompletion(_ completionHandler: (UILexicon) -> Void)
  @available(tvOS 8.0, *)
  func selectionWillChange(_ textInput: UITextInput?)
  @available(tvOS 8.0, *)
  func selectionDidChange(_ textInput: UITextInput?)
  @available(tvOS 8.0, *)
  func textWillChange(_ textInput: UITextInput?)
  @available(tvOS 8.0, *)
  func textDidChange(_ textInput: UITextInput?)
}
