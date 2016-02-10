
protocol UIKeyInput : UITextInputTraits {
  func hasText() -> Bool
  func insertText(text: String)
  func deleteBackward()
}
enum UITextStorageDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case forward
  case backward
}
enum UITextLayoutDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case right
  case left
  case up
  case down
}
typealias UITextDirection = Int
enum UITextWritingDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case natural
  case leftToRight
  case rightToLeft
}
enum UITextGranularity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case character
  case word
  case sentence
  case paragraph
  case line
  case document
}
@available(iOS 5.1, *)
class UIDictationPhrase : Object {
  var text: String { get }
  var alternativeInterpretations: [String]? { get }
  init()
}
@available(iOS 9.0, *)
class UITextInputAssistantItem : Object {
  var allowsHidingShortcuts: Bool
  var leadingBarButtonGroups: [UIBarButtonItemGroup]
  var trailingBarButtonGroups: [UIBarButtonItemGroup]
  init()
}
protocol UITextInput : UIKeyInput {
  @available(iOS 3.2, *)
  func text(in range: UITextRange) -> String?
  @available(iOS 3.2, *)
  func replace(range: UITextRange, withText text: String)
  @available(iOS 3.2, *)
  @NSCopying var selectedTextRange: UITextRange? { get set }
  @available(iOS 3.2, *)
  var markedTextRange: UITextRange? { get }
  @available(iOS 2.0, *)
  var markedTextStyle: [Object : AnyObject]? { get set }
  func setMarkedText(markedText: String?, selectedRange: NSRange)
  func unmarkText()
  @available(iOS 3.2, *)
  var beginningOfDocument: UITextPosition { get }
  @available(iOS 3.2, *)
  var endOfDocument: UITextPosition { get }
  @available(iOS 3.2, *)
  func textRange(from fromPosition: UITextPosition, to toPosition: UITextPosition) -> UITextRange?
  @available(iOS 3.2, *)
  func position(from position: UITextPosition, offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  func position(from position: UITextPosition, in direction: UITextLayoutDirection, offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  func compare(position: UITextPosition, to other: UITextPosition) -> ComparisonResult
  @available(iOS 3.2, *)
  func offset(from from: UITextPosition, to toPosition: UITextPosition) -> Int
  weak var inputDelegate: @sil_weak UITextInputDelegate? { get set }
  var tokenizer: UITextInputTokenizer { get }
  @available(iOS 3.2, *)
  func position(within range: UITextRange, farthestIn direction: UITextLayoutDirection) -> UITextPosition?
  @available(iOS 3.2, *)
  func characterRangeByExtending(position: UITextPosition, in direction: UITextLayoutDirection) -> UITextRange?
  @available(iOS 3.2, *)
  func baseWritingDirection(for position: UITextPosition, in direction: UITextStorageDirection) -> UITextWritingDirection
  @available(iOS 3.2, *)
  func setBaseWritingDirection(writingDirection: UITextWritingDirection, for range: UITextRange)
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
  optional func shouldChangeText(in range: UITextRange, replacementText text: String) -> Bool
  @available(iOS 3.2, *)
  optional func textStyling(at position: UITextPosition, in direction: UITextStorageDirection) -> [String : AnyObject]?
  @available(iOS 3.2, *)
  optional func position(within range: UITextRange, atCharacterOffset offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  optional func characterOffset(of position: UITextPosition, within range: UITextRange) -> Int
  @available(iOS 2.0, *)
  optional var textInputView: UIView { get }
  optional var selectionAffinity: UITextStorageDirection { get set }
  @available(iOS 5.1, *)
  optional func insertDictationResult(dictationResult: [UIDictationPhrase])
  optional func dictationRecordingDidEnd()
  optional func dictationRecognitionFailed()
  optional func insertDictationResultPlaceholder() -> AnyObject
  optional func frame(forDictationResultPlaceholder placeholder: AnyObject) -> CGRect
  optional func removeDictationResultPlaceholder(placeholder: AnyObject, willInsertResult: Bool)
  @available(iOS 9.0, *)
  optional func beginFloatingCursor(at point: CGPoint)
  @available(iOS 9.0, *)
  optional func updateFloatingCursor(at point: CGPoint)
  @available(iOS 9.0, *)
  optional func endFloatingCursor()
}
@available(iOS, introduced=3.2, deprecated=8.0, message="Use NSBackgroundColorAttributeName instead")
let UITextInputTextBackgroundColorKey: String
@available(iOS, introduced=3.2, deprecated=8.0, message="Use NSForegroundColorAttributeName instead")
let UITextInputTextColorKey: String
@available(iOS, introduced=3.2, deprecated=8.0, message="Use NSFontAttributeName instead")
let UITextInputTextFontKey: String
@available(iOS 3.2, *)
class UITextPosition : Object {
  init()
}
@available(iOS 3.2, *)
class UITextRange : Object {
  var isEmpty: Bool { get }
  var start: UITextPosition { get }
  var end: UITextPosition { get }
  init()
}
@available(iOS 6.0, *)
class UITextSelectionRect : Object {
  var rect: CGRect { get }
  var writingDirection: UITextWritingDirection { get }
  var containsStart: Bool { get }
  var containsEnd: Bool { get }
  var isVertical: Bool { get }
  init()
}
protocol UITextInputDelegate : ObjectProtocol {
  func selectionWillChange(textInput: UITextInput?)
  func selectionDidChange(textInput: UITextInput?)
  func textWillChange(textInput: UITextInput?)
  func textDidChange(textInput: UITextInput?)
}
protocol UITextInputTokenizer : ObjectProtocol {
  @available(iOS 3.2, *)
  func rangeEnclosingPosition(position: UITextPosition, with granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextRange?
  @available(iOS 3.2, *)
  func isPosition(position: UITextPosition, atBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
  @available(iOS 3.2, *)
  func position(from position: UITextPosition, toBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextPosition?
  @available(iOS 3.2, *)
  func isPosition(position: UITextPosition, withinTextUnit granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
}
@available(iOS 3.2, *)
class UITextInputStringTokenizer : Object, UITextInputTokenizer {
  init(textInput: UIResponder)
  init()
  @available(iOS 3.2, *)
  func rangeEnclosingPosition(position: UITextPosition, with granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextRange?
  @available(iOS 3.2, *)
  func isPosition(position: UITextPosition, atBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
  @available(iOS 3.2, *)
  func position(from position: UITextPosition, toBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextPosition?
  @available(iOS 3.2, *)
  func isPosition(position: UITextPosition, withinTextUnit granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
}
@available(iOS 4.2, *)
class UITextInputMode : Object, SecureCoding {
  var primaryLanguage: String? { get }
  class func activeInputModes() -> [String]
  init()
  @available(iOS 4.2, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 4.2, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(iOS 4.2, *)
let UITextInputCurrentInputModeDidChangeNotification: String
