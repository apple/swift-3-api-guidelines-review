
enum NSRuleEditorNestingMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case single
  case list
  case compound
  case simple
}
enum NSRuleEditorRowType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case simple
  case compound
}
class NSRuleEditor : NSControl {
  unowned(unsafe) var delegate: @sil_unmanaged NSRuleEditorDelegate?
  var formattingStringsFilename: String?
  var formattingDictionary: [String : String]?
  func reloadCriteria()
  var nestingMode: NSRuleEditorNestingMode
  var rowHeight: CGFloat
  var isEditable: Bool
  var canRemoveAllRows: Bool
  var predicate: Predicate? { get }
  func reloadPredicate()
  func predicate(forRow row: Int) -> Predicate?
  var numberOfRows: Int { get }
  func subrowIndexes(forRow rowIndex: Int) -> IndexSet
  func criteria(forRow row: Int) -> [AnyObject]
  func displayValues(forRow row: Int) -> [AnyObject]
  func rowForDisplayValue(displayValue: AnyObject) -> Int
  func rowType(forRow rowIndex: Int) -> NSRuleEditorRowType
  func parentRow(forRow rowIndex: Int) -> Int
  func addRow(sender: AnyObject?)
  func insertRow(at rowIndex: Int, withType rowType: NSRuleEditorRowType, asSubrowOfRow parentRow: Int, animate shouldAnimate: Bool)
  func setCriteria(criteria: [AnyObject], andDisplayValues values: [AnyObject], forRowAt rowIndex: Int)
  func removeRow(at rowIndex: Int)
  func removeRows(at rowIndexes: IndexSet, includeSubrows: Bool)
  @NSCopying var selectedRowIndexes: IndexSet { get }
  func selectRowIndexes(indexes: IndexSet, byExtendingSelection extend: Bool)
  var rowClass: AnyClass
  var rowTypeKeyPath: String
  var subrowsKeyPath: String
  var criteriaKeyPath: String
  var displayValuesKeyPath: String
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
protocol NSRuleEditorDelegate : ObjectProtocol {
  func ruleEditor(editor: NSRuleEditor, numberOfChildrenForCriterion criterion: AnyObject?, withRowType rowType: NSRuleEditorRowType) -> Int
  func ruleEditor(editor: NSRuleEditor, child index: Int, forCriterion criterion: AnyObject?, withRowType rowType: NSRuleEditorRowType) -> AnyObject
  func ruleEditor(editor: NSRuleEditor, displayValueForCriterion criterion: AnyObject, inRow row: Int) -> AnyObject
  optional func ruleEditor(editor: NSRuleEditor, predicatePartsForCriterion criterion: AnyObject, withDisplayValue value: AnyObject, inRow row: Int) -> [String : AnyObject]?
  optional func ruleEditorRowsDidChange(notification: Notification)
}
let NSRuleEditorPredicateLeftExpression: String
let NSRuleEditorPredicateRightExpression: String
let NSRuleEditorPredicateComparisonModifier: String
let NSRuleEditorPredicateOptions: String
let NSRuleEditorPredicateOperatorType: String
let NSRuleEditorPredicateCustomSelector: String
let NSRuleEditorPredicateCompoundType: String
let NSRuleEditorRowsDidChangeNotification: String
