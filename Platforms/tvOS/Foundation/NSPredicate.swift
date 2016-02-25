
@available(tvOS 3.0, *)
class NSPredicate : NSObject, NSSecureCoding, NSCopying {
  /*not inherited*/ init(format predicateFormat: String, argumentArray arguments: [AnyObject]?)
  /*not inherited*/ init(format predicateFormat: String, arguments argList: CVaListPointer)
  /*not inherited*/ init(value value: Bool)
  @available(tvOS 4.0, *)
  /*not inherited*/ init(block block: (AnyObject, [String : AnyObject]?) -> Bool)
  var predicateFormat: String { get }
  func predicateWithSubstitutionVariables(_ variables: [String : AnyObject]) -> Self
  func evaluateWithObject(_ object: AnyObject?) -> Bool
  @available(tvOS 3.0, *)
  func evaluateWithObject(_ object: AnyObject?, substitutionVariables bindings: [String : AnyObject]?) -> Bool
  @available(tvOS 7.0, *)
  func allowEvaluation()
  @available(tvOS 3.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 3.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 3.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
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
  func filteredArrayUsingPredicate(_ predicate: NSPredicate) -> [AnyObject]
}
extension NSMutableArray {
  func filterUsingPredicate(_ predicate: NSPredicate)
}
extension NSSet {
  @available(tvOS 3.0, *)
  func filteredSetUsingPredicate(_ predicate: NSPredicate) -> Set<NSObject>
}
extension NSMutableSet {
  @available(tvOS 3.0, *)
  func filterUsingPredicate(_ predicate: NSPredicate)
}
extension NSOrderedSet {
  @available(tvOS 5.0, *)
  func filteredOrderedSetUsingPredicate(_ p: NSPredicate) -> NSOrderedSet
}
extension NSMutableOrderedSet {
  @available(tvOS 5.0, *)
  func filterUsingPredicate(_ p: NSPredicate)
}
