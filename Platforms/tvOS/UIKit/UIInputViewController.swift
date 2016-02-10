
protocol UITextDocumentProxy : UIKeyInput {
  var documentContextBeforeInput: String? { get }
  var documentContextAfterInput: String? { get }
  func adjustTextPositionBy(characterOffset offset: Int)
}
@available(tvOS 8.0, *)
class UIInputViewController : UIViewController, UITextInputDelegate {
  var inputView: UIInputView?
  var textDocumentProxy: UITextDocumentProxy { get }
  var primaryLanguage: String?
  func dismissKeyboard()
  func advanceToNextInputMode()
  func requestSupplementaryLexicon(completion completionHandler: (UILexicon) -> Void)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
  @available(tvOS 8.0, *)
  func selectionWillChange(textInput: UITextInput?)
  @available(tvOS 8.0, *)
  func selectionDidChange(textInput: UITextInput?)
  @available(tvOS 8.0, *)
  func textWillChange(textInput: UITextInput?)
  @available(tvOS 8.0, *)
  func textDidChange(textInput: UITextInput?)
}
