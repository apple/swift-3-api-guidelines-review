
enum UITextBorderStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Line
  case Bezel
  case RoundedRect
}
enum UITextFieldViewMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Never
  case WhileEditing
  case UnlessEditing
  case Always
}
@available(iOS 2.0, *)
class UITextField : UIControl, UITextInput, NSCoding {
  var text: String?
  @available(iOS 6.0, *)
  @NSCopying var attributedText: NSAttributedString?
  var textColor: UIColor?
  var font: UIFont?
  var textAlignment: NSTextAlignment
  var borderStyle: UITextBorderStyle
  @available(iOS 7.0, *)
  var defaultTextAttributes: [String : AnyObject]
  var placeholder: String?
  @available(iOS 6.0, *)
  @NSCopying var attributedPlaceholder: NSAttributedString?
  var clearsOnBeginEditing: Bool
  var adjustsFontSizeToFitWidth: Bool
  var minimumFontSize: CGFloat
  weak var delegate: @sil_weak UITextFieldDelegate?
  var background: UIImage?
  var disabledBackground: UIImage?
  var editing: Bool { get }
  @available(iOS 6.0, *)
  var allowsEditingTextAttributes: Bool
  @available(iOS 6.0, *)
  var typingAttributes: [String : AnyObject]?
  var clearButtonMode: UITextFieldViewMode
  var leftView: UIView?
  var leftViewMode: UITextFieldViewMode
  var rightView: UIView?
  var rightViewMode: UITextFieldViewMode
  func borderRectForBounds(bounds: CGRect) -> CGRect
  func textRectForBounds(bounds: CGRect) -> CGRect
  func placeholderRectForBounds(bounds: CGRect) -> CGRect
  func editingRectForBounds(bounds: CGRect) -> CGRect
  func clearButtonRectForBounds(bounds: CGRect) -> CGRect
  func leftViewRectForBounds(bounds: CGRect) -> CGRect
  func rightViewRectForBounds(bounds: CGRect) -> CGRect
  func drawTextInRect(rect: CGRect)
  func drawPlaceholderInRect(rect: CGRect)
  var inputView: UIView?
  var inputAccessoryView: UIView?
  @available(iOS 6.0, *)
  var clearsOnInsertion: Bool
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(iOS 3.2, *)
  func textInRange(range: UITextRange) -> String?
  @available(iOS 3.2, *)
  func replaceRange(range: UITextRange, withText text: String)
  @available(iOS 3.2, *)
  @NSCopying var selectedTextRange: UITextRange?
  @available(iOS 3.2, *)
  var markedTextRange: UITextRange? { get }
  @available(iOS 2.0, *)
  var markedTextStyle: [NSObject : AnyObject]?
  @available(iOS 2.0, *)
  func setMarkedText(markedText: String?, selectedRange: NSRange)
  @available(iOS 2.0, *)
  func unmarkText()
  @available(iOS 3.2, *)
  var beginningOfDocument: UITextPosition { get }
  @available(iOS 3.2, *)
  var endOfDocument: UITextPosition { get }
  @available(iOS 3.2, *)
  func textRangeFromPosition(fromPosition: UITextPosition, toPosition: UITextPosition) -> UITextRange?
  @available(iOS 3.2, *)
  func positionFromPosition(position: UITextPosition, offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  func positionFromPosition(position: UITextPosition, inDirection direction: UITextLayoutDirection, offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  func comparePosition(position: UITextPosition, toPosition other: UITextPosition) -> NSComparisonResult
  @available(iOS 3.2, *)
  func offsetFromPosition(from: UITextPosition, toPosition: UITextPosition) -> Int
  @available(iOS 2.0, *)
  weak var inputDelegate: @sil_weak UITextInputDelegate?
  @available(iOS 2.0, *)
  var tokenizer: UITextInputTokenizer { get }
  @available(iOS 3.2, *)
  func positionWithinRange(range: UITextRange, farthestInDirection direction: UITextLayoutDirection) -> UITextPosition?
  @available(iOS 3.2, *)
  func characterRangeByExtendingPosition(position: UITextPosition, inDirection direction: UITextLayoutDirection) -> UITextRange?
  @available(iOS 3.2, *)
  func baseWritingDirectionForPosition(position: UITextPosition, inDirection direction: UITextStorageDirection) -> UITextWritingDirection
  @available(iOS 3.2, *)
  func setBaseWritingDirection(writingDirection: UITextWritingDirection, forRange range: UITextRange)
  @available(iOS 3.2, *)
  func firstRectForRange(range: UITextRange) -> CGRect
  @available(iOS 3.2, *)
  func caretRectForPosition(position: UITextPosition) -> CGRect
  @available(iOS 6.0, *)
  func selectionRectsForRange(range: UITextRange) -> [AnyObject]
  @available(iOS 3.2, *)
  func closestPositionToPoint(point: CGPoint) -> UITextPosition?
  @available(iOS 3.2, *)
  func closestPositionToPoint(point: CGPoint, withinRange range: UITextRange) -> UITextPosition?
  @available(iOS 3.2, *)
  func characterRangeAtPoint(point: CGPoint) -> UITextRange?
  @available(iOS 6.0, *)
  func shouldChangeTextInRange(range: UITextRange, replacementText text: String) -> Bool
  @available(iOS 3.2, *)
  func textStylingAtPosition(position: UITextPosition, inDirection direction: UITextStorageDirection) -> [String : AnyObject]?
  @available(iOS 3.2, *)
  func positionWithinRange(range: UITextRange, atCharacterOffset offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  func characterOffsetOfPosition(position: UITextPosition, withinRange range: UITextRange) -> Int
  @available(iOS 2.0, *)
  var textInputView: UIView { get }
  @available(iOS 2.0, *)
  var selectionAffinity: UITextStorageDirection
  @available(iOS 5.1, *)
  func insertDictationResult(dictationResult: [UIDictationPhrase])
  @available(iOS 2.0, *)
  func dictationRecordingDidEnd()
  @available(iOS 2.0, *)
  func dictationRecognitionFailed()
  @available(iOS 2.0, *)
  func insertDictationResultPlaceholder() -> AnyObject
  @available(iOS 2.0, *)
  func frameForDictationResultPlaceholder(placeholder: AnyObject) -> CGRect
  @available(iOS 2.0, *)
  func removeDictationResultPlaceholder(placeholder: AnyObject, willInsertResult: Bool)
  @available(iOS 9.0, *)
  func beginFloatingCursorAtPoint(point: CGPoint)
  @available(iOS 9.0, *)
  func updateFloatingCursorAtPoint(point: CGPoint)
  @available(iOS 9.0, *)
  func endFloatingCursor()
  @available(iOS 2.0, *)
  func hasText() -> Bool
  @available(iOS 2.0, *)
  func insertText(text: String)
  @available(iOS 2.0, *)
  func deleteBackward()
  @available(iOS 2.0, *)
  var autocapitalizationType: UITextAutocapitalizationType
  @available(iOS 2.0, *)
  var autocorrectionType: UITextAutocorrectionType
  @available(iOS 5.0, *)
  var spellCheckingType: UITextSpellCheckingType
  @available(iOS 2.0, *)
  var keyboardType: UIKeyboardType
  @available(iOS 2.0, *)
  var keyboardAppearance: UIKeyboardAppearance
  @available(iOS 2.0, *)
  var returnKeyType: UIReturnKeyType
  @available(iOS 2.0, *)
  var enablesReturnKeyAutomatically: Bool
  @available(iOS 2.0, *)
  var secureTextEntry: Bool
}
extension UIView {
  func endEditing(force: Bool) -> Bool
}
protocol UITextFieldDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  optional func textFieldShouldBeginEditing(textField: UITextField) -> Bool
  @available(iOS 2.0, *)
  optional func textFieldDidBeginEditing(textField: UITextField)
  @available(iOS 2.0, *)
  optional func textFieldShouldEndEditing(textField: UITextField) -> Bool
  @available(iOS 2.0, *)
  optional func textFieldDidEndEditing(textField: UITextField)
  @available(iOS 2.0, *)
  optional func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool
  @available(iOS 2.0, *)
  optional func textFieldShouldClear(textField: UITextField) -> Bool
  @available(iOS 2.0, *)
  optional func textFieldShouldReturn(textField: UITextField) -> Bool
}
let UITextFieldTextDidBeginEditingNotification: String
let UITextFieldTextDidEndEditingNotification: String
let UITextFieldTextDidChangeNotification: String
