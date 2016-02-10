
@available(tvOS 3.0, *)
class Predicate : Object, SecureCoding, Copying {
  /*not inherited*/ init(format predicateFormat: String, argumentArray arguments: [AnyObject]?)
  /*not inherited*/ init(format predicateFormat: String, arguments argList: CVaListPointer)
  /*not inherited*/ init(value: Bool)
  @available(tvOS 4.0, *)
  /*not inherited*/ init(block: (AnyObject, [String : AnyObject]?) -> Bool)
  var predicateFormat: String { get }
  func withSubstitutionVariables(variables: [String : AnyObject]) -> Self
  func evaluate(withObject object: AnyObject?) -> Bool
  @available(tvOS 3.0, *)
  func evaluate(withObject object: AnyObject?, substitutionVariables bindings: [String : AnyObject]?) -> Bool
  @available(tvOS 7.0, *)
  func allowEvaluation()
  init()
  @available(tvOS 3.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 3.0, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(tvOS 3.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
}

extension Predicate {
  convenience init(format predicateFormat: String, _ args: CVarArgType...)
}
struct _predicateFlags {
  var _evaluationBlocked: UInt32
  var _reservedPredicateFlags: UInt32
  init()
  init(_evaluationBlocked: UInt32, _reservedPredicateFlags: UInt32)
}
extension NSArray {
  func filteredArray(usingPredicate predicate: Predicate) -> [AnyObject]
}
extension MutableArray {
  func filter(usingPredicate predicate: Predicate)
}
extension NSSet {
  @available(tvOS 3.0, *)
  func filteredSet(usingPredicate predicate: Predicate) -> Set<Object>
}
extension MutableSet {
  @available(tvOS 3.0, *)
  func filter(usingPredicate predicate: Predicate)
}
extension OrderedSet {
  @available(tvOS 5.0, *)
  func filteredOrderedSet(usingPredicate p: Predicate) -> OrderedSet
}
extension MutableOrderedSet {
  @available(tvOS 5.0, *)
  func filter(usingPredicate p: Predicate)
}
