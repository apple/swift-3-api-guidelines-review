
struct ComparisonPredicateOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var CaseInsensitivePredicateOption: ComparisonPredicateOptions { get }
  static var DiacriticInsensitivePredicateOption: ComparisonPredicateOptions { get }
  @available(OSX 10.6, *)
  static var NormalizedPredicateOption: ComparisonPredicateOptions { get }
}
enum ComparisonPredicateModifier : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case DirectPredicateModifier
  case AllPredicateModifier
  case AnyPredicateModifier
}
enum PredicateOperatorType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case LessThanPredicateOperatorType
  case LessThanOrEqualToPredicateOperatorType
  case GreaterThanPredicateOperatorType
  case GreaterThanOrEqualToPredicateOperatorType
  case EqualToPredicateOperatorType
  case NotEqualToPredicateOperatorType
  case MatchesPredicateOperatorType
  case LikePredicateOperatorType
  case BeginsWithPredicateOperatorType
  case EndsWithPredicateOperatorType
  case InPredicateOperatorType
  case CustomSelectorPredicateOperatorType
  @available(OSX 10.5, *)
  case ContainsPredicateOperatorType
  @available(OSX 10.5, *)
  case BetweenPredicateOperatorType
}
@available(OSX 10.4, *)
class ComparisonPredicate : Predicate {
  init(leftExpression lhs: Expression, rightExpression rhs: Expression, modifier: ComparisonPredicateModifier, type: PredicateOperatorType, options: ComparisonPredicateOptions = [])
  init(leftExpression lhs: Expression, rightExpression rhs: Expression, customSelector selector: Selector)
  init?(coder: Coder)
  var predicateOperatorType: PredicateOperatorType { get }
  var comparisonPredicateModifier: ComparisonPredicateModifier { get }
  var leftExpression: Expression { get }
  var rightExpression: Expression { get }
  var customSelector: Selector { get }
  var options: ComparisonPredicateOptions { get }
  convenience init()
}
