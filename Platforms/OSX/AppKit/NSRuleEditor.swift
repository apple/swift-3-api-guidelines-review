
enum NSRuleEditorNestingMode : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Single
  case List
  case Compound
  case Simple
}
enum NSRuleEditorRowType : UInt {
  init?(rawValue rawValue: UInt)
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
  func predicateForRow(_ row: Int) -> NSPredicate?
  var numberOfRows: Int { get }
  func subrowIndexesForRow(_ rowIndex: Int) -> NSIndexSet
  func criteriaForRow(_ row: Int) -> [AnyObject]
  func displayValuesForRow(_ row: Int) -> [AnyObject]
  func rowForDisplayValue(_ displayValue: AnyObject) -> Int
  func rowTypeForRow(_ rowIndex: Int) -> NSRuleEditorRowType
  func parentRowForRow(_ rowIndex: Int) -> Int
  func addRow(_ sender: AnyObject?)
  func insertRowAtIndex(_ rowIndex: Int, withType rowType: NSRuleEditorRowType, asSubrowOfRow parentRow: Int, animate shouldAnimate: Bool)
  func setCriteria(_ criteria: [AnyObject], andDisplayValues values: [AnyObject], forRowAtIndex rowIndex: Int)
  func removeRowAtIndex(_ rowIndex: Int)
  func removeRowsAtIndexes(_ rowIndexes: NSIndexSet, includeSubrows includeSubrows: Bool)
  @NSCopying var selectedRowIndexes: NSIndexSet { get }
  func selectRowIndexes(_ indexes: NSIndexSet, byExtendingSelection extend: Bool)
  var rowClass: AnyClass
  var rowTypeKeyPath: String
  var subrowsKeyPath: String
  var criteriaKeyPath: String
  var displayValuesKeyPath: String
}
protocol NSRuleEditorDelegate : NSObjectProtocol {
  func ruleEditor(_ editor: NSRuleEditor, numberOfChildrenForCriterion criterion: AnyObject?, withRowType rowType: NSRuleEditorRowType) -> Int
  func ruleEditor(_ editor: NSRuleEditor, child index: Int, forCriterion criterion: AnyObject?, withRowType rowType: NSRuleEditorRowType) -> AnyObject
  func ruleEditor(_ editor: NSRuleEditor, displayValueForCriterion criterion: AnyObject, inRow row: Int) -> AnyObject
  optional func ruleEditor(_ editor: NSRuleEditor, predicatePartsForCriterion criterion: AnyObject, withDisplayValue value: AnyObject, inRow row: Int) -> [String : AnyObject]?
  optional func ruleEditorRowsDidChange(_ notification: NSNotification)
}
let NSRuleEditorPredicateLeftExpression: String
let NSRuleEditorPredicateRightExpression: String
let NSRuleEditorPredicateComparisonModifier: String
let NSRuleEditorPredicateOptions: String
let NSRuleEditorPredicateOperatorType: String
let NSRuleEditorPredicateCustomSelector: String
let NSRuleEditorPredicateCompoundType: String
let NSRuleEditorRowsDidChangeNotification: String
