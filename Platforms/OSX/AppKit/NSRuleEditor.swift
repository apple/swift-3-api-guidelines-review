
enum NSRuleEditorNestingMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Single
  case List
  case Compound
  case Simple
}
enum NSRuleEditorRowType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Simple
  case Compound
}
class NSRuleEditor : NSControl {
  unowned(unsafe) var delegate: @sil_unmanaged NSRuleEditorDelegate?
  var formattingStringsFilename: String?
  var formattingDictionary: [String : String]?
  func reloadCriteria()
  var nestingMode: NSRuleEditorNestingMode
  var rowHeight: CGFloat
  var editable: Bool
  var canRemoveAllRows: Bool
  var predicate: NSPredicate? { get }
  func reloadPredicate()
  func predicateForRow(row: Int) -> NSPredicate?
  var numberOfRows: Int { get }
  func subrowIndexesForRow(rowIndex: Int) -> NSIndexSet
  func criteriaForRow(row: Int) -> [AnyObject]
  func displayValuesForRow(row: Int) -> [AnyObject]
  func rowForDisplayValue(displayValue: AnyObject) -> Int
  func rowTypeForRow(rowIndex: Int) -> NSRuleEditorRowType
  func parentRowForRow(rowIndex: Int) -> Int
  func addRow(sender: AnyObject?)
  func insertRowAtIndex(rowIndex: Int, withType rowType: NSRuleEditorRowType, asSubrowOfRow parentRow: Int, animate shouldAnimate: Bool)
  func setCriteria(criteria: [AnyObject], andDisplayValues values: [AnyObject], forRowAtIndex rowIndex: Int)
  func removeRowAtIndex(rowIndex: Int)
  func removeRowsAtIndexes(rowIndexes: NSIndexSet, includeSubrows: Bool)
  @NSCopying var selectedRowIndexes: NSIndexSet { get }
  func selectRowIndexes(indexes: NSIndexSet, byExtendingSelection extend: Bool)
  var rowClass: AnyClass
  var rowTypeKeyPath: String
  var subrowsKeyPath: String
  var criteriaKeyPath: String
  var displayValuesKeyPath: String
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
protocol NSRuleEditorDelegate : NSObjectProtocol {
  func ruleEditor(editor: NSRuleEditor, numberOfChildrenForCriterion criterion: AnyObject?, withRowType rowType: NSRuleEditorRowType) -> Int
  func ruleEditor(editor: NSRuleEditor, child index: Int, forCriterion criterion: AnyObject?, withRowType rowType: NSRuleEditorRowType) -> AnyObject
  func ruleEditor(editor: NSRuleEditor, displayValueForCriterion criterion: AnyObject, inRow row: Int) -> AnyObject
  optional func ruleEditor(editor: NSRuleEditor, predicatePartsForCriterion criterion: AnyObject, withDisplayValue value: AnyObject, inRow row: Int) -> [String : AnyObject]?
  optional func ruleEditorRowsDidChange(notification: NSNotification)
}
let NSRuleEditorPredicateLeftExpression: String
let NSRuleEditorPredicateRightExpression: String
let NSRuleEditorPredicateComparisonModifier: String
let NSRuleEditorPredicateOptions: String
let NSRuleEditorPredicateOperatorType: String
let NSRuleEditorPredicateCustomSelector: String
let NSRuleEditorPredicateCompoundType: String
let NSRuleEditorRowsDidChangeNotification: String
