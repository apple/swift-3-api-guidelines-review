
@available(tvOS 9.0, *)
class GKRuleSystem : NSObject {
  init()
  func evaluate()
  var state: NSMutableDictionary { get }
  var rules: [GKRule] { get }
  func addRule(rule: GKRule)
  func addRulesFromArray(rules: [GKRule])
  func removeAllRules()
  var agenda: [GKRule] { get }
  var executed: [GKRule] { get }
  var facts: [AnyObject] { get }
  func gradeForFact(fact: NSObjectProtocol) -> Float
  func minimumGradeForFacts(facts: [AnyObject]) -> Float
  func maximumGradeForFacts(facts: [AnyObject]) -> Float
  func assertFact(fact: NSObjectProtocol)
  func assertFact(fact: NSObjectProtocol, grade: Float)
  func retractFact(fact: NSObjectProtocol)
  func retractFact(fact: NSObjectProtocol, grade: Float)
  func reset()
}
@available(tvOS 9.0, *)
class GKRule : NSObject {
  var salience: Int
  func evaluatePredicateWithSystem(system: GKRuleSystem) -> Bool
  func performActionWithSystem(system: GKRuleSystem)
  convenience init(predicate: NSPredicate, assertingFact fact: NSObjectProtocol, grade: Float)
  convenience init(predicate: NSPredicate, retractingFact fact: NSObjectProtocol, grade: Float)
  convenience init(blockPredicate predicate: (GKRuleSystem) -> Bool, action: (GKRuleSystem) -> Void)
  init()
}
@available(tvOS 9.0, *)
class GKNSPredicateRule : GKRule {
  var predicate: NSPredicate { get }
  init(predicate: NSPredicate)
  func evaluatePredicateWithSystem(system: GKRuleSystem) -> Bool
  convenience init(predicate: NSPredicate, assertingFact fact: NSObjectProtocol, grade: Float)
  convenience init(predicate: NSPredicate, retractingFact fact: NSObjectProtocol, grade: Float)
  convenience init(blockPredicate predicate: (GKRuleSystem) -> Bool, action: (GKRuleSystem) -> Void)
  init()
}
