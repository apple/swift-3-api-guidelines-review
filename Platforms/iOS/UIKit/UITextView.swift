
protocol UITextViewDelegate : NSObjectProtocol, UIScrollViewDelegate {
  @available(iOS 2.0, *)
  optional func textViewShouldBeginEditing(textView: UITextView) -> Bool
  @available(iOS 2.0, *)
  optional func textViewShouldEndEditing(textView: UITextView) -> Bool
  @available(iOS 2.0, *)
  optional func textViewDidBeginEditing(textView: UITextView)
  @available(iOS 2.0, *)
  optional func textViewDidEndEditing(textView: UITextView)
  @available(iOS 2.0, *)
  optional func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool
  @available(iOS 2.0, *)
  optional func textViewDidChange(textView: UITextView)
  @available(iOS 2.0, *)
  optional func textViewDidChangeSelection(textView: UITextView)
  @available(iOS 7.0, *)
  optional func textView(textView: UITextView, shouldInteractWithURL URL: NSURL, inRange characterRange: NSRange) -> Bool
  @available(iOS 7.0, *)
  optional func textView(textView: UITextView, shouldInteractWithTextAttachment textAttachment: NSTextAttachment, inRange characterRange: NSRange) -> Bool
}
@available(iOS 2.0, *)
class UITextView : UIScrollView, UITextInput {
  weak var delegate: @sil_weak UITextViewDelegate?
  var text: String!
  var font: UIFont?
  var textColor: UIColor?
  var textAlignment: NSTextAlignment
  var selectedRange: NSRange
  var editable: Bool
  @available(iOS 7.0, *)
  var selectable: Bool
  @available(iOS 3.0, *)
  var dataDetectorTypes: UIDataDetectorTypes
  @available(iOS 6.0, *)
  var allowsEditingTextAttributes: Bool
  @available(iOS 6.0, *)
  @NSCopying var attributedText: NSAttributedString!
  @available(iOS 6.0, *)
  var typingAttributes: [String : AnyObject]
  func scrollRangeToVisible(range: NSRange)
  var inputView: UIView?
  var inputAccessoryView: UIView?
  @available(iOS 6.0, *)
  var clearsOnInsertion: Bool
  @available(iOS 7.0, *)
  init(frame: CGRect, textContainer: NSTextContainer?)
  init?(coder aDecoder: NSCoder)
  @available(iOS 7.0, *)
  var textContainer: NSTextContainer { get }
  @available(iOS 7.0, *)
  var textContainerInset: UIEdgeInsets
  @available(iOS 7.0, *)
  var layoutManager: NSLayoutManager { get }
  @available(iOS 7.0, *)
  var textStorage: NSTextStorage { get }
  @available(iOS 7.0, *)
  var linkTextAttributes: [String : AnyObject]!
  convenience init(frame: CGRect)
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
let UITextViewTextDidBeginEditingNotification: String
let UITextViewTextDidChangeNotification: String
let UITextViewTextDidEndEditingNotification: String
