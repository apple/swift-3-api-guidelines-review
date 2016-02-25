
@available(OSX 10.4, *)
class NSPredicate : NSObject, NSSecureCoding, NSCopying {
  /*not inherited*/ init(format predicateFormat: String, argumentArray arguments: [AnyObject]?)
  /*not inherited*/ init(format predicateFormat: String, arguments argList: CVaListPointer)
  @available(OSX 10.9, *)
  /*not inherited*/ init?(fromMetadataQueryString queryString: String)
  /*not inherited*/ init(value value: Bool)
  @available(OSX 10.6, *)
  /*not inherited*/ init(block block: (AnyObject, [String : AnyObject]?) -> Bool)
  var predicateFormat: String { get }
  func predicateWithSubstitutionVariables(_ variables: [String : AnyObject]) -> Self
  func evaluateWithObject(_ object: AnyObject?) -> Bool
  @available(OSX 10.5, *)
  func evaluateWithObject(_ object: AnyObject?, substitutionVariables bindings: [String : AnyObject]?) -> Bool
  @available(OSX 10.9, *)
  func allowEvaluation()
  @available(OSX 10.4, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.4, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.4, *)
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
  @available(OSX 10.5, *)
  func filteredSetUsingPredicate(_ predicate: NSPredicate) -> Set<NSObject>
}
extension NSMutableSet {
  @available(OSX 10.5, *)
  func filterUsingPredicate(_ predicate: NSPredicate)
}
extension NSOrderedSet {
  @available(OSX 10.7, *)
  func filteredOrderedSetUsingPredicate(_ p: NSPredicate) -> NSOrderedSet
}
extension NSMutableOrderedSet {
  @available(OSX 10.7, *)
  func filterUsingPredicate(_ p: NSPredicate)
}
