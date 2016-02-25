
protocol UIKeyInput : UITextInputTraits {
  func hasText() -> Bool
  func insertText(_ text: String)
  func deleteBackward()
}
enum UITextStorageDirection : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Forward
  case Backward
}
enum UITextLayoutDirection : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Right
  case Left
  case Up
  case Down
}
typealias UITextDirection = Int
enum UITextWritingDirection : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Natural
  case LeftToRight
  case RightToLeft
}
enum UITextGranularity : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Character
  case Word
  case Sentence
  case Paragraph
  case Line
  case Document
}
@available(iOS 5.1, *)
class UIDictationPhrase : NSObject {
  var text: String { get }
  var alternativeInterpretations: [String]? { get }
}
@available(iOS 9.0, *)
class UITextInputAssistantItem : NSObject {
  var allowsHidingShortcuts: Bool
  var leadingBarButtonGroups: [UIBarButtonItemGroup]
  var trailingBarButtonGroups: [UIBarButtonItemGroup]
}
protocol UITextInput : UIKeyInput {
  @available(iOS 3.2, *)
  func textInRange(_ range: UITextRange) -> String?
  @available(iOS 3.2, *)
  func replaceRange(_ range: UITextRange, withText text: String)
  @available(iOS 3.2, *)
  @NSCopying var selectedTextRange: UITextRange? { get set }
  @available(iOS 3.2, *)
  var markedTextRange: UITextRange? { get }
  @available(iOS 2.0, *)
  var markedTextStyle: [NSObject : AnyObject]? { get set }
  func setMarkedText(_ markedText: String?, selectedRange selectedRange: NSRange)
  func unmarkText()
  @available(iOS 3.2, *)
  var beginningOfDocument: UITextPosition { get }
  @available(iOS 3.2, *)
  var endOfDocument: UITextPosition { get }
  @available(iOS 3.2, *)
  func textRangeFromPosition(_ fromPosition: UITextPosition, toPosition toPosition: UITextPosition) -> UITextRange?
  @available(iOS 3.2, *)
  func positionFromPosition(_ position: UITextPosition, offset offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  func positionFromPosition(_ position: UITextPosition, inDirection direction: UITextLayoutDirection, offset offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  func comparePosition(_ position: UITextPosition, toPosition other: UITextPosition) -> NSComparisonResult
  @available(iOS 3.2, *)
  func offsetFromPosition(_ from: UITextPosition, toPosition toPosition: UITextPosition) -> Int
  weak var inputDelegate: @sil_weak UITextInputDelegate? { get set }
  var tokenizer: UITextInputTokenizer { get }
  @available(iOS 3.2, *)
  func positionWithinRange(_ range: UITextRange, farthestInDirection direction: UITextLayoutDirection) -> UITextPosition?
  @available(iOS 3.2, *)
  func characterRangeByExtendingPosition(_ position: UITextPosition, inDirection direction: UITextLayoutDirection) -> UITextRange?
  @available(iOS 3.2, *)
  func baseWritingDirectionForPosition(_ position: UITextPosition, inDirection direction: UITextStorageDirection) -> UITextWritingDirection
  @available(iOS 3.2, *)
  func setBaseWritingDirection(_ writingDirection: UITextWritingDirection, forRange range: UITextRange)
  @available(iOS 3.2, *)
  func firstRectForRange(_ range: UITextRange) -> CGRect
  @available(iOS 3.2, *)
  func caretRectForPosition(_ position: UITextPosition) -> CGRect
  @available(iOS 6.0, *)
  func selectionRectsForRange(_ range: UITextRange) -> [AnyObject]
  @available(iOS 3.2, *)
  func closestPositionToPoint(_ point: CGPoint) -> UITextPosition?
  @available(iOS 3.2, *)
  func closestPositionToPoint(_ point: CGPoint, withinRange range: UITextRange) -> UITextPosition?
  @available(iOS 3.2, *)
  func characterRangeAtPoint(_ point: CGPoint) -> UITextRange?
  @available(iOS 6.0, *)
  optional func shouldChangeTextInRange(_ range: UITextRange, replacementText text: String) -> Bool
  @available(iOS 3.2, *)
  optional func textStylingAtPosition(_ position: UITextPosition, inDirection direction: UITextStorageDirection) -> [String : AnyObject]?
  @available(iOS 3.2, *)
  optional func positionWithinRange(_ range: UITextRange, atCharacterOffset offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  optional func characterOffsetOfPosition(_ position: UITextPosition, withinRange range: UITextRange) -> Int
  @available(iOS 2.0, *)
  optional var textInputView: UIView { get }
  optional var selectionAffinity: UITextStorageDirection { get set }
  @available(iOS 5.1, *)
  optional func insertDictationResult(_ dictationResult: [UIDictationPhrase])
  optional func dictationRecordingDidEnd()
  optional func dictationRecognitionFailed()
  optional func insertDictationResultPlaceholder() -> AnyObject
  optional func frameForDictationResultPlaceholder(_ placeholder: AnyObject) -> CGRect
  optional func removeDictationResultPlaceholder(_ placeholder: AnyObject, willInsertResult willInsertResult: Bool)
  @available(iOS 9.0, *)
  optional func beginFloatingCursorAtPoint(_ point: CGPoint)
  @available(iOS 9.0, *)
  optional func updateFloatingCursorAtPoint(_ point: CGPoint)
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
class UITextPosition : NSObject {
}
@available(iOS 3.2, *)
class UITextRange : NSObject {
  var empty: Bool { get }
  var start: UITextPosition { get }
  var end: UITextPosition { get }
}
@available(iOS 6.0, *)
class UITextSelectionRect : NSObject {
  var rect: CGRect { get }
  var writingDirection: UITextWritingDirection { get }
  var containsStart: Bool { get }
  var containsEnd: Bool { get }
  var isVertical: Bool { get }
}
protocol UITextInputDelegate : NSObjectProtocol {
  func selectionWillChange(_ textInput: UITextInput?)
  func selectionDidChange(_ textInput: UITextInput?)
  func textWillChange(_ textInput: UITextInput?)
  func textDidChange(_ textInput: UITextInput?)
}
protocol UITextInputTokenizer : NSObjectProtocol {
  @available(iOS 3.2, *)
  func rangeEnclosingPosition(_ position: UITextPosition, withGranularity granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextRange?
  @available(iOS 3.2, *)
  func isPosition(_ position: UITextPosition, atBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
  @available(iOS 3.2, *)
  func positionFromPosition(_ position: UITextPosition, toBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextPosition?
  @available(iOS 3.2, *)
  func isPosition(_ position: UITextPosition, withinTextUnit granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
}
@available(iOS 3.2, *)
class UITextInputStringTokenizer : NSObject, UITextInputTokenizer {
  init(textInput textInput: UIResponder)
  @available(iOS 3.2, *)
  func rangeEnclosingPosition(_ position: UITextPosition, withGranularity granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextRange?
  @available(iOS 3.2, *)
  func isPosition(_ position: UITextPosition, atBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
  @available(iOS 3.2, *)
  func positionFromPosition(_ position: UITextPosition, toBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextPosition?
  @available(iOS 3.2, *)
  func isPosition(_ position: UITextPosition, withinTextUnit granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
}
@available(iOS 4.2, *)
class UITextInputMode : NSObject, NSSecureCoding {
  var primaryLanguage: String? { get }
  class func activeInputModes() -> [String]
  @available(iOS 4.2, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 4.2, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 4.2, *)
let UITextInputCurrentInputModeDidChangeNotification: String
