
enum NSCompoundPredicateType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NotPredicateType
  case AndPredicateType
  case OrPredicateType
}
@available(iOS 3.0, *)
class NSCompoundPredicate : NSPredicate {
  init(type: NSCompoundPredicateType, subpredicates: [NSPredicate])
  init?(coder: NSCoder)
  var compoundPredicateType: NSCompoundPredicateType { get }
  var subpredicates: [AnyObject] { get }
  /*not inherited*/ init(andPredicateWithSubpredicates subpredicates: [NSPredicate])
  /*not inherited*/ init(orPredicateWithSubpredicates subpredicates: [NSPredicate])
  /*not inherited*/ init(notPredicateWithSubpredicate predicate: NSPredicate)
  convenience init()
}
