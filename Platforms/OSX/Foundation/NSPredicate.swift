
@available(OSX 10.4, *)
class NSPredicate : NSObject, NSSecureCoding, NSCopying {
  /*not inherited*/ init(format predicateFormat: String, argumentArray arguments: [AnyObject]?)
  /*not inherited*/ init(format predicateFormat: String, arguments argList: CVaListPointer)
  @available(OSX 10.9, *)
  /*not inherited*/ init?(fromMetadataQueryString queryString: String)
  /*not inherited*/ init(value: Bool)
  @available(OSX 10.6, *)
  /*not inherited*/ init(block: (AnyObject, [String : AnyObject]?) -> Bool)
  var predicateFormat: String { get }
  func predicateWithSubstitutionVariables(variables: [String : AnyObject]) -> Self
  func evaluateWithObject(object: AnyObject?) -> Bool
  @available(OSX 10.5, *)
  func evaluateWithObject(object: AnyObject?, substitutionVariables bindings: [String : AnyObject]?) -> Bool
  @available(OSX 10.9, *)
  func allowEvaluation()
  init()
  @available(OSX 10.4, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.4, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.4, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}

extension NSPredicate {
  convenience init(format predicateFormat: String, _ args: CVarArgType...)
}
struct _predicateFlags {
  var _evaluationBlocked: UInt32
  var _reservedPredicateFlags: UInt32
  init()
  init(_evaluationBlocked: UInt32, _reservedPredicateFlags: UInt32)
}
extension NSArray {
  func filteredArrayUsingPredicate(predicate: NSPredicate) -> [AnyObject]
}
extension NSMutableArray {
  func filterUsingPredicate(predicate: NSPredicate)
}
extension NSSet {
  @available(OSX 10.5, *)
  func filteredSetUsingPredicate(predicate: NSPredicate) -> Set<NSObject>
}
extension NSMutableSet {
  @available(OSX 10.5, *)
  func filterUsingPredicate(predicate: NSPredicate)
}
extension NSOrderedSet {
  @available(OSX 10.7, *)
  func filteredOrderedSetUsingPredicate(p: NSPredicate) -> NSOrderedSet
}
extension NSMutableOrderedSet {
  @available(OSX 10.7, *)
  func filterUsingPredicate(p: NSPredicate)
}
