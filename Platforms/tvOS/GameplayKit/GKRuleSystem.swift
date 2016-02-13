
@available(tvOS 9.0, *)
class GKRuleSystem : Object {
  init()
  func evaluate()
  var state: MutableDictionary { get }
  var rules: [GKRule] { get }
  func addRule(rule: GKRule)
  func addRules(from rules: [GKRule])
  func removeAllRules()
  var agenda: [GKRule] { get }
  var executed: [GKRule] { get }
  var facts: [AnyObject] { get }
  func grade(forFact fact: ObjectProtocol) -> Float
  func minimumGrade(forFacts facts: [AnyObject]) -> Float
  func maximumGrade(forFacts facts: [AnyObject]) -> Float
  func assertFact(fact: ObjectProtocol)
  func assertFact(fact: ObjectProtocol, grade: Float)
  func retractFact(fact: ObjectProtocol)
  func retractFact(fact: ObjectProtocol, grade: Float)
  func reset()
}
@available(tvOS 9.0, *)
class GKRule : Object {
  var salience: Int
  func evaluatePredicate(system: GKRuleSystem) -> Bool
  func performAction(system: GKRuleSystem)
  convenience init(predicate: Predicate, assertingFact fact: ObjectProtocol, grade: Float)
  convenience init(predicate: Predicate, retractingFact fact: ObjectProtocol, grade: Float)
  convenience init(blockPredicate predicate: (GKRuleSystem) -> Bool, action: (GKRuleSystem) -> Void)
  init()
}
@available(tvOS 9.0, *)
class GKNSPredicateRule : GKRule {
  var predicate: Predicate { get }
  init(predicate: Predicate)
  func evaluatePredicate(system: GKRuleSystem) -> Bool
  convenience init(predicate: Predicate, assertingFact fact: ObjectProtocol, grade: Float)
  convenience init(predicate: Predicate, retractingFact fact: ObjectProtocol, grade: Float)
  convenience init(blockPredicate predicate: (GKRuleSystem) -> Bool, action: (GKRuleSystem) -> Void)
  init()
}
