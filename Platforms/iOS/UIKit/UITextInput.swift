
protocol UIKeyInput : UITextInputTraits {
  func hasText() -> Bool
  func insertText(text: String)
  func deleteBackward()
}
enum UITextStorageDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Forward
  case Backward
}
enum UITextLayoutDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Right
  case Left
  case Up
  case Down
}
typealias UITextDirection = Int
enum UITextWritingDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Natural
  case LeftToRight
  case RightToLeft
}
enum UITextGranularity : Int {
  init?(rawValue: Int)
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
  init()
}
@available(iOS 9.0, *)
class UITextInputAssistantItem : NSObject {
  var allowsHidingShortcuts: Bool
  var leadingBarButtonGroups: [UIBarButtonItemGroup]
  var trailingBarButtonGroups: [UIBarButtonItemGroup]
  init()
}
protocol UITextInput : UIKeyInput {
  @available(iOS 3.2, *)
  func textInRange(range: UITextRange) -> String?
  @available(iOS 3.2, *)
  func replaceRange(range: UITextRange, withText text: String)
  @available(iOS 3.2, *)
  @NSCopying var selectedTextRange: UITextRange? { get set }
  @available(iOS 3.2, *)
  var markedTextRange: UITextRange? { get }
  @available(iOS 2.0, *)
  var markedTextStyle: [NSObject : AnyObject]? { get set }
  func setMarkedText(markedText: String?, selectedRange: NSRange)
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
  weak var inputDelegate: @sil_weak UITextInputDelegate? { get set }
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
  optional func shouldChangeTextInRange(range: UITextRange, replacementText text: String) -> Bool
  @available(iOS 3.2, *)
  optional func textStylingAtPosition(position: UITextPosition, inDirection direction: UITextStorageDirection) -> [String : AnyObject]?
  @available(iOS 3.2, *)
  optional func positionWithinRange(range: UITextRange, atCharacterOffset offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  optional func characterOffsetOfPosition(position: UITextPosition, withinRange range: UITextRange) -> Int
  @available(iOS 2.0, *)
  optional var textInputView: UIView { get }
  optional var selectionAffinity: UITextStorageDirection { get set }
  @available(iOS 5.1, *)
  optional func insertDictationResult(dictationResult: [UIDictationPhrase])
  optional func dictationRecordingDidEnd()
  optional func dictationRecognitionFailed()
  optional func insertDictationResultPlaceholder() -> AnyObject
  optional func frameForDictationResultPlaceholder(placeholder: AnyObject) -> CGRect
  optional func removeDictationResultPlaceholder(placeholder: AnyObject, willInsertResult: Bool)
  @available(iOS 9.0, *)
  optional func beginFloatingCursorAtPoint(point: CGPoint)
  @available(iOS 9.0, *)
  optional func updateFloatingCursorAtPoint(point: CGPoint)
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
  init()
}
@available(iOS 3.2, *)
class UITextRange : NSObject {
  var empty: Bool { get }
  var start: UITextPosition { get }
  var end: UITextPosition { get }
  init()
}
@available(iOS 6.0, *)
class UITextSelectionRect : NSObject {
  var rect: CGRect { get }
  var writingDirection: UITextWritingDirection { get }
  var containsStart: Bool { get }
  var containsEnd: Bool { get }
  var isVertical: Bool { get }
  init()
}
protocol UITextInputDelegate : NSObjectProtocol {
  func selectionWillChange(textInput: UITextInput?)
  func selectionDidChange(textInput: UITextInput?)
  func textWillChange(textInput: UITextInput?)
  func textDidChange(textInput: UITextInput?)
}
protocol UITextInputTokenizer : NSObjectProtocol {
  @available(iOS 3.2, *)
  func rangeEnclosingPosition(position: UITextPosition, withGranularity granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextRange?
  @available(iOS 3.2, *)
  func isPosition(position: UITextPosition, atBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
  @available(iOS 3.2, *)
  func positionFromPosition(position: UITextPosition, toBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextPosition?
  @available(iOS 3.2, *)
  func isPosition(position: UITextPosition, withinTextUnit granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
}
@available(iOS 3.2, *)
class UITextInputStringTokenizer : NSObject, UITextInputTokenizer {
  init(textInput: UIResponder)
  init()
  @available(iOS 3.2, *)
  func rangeEnclosingPosition(position: UITextPosition, withGranularity granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextRange?
  @available(iOS 3.2, *)
  func isPosition(position: UITextPosition, atBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
  @available(iOS 3.2, *)
  func positionFromPosition(position: UITextPosition, toBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextPosition?
  @available(iOS 3.2, *)
  func isPosition(position: UITextPosition, withinTextUnit granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
}
@available(iOS 4.2, *)
class UITextInputMode : NSObject, NSSecureCoding {
  var primaryLanguage: String? { get }
  class func activeInputModes() -> [String]
  init()
  @available(iOS 4.2, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 4.2, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 4.2, *)
let UITextInputCurrentInputModeDidChangeNotification: String
