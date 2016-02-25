
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
  func withSubstitutionVariables(_ variables: [String : AnyObject]) -> Self
  func evaluate(with object: AnyObject?) -> Bool
  @available(OSX 10.5, *)
  func evaluate(with object: AnyObject?, substitutionVariables bindings: [String : AnyObject]?) -> Bool
  @available(OSX 10.9, *)
  func allowEvaluation()
  @available(OSX 10.4, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.4, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.4, *)
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
  @available(OSX 10.5, *)
  func filteredSet(using predicate: NSPredicate) -> Set<NSObject>
}
extension NSMutableSet {
  @available(OSX 10.5, *)
  func filter(using predicate: NSPredicate)
}
extension NSOrderedSet {
  @available(OSX 10.7, *)
  func filteredOrderedSet(using p: NSPredicate) -> NSOrderedSet
}
extension NSMutableOrderedSet {
  @available(OSX 10.7, *)
  func filter(using p: NSPredicate)
}
