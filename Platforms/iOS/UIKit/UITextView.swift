
protocol UITextViewDelegate : NSObjectProtocol, UIScrollViewDelegate {
  @available(iOS 2.0, *)
  optional func textViewShouldBeginEditing(_ textView: UITextView) -> Bool
  @available(iOS 2.0, *)
  optional func textViewShouldEndEditing(_ textView: UITextView) -> Bool
  @available(iOS 2.0, *)
  optional func textViewDidBeginEditing(_ textView: UITextView)
  @available(iOS 2.0, *)
  optional func textViewDidEndEditing(_ textView: UITextView)
  @available(iOS 2.0, *)
  optional func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool
  @available(iOS 2.0, *)
  optional func textViewDidChange(_ textView: UITextView)
  @available(iOS 2.0, *)
  optional func textViewDidChangeSelection(_ textView: UITextView)
  @available(iOS 7.0, *)
  optional func textView(_ textView: UITextView, shouldInteractWith URL: NSURL, in characterRange: NSRange) -> Bool
  @available(iOS 7.0, *)
  optional func textView(_ textView: UITextView, shouldInteractWith textAttachment: NSTextAttachment, in characterRange: NSRange) -> Bool
}
@available(iOS 2.0, *)
class UITextView : UIScrollView, UITextInput {
  var text: String!
  var font: UIFont?
  var textColor: UIColor?
  var textAlignment: NSTextAlignment
  var selectedRange: NSRange
  var isEditable: Bool
  @available(iOS 7.0, *)
  var isSelectable: Bool
  @available(iOS 3.0, *)
  var dataDetectorTypes: UIDataDetectorTypes
  @available(iOS 6.0, *)
  var allowsEditingTextAttributes: Bool
  @available(iOS 6.0, *)
  @NSCopying var attributedText: NSAttributedString!
  @available(iOS 6.0, *)
  var typingAttributes: [String : AnyObject]
  func scrollRangeToVisible(_ range: NSRange)
  @available(iOS 6.0, *)
  var clearsOnInsertion: Bool
  @available(iOS 7.0, *)
  init(frame frame: CGRect, textContainer textContainer: NSTextContainer?)
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
  @available(iOS 3.2, *)
  func text(in range: UITextRange) -> String?
  @available(iOS 3.2, *)
  func replace(_ range: UITextRange, withText text: String)
  @available(iOS 3.2, *)
  @NSCopying var selectedTextRange: UITextRange?
  @available(iOS 3.2, *)
  var markedTextRange: UITextRange? { get }
  @available(iOS 2.0, *)
  var markedTextStyle: [NSObject : AnyObject]?
  @available(iOS 2.0, *)
  func setMarkedText(_ markedText: String?, selectedRange selectedRange: NSRange)
  @available(iOS 2.0, *)
  func unmarkText()
  @available(iOS 3.2, *)
  var beginningOfDocument: UITextPosition { get }
  @available(iOS 3.2, *)
  var endOfDocument: UITextPosition { get }
  @available(iOS 3.2, *)
  func textRange(from fromPosition: UITextPosition, to toPosition: UITextPosition) -> UITextRange?
  @available(iOS 3.2, *)
  func position(from position: UITextPosition, offset offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  func position(from position: UITextPosition, in direction: UITextLayoutDirection, offset offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  func compare(_ position: UITextPosition, to other: UITextPosition) -> NSComparisonResult
  @available(iOS 3.2, *)
  func offset(from from: UITextPosition, to toPosition: UITextPosition) -> Int
  @available(iOS 2.0, *)
  weak var inputDelegate: @sil_weak UITextInputDelegate?
  @available(iOS 2.0, *)
  var tokenizer: UITextInputTokenizer { get }
  @available(iOS 3.2, *)
  func position(within range: UITextRange, farthestIn direction: UITextLayoutDirection) -> UITextPosition?
  @available(iOS 3.2, *)
  func characterRange(byExtending position: UITextPosition, in direction: UITextLayoutDirection) -> UITextRange?
  @available(iOS 3.2, *)
  func baseWritingDirection(for position: UITextPosition, in direction: UITextStorageDirection) -> UITextWritingDirection
  @available(iOS 3.2, *)
  func setBaseWritingDirection(_ writingDirection: UITextWritingDirection, for range: UITextRange)
  @available(iOS 3.2, *)
  func firstRect(for range: UITextRange) -> CGRect
  @available(iOS 3.2, *)
  func caretRect(for position: UITextPosition) -> CGRect
  @available(iOS 6.0, *)
  func selectionRects(for range: UITextRange) -> [AnyObject]
  @available(iOS 3.2, *)
  func closestPosition(to point: CGPoint) -> UITextPosition?
  @available(iOS 3.2, *)
  func closestPosition(to point: CGPoint, within range: UITextRange) -> UITextPosition?
  @available(iOS 3.2, *)
  func characterRange(at point: CGPoint) -> UITextRange?
  @available(iOS 6.0, *)
  func shouldChangeText(in range: UITextRange, replacementText text: String) -> Bool
  @available(iOS 3.2, *)
  func textStyling(at position: UITextPosition, in direction: UITextStorageDirection) -> [String : AnyObject]?
  @available(iOS 3.2, *)
  func position(within range: UITextRange, atCharacterOffset offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  func characterOffset(of position: UITextPosition, within range: UITextRange) -> Int
  @available(iOS 2.0, *)
  var textInputView: UIView { get }
  @available(iOS 2.0, *)
  var selectionAffinity: UITextStorageDirection
  @available(iOS 5.1, *)
  func insertDictationResult(_ dictationResult: [UIDictationPhrase])
  @available(iOS 2.0, *)
  func dictationRecordingDidEnd()
  @available(iOS 2.0, *)
  func dictationRecognitionFailed()
  @available(iOS 2.0, *)
  func insertDictationResultPlaceholder() -> AnyObject
  @available(iOS 2.0, *)
  func frame(forDictationResultPlaceholder placeholder: AnyObject) -> CGRect
  @available(iOS 2.0, *)
  func removeDictationResultPlaceholder(_ placeholder: AnyObject, willInsertResult willInsertResult: Bool)
  @available(iOS 9.0, *)
  func beginFloatingCursor(at point: CGPoint)
  @available(iOS 9.0, *)
  func updateFloatingCursor(at point: CGPoint)
  @available(iOS 9.0, *)
  func endFloatingCursor()
  @available(iOS 2.0, *)
  func hasText() -> Bool
  @available(iOS 2.0, *)
  func insertText(_ text: String)
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
  var isSecureTextEntry: Bool
}
let UITextViewTextDidBeginEditingNotification: String
let UITextViewTextDidChangeNotification: String
let UITextViewTextDidEndEditingNotification: String
