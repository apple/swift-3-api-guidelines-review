
enum UITextBorderStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case None
  case Line
  case Bezel
  case RoundedRect
}
enum UITextFieldViewMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Never
  case WhileEditing
  case UnlessEditing
  case Always
}
@available(tvOS 2.0, *)
class UITextField : UIControl, UITextInput, NSCoding {
  var text: String?
  @available(tvOS 6.0, *)
  @NSCopying var attributedText: NSAttributedString?
  var textColor: UIColor?
  var font: UIFont?
  var textAlignment: NSTextAlignment
  var borderStyle: UITextBorderStyle
  @available(tvOS 7.0, *)
  var defaultTextAttributes: [String : AnyObject]
  var placeholder: String?
  @available(tvOS 6.0, *)
  @NSCopying var attributedPlaceholder: NSAttributedString?
  var clearsOnBeginEditing: Bool
  var adjustsFontSizeToFitWidth: Bool
  var minimumFontSize: CGFloat
  weak var delegate: @sil_weak UITextFieldDelegate?
  var background: UIImage?
  var disabledBackground: UIImage?
  var editing: Bool { get }
  @available(tvOS 6.0, *)
  var allowsEditingTextAttributes: Bool
  @available(tvOS 6.0, *)
  var typingAttributes: [String : AnyObject]?
  var clearButtonMode: UITextFieldViewMode
  var leftView: UIView?
  var leftViewMode: UITextFieldViewMode
  var rightView: UIView?
  var rightViewMode: UITextFieldViewMode
  func borderRectForBounds(_ bounds: CGRect) -> CGRect
  func textRectForBounds(_ bounds: CGRect) -> CGRect
  func placeholderRectForBounds(_ bounds: CGRect) -> CGRect
  func editingRectForBounds(_ bounds: CGRect) -> CGRect
  func clearButtonRectForBounds(_ bounds: CGRect) -> CGRect
  func leftViewRectForBounds(_ bounds: CGRect) -> CGRect
  func rightViewRectForBounds(_ bounds: CGRect) -> CGRect
  func drawTextInRect(_ rect: CGRect)
  func drawPlaceholderInRect(_ rect: CGRect)
  @available(tvOS 6.0, *)
  var clearsOnInsertion: Bool
  @available(tvOS 3.2, *)
  func textInRange(_ range: UITextRange) -> String?
  @available(tvOS 3.2, *)
  func replaceRange(_ range: UITextRange, withText text: String)
  @available(tvOS 3.2, *)
  @NSCopying var selectedTextRange: UITextRange?
  @available(tvOS 3.2, *)
  var markedTextRange: UITextRange? { get }
  @available(tvOS 2.0, *)
  var markedTextStyle: [NSObject : AnyObject]?
  @available(tvOS 2.0, *)
  func setMarkedText(_ markedText: String?, selectedRange selectedRange: NSRange)
  @available(tvOS 2.0, *)
  func unmarkText()
  @available(tvOS 3.2, *)
  var beginningOfDocument: UITextPosition { get }
  @available(tvOS 3.2, *)
  var endOfDocument: UITextPosition { get }
  @available(tvOS 3.2, *)
  func textRangeFromPosition(_ fromPosition: UITextPosition, toPosition toPosition: UITextPosition) -> UITextRange?
  @available(tvOS 3.2, *)
  func positionFromPosition(_ position: UITextPosition, offset offset: Int) -> UITextPosition?
  @available(tvOS 3.2, *)
  func positionFromPosition(_ position: UITextPosition, inDirection direction: UITextLayoutDirection, offset offset: Int) -> UITextPosition?
  @available(tvOS 3.2, *)
  func comparePosition(_ position: UITextPosition, toPosition other: UITextPosition) -> NSComparisonResult
  @available(tvOS 3.2, *)
  func offsetFromPosition(_ from: UITextPosition, toPosition toPosition: UITextPosition) -> Int
  @available(tvOS 2.0, *)
  weak var inputDelegate: @sil_weak UITextInputDelegate?
  @available(tvOS 2.0, *)
  var tokenizer: UITextInputTokenizer { get }
  @available(tvOS 3.2, *)
  func positionWithinRange(_ range: UITextRange, farthestInDirection direction: UITextLayoutDirection) -> UITextPosition?
  @available(tvOS 3.2, *)
  func characterRangeByExtendingPosition(_ position: UITextPosition, inDirection direction: UITextLayoutDirection) -> UITextRange?
  @available(tvOS 3.2, *)
  func baseWritingDirectionForPosition(_ position: UITextPosition, inDirection direction: UITextStorageDirection) -> UITextWritingDirection
  @available(tvOS 3.2, *)
  func setBaseWritingDirection(_ writingDirection: UITextWritingDirection, forRange range: UITextRange)
  @available(tvOS 3.2, *)
  func firstRectForRange(_ range: UITextRange) -> CGRect
  @available(tvOS 3.2, *)
  func caretRectForPosition(_ position: UITextPosition) -> CGRect
  @available(tvOS 6.0, *)
  func selectionRectsForRange(_ range: UITextRange) -> [AnyObject]
  @available(tvOS 3.2, *)
  func closestPositionToPoint(_ point: CGPoint) -> UITextPosition?
  @available(tvOS 3.2, *)
  func closestPositionToPoint(_ point: CGPoint, withinRange range: UITextRange) -> UITextPosition?
  @available(tvOS 3.2, *)
  func characterRangeAtPoint(_ point: CGPoint) -> UITextRange?
  @available(tvOS 6.0, *)
  func shouldChangeTextInRange(_ range: UITextRange, replacementText text: String) -> Bool
  @available(tvOS 3.2, *)
  func textStylingAtPosition(_ position: UITextPosition, inDirection direction: UITextStorageDirection) -> [String : AnyObject]?
  @available(tvOS 3.2, *)
  func positionWithinRange(_ range: UITextRange, atCharacterOffset offset: Int) -> UITextPosition?
  @available(tvOS 3.2, *)
  func characterOffsetOfPosition(_ position: UITextPosition, withinRange range: UITextRange) -> Int
  @available(tvOS 2.0, *)
  var textInputView: UIView { get }
  @available(tvOS 2.0, *)
  var selectionAffinity: UITextStorageDirection
  @available(tvOS 5.1, *)
  func insertDictationResult(_ dictationResult: [UIDictationPhrase])
  @available(tvOS 2.0, *)
  func dictationRecordingDidEnd()
  @available(tvOS 2.0, *)
  func dictationRecognitionFailed()
  @available(tvOS 2.0, *)
  func insertDictationResultPlaceholder() -> AnyObject
  @available(tvOS 2.0, *)
  func frameForDictationResultPlaceholder(_ placeholder: AnyObject) -> CGRect
  @available(tvOS 2.0, *)
  func removeDictationResultPlaceholder(_ placeholder: AnyObject, willInsertResult willInsertResult: Bool)
  @available(tvOS 9.0, *)
  func beginFloatingCursorAtPoint(_ point: CGPoint)
  @available(tvOS 9.0, *)
  func updateFloatingCursorAtPoint(_ point: CGPoint)
  @available(tvOS 9.0, *)
  func endFloatingCursor()
  @available(tvOS 2.0, *)
  func hasText() -> Bool
  @available(tvOS 2.0, *)
  func insertText(_ text: String)
  @available(tvOS 2.0, *)
  func deleteBackward()
  @available(tvOS 2.0, *)
  var autocapitalizationType: UITextAutocapitalizationType
  @available(tvOS 2.0, *)
  var autocorrectionType: UITextAutocorrectionType
  @available(tvOS 5.0, *)
  var spellCheckingType: UITextSpellCheckingType
  @available(tvOS 2.0, *)
  var keyboardType: UIKeyboardType
  @available(tvOS 2.0, *)
  var keyboardAppearance: UIKeyboardAppearance
  @available(tvOS 2.0, *)
  var returnKeyType: UIReturnKeyType
  @available(tvOS 2.0, *)
  var enablesReturnKeyAutomatically: Bool
  @available(tvOS 2.0, *)
  var secureTextEntry: Bool
}
extension UIView {
  func endEditing(_ force: Bool) -> Bool
}
protocol UITextFieldDelegate : NSObjectProtocol {
  @available(tvOS 2.0, *)
  optional func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool
  @available(tvOS 2.0, *)
  optional func textFieldDidBeginEditing(_ textField: UITextField)
  @available(tvOS 2.0, *)
  optional func textFieldShouldEndEditing(_ textField: UITextField) -> Bool
  @available(tvOS 2.0, *)
  optional func textFieldDidEndEditing(_ textField: UITextField)
  @available(tvOS 2.0, *)
  optional func textField(_ textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool
  @available(tvOS 2.0, *)
  optional func textFieldShouldClear(_ textField: UITextField) -> Bool
  @available(tvOS 2.0, *)
  optional func textFieldShouldReturn(_ textField: UITextField) -> Bool
}
let UITextFieldTextDidBeginEditingNotification: String
let UITextFieldTextDidEndEditingNotification: String
let UITextFieldTextDidChangeNotification: String
