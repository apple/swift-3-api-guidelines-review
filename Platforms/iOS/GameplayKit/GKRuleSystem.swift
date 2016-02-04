
@available(iOS 9.0, *)
class GKRuleSystem : Object {
  init()
  func evaluate()
  var state: MutableDictionary { get }
  var rules: [GKRule] { get }
  func addRule(rule: GKRule)
  func addRulesFrom(rules: [GKRule])
  func removeAllRules()
  var agenda: [GKRule] { get }
  var executed: [GKRule] { get }
  var facts: [AnyObject] { get }
  func gradeForFact(fact: ObjectProtocol) -> Float
  func minimumGradeForFacts(facts: [AnyObject]) -> Float
  func maximumGradeForFacts(facts: [AnyObject]) -> Float
  func assertFact(fact: ObjectProtocol)
  func assertFact(fact: ObjectProtocol, grade: Float)
  func retractFact(fact: ObjectProtocol)
  func retractFact(fact: ObjectProtocol, grade: Float)
  func reset()
}
@available(iOS 9.0, *)
class GKRule : Object {
  var salience: Int
  func evaluatePredicateWith(system: GKRuleSystem) -> Bool
  func performActionWith(system: GKRuleSystem)
  convenience init(predicate: Predicate, assertingFact fact: ObjectProtocol, grade: Float)
  convenience init(predicate: Predicate, retractingFact fact: ObjectProtocol, grade: Float)
  convenience init(blockPredicate predicate: (GKRuleSystem) -> Bool, action: (GKRuleSystem) -> Void)
  init()
}
@available(iOS 9.0, *)
class GKNSPredicateRule : GKRule {
  var predicate: Predicate { get }
  init(predicate: Predicate)
  func evaluatePredicateWith(system: GKRuleSystem) -> Bool
  convenience init(predicate: Predicate, assertingFact fact: ObjectProtocol, grade: Float)
  convenience init(predicate: Predicate, retractingFact fact: ObjectProtocol, grade: Float)
  convenience init(blockPredicate predicate: (GKRuleSystem) -> Bool, action: (GKRuleSystem) -> Void)
  init()
}
