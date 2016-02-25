
@available(iOS 9.0, *)
class GKRuleSystem : NSObject {
  func evaluate()
  var state: NSMutableDictionary { get }
  var rules: [GKRule] { get }
  func addRule(_ rule: GKRule)
  func addRulesFromArray(_ rules: [GKRule])
  func removeAllRules()
  var agenda: [GKRule] { get }
  var executed: [GKRule] { get }
  var facts: [AnyObject] { get }
  func gradeForFact(_ fact: NSObjectProtocol) -> Float
  func minimumGradeForFacts(_ facts: [AnyObject]) -> Float
  func maximumGradeForFacts(_ facts: [AnyObject]) -> Float
  func assertFact(_ fact: NSObjectProtocol)
  func assertFact(_ fact: NSObjectProtocol, grade grade: Float)
  func retractFact(_ fact: NSObjectProtocol)
  func retractFact(_ fact: NSObjectProtocol, grade grade: Float)
  func reset()
}
@available(iOS 9.0, *)
class GKRule : NSObject {
  var salience: Int
  func evaluatePredicateWithSystem(_ system: GKRuleSystem) -> Bool
  func performActionWithSystem(_ system: GKRuleSystem)
  convenience init(predicate predicate: NSPredicate, assertingFact fact: NSObjectProtocol, grade grade: Float)
  convenience init(predicate predicate: NSPredicate, retractingFact fact: NSObjectProtocol, grade grade: Float)
  convenience init(blockPredicate predicate: (GKRuleSystem) -> Bool, action action: (GKRuleSystem) -> Void)
}
@available(iOS 9.0, *)
class GKNSPredicateRule : GKRule {
  var predicate: NSPredicate { get }
  init(predicate predicate: NSPredicate)
}
