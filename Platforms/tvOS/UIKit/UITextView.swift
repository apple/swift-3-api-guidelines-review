
protocol UITextViewDelegate : NSObjectProtocol, UIScrollViewDelegate {
  @available(tvOS 2.0, *)
  optional func textViewShouldBeginEditing(_ textView: UITextView) -> Bool
  @available(tvOS 2.0, *)
  optional func textViewShouldEndEditing(_ textView: UITextView) -> Bool
  @available(tvOS 2.0, *)
  optional func textViewDidBeginEditing(_ textView: UITextView)
  @available(tvOS 2.0, *)
  optional func textViewDidEndEditing(_ textView: UITextView)
  @available(tvOS 2.0, *)
  optional func textView(_ textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool
  @available(tvOS 2.0, *)
  optional func textViewDidChange(_ textView: UITextView)
  @available(tvOS 2.0, *)
  optional func textViewDidChangeSelection(_ textView: UITextView)
  @available(tvOS 7.0, *)
  optional func textView(_ textView: UITextView, shouldInteractWithURL URL: NSURL, inRange characterRange: NSRange) -> Bool
  @available(tvOS 7.0, *)
  optional func textView(_ textView: UITextView, shouldInteractWithTextAttachment textAttachment: NSTextAttachment, inRange characterRange: NSRange) -> Bool
}
@available(tvOS 2.0, *)
class UITextView : UIScrollView, UITextInput {
  var text: String!
  var font: UIFont?
  var textColor: UIColor?
  var textAlignment: NSTextAlignment
  var selectedRange: NSRange
  @available(tvOS 7.0, *)
  var selectable: Bool
  @available(tvOS 6.0, *)
  var allowsEditingTextAttributes: Bool
  @available(tvOS 6.0, *)
  @NSCopying var attributedText: NSAttributedString!
  @available(tvOS 6.0, *)
  var typingAttributes: [String : AnyObject]
  func scrollRangeToVisible(_ range: NSRange)
  @available(tvOS 6.0, *)
  var clearsOnInsertion: Bool
  @available(tvOS 7.0, *)
  init(frame frame: CGRect, textContainer textContainer: NSTextContainer?)
  @available(tvOS 7.0, *)
  var textContainer: NSTextContainer { get }
  @available(tvOS 7.0, *)
  var textContainerInset: UIEdgeInsets
  @available(tvOS 7.0, *)
  var layoutManager: NSLayoutManager { get }
  @available(tvOS 7.0, *)
  var textStorage: NSTextStorage { get }
  @available(tvOS 7.0, *)
  var linkTextAttributes: [String : AnyObject]!
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
let UITextViewTextDidBeginEditingNotification: String
let UITextViewTextDidChangeNotification: String
let UITextViewTextDidEndEditingNotification: String
