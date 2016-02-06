
@available(OSX 10.7, *)
enum NSTextFinderAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ShowFindInterface
  case NextMatch
  case PreviousMatch
  case ReplaceAll
  case Replace
  case ReplaceAndFind
  case SetSearchString
  case ReplaceAllInSelection
  case SelectAll
  case SelectAllInSelection
  case HideFindInterface
  case ShowReplaceInterface
  case HideReplaceInterface
}
@available(OSX 10.7, *)
let NSTextFinderCaseInsensitiveKey: String
@available(OSX 10.7, *)
let NSTextFinderMatchingTypeKey: String
@available(OSX 10.7, *)
enum NSTextFinderMatchingType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Contains
  case StartsWith
  case FullWord
  case EndsWith
}
@available(OSX 10.7, *)
class NSTextFinder : Object, Coding {
  init()
  @IBOutlet unowned(unsafe) var client: @sil_unmanaged NSTextFinderClient?
  func perform(op: NSTextFinderAction)
  func validate(op: NSTextFinderAction) -> Bool
  @IBOutlet unowned(unsafe) var findBarContainer: @sil_unmanaged NSTextFinderBarContainer?
  func cancelFindIndicator()
  var findIndicatorNeedsUpdate: Bool
  var isIncrementalSearchingEnabled: Bool
  var incrementalSearchingShouldDimContentView: Bool
  var incrementalMatchRanges: [Value] { get }
  class func drawIncrementalMatchHighlightIn(rect: Rect)
  func noteClientStringWillChange()
  @available(OSX 10.7, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
protocol NSTextFinderClient : ObjectProtocol {
  optional var isSelectable: Bool { get }
  optional var allowsMultipleSelection: Bool { get }
  optional var isEditable: Bool { get }
  optional var string: String { get }
  optional func stringAt(characterIndex: Int, effectiveRange outRange: RangePointer, endsWithSearchBoundary outFlag: UnsafeMutablePointer<ObjCBool>) -> String
  optional func stringLength() -> Int
  optional var firstSelectedRange: NSRange { get }
  optional var selectedRanges: [Value] { get set }
  optional func scrollRangeToVisible(range: NSRange)
  optional func shouldReplaceCharactersIn(ranges ranges: [Value], withStrings strings: [String]) -> Bool
  optional func replaceCharactersIn(range: NSRange, withString string: String)
  optional func didReplaceCharacters()
  optional func contentViewAt(index: Int, effectiveCharacterRange outRange: RangePointer) -> NSView
  optional func rectsFor(characterRange range: NSRange) -> [Value]?
  optional var visibleCharacterRanges: [Value] { get }
  optional func drawCharactersIn(range: NSRange, forContentView view: NSView)
}
protocol NSTextFinderBarContainer : ObjectProtocol {
  var findBarView: NSView? { get set }
  var isFindBarVisible: Bool { get set }
  func findBarViewDidChangeHeight()
  optional func contentView() -> NSView?
}
