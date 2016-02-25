
@available(watchOS 2.0, *)
class NSPredicate : NSObject, NSSecureCoding, NSCopying {
  /*not inherited*/ init(format predicateFormat: String, argumentArray arguments: [AnyObject]?)
  /*not inherited*/ init(format predicateFormat: String, arguments argList: CVaListPointer)
  /*not inherited*/ init(value value: Bool)
  @available(watchOS 2.0, *)
  /*not inherited*/ init(block block: (AnyObject, [String : AnyObject]?) -> Bool)
  var predicateFormat: String { get }
  func withSubstitutionVariables(_ variables: [String : AnyObject]) -> Self
  func evaluate(with object: AnyObject?) -> Bool
  @available(watchOS 2.0, *)
  func evaluate(with object: AnyObject?, substitutionVariables bindings: [String : AnyObject]?) -> Bool
  @available(watchOS 2.0, *)
  func allowEvaluation()
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(watchOS 2.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}

extension NSPredicate {
  convenience init(format predicateFormat: String, _ args: CVarArgType...)
}
struct _predicateFlags {
  var _evaluationBlocked: UInt32
  var _reservedPredicateFlags: UInt32
  init()
  init(_evaluationBlocked _evaluationBlocked: UInt32, _reservedPredicateFlags _reservedPredicateFlags: UInt32)
}
extension NSArray {
  func filteredArray(using predicate: NSPredicate) -> [AnyObject]
}
extension NSMutableArray {
  func filter(using predicate: NSPredicate)
}
extension NSSet {
  @available(watchOS 2.0, *)
  func filteredSet(using predicate: NSPredicate) -> Set<NSObject>
}
extension NSMutableSet {
  @available(watchOS 2.0, *)
  func filter(using predicate: NSPredicate)
}
extension NSOrderedSet {
  @available(watchOS 2.0, *)
  func filteredOrderedSet(using p: NSPredicate) -> NSOrderedSet
}
extension NSMutableOrderedSet {
  @available(watchOS 2.0, *)
  func filter(using p: NSPredicate)
}
