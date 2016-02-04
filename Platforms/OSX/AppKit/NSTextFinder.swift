
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
class NSTextFinder : NSObject, NSCoding {
  init()
  @IBOutlet unowned(unsafe) var client: @sil_unmanaged NSTextFinderClient?
  func performAction(op: NSTextFinderAction)
  func validateAction(op: NSTextFinderAction) -> Bool
  @IBOutlet unowned(unsafe) var findBarContainer: @sil_unmanaged NSTextFinderBarContainer?
  func cancelFindIndicator()
  var findIndicatorNeedsUpdate: Bool
  var incrementalSearchingEnabled: Bool
  var incrementalSearchingShouldDimContentView: Bool
  var incrementalMatchRanges: [NSValue] { get }
  class func drawIncrementalMatchHighlightInRect(rect: NSRect)
  func noteClientStringWillChange()
  @available(OSX 10.7, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
protocol NSTextFinderClient : NSObjectProtocol {
  optional var selectable: Bool { get }
  optional var allowsMultipleSelection: Bool { get }
  optional var editable: Bool { get }
  optional var string: String { get }
  optional func stringAtIndex(characterIndex: Int, effectiveRange outRange: NSRangePointer, endsWithSearchBoundary outFlag: UnsafeMutablePointer<ObjCBool>) -> String
  optional func stringLength() -> Int
  optional var firstSelectedRange: NSRange { get }
  optional var selectedRanges: [NSValue] { get set }
  optional func scrollRangeToVisible(range: NSRange)
  optional func shouldReplaceCharactersInRanges(ranges: [NSValue], withStrings strings: [String]) -> Bool
  optional func replaceCharactersInRange(range: NSRange, withString string: String)
  optional func didReplaceCharacters()
  optional func contentViewAtIndex(index: Int, effectiveCharacterRange outRange: NSRangePointer) -> NSView
  optional func rectsForCharacterRange(range: NSRange) -> [NSValue]?
  optional var visibleCharacterRanges: [NSValue] { get }
  optional func drawCharactersInRange(range: NSRange, forContentView view: NSView)
}
protocol NSTextFinderBarContainer : NSObjectProtocol {
  var findBarView: NSView? { get set }
  var findBarVisible: Bool { get set }
  func findBarViewDidChangeHeight()
  optional func contentView() -> NSView?
}
