
@available(tvOS 9.0, *)
class GKRuleSystem : NSObject {
  init()
  func evaluate()
  var state: NSMutableDictionary { get }
  var rules: [GKRule] { get }
  func addRule(rule: GKRule)
  func addRules(from rules: [GKRule])
  func removeAllRules()
  var agenda: [GKRule] { get }
  var executed: [GKRule] { get }
  var facts: [AnyObject] { get }
  func grade(forFact fact: NSObjectProtocol) -> Float
  func minimumGrade(forFacts facts: [AnyObject]) -> Float
  func maximumGrade(forFacts facts: [AnyObject]) -> Float
  func assertFact(fact: NSObjectProtocol)
  func assertFact(fact: NSObjectProtocol, grade: Float)
  func retractFact(fact: NSObjectProtocol)
  func retractFact(fact: NSObjectProtocol, grade: Float)
  func reset()
}
@available(tvOS 9.0, *)
class GKRule : NSObject {
  var salience: Int
  func evaluatePredicate(with system: GKRuleSystem) -> Bool
  func performAction(system: GKRuleSystem)
  convenience init(predicate: NSPredicate, assertingFact fact: NSObjectProtocol, grade: Float)
  convenience init(predicate: NSPredicate, retractingFact fact: NSObjectProtocol, grade: Float)
  convenience init(blockPredicate predicate: (GKRuleSystem) -> Bool, action: (GKRuleSystem) -> Void)
  init()
}
@available(tvOS 9.0, *)
class GKNSPredicateRule : GKRule {
  var predicate: NSPredicate { get }
  init(predicate: NSPredicate)
  func evaluatePredicate(with system: GKRuleSystem) -> Bool
  convenience init(predicate: NSPredicate, assertingFact fact: NSObjectProtocol, grade: Float)
  convenience init(predicate: NSPredicate, retractingFact fact: NSObjectProtocol, grade: Float)
  convenience init(blockPredicate predicate: (GKRuleSystem) -> Bool, action: (GKRuleSystem) -> Void)
  init()
}
