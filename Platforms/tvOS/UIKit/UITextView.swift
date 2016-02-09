
protocol UITextViewDelegate : ObjectProtocol, UIScrollViewDelegate {
  @available(tvOS 2.0, *)
  optional func textViewShouldBeginEditing(textView: UITextView) -> Bool
  @available(tvOS 2.0, *)
  optional func textViewShouldEndEditing(textView: UITextView) -> Bool
  @available(tvOS 2.0, *)
  optional func textViewDidBeginEditing(textView: UITextView)
  @available(tvOS 2.0, *)
  optional func textViewDidEndEditing(textView: UITextView)
  @available(tvOS 2.0, *)
  optional func textView(textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool
  @available(tvOS 2.0, *)
  optional func textViewDidChange(textView: UITextView)
  @available(tvOS 2.0, *)
  optional func textViewDidChangeSelection(textView: UITextView)
  @available(tvOS 7.0, *)
  optional func textView(textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange) -> Bool
  @available(tvOS 7.0, *)
  optional func textView(textView: UITextView, shouldInteractWith textAttachment: NSTextAttachment, in characterRange: NSRange) -> Bool
}
@available(tvOS 2.0, *)
class UITextView : UIScrollView, UITextInput {
  weak var delegate: @sil_weak UITextViewDelegate?
  var text: String!
  var font: UIFont?
  var textColor: UIColor?
  var textAlignment: NSTextAlignment
  var selectedRange: NSRange
  @available(tvOS 7.0, *)
  var isSelectable: Bool
  @available(tvOS 6.0, *)
  var allowsEditingTextAttributes: Bool
  @available(tvOS 6.0, *)
  @NSCopying var attributedText: AttributedString!
  @available(tvOS 6.0, *)
  var typingAttributes: [String : AnyObject]
  func scrollRangeToVisible(range: NSRange)
  var inputView: UIView?
  var inputAccessoryView: UIView?
  @available(tvOS 6.0, *)
  var clearsOnInsertion: Bool
  @available(tvOS 7.0, *)
  init(frame: CGRect, textContainer: NSTextContainer?)
  init?(coder aDecoder: Coder)
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
  convenience init(frame: CGRect)
  convenience init()
  @available(tvOS 3.2, *)
  func textIn(range: UITextRange) -> String?
  @available(tvOS 3.2, *)
  func replace(range: UITextRange, withText text: String)
  @available(tvOS 3.2, *)
  @NSCopying var selectedTextRange: UITextRange?
  @available(tvOS 3.2, *)
  var markedTextRange: UITextRange? { get }
  @available(tvOS 2.0, *)
  var markedTextStyle: [Object : AnyObject]?
  @available(tvOS 2.0, *)
  func setMarkedText(markedText: String?, selectedRange: NSRange)
  @available(tvOS 2.0, *)
  func unmarkText()
  @available(tvOS 3.2, *)
  var beginningOfDocument: UITextPosition { get }
  @available(tvOS 3.2, *)
  var endOfDocument: UITextPosition { get }
  @available(tvOS 3.2, *)
  func textRange(from fromPosition: UITextPosition, to toPosition: UITextPosition) -> UITextRange?
  @available(tvOS 3.2, *)
  func positionFrom(position: UITextPosition, offset: Int) -> UITextPosition?
  @available(tvOS 3.2, *)
  func position(from position: UITextPosition, in direction: UITextLayoutDirection, offset: Int) -> UITextPosition?
  @available(tvOS 3.2, *)
  func compare(position: UITextPosition, to other: UITextPosition) -> ComparisonResult
  @available(tvOS 3.2, *)
  func offset(from from: UITextPosition, to toPosition: UITextPosition) -> Int
  @available(tvOS 2.0, *)
  weak var inputDelegate: @sil_weak UITextInputDelegate?
  @available(tvOS 2.0, *)
  var tokenizer: UITextInputTokenizer { get }
  @available(tvOS 3.2, *)
  func position(within range: UITextRange, farthestIn direction: UITextLayoutDirection) -> UITextPosition?
  @available(tvOS 3.2, *)
  func characterRangeByExtending(position: UITextPosition, in direction: UITextLayoutDirection) -> UITextRange?
  @available(tvOS 3.2, *)
  func baseWritingDirection(forPosition position: UITextPosition, in direction: UITextStorageDirection) -> UITextWritingDirection
  @available(tvOS 3.2, *)
  func setBaseWritingDirection(writingDirection: UITextWritingDirection, forRange range: UITextRange)
  @available(tvOS 3.2, *)
  func firstRectFor(range: UITextRange) -> CGRect
  @available(tvOS 3.2, *)
  func caretRectFor(position: UITextPosition) -> CGRect
  @available(tvOS 6.0, *)
  func selectionRectsFor(range: UITextRange) -> [AnyObject]
  @available(tvOS 3.2, *)
  func closestPositionTo(point: CGPoint) -> UITextPosition?
  @available(tvOS 3.2, *)
  func closestPosition(to point: CGPoint, within range: UITextRange) -> UITextPosition?
  @available(tvOS 3.2, *)
  func characterRangeAt(point: CGPoint) -> UITextRange?
  @available(tvOS 6.0, *)
  func shouldChangeTextIn(range: UITextRange, replacementText text: String) -> Bool
  @available(tvOS 3.2, *)
  func textStyling(at position: UITextPosition, in direction: UITextStorageDirection) -> [String : AnyObject]?
  @available(tvOS 3.2, *)
  func position(within range: UITextRange, atCharacterOffset offset: Int) -> UITextPosition?
  @available(tvOS 3.2, *)
  func characterOffset(of position: UITextPosition, within range: UITextRange) -> Int
  @available(tvOS 2.0, *)
  var textInputView: UIView { get }
  @available(tvOS 2.0, *)
  var selectionAffinity: UITextStorageDirection
  @available(tvOS 5.1, *)
  func insertDictationResult(dictationResult: [UIDictationPhrase])
  @available(tvOS 2.0, *)
  func dictationRecordingDidEnd()
  @available(tvOS 2.0, *)
  func dictationRecognitionFailed()
  @available(tvOS 2.0, *)
  func insertDictationResultPlaceholder() -> AnyObject
  @available(tvOS 2.0, *)
  func frameFor(dictationResultPlaceholder placeholder: AnyObject) -> CGRect
  @available(tvOS 2.0, *)
  func removeDictationResultPlaceholder(placeholder: AnyObject, willInsertResult: Bool)
  @available(tvOS 9.0, *)
  func beginFloatingCursorAt(point: CGPoint)
  @available(tvOS 9.0, *)
  func updateFloatingCursorAt(point: CGPoint)
  @available(tvOS 9.0, *)
  func endFloatingCursor()
  @available(tvOS 2.0, *)
  func hasText() -> Bool
  @available(tvOS 2.0, *)
  func insertText(text: String)
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
  var isSecureTextEntry: Bool
}
let UITextViewTextDidBeginEditingNotification: String
let UITextViewTextDidChangeNotification: String
let UITextViewTextDidEndEditingNotification: String
