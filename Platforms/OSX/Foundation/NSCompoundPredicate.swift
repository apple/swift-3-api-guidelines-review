
enum CompoundPredicateType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case notPredicateType
  case andPredicateType
  case orPredicateType
}
@available(OSX 10.4, *)
class CompoundPredicate : Predicate {
  init(type: CompoundPredicateType, subpredicates: [Predicate])
  init?(coder: Coder)
  var compoundPredicateType: CompoundPredicateType { get }
  var subpredicates: [AnyObject] { get }
  /*not inherited*/ init(andPredicateWithSubpredicates subpredicates: [Predicate])
  /*not inherited*/ init(orPredicateWithSubpredicates subpredicates: [Predicate])
  /*not inherited*/ init(notPredicateWithSubpredicate predicate: Predicate)
  convenience init()
}
